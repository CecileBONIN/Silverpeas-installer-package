#!/bin/bash
# ------Application Builder -----------
echo $SILVERPEAS_HOME

#test d'existance de la variable SILVERPEAS_HOME
if [ "x${SILVERPEAS_HOME}" = "x" -o "${SILVERPEAS_HOME}" = "" ];then
  echo La variable SILVERPEAS_HOME doit etre initialisee
  exit 1
fi

export LIB_ROOT

CLASSPATH=${classpath}
export CLASSPATH

exec $JAVA_HOME/bin/java -classpath $CLASSPATH -Dsilverpeas.home=$SILVERPEAS_HOME com.silverpeas.applicationbuilder.ApplicationBuilder -r ext_repository $1