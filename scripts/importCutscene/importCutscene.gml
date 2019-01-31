var trgTo = argument[0];
var trgFrom = argument[1];

trgTo.cutsceneInstanceId = self.id;
trgTo.totalActions = trgFrom.totalActions;

for (j = 1; j <= trgFrom.totalActions; j += 1) {
	trgTo.actionInd[j] = trgFrom.actionInd[j];
	trgTo.actionColor[j] = trgFrom.actionColor[j];
	trgTo.actionSelect[j] = trgFrom.actionSelect[j];
	trgTo.actionDelete[j] = trgFrom.actionDelete[j];
	trgTo.actionTime[j] = trgFrom.actionTime[j];
	trgTo.actionRowInd[j] = trgFrom.actionRowInd[j];
	trgTo.actionRowId[j] = trgFrom.actionRowId[j];
	trgTo.longestRowLength = trgFrom.longestRowLength;
	
	if trgFrom.actionInd[j] = 0 { // Walk action
		trgTo.xNode[j] = trgFrom.xNode[j];
		trgTo.yNode[j] = trgFrom.yNode[j];
	}
	
	if trgFrom.actionInd[j] = 1 { // Rotation action
		trgTo.angleRot[j] = trgFrom.angleRot[j];
		trgTo.angleRotExport[j] = trgFrom.angleRotExport[j];
		trgTo.runRot[j] = trgFrom.runRot[j];
		trgTo.riseRot[j] = trgFrom.riseRot[j];
		trgTo.mirrorRot[j] = trgFrom.mirrorRot[j];
		trgTo.flipRot[j] = trgFrom.flipRot[j];
	}
	
	if trgFrom.actionInd[j] = 2 { // Dialogue action
		trgTo.dialogueWidth[j] = trgFrom.dialogueWidth[j];
		trgTo.dialogueHeight[j] = trgFrom.dialogueHeight[j];
		trgTo.textRows[j] = trgFrom.textRows[j];
		trgTo.xOffDialogue[j] = trgFrom.xOffDialogue[j];
		trgTo.yOffDialogue[j] = trgFrom.yOffDialogue[j];
				
		for (i = 0; i < trgFrom.textRows[j]; i += 1) {
			trgTo.str[j,i] = trgFrom.dialogueStr[j,i];
		}
	}
	
	if trgFrom.actionInd[j] = 3 { // Camera pan action
		trgTo.panAngle[j] = trgFrom.panAngle[j];
		trgTo.panMagnitude[j] = trgFrom.panMagnitude[j];
		trgTo.easeInVal[j] = trgFrom.easeInVal[j];
		trgTo.easeOutVal[j] = trgFrom.easeOutVal[j];
	}
}