Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web10.5682.1600199788965772192
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 12:56:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=k8ei8yV/;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1600199788; x=1757879788;
  h=from:to:subject:date:mime-version;
  bh=c5MODAbvYJ9rGwHyu6f8QCOxv6xe6Rj2ay5r0hJGvNs=;
  b=k8ei8yV/mNH7FfK+XzapGeAEFkhdmn9xyxPiNOrx01Jn2UtScq+lE9Bl
   ZGs/5bXzT3zSdXBWs5xp/5cZRwNVaO/5tIDqiKgkkkGFYup9avpk+CxUr
   Dm5wh3V6aTs9S9vCLxgbhjhDNENCeGUJ/Pdh1H+ZHhY6LPiBO+L7hS5eT
   g=;
IronPort-PHdr: =?us-ascii?q?9a23=3ADNoOZBBEui9QN5srUv+GUyQJP3N1i/DPJgcQr6Af?=
 =?us-ascii?q?oPdwSP37pcywAkXT6L1XgUPTWs2DsrQY0rWQ6/irADRZqdbZ6TZeKcIKD0dEwe?=
 =?us-ascii?q?wt3CUYSPafDkP6KPO4JwcbJ+9lEGFfwnegLEJOE9z/bVCB6le77DoVBwmtfVEt?=
 =?us-ascii?q?fre9FYHdldm42P6v8JPPfQpImCC9YbRvJxmqsAndrMYbjZZgJ6or1hfFvnREd/?=
 =?us-ascii?q?lKyW91OFmfmwrw6tqq8JNs7ihduugt+9JcXan/Yq81UaFWADM6Pm4v+cblrwPD?=
 =?us-ascii?q?TQyB5nsdVmUZjB9FCBXb4R/5Q5n8rDL0uvJy1yeGM8L2S6s0WSm54KdwVBDoki?=
 =?us-ascii?q?YHOCUn/2zRl8d9kbhUoBOlpxx43o7UfISYP+dwc6/BYd8XQ3dKU8BMXCJDH4y8?=
 =?us-ascii?q?dZMCAeofM+hFs4nzqVgArRqiCgajH+7g0CNEhn3s0KEmz+gtDwfL1xEgEdIUt3?=
 =?us-ascii?q?TUqc34OKkVX+CyyqnI1ivMYO1N2Tvl9YPGbwwhru+SXb1ud8ra1FciHB7Bglqe?=
 =?us-ascii?q?tILpOj2Z3fkKvmiA8+pvS/yvhHAhqw1rpzivwcEsipLXiY0L0VDJ7j52z5wrKt?=
 =?us-ascii?q?2jSE97esKkH4VVtyGBLYd5XsQiQ2RxtSs817YJtoK1cjIQx5Q72x7QdeaHc46Q?=
 =?us-ascii?q?7xztWuucPTZ1iXBkdb6hmhq/70utx+34W8S731tGsyRLn9nDuHwQ0xHe6MiKR/?=
 =?us-ascii?q?R880u8xzuC0wPe5+JZLEwpmqTWLYMqzL0olpcLrEjPAjX6lUv0gaOMa0kp/ual?=
 =?us-ascii?q?5/7mb7jnvpOQKpN4hhvxP6khgMCyBf40PwsMUmWd5O+yzqfs/VfjT7VPlvA2l6?=
 =?us-ascii?q?7Zv43EKskDva65BhNV0p4k6xaiEzeqyNQYkmcDLFJCYB+HiYjpO1fUL/D9Fvey?=
 =?us-ascii?q?gFShnCt3y/zbJLHhBI/CImLYn7j7Y7l98E5dyBEvzd9B4pJUEasNL+70Wk/0rN?=
 =?us-ascii?q?DYDxk5PBKow+v/FdlxypkSVGyND6ODLa/ftVGF6vguLuSNfIMVvSzyK/kh5/7g?=
 =?us-ascii?q?l385nlodcLGy3ZsLdn+4AOppI0ODbXrphdcBF3wKsRQgQ+zxk1CNSiRcaGipX6?=
 =?us-ascii?q?M8/TE7FJypDYLYRoy3nLOB2yK7EoVMZm9aElCMDWvod4KcVvYMbyKdPtNhkjsf?=
 =?us-ascii?q?WLilSo8hzg2utBTgx7tnKerb5jEYtZX71Nhv4O3Tlw89+iBoD8iH1GGNVW50zS?=
 =?us-ascii?q?s0QGp8zad0vUtVzlaYzbM+kvtTCdtL/fRLXwwmc5nGwKYyX8H1UR7GVtOIU0q9?=
 =?us-ascii?q?BMShCi02Vsg2wdIFfwB6Adr03T7Z2C//SZoSkaeGCYdwupnA0mb8IY5Wgzb77+?=
 =?us-ascii?q?hrxw09XsZROGvgg6l57AXeHKbDmkiChr22eKEHmiXK8THQniK1oEhEXVsoAu3+?=
 =?us-ascii?q?VncFax6OoA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BABzG2Ff/0LBJQpfgQmCcoF3gT6yB?=
 =?us-ascii?q?gsBAQEBAQEBAQEIAS8EAQGGbiU4EwIQAQEGAQEBAQEGBAGGSQuCNyKDTV4BgQA?=
 =?us-ascii?q?mAQQbgx+BfrZHgTSFU4UngTiPCT6PEwSaGZx2BwOCZZo5KqBuhWuMfp9qAgQCB?=
 =?us-ascii?q?AUCFYFrgXpwgzpPFwINnGaBKwIGCgEBAwmPDIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2D7BABzG2Ff/0LBJQpfgQmCcoF3gT6yBgsBAQEBAQEBAQE?=
 =?us-ascii?q?IAS8EAQGGbiU4EwIQAQEGAQEBAQEGBAGGSQuCNyKDTV4BgQAmAQQbgx+BfrZHg?=
 =?us-ascii?q?TSFU4UngTiPCT6PEwSaGZx2BwOCZZo5KqBuhWuMfp9qAgQCBAUCFYFrgXpwgzp?=
 =?us-ascii?q?PFwINnGaBKwIGCgEBAwmPDIERAQE?=
