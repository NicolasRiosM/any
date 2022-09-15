Attribute VB_Name = "Módulo2"
Sub Eliminar_impar()
Attribute Eliminar_impar.VB_ProcData.VB_Invoke_Func = "c\n14"
    Dim sht As Worksheet
    Dim rng, rng2 As Long
    Dim StartCell As Range
    ActiveSheet.Range("A1:A250").Select
    y = True
    i = 1
    Set xRng = Selection
    For counter = 1 To xRng.Rows.Count
        If y = True Then
            xRng.Cells(i).EntireRow.Delete
        Else
            i = i + 1
        End If
        y = Not y
        Next counter
    ActiveSheet.Columns(1).Delete Shift:=xlShiftToLeft
    ActiveSheet.Columns(1).Delete Shift:=xlShiftToLeft
    ActiveSheet.Columns(2).Delete Shift:=xlShiftToLeft
    ActiveSheet.Columns("B").Replace _
    What:="k", Replacement:="000", LookAt:=xlPart, _
    SearchOrder:=xlByColumns, MatchCase:=True
    ActiveSheet.Columns("B").Replace _
    What:="M", Replacement:="000000", LookAt:=xlPart, _
    SearchOrder:=xlByColumns, MatchCase:=True
    Set StartCell = Range("A1")
    rng = Application.WorksheetFunction.CountA(Range("A1:A100")) - 1
    rng2 = Application.WorksheetFunction.CountA(Range("1:1")) - 1
    Range(StartCell, StartCell.Offset(rng, rng2)).Select
End Sub
