VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   7500
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7560
   LinkTopic       =   "Form1"
   ScaleHeight     =   7142.857
   ScaleMode       =   0  'User
   ScaleWidth      =   7496.57
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Height          =   5055
      Left            =   1920
      Picture         =   "Form1of 2.frx":0000
      ScaleHeight     =   4995
      ScaleWidth      =   3915
      TabIndex        =   2
      Top             =   480
      Width           =   3975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "EGG SHRINK"
      Height          =   615
      Left            =   3960
      TabIndex        =   1
      Top             =   6000
      Width           =   2535
   End
   Begin VB.CommandButton Comman 
      Caption         =   "EGG GROW"
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   6000
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim vel, hdir As Double

Private Sub Comman_Click()
Picture1.Width = (Picture1.Width) + 20
Picture1.Height = (Picture1.Height) + 20
End Sub

Private Sub Command2_Click()
Picture1.Width = (Picture1.Width) - 10
Picture1.Height = (Picture1.Height) - 10
End Sub