X-IronPort-AV: E=Sophos;i="5.76,430,1592870400"; 
   d="scan'208,217";a="445737275"
X-IronPort-AV: E=Sophos;i="5.76,430,1592870400"; 
   d="scan'208,217";a="220847394"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk - meta-clang undefined references
Thread-Topic: #yocto #sdk - meta-clang undefined references
Thread-Index: AdaLmOq5qmQi1ELyRo6IcXbt7Io+kQ==
Date: Tue, 15 Sep 2020 19:56:17 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.16350D3B74FFA3D6.7867@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9dab5b33b7b144e9bac9b330da1551d2baesystemscom_"

--_000_9dab5b33b7b144e9bac9b330da1551d2baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am building meta-clang (sumo based 6.0.1), with cmake (3.8.2), all under =
a standard SDK "rocko based" (2.4.1)...

Are the following routines accessible/supported under meta-clang ?

libgbe.so: undefined reference to `clang::DiagnosticIDs::~DiagnosticIDs()'
libgbe.so: undefined reference to `clang::TextDiagnosticPrinter::TextDiagno=
sticPrinter(llvm::raw_ostream&, clang::DiagnosticOptions*, bool)'
libgbe.so: undefined reference to `clang::DiagnosticsEngine::~DiagnosticsEn=
gine()'
libgbe.so: undefined reference to `clang::CompilerInvocation::CreateFromArg=
s(clang::CompilerInvocation&, char const* const*, char const* const*, clang=
::DiagnosticsEngine&)'
libgbe.so: undefined reference to `clang::CompilerInvocationBase::~Compiler=
InvocationBase()'
libgbe.so: undefined reference to `clang::PCHContainerOperations::PCHContai=
nerOperations()'
libgbe.so: undefined reference to `clang::CompilerInstance::createDiagnosti=
cs(clang::DiagnosticConsumer*, bool)'
libgbe.so: undefined reference to `clang::DiagnosticsEngine::DiagnosticsEng=
ine(llvm::IntrusiveRefCntPtr<clang::DiagnosticIDs>, clang::DiagnosticOption=
s*, clang::DiagnosticConsumer*, bool)'
libgbe.so: undefined reference to `clang::CodeGenOptions::CodeGenOptions()'
libgbe.so: undefined reference to `clang::CompilerInstance::~CompilerInstan=
ce()'
libgbe.so: undefined reference to `clang::CompilerInstance::CompilerInstanc=
e(std::shared_ptr<clang::PCHContainerOperations>, clang::MemoryBufferCache*=
)'
libgbe.so: undefined reference to `clang::EmitLLVMOnlyAction::EmitLLVMOnlyA=
ction(llvm::LLVMContext*)'
libgbe.so: undefined reference to `clang::CompilerInstance::ExecuteAction(c=
lang::FrontendAction&)'
libgbe.so: undefined reference to `clang::CompilerInvocationBase::CompilerI=
nvocationBase()'
libgbe.so: undefined reference to `clang::CompilerInstance::setInvocation(s=
td::shared_ptr<clang::CompilerInvocation>)'
libgbe.so: undefined reference to `clang::CodeGenAction::takeModule()'
libgbe.so: undefined reference to `clang::DiagnosticIDs::DiagnosticIDs()'

thanks,
Steve

--_000_9dab5b33b7b144e9bac9b330da1551d2baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building meta-clang (sumo based 6.0.1), with cm=
ake (3.8.2), all under a standard SDK &#8220;rocko based&#8221; (2.4.1)&#82=
30;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Are the following routines accessible/supported unde=
r meta-clang ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::Diagnostic=
IDs::~DiagnosticIDs()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::TextDiagno=
sticPrinter::TextDiagnosticPrinter(llvm::raw_ostream&amp;, clang::Diagnosti=
cOptions*, bool)'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::Diagnostic=
sEngine::~DiagnosticsEngine()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
vocation::CreateFromArgs(clang::CompilerInvocation&amp;, char const* const*=
, char const* const*, clang::DiagnosticsEngine&amp;)'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
vocationBase::~CompilerInvocationBase()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::PCHContain=
erOperations::PCHContainerOperations()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
stance::createDiagnostics(clang::DiagnosticConsumer*, bool)'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::Diagnostic=
sEngine::DiagnosticsEngine(llvm::IntrusiveRefCntPtr&lt;clang::DiagnosticIDs=
&gt;, clang::DiagnosticOptions*, clang::DiagnosticConsumer*, bool)'<o:p></o=
:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CodeGenOpt=
ions::CodeGenOptions()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
stance::~CompilerInstance()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
stance::CompilerInstance(std::shared_ptr&lt;clang::PCHContainerOperations&g=
t;, clang::MemoryBufferCache*)'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::EmitLLVMOn=
lyAction::EmitLLVMOnlyAction(llvm::LLVMContext*)'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
stance::ExecuteAction(clang::FrontendAction&amp;)'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
vocationBase::CompilerInvocationBase()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CompilerIn=
stance::setInvocation(std::shared_ptr&lt;clang::CompilerInvocation&gt;)'<o:=
p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::CodeGenAct=
ion::takeModule()'<o:p></o:p></p>
<p class=3D"MsoNormal">libgbe.so: undefined reference to `clang::Diagnostic=
IDs::DiagnosticIDs()'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_9dab5b33b7b144e9bac9b330da1551d2baesystemscom_--
