# Project-CriticsRC

App de reseñas de videojuegos y compañías optimizada para dispositivos móviles.

## Requisitos
* **Ruby version:** 3.1.2
* **Base de datos:** PostgreSQL
* **Gestor de versiones:** rbenv (recomendado)

## Configuración del Entorno

Si usas `rbenv` en macOS, asegúrate de tenerlo inicializado en tu terminal para que reconozca la versión correcta de Ruby automáticamente:

```bash
# Agregar rbenv al inicio de tu shell (Zsh)
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
```

## Instalación y Preparación

1. **Instalar dependencias:**
   ```bash
   bundle install
   ```

2. **Preparar la base de datos:**
   ```bash
   bin/rails db:prepare db:seed
   ```

## Cómo iniciar el servidor

Para iniciar el servidor de desarrollo, utiliza el binstub de rails:

```bash
bin/rails server
```

La aplicación estará disponible en [http://localhost:3000](http://localhost:3000).

## Troubleshooting

Si recibes el error "A server is already running", limpia el archivo de proceso:
```bash
rm tmp/pids/server.pid
```

---
*Build with ♥ by Marlon Salazar*
