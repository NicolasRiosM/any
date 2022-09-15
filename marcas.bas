Attribute VB_Name = "Módulo2"
Sub marcas()
Attribute marcas.VB_ProcData.VB_Invoke_Func = "c\n14"
Dim sht As Worksheet
Dim rng, rng2 As Long
Dim StartCell As Range
ActiveSheet.Columns(6).Delete Shift:=xlShiftToLeft
ActiveSheet.Range("D3:E19").Select
Selection.SpecialCells(xlCellTypeBlanks).Select
Selection.EntireRow.Delete
ActiveSheet.Range("A1:A2").Select
Selection.EntireRow.Delete
ActiveSheet.Columns(1).Delete Shift:=xlShiftToLeft
ActiveSheet.Columns(2).Delete Shift:=xlShiftToLeft
Set sht = Sheets(1)
sht.Select
Set StartCell = Range("A1")
rng = Application.WorksheetFunction.CountA(Range("A1:A25")) - 1
rng2 = Application.WorksheetFunction.CountA(Range("1:1")) - 1
Range(StartCell, StartCell.Offset(rng, rng2)).Select
End Sub
