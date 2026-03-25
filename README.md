
##  Requisitos

- GNU/Linux (Debian, Ubuntu, o derivados)
- Bash 5.0+
- Dependencias adicionales (según script):  
  - `curl`, `awk`, `sed`, `rsync`, `netcat`, `mysql-client`, `psql`

##  Uso

Clona este repositorio y da permisos de ejecución a los scripts:

```bash
git clone https://github.com/tu_usuario/scripts.git
cd scripts
chmod +x linux/*.sh
```

Ejemplo de ejecución:

```bash
./linux/backup.sh /ruta/origen /ruta/destino
```

## Descripción de carpetas

- **linux/** → Scripts de administración de sistemas y gestión de almacenamiento.  
- **network/** → Scripts relacionados con redes, tráfico y routing.  
- **database/** → Scripts para gestión de copias de seguridad y exportaciones de bases de datos.

## Contribución

¡Las contribuciones son bienvenidas!  
Para colaborar, crea un *fork*, desarrolla tus cambios y envía un *pull request* con una descripción clara.

##  Licencia

Este proyecto se distribuye bajo la licencia **MIT** — libre de usar, modificar y compartir.

---

*Autor:* [Jorge Cano Del Amo](https://github.com/tu_usuario)  
*Última actualización:* Marzo 2026
