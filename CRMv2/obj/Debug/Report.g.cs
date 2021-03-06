﻿#pragma checksum "..\..\Report.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5C1AC0442272ECAF7DBC999C107868C29E5E7330"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using CRMv2;
using DevExpress.Xpf.Charts;
using DevExpress.Xpf.DXBinding;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace CRMv2 {
    
    
    /// <summary>
    /// Report
    /// </summary>
    public partial class Report : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid grdAllStats;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblCompletedTaskCount;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblDelayedTaskAll;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblNewUserCount;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblNewCustomerCount;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblDeletedCustomerCount;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblCreatedTaskCount;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblNewCommentCount;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblNewNotificationCount;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_AllTaskReport;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_CompletedTaskReport;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_IncompletedTaskReport;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_NewUserReport;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_NewCustomerReport;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_DeletedCustomerReport;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_NewCommentReport;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid grdCurrentUserStats;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label txtCreatedTsBySelf;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblUserCreatedTasks;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblUserCompletedTasks;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblUserIncompletedTasks;
        
        #line default
        #line hidden
        
        
        #line 59 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.ChartControl ChrtMain;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtAllTasks;
        
        #line default
        #line hidden
        
        
        #line 77 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtNotificationCount;
        
        #line default
        #line hidden
        
        
        #line 83 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtNewUsersCount;
        
        #line default
        #line hidden
        
        
        #line 89 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtNewCustomersCount;
        
        #line default
        #line hidden
        
        
        #line 95 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtCompletedTasks;
        
        #line default
        #line hidden
        
        
        #line 101 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtDeletedCustomersCount;
        
        #line default
        #line hidden
        
        
        #line 107 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtIncompleteTAskCount;
        
        #line default
        #line hidden
        
        
        #line 113 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtNewCommenetCount;
        
        #line default
        #line hidden
        
        
        #line 117 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dtpStartTime;
        
        #line default
        #line hidden
        
        
        #line 125 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dtpFinishTime;
        
        #line default
        #line hidden
        
        
        #line 133 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSearch;
        
        #line default
        #line hidden
        
        
        #line 134 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_MonthlyReport;
        
        #line default
        #line hidden
        
        
        #line 135 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.ChartControl chrtUser;
        
        #line default
        #line hidden
        
        
        #line 144 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtUCreatedTasks;
        
        #line default
        #line hidden
        
        
        #line 150 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtUCompletedTasks;
        
        #line default
        #line hidden
        
        
        #line 156 "..\..\Report.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Charts.SeriesPoint chrtUFailedTasks;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CRMv2;component/report.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Report.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 10 "..\..\Report.xaml"
            ((CRMv2.Report)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.grdAllStats = ((System.Windows.Controls.Grid)(target));
            return;
            case 3:
            this.lblCompletedTaskCount = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.lblDelayedTaskAll = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.lblNewUserCount = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.lblNewCustomerCount = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.lblDeletedCustomerCount = ((System.Windows.Controls.Label)(target));
            return;
            case 8:
            this.lblCreatedTaskCount = ((System.Windows.Controls.Label)(target));
            return;
            case 9:
            this.lblNewCommentCount = ((System.Windows.Controls.Label)(target));
            return;
            case 10:
            this.lblNewNotificationCount = ((System.Windows.Controls.Label)(target));
            return;
            case 11:
            this.btn_AllTaskReport = ((System.Windows.Controls.Button)(target));
            
            #line 38 "..\..\Report.xaml"
            this.btn_AllTaskReport.Click += new System.Windows.RoutedEventHandler(this.btn_AllTaskReport_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            this.btn_CompletedTaskReport = ((System.Windows.Controls.Button)(target));
            
            #line 39 "..\..\Report.xaml"
            this.btn_CompletedTaskReport.Click += new System.Windows.RoutedEventHandler(this.btn_CompletedTaskReport_Click);
            
            #line default
            #line hidden
            return;
            case 13:
            this.btn_IncompletedTaskReport = ((System.Windows.Controls.Button)(target));
            
            #line 40 "..\..\Report.xaml"
            this.btn_IncompletedTaskReport.Click += new System.Windows.RoutedEventHandler(this.btn_IncompletedTaskReport_Click);
            
            #line default
            #line hidden
            return;
            case 14:
            this.btn_NewUserReport = ((System.Windows.Controls.Button)(target));
            
            #line 41 "..\..\Report.xaml"
            this.btn_NewUserReport.Click += new System.Windows.RoutedEventHandler(this.btn_NewUserReport_Click);
            
            #line default
            #line hidden
            return;
            case 15:
            this.btn_NewCustomerReport = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\Report.xaml"
            this.btn_NewCustomerReport.Click += new System.Windows.RoutedEventHandler(this.btn_NewCustomerReport_Click);
            
            #line default
            #line hidden
            return;
            case 16:
            this.btn_DeletedCustomerReport = ((System.Windows.Controls.Button)(target));
            
            #line 43 "..\..\Report.xaml"
            this.btn_DeletedCustomerReport.Click += new System.Windows.RoutedEventHandler(this.btn_DeletedCustomerReport_Click);
            
            #line default
            #line hidden
            return;
            case 17:
            this.btn_NewCommentReport = ((System.Windows.Controls.Button)(target));
            
            #line 44 "..\..\Report.xaml"
            this.btn_NewCommentReport.Click += new System.Windows.RoutedEventHandler(this.btn_NewCommentReport_Click);
            
            #line default
            #line hidden
            return;
            case 18:
            this.grdCurrentUserStats = ((System.Windows.Controls.Grid)(target));
            return;
            case 19:
            this.txtCreatedTsBySelf = ((System.Windows.Controls.Label)(target));
            return;
            case 20:
            this.lblUserCreatedTasks = ((System.Windows.Controls.Label)(target));
            return;
            case 21:
            this.lblUserCompletedTasks = ((System.Windows.Controls.Label)(target));
            return;
            case 22:
            this.lblUserIncompletedTasks = ((System.Windows.Controls.Label)(target));
            return;
            case 23:
            this.ChrtMain = ((DevExpress.Xpf.Charts.ChartControl)(target));
            return;
            case 24:
            this.chrtAllTasks = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 25:
            this.chrtNotificationCount = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 26:
            this.chrtNewUsersCount = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 27:
            this.chrtNewCustomersCount = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 28:
            this.chrtCompletedTasks = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 29:
            this.chrtDeletedCustomersCount = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 30:
            this.chrtIncompleteTAskCount = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 31:
            this.chrtNewCommenetCount = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 32:
            this.dtpStartTime = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 33:
            this.dtpFinishTime = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 34:
            this.btnSearch = ((System.Windows.Controls.Button)(target));
            
            #line 133 "..\..\Report.xaml"
            this.btnSearch.Click += new System.Windows.RoutedEventHandler(this.btnSearch_Click);
            
            #line default
            #line hidden
            return;
            case 35:
            this.btn_MonthlyReport = ((System.Windows.Controls.Button)(target));
            
            #line 134 "..\..\Report.xaml"
            this.btn_MonthlyReport.Click += new System.Windows.RoutedEventHandler(this.btn_MonthlyReport_Click);
            
            #line default
            #line hidden
            return;
            case 36:
            this.chrtUser = ((DevExpress.Xpf.Charts.ChartControl)(target));
            return;
            case 37:
            this.chrtUCreatedTasks = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 38:
            this.chrtUCompletedTasks = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            case 39:
            this.chrtUFailedTasks = ((DevExpress.Xpf.Charts.SeriesPoint)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

