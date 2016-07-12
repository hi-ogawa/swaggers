build-ui:
	cd swagger-ui && npm install && npm run build
	mkdir -p ui
	rsync --delete swagger-ui/dist/ ui

build-editor:
	cd swagger-editor && npm install && npm run build
	rm -rf editor && mkdir -p editor
	rsync -av \
          --include="index.html"  \
          --include="/dist/***"  \
          --include="/styles/***"  \
          --include="/images/***"  \
          --include="/scripts/***"  \
          --include="/config/***"  \
          --include="/templates/***"  \
          --include="/spec-files/***"  \
          --exclude="*"  \
          swagger-editor/ editor
