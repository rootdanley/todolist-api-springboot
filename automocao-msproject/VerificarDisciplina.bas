Private Sub VerificarDisciplina()
Dim Tarefa As Task
  Dim Coluna As PjField
  Dim resumo As PjField
  Coluna = pjTaskText5
  Dim Verificar As Boolean
  resumo = pjTaskResumo

  For Each Tarefa In ActiveProject.Tasks
        If Tarefa.GetField(Coluna) = "" And Tarefa.GetField(resumo) <> "Sim" Then
            Verificar = True
        End If
    Next Tarefa
    
    If Verificar = True Then
        MsgBox "EXISTEM CAMPOS DE (05 DISCIPLINA) VAZIOS.", vbExclamation
    End If

End Sub