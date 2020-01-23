FROM cm2network/steamcmd:root

ENV STEAMAPPID 4020
ENV STEAMAPPDIR /home/steam/gmod
ENV MAP gm_flatgrass
ENV GAMEMODE terrortown

# Run Steamcmd and install Gmod
RUN set -x \
	&& "${STEAMCMDDIR}/steamcmd.sh" \
		+login anonymous \
		+force_install_dir ${STEAMAPPDIR} \
		+app_update ${STEAMAPPID} validate \
		+quit

USER steam

WORKDIR $STEAMAPPDIR

VOLUME $STEAMAPPDIR

# Set the entrypoint:
# 1) Update the server
# 2) Run the server
ENTRYPOINT ${STEAMCMDDIR}/steamcmd.sh \ 
		+login anonymous +force_install_dir ${STEAMAPPDIR} +app_update ${STEAMAPPID} +quit \
		&& ${STEAMAPPDIR}/srcds_run \
			-game garrysmod -maxplayers 16 +gamemode ${GAMEMODE} +map ${MAP} +exec "ttt_server.cfg"
