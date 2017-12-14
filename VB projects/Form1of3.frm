VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7950
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9420
   FillColor       =   &H00FF8080&
   ForeColor       =   &H8000000D&
   LinkTopic       =   "Form1"
   ScaleHeight     =   7950
   ScaleWidth      =   9420
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Left            =   6600
      Top             =   5040
   End
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   3960
      Top             =   5040
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Back to Start Point"
      Height          =   495
      Left            =   6360
      TabIndex        =   2
      Top             =   6240
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   495
      Left            =   3720
      TabIndex        =   1
      Top             =   6240
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Relocate"
      Height          =   615
      Left            =   1200
      TabIndex        =   0
      Top             =   6240
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   1680
      Top             =   5160
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00400000&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   1680
      Top             =   840
      Width           =   5535
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   975
      Left            =   1800
      Shape           =   3  'Circle
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label9 
      Caption         =   "Point C"
      Height          =   375
      Left            =   6600
      TabIndex        =   11
      Top             =   1920
      Width           =   855
   End
   Begin VB.Label Label8 
      Caption         =   "Point B"
      Height          =   495
      Left            =   3720
      TabIndex        =   10
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label Label7 
      Caption         =   "Point A"
      Height          =   375
      Left            =   1560
      TabIndex        =   9
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   "Endtime"
      Height          =   495
      Left            =   6480
      TabIndex        =   8
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "Duration"
      Height          =   375
      Left            =   3720
      TabIndex        =   7
      Top             =   3360
      Width           =   975
   End
   Begin VB.Label Label4 
      Caption         =   "Start time"
      Height          =   375
      Left            =   1560
      TabIndex        =   6
      Top             =   3240
      Width           =   855
   End
   Begin VB.Label Label3 
      Height          =   375
      Left            =   6600
      TabIndex        =   5
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label2 
      Height          =   375
      Left            =   3840
      TabIndex        =   4
      Top             =   4080
      Width           =   615
   End
   Begin VB.Label Label1 
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   4200
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim vel, hdir As Double

Private Sub Command1_Click()
Dim car As Integer
car = 3000
Shape1.Left = Shape1.Left + car

Shape1.Refresh
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
Label2.Caption = Shape1.Left + 5
Label3.Caption = Val(Label1.Caption) + Val(Label2.Caption)

End Sub

Private Sub Command3_Click()
Shape1.Left = sendback

End Sub

Private Sub Form_Load()
vel = 50
hdir = 1

End Sub

Private Sub Label3_Click()
Label3.Caption = Val(Label1.Caption) + Val(Label2.Caption)

End Sub

Private Sub Timer1_Timer()
Shape1.Left = Shape1.Left + 2000
Shape1.Left = Shape1.Left - 2000

Dim car As Integer
car = 30
Shape1.Left = Shape1.Left + car

Label1.Caption = Shape1.Left + 30

If Shape1.Left + Shape1.Width >= Shape2.Width Then
Shape1.Left = Shape2.Width
End If

End Sub

Private Sub Timer2_Timer()
Timer2.Enabled = False
Shape1.Left = Shape1.Left + 2000
Shape1.Left = Shape1.Left - 2000

Dim car As Integer
car = 30
Shape1.Left = Shape1.Left + car

Label2.Caption = Shape1.Left + 30
End Sub

