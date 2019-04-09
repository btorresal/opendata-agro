#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"")]
[assembly: AssemblyProduct(@"VisorDatosDSL")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"VisorDatosDSL.DslPackage, PublicKey=002400000480000094000000060200000024000052534131000400000100010067DF0DC6C407D417203D608DF73A767059EAF12208B6D4EF3A61F119598EF5103C837D963CE860FE4A2C3B7C6343DA55D7CA1765FC772DA7B02C530A8F32AB2C6C2A0F31D6D29582D5911208C4CB32E30733ECA853B5724EF9D999A56FA30AE38199A55AF471602F8DE255FB11DC06B9B9225F64F99456C9ED9C2867491A22E0")]