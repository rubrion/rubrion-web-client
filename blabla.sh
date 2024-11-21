#!/bin/bash

# Exit script if any command fails
set -e

# Commit 1: Routing Refactor
git add src/routes/ src/App.tsx
git commit -m "refactor: centralize route configuration and rendering

- Moved all route definitions to \`routes.tsx\` for better maintainability.
- Replaced inline route definitions in \`App.tsx\` with a single imported \`AppRoutes\` component.
- Added \`BLOG_ROUTES.POST_DETAIL_STATIC\` for consistent handling of dynamic routes in React Router.
- Added proper typing and validation for dynamic routes (\`DynamicRoute\`) in \`BLOG_ROUTES\`.
- Updated \`PUBLIC_ROUTES\` and \`BLOG_ROUTES\` with \`description\` properties for better metadata management."

# Commit 2: Meta Descriptions with `PageHelmet`
git add src/components/PageHelmet.tsx src/routes/
git commit -m "feat: add dynamic meta descriptions with PageHelmet

- Introduced \`PageHelmet\` component to manage page titles and meta descriptions dynamically.
- Updated route definitions (\`PUBLIC_ROUTES\` and \`BLOG_ROUTES\`) to include descriptions.
- Improved user experience and SEO readiness by ensuring each page has a unique meta description."

# Commit 3: Package Updates
git add package.json package-lock.json
git commit -m "chore: add react-helmet and types for dynamic metadata management

- Installed \`react-helmet\` to manage meta tags dynamically.
- Added \`@types/react-helmet\` for TypeScript support.
- Updated \`package.json\` and \`package-lock.json\` accordingly."

# Commit 4: Move API Services
git add src/services/blogService.ts src/services/axiosInstance.ts
git rm src/api/axiosInstance.ts src/api/blogService.ts
git commit -m "refactor: move API services to src/services/

- Moved \`axiosInstance\` and \`blogService\` from \`src/api/\` to \`src/services/\`.
- Updated imports in \`Blog\` and \`PostDetails\` components to reflect the new paths."

# Commit 5: Page Link Updates
git add src/pages/Home.tsx src/pages/Contact.tsx
git commit -m "fix: standardize page links and fix component naming

- Updated links in \`Home.tsx\` to use standardized route definitions.
- Corrected \`Contact\` component export name from \`About\` to \`Contact\`."

# Commit 6: Branding Update
git add index.html
git commit -m "chore: update HTML title to 'Rubrion'

- Changed \`<title>\` in \`index.html\` from default placeholder to 'Rubrion' for a professional presentation."
