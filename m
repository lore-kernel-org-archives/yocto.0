Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.2217.1620244472729275361
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 12:54:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=A9y5PMC3;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1620244472; x=1777924472;
  h=from:to:cc:subject:date:in-reply-to:mime-version;
  bh=irNd1ZsDSHdQRulDjNoCEcvjtpIYt/zT1pWm48CdCVk=;
  b=A9y5PMC3r13S17eo1Sdkn1PNSOSS+NzFuZUdpLnPYLp//4F21exz/Gq/
   GJS144lPI0XGBU5u+AKSEWFQe5z4Ky35kUQY23WmoCg9VxosfjoU2b70u
   sdbocoZlyaRFYWfAHs76oWB9szmSIMw/UbgCPrWN1HU41tIMgaZbjTMKz
   I=;
IronPort-SDR: k3FYywhUnl0uBH33e6gyIkEcTyStZfRE66/znFd8d994v6bIJQdvBeg9fE8PcV0fdUktLJNLBb
 mzk/7L4kR7Ig==
IronPort-PHdr: =?us-ascii?q?A9a23=3AyOxmJBTchYv2C/DxrNziGfqKAdpsouyYAWYlg?=
 =?us-ascii?q?qEPu/d1aq2muq7aFwnh351FslbFUM3h5u5ejKKO6ua8AD1Gu83R+ylZLNRlb?=
 =?us-ascii?q?FwssY0uhQsuAcqIWwXQDcXBSGgEJvlET0Jv5HqhMEJYS47UblzWpWCuv3ZJQ?=
 =?us-ascii?q?k2sfQV6Kf7oFYHMks+5y/69+4HJYwVPmTGxfa5+IA+5oAnMssQam5VuJ6gyx?=
 =?us-ascii?q?xfGv3dFdetbzn50KFyOmBrx+t2+94N5/SRKvPIh+c9AUaHkcKk9ULdVEjcoP?=
 =?us-ascii?q?X0r6cPyrRXMQheB6XUaUmUNjxpHGBPF4w3gXpfwqST1qOxw0zSHMMLsTLA0X?=
 =?us-ascii?q?TOi77p3SBLtlSwKOSI1/H3Rh8dtl69Qvg6vqAJjzI7VeIGVNeRxfqXBfdMBW?=
 =?us-ascii?q?GFNWt9dWzFdDo+gaocCCfcKM+RFoInnv1YArQWwCxSwBO3hyTFIiH353awm3?=
 =?us-ascii?q?OsuCgzG2RAsH9AUvXjIsNn5KqEfWv21wqnSyjXDautb1Tn65ojPdBAhuu+DU?=
 =?us-ascii?q?qxrccbJ1EIhCh/FgUuOqYP7OTOey/oAuHWf4+VuSOyjjmAroBx2rzi02scjl?=
 =?us-ascii?q?JfJiZwTylze8CV5x4A1JcamR0Flet6pC4BfuDuEOIttQsIiWH1otzg/yr0do?=
 =?us-ascii?q?5K0YC8KyJE+yhPZdveIfJSG7Aj5W+aNPTd3mmhleLSnihuu/kauxe7xWMaw3?=
 =?us-ascii?q?VhEriRJjMfAum0C2hHX5cWKV+Vw8lmg1DuN1w3e6v1JLEA7mKfVKZMszKI9m?=
 =?us-ascii?q?4cXvEndACL7nlj9gqGRdkUh4Oeo6uLnb63mp5+bK4B0lgb+Mrw0msy4A+Q3L?=
 =?us-ascii?q?BQBX3SB9eS7zr3j8kv0S6hJgP0uiqTVrYzWKd4Vq6O7GQNZzJgv5halAzqn0?=
 =?us-ascii?q?dkUhWQLIE5fdB+IgIXlIV7DLOrlAfq/hVmnjS1lyOrcPrL7B5XANn3DkLD8c?=
 =?us-ascii?q?rlj80Nc0w8zzcxH55JTF7EBPOr/Wk/vu9zcCR80KxC7zPz8CNph04MeQmaCD?=
 =?us-ascii?q?6uaPa/Or1OE/OQvLPOWaIAOojnyNeMl5v71jX8lh1AdeLKp0YELZ3C/G/RqO?=
 =?us-ascii?q?0SZYXzyjdcdCWoGoxYyQPbkhVCASzJfeWi+UqIm6jw6CY+qFYLDSZqsgLyF0?=
 =?us-ascii?q?ie7BJpWZmVeB1CXDXfnaZuEVOkKaC6IJ89hlToEVaO/RIA/zhGjrxT1xKB5I?=
 =?us-ascii?q?erP+iwYro7j28Zw5+3Ijx096Tt0D8GF32GXU250hn8IRyMx3K1noU19zUuM0?=
 =?us-ascii?q?bR/g/FDEdxT5uhJUhshNZLGz+16DMz9Wh7GfteRUlamRdemDi8tQdIt2dMOZ?=
 =?us-ascii?q?Fx9G9rxxizEigmqDrpdrbWJTMgu+6Ca3Hj8Iu5yzn/H0O8qiFxwEeVVMmjzz?=
 =?us-ascii?q?It48RPeCpWN236Fmrinc+w3lG7wzybJhT6VoExGXQg2VKLDRn0SfWPcpNni9?=
 =?us-ascii?q?1jeQrq1T78gN10Smoa5NqJWZ4ix3h19T/D5NYGbOjrp81o=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AWoTWyKFPncGJYJeQpLqESseALOonbusQ8z?=
 =?us-ascii?q?AX/mp2TgFYddHdqtunm+4V2QSxpDEaXnwhnt7oAtjnfVr385lp7Y4NeYqzRQ?=
 =?us-ascii?q?WOghrOEKhO5ZbvqgeQfhHW2fVa0c5bE5RWKNnoC0NmhcHx7GCDfeoI4MKA95?=
 =?us-ascii?q?mvnvqb9VpXJDsBV4hFzyNUTjmWCVd3Qg4uP/sEPb6R/NBOqTblWXl/VK+GL0?=
 =?us-ascii?q?IIVeTCuNHH/aiOCSIuPBI/7RnLsDXA0s+ZLzGj0hAFUy5O3rc+4QH+/DDR3L?=
 =?us-ascii?q?mpsP2w13bnpgvuxqlR8eGRqedrNYi3pu85Bg6pqj/AXulccozHhhwTjc2VrG?=
 =?us-ascii?q?0HqeXwiyoBGeMb0R/sQl0=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AeAABO95Jg/0LhJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE6BwEBCwGBIlmBJg6BMwuMXYlTA4VphEuFAYtLFIFjBQs?=
 =?us-ascii?q?BAQEBAQEBAQEIAR0BBhAEAQGEUAKCASY0CQ4CBAEBDAEBBgEBAQEBBgQBgQO?=
 =?us-ascii?q?FUA2COCkBg2IBAQEEAQsOARJMEAIBCA0EBAEBFgsBBgcCHwcKFAkIAgQOBQg?=
 =?us-ascii?q?Ggl8FglUDqQI1eIE0GgJlhy0NghcQCQGBMAGBZIQPgRGBFYVGgg1BgRWDIj6?=
 =?us-ascii?q?CHkIEAYEWCAoBEgFXCAGFOQSBbxMBgT8TASoGEgkwQQoEARQbAQ0mNzqQfCC?=
 =?us-ascii?q?LAoFpnDFbBwODEIUOgneBdIwMgWeFOCEQg1SBQYlMhgQDihyBBoUZpE2PLQw?=
 =?us-ascii?q?GKQ6ETgIEAgQFAhaBQRNHXHBwgzkJRxcCjjgBFoECAQGHXoFdg2xzAgE1AgY?=
 =?us-ascii?q?KAQEDCYpLLYEHgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2AeAABO95Jg/0LhJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE6BwEBCwGBIlmBJg6BMwuMXYlTA4VphEuFAYtLFIFjBQsBAQEBAQEBAQEIA?=
 =?us-ascii?q?R0BBhAEAQGEUAKCASY0CQ4CBAEBDAEBBgEBAQEBBgQBgQOFUA2COCkBg2IBA?=
 =?us-ascii?q?QEEAQsOARJMEAIBCA0EBAEBFgsBBgcCHwcKFAkIAgQOBQgGgl8FglUDqQI1e?=
 =?us-ascii?q?IE0GgJlhy0NghcQCQGBMAGBZIQPgRGBFYVGgg1BgRWDIj6CHkIEAYEWCAoBE?=
 =?us-ascii?q?gFXCAGFOQSBbxMBgT8TASoGEgkwQQoEARQbAQ0mNzqQfCCLAoFpnDFbBwODE?=
 =?us-ascii?q?IUOgneBdIwMgWeFOCEQg1SBQYlMhgQDihyBBoUZpE2PLQwGKQ6ETgIEAgQFA?=
 =?us-ascii?q?haBQRNHXHBwgzkJRxcCjjgBFoECAQGHXoFdg2xzAgE1AgYKAQEDCYpLLYEHg?=
 =?us-ascii?q?RABAQ?=
X-IronPort-AV: E=Sophos;i="5.82,276,1613433600"; 
   d="txt'?scan'208,217";a="372417811"
IronPort-SDR: DlLJfoeb3LOpm0vEeeqk/B8SYjj/ZPJThd0zVAbcj3PZL4i1fk1YyBlm+cT/SVaDDZ3H+jvTFi
 epeuHaRPZQqw==
X-IronPort-AV: E=Sophos;i="5.82,276,1613433600"; 
   d="txt'?scan'208,217";a="2598307"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations
Thread-Topic: [yocto] #yocto cmake configurations
Thread-Index: Adc/dlwXQGBOIa4IReWXXH+skeusfgBmHxLAAAnAAIAABZoy0AAAB8oAAAZCwlD///d6AP//jZpw//8ORsD//ZMloA==
Date: Wed, 5 May 2021 19:53:29 +0000
In-Reply-To: <2f1f75947ea04d10ada871fb84cf6dac@baesystems.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.167C43C4153E29C0.14730@lists.yoctoproject.org>
X-Groupsio-MsgNum: 53398
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_"

--_004_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_
Content-Type: multipart/alternative;
	boundary="_000_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_"

--_000_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I made some modification in the cmake modules to adjust for the linker issu=
e below, but now I appear to have uncovered an issue with the static librar=
ies which meta-clang generated under the SDK... (see below)...

The link command is attached as "tmp.txt".

There are a lot of these being generated, this is but a subset...
Note:
(1) "workspace_3" is a reference to my build area where I built the STD SDK=
, why would this be here the SDK should be independent of this are, no ?
                (2) the code with the undefined reference does appear to be=
 missing the proper header file reference



/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `CodeGenModule':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:11=
4: undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) con=
st'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-shared/l=
lvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:116: un=
defined reference to `clang::ASTContext::toCharUnitsFromBits(long) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-shared/l=
lvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:118: un=
defined reference to `clang::ASTContext::toCharUnitsFromBits(long) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `bool clang::Decl=
::hasAttr<clang::IFuncAttr>() const':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/include/clang/AST/DeclBase.h:543=
: undefined reference to `clang::Decl::getAttrs() const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `clang::CodeGen::=
CodeGenModule::checkAliases()':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:30=
4: undefined reference to `clang::Decl::getDefiningAttr() const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `clang::SectionAt=
tr* clang::Decl::getAttr<clang::SectionAttr>() const':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/include/clang/AST/DeclBase.h:539=
: undefined reference to `clang::Decl::getAttrs() const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `bool clang::Decl=
::hasAttr<clang::CUDAGlobalAttr>() const':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/include/clang/AST/DeclBase.h:543=
: undefined reference to `clang::Decl::getAttrs() const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `clang::CodeGen::=
CodeGenModule::Release()':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:52=
0: undefined reference to `clang::ASTContext::getTypeSizeInChars(clang::Qua=
lType) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `clang::CodeGen::=
CodeGenModule::emitMultiVersionFunctions()':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:27=
88: undefined reference to `clang::ASTContext::forEachMultiversionedFunctio=
nVersion(clang::FunctionDecl const*, llvm::function_ref<void (clang::Functi=
onDecl*)>) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-shared/l=
lvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:2819: u=
ndefined reference to `clang::FunctionDecl::isTargetMultiVersion() const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `clang::CodeGen::=
CodeGenModule::getFunctionLinkage(clang::GlobalDecl)':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:11=
88: undefined reference to `clang::ASTContext::GetGVALinkageForFunction(cla=
ng::FunctionDecl const*) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-shared/l=
lvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:1188: u=
ndefined reference to `clang::ASTContext::GetGVALinkageForFunction(clang::F=
unctionDecl const*) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-shared/l=
lvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:1188: u=
ndefined reference to `clang::ASTContext::GetGVALinkageForFunction(clang::F=
unctionDecl const*) const'
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: /disk=
0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/us=
r/lib/libclangCodeGen.a(CodeGenModule.cpp.o): in function `clang::Module::g=
etTopLevelModuleName() const':
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-sha=
red/llvm-project-source-9.0.1-r0/git/clang/include/clang/Basic/Module.h:468=
: undefined reference to `clang::Module::getTopLevelModule() const'


From: Monsees, Steven C (US) <steven.monsees@baesystems.com>
Sent: Wednesday, May 5, 2021 7:25 AM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; Khem Raj <raj.k=
hem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: RE: [yocto] #yocto cmake configurations


All the libraries are under the SDK here:

-L/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib

I need the DRM libraries to be picked up correctly, libclang.so may not be =
required since I have all the static variations available, (added to while =
testing linker) I have yet to make it through entire build due to linker is=
sue...

Steve

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Monsees, Steven C (US) via lists.yoctoproject.org
Sent: Wednesday, May 5, 2021 6:44 AM
To: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.



Khem:

I only have the following libraries present for these:

libclang.so
libclang.so.9
libdrm_intel.so
libdrm_intel.so.1
libdrm_intel.so.1.0.0
libdrm.so
libdrm.so.2
libdrm.so.2.4.0

I do generate the static (*.a) files for both LLVM & Clang and they appear =
to all be present (No libclang.a was generated).

Steve

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 7:46 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


the cmd seems to pass --sysroot correctly so can you search in SDK sysroot =
if you have libclang.a libdrm_intel.a and libdrm.a ?

On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US) via lists.yoctoprojec=
t.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@lists=
.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:
Yes, LLVM & Clang...

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 5:17 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


I see its using -rdynamic -static
so next question is that do you have .a files in your sdk ?

On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via lists.yoctoproje=
ct.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@list=
s.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:

Attached...

From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, May 4, 2021 2:36 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com<mailto:steven.mon=
sees@baesystems.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


can you post full linker cmd which is failing ?

On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via lists.yoctoproje=
ct.org<http://lists.yoctoproject.org> <steven.monsees=3Dbaesystems.com@list=
s.yoctoproject.org<mailto:baesystems.com@lists.yoctoproject.org>> wrote:

My standard zeus SDK appears to have an issue linking in my applications dy=
namic libs...

/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: canno=
t find -ldrm_intel
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: canno=
t find -ldrm
/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: canno=
t find -lclang
collect2: error: ld returned 1 exit status
The libraries are under: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sy=
sroots/corei7-64-poky-linux/usr/lib/

My CMake build app does not appear to have an issue finding the files:

DRM_INTEL_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.=
4/sysroots/corei7-64-poky-linux/usr/lib/libdrm_intel.so
DRM_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysr=
oots/corei7-64-poky-linux/usr/lib/libdrm.so

It appears to be an issue specifically with the ld...

LDFLAGS=3D " --sysroot=3D$ENV{OECORE_TARGET_SYSROOT} -L$ENV{OECORE_TARGET_S=
YSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib/x86_64-poky-linux/9.2=
.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,=
--as-needed"

It does not appear to be making use of -L's...

Is there something I might look at/configure (i.e. add paths to search path=
s) ?
Is there a simple test to validate tool ?

Thanks,
Steve

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Monsees, Steven C (US) via lists.yoctoproject.org<http://lists.yoctoproj=
ect.org>
Sent: Sunday, May 2, 2021 1:28 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] #yocto cmake configurations

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.



I am using zeus, standard SDK, cmake...

Can I pre-configure the SDK to setup cmake package search paths ?, say for =
find_package, etc. (i.e. detecting external libraries/programs)...

The majority of my env is configuring properly, but I am finding cmake is s=
etup for a standard linux env with regards to these types of searches, and
I wanted the cmake built in to look at my SDK paths (first by default) when=
 doing such things as detecting python interpreter, libraries, etc.

I am working on third party package unaware of my SDK setup.

Thanks,
Steve




--_000_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I made some modification in the cmake=
 modules to adjust for the linker issue below, but now I appear to have unc=
overed an issue with the static libraries which
 meta-clang generated under the SDK&#8230; (see below)&#8230;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The link command is attached as &#822=
0;tmp.txt&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">There are a lot of these being genera=
ted, this is but a subset&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Note:
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">(1) &#8220=
;workspace_3&#8221; is a reference to my build area where I built the STD S=
DK, why would this be here the SDK should be independent of
 this are, no ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (2) the code with the=
 undefined reference does appear to be missing the proper header file refer=
ence<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `CodeGenModule':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/</sp=
an></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:red">workspace_3</span></b><b><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">/builds2/sbcb-=
default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/lib</span></=
b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:#1F497D">/CodeGen/CodeGenModule.cpp:114:
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:red">undefined reference to `clang::ASTContext::toCharUnitsFro=
mBits(long) const'</span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/=
builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang=
/lib/CodeGen/CodeGenModule.cpp:116:
 undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) const=
'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/=
builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang=
/lib/CodeGen/CodeGenModule.cpp:118:
 undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) const=
'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `bool clang::Decl::hasAttr&lt;clang::IFuncAttr&gt;() const':<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/include/clang/AST/DeclBase.h:543: undefined
 reference to `clang::Decl::getAttrs() const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `clang::CodeGen::CodeGenModule::checkAliases()':<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/lib/CodeGen/CodeGenModule.cpp:304: undefined
 reference to `clang::Decl::getDefiningAttr() const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `clang::SectionAttr* clang::Decl::getAttr&lt;clang::SectionAtt=
r&gt;() const':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/include/clang/AST/DeclBase.h:539: undefined
 reference to `clang::Decl::getAttrs() const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `bool clang::Decl::hasAttr&lt;clang::CUDAGlobalAttr&gt;() cons=
t':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/include/clang/AST/DeclBase.h:543: undefined
 reference to `clang::Decl::getAttrs() const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `clang::CodeGen::CodeGenModule::Release()':<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/lib/CodeGen/CodeGenModule.cpp:520: undefined
 reference to `clang::ASTContext::getTypeSizeInChars(clang::QualType) const=
'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `clang::CodeGen::CodeGenModule::emitMultiVersionFunctions()':<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/lib/CodeGen/CodeGenModule.cpp:2788: undefined
 reference to `clang::ASTContext::forEachMultiversionedFunctionVersion(clan=
g::FunctionDecl const*, llvm::function_ref&lt;void (clang::FunctionDecl*)&g=
t;) const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/=
builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang=
/lib/CodeGen/CodeGenModule.cpp:2819:
 undefined reference to `clang::FunctionDecl::isTargetMultiVersion() const'=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `clang::CodeGen::CodeGenModule::getFunctionLinkage(clang::Glob=
alDecl)':<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/lib/CodeGen/CodeGenModule.cpp:1188: undefined
 reference to `clang::ASTContext::GetGVALinkageForFunction(clang::FunctionD=
ecl const*) const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/=
builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang=
/lib/CodeGen/CodeGenModule.cpp:1188:
 undefined reference to `clang::ASTContext::GetGVALinkageForFunction(clang:=
:FunctionDecl const*) const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/=
builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang=
/lib/CodeGen/CodeGenModule.cpp:1188:
 undefined reference to `clang::ASTContext::GetGVALinkageForFunction(clang:=
:FunctionDecl const*) const'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/l=
imws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/=
x86_64-poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule=
.cpp.o):
 in function `clang::Module::getTopLevelModuleName() const':<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/=
clang/include/clang/Basic/Module.h:468: undefined
 reference to `clang::Module::getTopLevelModule() const'<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Monsees, Steven C (US) &lt;ste=
ven.monsees@baesystems.com&gt;
<br>
<b>Sent:</b> Wednesday, May 5, 2021 7:25 AM<br>
<b>To:</b> Monsees, Steven C (US) &lt;steven.monsees@baesystems.com&gt;; Kh=
em Raj &lt;raj.khem@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> RE: [yocto] #yocto cmake configurations<o:p></o:p></span></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">All the libraries are under the SDK h=
ere:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">-L/disk0/scratch/smonsees/sbcbSTD_SDK=
/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I need the DRM libraries to be picked=
 up correctly, libclang.so may not be required since I have all the static =
variations available, (added to while testing
 linker) I have yet to make it through entire build due to linker issue&#82=
30;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif">
<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.or=
g</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yocto=
project.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via lists.yoctoproject.org<br>
<b>Sent:</b> Wednesday, May 5, 2021 6:44 AM<br>
<b>To:</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<o:p></o:p></span></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:1150.4pt;border:solid red 1=
.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.<o:p></o:p></span></s=
trong></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><span style=3D"font-size:9.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Khem:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I only have the following libraries p=
resent for these:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libclang.so&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libclang.so.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm_intel.so<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm_intel.so.1<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm_intel.so.1.0.0
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm.so
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm.so.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">libdrm.so.2.4.0&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I do generate the static (*.a) files =
for both LLVM &amp; Clang and they appear to all be present (No libclang.a =
was generated).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 7:46 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
the cmd seems to pass --sysroot correctly so can you search in SDK sysroot =
if you have libclang.a&nbsp;</span><span style=3D"font-family:&quot;Arial&q=
uot;,sans-serif;color:#1F497D">libdrm_intel.a and libdrm.a ?</span><span st=
yle=3D"font-family:&quot;Courier New&quot;"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US=
) via <a href=3D"http://lists.yoctoproject.org">
lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystem=
s.com@lists.yoctoproject.org">baesystems.com@lists.yoctoproject.org</a>&gt;=
 wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">Yes, LLVM &amp; Clang&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 5:17 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"677" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Courier New&quot;">I see its usin=
g&nbsp;</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New=
&quot;;color:black">-rdynamic -static</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black">so next question is that do you have .a files in your sdk ?<=
/span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoc=
toproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&=
gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">Attached&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 2:36 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"668" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-family:&quot;Courier New&quot;">can you post f=
ull linker cmd which is failing ?</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoc=
toproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&=
gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">My standard zeus SDK appears to have=
 an issue linking in my applications dynamic libs&#8230;</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/=
limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm_intel</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/=
limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">/disk0/scratch/smonsees/sbcbSTD_SDK/=
limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc=
/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -lclang</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">collect2: error: ld returned 1 exit =
status</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">The libraries are under: /disk0/scra=
tch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib/=
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">My CMake build app does not appear t=
o have an issue finding the files:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">DRM_INTEL_LIBRARIES:STRING=3D/disk0/=
scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/=
lib/libdrm_intel.so</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">DRM_LIBRARIES:STRING=3D/disk0/scratc=
h/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-linux/usr/lib/li=
bdrm.so</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">It appears to be an issue specifical=
ly with the ld&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">LDFLAGS=3D</span>
<span style=3D"color:#1F497D">&quot; --sysroot=3D$ENV{OECORE_TARGET_SYSROOT=
} -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/l=
ib/x86_64-poky-linux/9.2.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl=
,--hash-style=3Dgnu -Wl,--as-needed&quot;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">It does not appear to be making use =
of &#8211;L&#8217;s&#8230;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Is there something I might look at/c=
onfigure (i.e. add paths to search paths) ?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Is there a simple test to validate t=
ool ?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Thanks,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">Steve</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoct=
oproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Sunday, May 2, 2021 1:28 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto cmake configurations<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:red">External Email Alert</span></u></strong><o:p></o:p></=
p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"660" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:black">This email has been sent from an account outside of th=
e BAE Systems network.</span></strong><o:p></o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am using zeus, standard SDK, cmake&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Can I pre-configure the SDK to setup cmake package search paths ?,=
 say for find_package, etc. (i.e. detecting external libraries/programs)&#8=
230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">The majority of my env is configuring properly, but I am finding c=
make is setup for a standard linux env with regards to these types of searc=
hes, and<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I wanted the cmake built in to look at my SDK paths (first by defa=
ult) when doing such things as detecting python interpreter, libraries, etc=
.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I am working on third party package unaware of my SDK setup.<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Steve<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t">&nbsp;<o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_--

--_004_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_
Content-Type: text/plain; name="tmp.txt"
Content-Description: tmp.txt
Content-Disposition: attachment; filename="tmp.txt"; size=7650;
	creation-date="Wed, 05 May 2021 19:51:19 GMT";
	modification-date="Wed, 05 May 2021 19:50:52 GMT"
Content-Transfer-Encoding: base64

CgoKZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy9zYmNiU1REX1NESy9saW13cy8zLjAuNC9zeXNyb290
cy94ODZfNjQtcG9reXNkay1saW51eC91c3IvYmluL3g4Nl82NC1wb2t5LWxpbnV4L3g4Nl82NC1w
b2t5LWxpbnV4LWcrKyAtLXN5c3Jvb3Q9L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9T
REsvbGltd3MvMy4wLjQvc3lzcm9vdHMvY29yZWk3LTY0LXBva3ktbGludXggICAtLXN5c3Jvb3Q9
L2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9TREsvbGltd3MvMy4wLjQvc3lzcm9vdHMv
Y29yZWk3LTY0LXBva3ktbGludXggLU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1
Zy10eXBlcyAgIC1mdW5yb2xsLWxvb3BzIC1mc3RyaWN0LWFsaWFzaW5nIC1tc3NlMiAtbXNzZTMg
LW1zc3NlMyAtbXNzZTQuMSAtZlBJQyAtV2FsbCAtbWZwbWF0aD1zc2UgLVdjYXN0LWFsaWduICAt
c3RkPWMrKzB4IC1Xbm8taW52YWxpZC1vZmZzZXRvZiAtZm5vLXJ0dGkgLUkvZGlzazAvc2NyYXRj
aC9zbW9uc2Vlcy9zYmNiU1REX1NESy9saW13cy8zLjAuNC9zeXNyb290cy9jb3JlaTctNjQtcG9r
eS1saW51eC91c3IvaW5jbHVkZSAtSS9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3NiY2JTVERfU0RL
L2xpbXdzLzMuMC40L3N5c3Jvb3RzL2NvcmVpNy02NC1wb2t5LWxpbnV4L3Vzci9pbmNsdWRlL2Ns
YW5nIC1JL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9TREsvbGltd3MvMy4wLjQvc3lz
cm9vdHMvY29yZWk3LTY0LXBva3ktbGludXgvdXNyL2luY2x1ZGUvbGx2bSAtRF9HTlVfU09VUkNF
IC1EX19TVERDX0NPTlNUQU5UX01BQ1JPUyAtRF9fU1REQ19GT1JNQVRfTUFDUk9TIC1EX19TVERD
X0xJTUlUX01BQ1JPUyAtREdCRV9ERUJVR19NRU1PUlk9MCAgLURHQkVfQ09NUElMRVJfQVZBSUxB
QkxFPTEgLWZ2aXNpYmlsaXR5PWhpZGRlbiAtTzAgLWcgLURHQkVfREVCVUc9MSAgLS1zeXNyb290
PS9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3NiY2JTVERfU0RLL2xpbXdzLzMuMC40L3N5c3Jvb3Rz
L2NvcmVpNy02NC1wb2t5LWxpbnV4IC1ML2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMvc2JjYlNURF9T
REsvbGltd3MvMy4wLjQvc3lzcm9vdHMvY29yZWk3LTY0LXBva3ktbGludXgvdXNyL2xpYiAtTC9k
aXNrMC9zY3JhdGNoL3Ntb25zZWVzL3NiY2JTVERfU0RLL2xpbXdzLzMuMC40L3N5c3Jvb3RzL2Nv
cmVpNy02NC1wb2t5LWxpbnV4L3Vzci9saWIveDg2XzY0LXBva3ktbGludXgvOS4yLjAgLWxwdGhy
ZWFkIC1wdGhyZWFkIC1PMiAtcGlwZSAtV2wsLU8xIC1XbCwtTzEgLVdsLC0taGFzaC1zdHlsZT1n
bnUgLVdsLC0tYXMtbmVlZGVkIC0tc3lzcm9vdD0vZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy9zYmNi
U1REX1NESy9saW13cy8zLjAuNC9zeXNyb290cy9jb3JlaTctNjQtcG9reS1saW51eCAtTC9kaXNr
MC9zY3JhdGNoL3Ntb25zZWVzL3NiY2JTVERfU0RLL2xpbXdzLzMuMC40L3N5c3Jvb3RzL2NvcmVp
Ny02NC1wb2t5LWxpbnV4L3Vzci9saWIgLUwvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy9zYmNiU1RE
X1NESy9saW13cy8zLjAuNC9zeXNyb290cy9jb3JlaTctNjQtcG9reS1saW51eC91c3IvbGliL3g4
Nl82NC1wb2t5LWxpbnV4LzkuMi4wIC1scHRocmVhZCAtcHRocmVhZCAtTzIgLXBpcGUgLVdsLC1P
MSAtV2wsLS1oYXNoLXN0eWxlPWdudSAtV2wsLS1hcy1uZWVkZWQgLXJkeW5hbWljIC1zdGF0aWMg
Q01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvZ2JlX2Jpbl9nZW5lcmF0ZXIuY3BwLm8g
Q01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvc3lzL2ludHJ1c2l2ZV9saXN0LmNwcC5v
IENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL3N5cy9hc3NlcnQuY3BwLm8gQ01ha2VG
aWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvc3lzL2FsbG9jLmNwcC5vIENNYWtlRmlsZXMvZ2Jl
X2Jpbl9nZW5lcmF0ZXIuZGlyL3N5cy9tdXRleC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2Vu
ZXJhdGVyLmRpci9zeXMvcGxhdGZvcm0uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRl
ci5kaXIvc3lzL2N2YXIuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIv
Y29udGV4dC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9pci9wcm9maWxl
LmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL3R5cGUuY3BwLm8gQ01h
a2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvdW5pdC5jcHAubyBDTWFrZUZpbGVzL2di
ZV9iaW5fZ2VuZXJhdGVyLmRpci9pci9jb25zdGFudC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5f
Z2VuZXJhdGVyLmRpci9pci9zYW1wbGVyLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0
ZXIuZGlyL2lyL2ltYWdlLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2ly
L2hhbGYuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvaW5zdHJ1Y3Rp
b24uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvbGl2ZW5lc3MuY3Bw
Lm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvcmVnaXN0ZXIuY3BwLm8gQ01h
a2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvZnVuY3Rpb24uY3BwLm8gQ01ha2VGaWxl
cy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvdmFsdWUuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmlu
X2dlbmVyYXRlci5kaXIvaXIvbG93ZXJpbmcuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVy
YXRlci5kaXIvaXIvcHJvZmlsaW5nLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIu
ZGlyL2lyL3ByaW50Zi5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9pci9p
bW1lZGlhdGUuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvaXIvc3RydWN0
dXJpemVyLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2lyL3JlbG9jLmNw
cC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2JhY2tlbmQvY29udGV4dC5jcHAu
byBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL3Byb2dyYW0uY3BwLm8g
Q01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX3NhbXBsZXJfZml4LmNw
cC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9iaXRjb2RlX2xp
bmsuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX2dlbl9i
YWNrZW5kLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9w
YXNzZXMuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX3Nj
YWxhcml6ZS5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9sbHZtL2xsdm1f
aW50cmluc2ljX2xvd2VyaW5nLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGly
L2xsdm0vbGx2bV9iYXJyaWVyX25vZHVwLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0
ZXIuZGlyL2xsdm0vbGx2bV9wcmludGZfcGFyc2VyLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9n
ZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV9wcm9maWxpbmcuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmlu
X2dlbmVyYXRlci5kaXIvbGx2bS9FeHBhbmRDb25zdGFudEV4cHIuY3BwLm8gQ01ha2VGaWxlcy9n
YmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9FeHBhbmRVdGlscy5jcHAubyBDTWFrZUZpbGVzL2di
ZV9iaW5fZ2VuZXJhdGVyLmRpci9sbHZtL1Byb21vdGVJbnRlZ2Vycy5jcHAubyBDTWFrZUZpbGVz
L2diZV9iaW5fZ2VuZXJhdGVyLmRpci9sbHZtL0V4cGFuZExhcmdlSW50ZWdlcnMuY3BwLm8gQ01h
a2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX2RldmljZV9lbnF1ZXVlLmNw
cC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vU3RyaXBBdHRyaWJ1dGVz
LmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2xsdm0vbGx2bV90b19nZW4u
Y3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2bS9sbHZtX2xvYWRzdG9y
ZV9vcHRpbWl6YXRpb24uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvbGx2
bS9sbHZtX3Vucm9sbC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNr
ZW5kL2dlbi9nZW5fbWVzYV9kaXNhc20uYy5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIu
ZGlyL2JhY2tlbmQvZ2VuX2luc25fc2VsZWN0aW9uLmNwcC5vIENNYWtlRmlsZXMvZ2JlX2Jpbl9n
ZW5lcmF0ZXIuZGlyL2JhY2tlbmQvZ2VuX2luc25fc2VsZWN0aW9uX29wdGltaXplLmNwcC5vIENN
YWtlRmlsZXMvZ2JlX2Jpbl9nZW5lcmF0ZXIuZGlyL2JhY2tlbmQvZ2VuX2luc25fc2NoZWR1bGlu
Zy5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbl9pbnNu
X3NlbGVjdGlvbl9vdXRwdXQuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIv
YmFja2VuZC9nZW5fcmVnX2FsbG9jYXRpb24uY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVy
YXRlci5kaXIvYmFja2VuZC9nZW5fY29udGV4dC5jcHAubyBDTWFrZUZpbGVzL2diZV9iaW5fZ2Vu
ZXJhdGVyLmRpci9iYWNrZW5kL2dlbjc1X2NvbnRleHQuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmlu
X2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW44X2NvbnRleHQuY3BwLm8gQ01ha2VGaWxlcy9nYmVf
YmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW45X2NvbnRleHQuY3BwLm8gQ01ha2VGaWxlcy9n
YmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW5fcHJvZ3JhbS5jcHAubyBDTWFrZUZpbGVz
L2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbl9pbnNuX2NvbXBhY3QuY3BwLm8gQ01h
a2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW5fZW5jb2Rlci5jcHAubyBD
TWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbjdfZW5jb2Rlci5jcHAu
byBDTWFrZUZpbGVzL2diZV9iaW5fZ2VuZXJhdGVyLmRpci9iYWNrZW5kL2dlbjc1X2VuY29kZXIu
Y3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW44X2VuY29k
ZXIuY3BwLm8gQ01ha2VGaWxlcy9nYmVfYmluX2dlbmVyYXRlci5kaXIvYmFja2VuZC9nZW45X2Vu
Y29kZXIuY3BwLm8gIC1vIGdiZV9iaW5fZ2VuZXJhdGVyIC1XbCwtQnN0YXRpYyAtbGNsYW5nQW5h
bHlzaXMgLWxjbGFuZ0FSQ01pZ3JhdGUgLWxjbGFuZ0FTVCAtbGNsYW5nQVNUTWF0Y2hlcnMgLWxj
bGFuZ0Jhc2ljIC1sY2xhbmdDb2RlR2VuIC1sY2xhbmdDcm9zc1RVIC1sY2xhbmdEcml2ZXIgLWxj
bGFuZ0R5bmFtaWNBU1RNYXRjaGVycyAtbGNsYW5nRWRpdCAtbGNsYW5nRm9ybWF0IC1sY2xhbmdG
cm9udGVuZCAtbGNsYW5nRnJvbnRlbmRUb29sIC1sY2xhbmdIYW5kbGVDWFggLWxjbGFuZ0luZGV4
IC1sY2xhbmdMZXggLWxjbGFuZ1BhcnNlIC1sY2xhbmdSZXdyaXRlIC1sY2xhbmdSZXdyaXRlRnJv
bnRlbmQgLWxjbGFuZ1NlbWEgLWxjbGFuZ1NlcmlhbGl6YXRpb24gLWxjbGFuZ1N0YXRpY0FuYWx5
emVyQ2hlY2tlcnMgLWxjbGFuZ1N0YXRpY0FuYWx5emVyQ29yZSAtbGNsYW5nU3RhdGljQW5hbHl6
ZXJGcm9udGVuZCAtbGNsYW5nVG9vbGluZyAtV2wsLUJkeW5hbWljIC1sTExWTVhSYXkgLWxMTFZN
V2luZG93c01hbmlmZXN0IC1sTExWTVRleHRBUEkgLWxMTFZNVGFibGVHZW4gLWxMTFZNU3ltYm9s
aXplIC1sTExWTURlYnVnSW5mb1BEQiAtbExMVk1PcmNKSVQgLWxMTFZNSklUTGluayAtbExMVk1P
YmplY3RZQU1MIC1sTExWTU1DQSAtbExMVk1MVE8gLWxMTFZNUGFzc2VzIC1sTExWTU9iakNBUkNP
cHRzIC1sTExWTUxpbmVFZGl0b3IgLWxMTFZNTGliRHJpdmVyIC1sTExWTUludGVycHJldGVyIC1s
TExWTUZ1enpNdXRhdGUgLWxMTFZNTUNKSVQgLWxMTFZNRXhlY3V0aW9uRW5naW5lIC1sTExWTVJ1
bnRpbWVEeWxkIC1sTExWTURsbHRvb2xEcml2ZXIgLWxMTFZNT3B0aW9uIC1sTExWTURlYnVnSW5m
b0dTWU0gLWxMTFZNQ292ZXJhZ2UgLWxMTFZNQ29yb3V0aW5lcyAtbExMVk1YODZEaXNhc3NlbWJs
ZXIgLWxMTFZNWDg2QXNtUGFyc2VyIC1sTExWTVg4NkNvZGVHZW4gLWxMTFZNWDg2RGVzYyAtbExM
Vk1YODZVdGlscyAtbExMVk1YODZJbmZvIC1sTExWTVJJU0NWRGlzYXNzZW1ibGVyIC1sTExWTVJJ
U0NWQ29kZUdlbiAtbExMVk1SSVNDVkFzbVBhcnNlciAtbExMVk1SSVNDVkRlc2MgLWxMTFZNUklT
Q1ZVdGlscyAtbExMVk1SSVNDVkluZm8gLWxMTFZNUG93ZXJQQ0Rpc2Fzc2VtYmxlciAtbExMVk1Q
b3dlclBDQ29kZUdlbiAtbExMVk1Qb3dlclBDQXNtUGFyc2VyIC1sTExWTVBvd2VyUENEZXNjIC1s
TExWTVBvd2VyUENJbmZvIC1sTExWTU1pcHNEaXNhc3NlbWJsZXIgLWxMTFZNTWlwc0NvZGVHZW4g
LWxMTFZNTWlwc0FzbVBhcnNlciAtbExMVk1NaXBzRGVzYyAtbExMVk1NaXBzSW5mbyAtbExMVk1C
UEZEaXNhc3NlbWJsZXIgLWxMTFZNQlBGQ29kZUdlbiAtbExMVk1CUEZBc21QYXJzZXIgLWxMTFZN
QlBGRGVzYyAtbExMVk1CUEZJbmZvIC1sTExWTUFSTURpc2Fzc2VtYmxlciAtbExMVk1BUk1Db2Rl
R2VuIC1sTExWTUFSTUFzbVBhcnNlciAtbExMVk1BUk1EZXNjIC1sTExWTUFSTVV0aWxzIC1sTExW
TUFSTUluZm8gLWxMTFZNQUFyY2g2NERpc2Fzc2VtYmxlciAtbExMVk1BQXJjaDY0Q29kZUdlbiAt
bExMVk1BQXJjaDY0QXNtUGFyc2VyIC1sTExWTUFBcmNoNjREZXNjIC1sTExWTUFBcmNoNjRVdGls
cyAtbExMVk1BQXJjaDY0SW5mbyAtbExMVk1BTURHUFVEaXNhc3NlbWJsZXIgLWxMTFZNTUNEaXNh
c3NlbWJsZXIgLWxMTFZNQU1ER1BVQ29kZUdlbiAtbExMVk1NSVJQYXJzZXIgLWxMTFZNR2xvYmFs
SVNlbCAtbExMVk1TZWxlY3Rpb25EQUcgLWxMTFZNaXBvIC1sTExWTUluc3RydW1lbnRhdGlvbiAt
bExMVk1WZWN0b3JpemUgLWxMTFZNTGlua2VyIC1sTExWTUlSUmVhZGVyIC1sTExWTUFzbVBhcnNl
ciAtbExMVk1Bc21QcmludGVyIC1sTExWTURlYnVnSW5mb0RXQVJGIC1sTExWTUNvZGVHZW4gLWxM
TFZNVGFyZ2V0IC1sTExWTVNjYWxhck9wdHMgLWxMTFZNSW5zdENvbWJpbmUgLWxMTFZNQWdncmVz
c2l2ZUluc3RDb21iaW5lIC1sTExWTVRyYW5zZm9ybVV0aWxzIC1sTExWTUJpdFdyaXRlciAtbExM
Vk1BbmFseXNpcyAtbExMVk1Qcm9maWxlRGF0YSAtbExMVk1PYmplY3QgLWxMTFZNQml0UmVhZGVy
IC1sTExWTUJpdHN0cmVhbVJlYWRlciAtbExMVk1BTURHUFVBc21QYXJzZXIgLWxMTFZNTUNQYXJz
ZXIgLWxMTFZNQU1ER1BVRGVzYyAtbExMVk1BTURHUFVVdGlscyAtbExMVk1NQyAtbExMVk1EZWJ1
Z0luZm9Db2RlVmlldyAtbExMVk1EZWJ1Z0luZm9NU0YgLWxMTFZNQ29yZSAtbExMVk1SZW1hcmtz
IC1sTExWTUJpbmFyeUZvcm1hdCAtbExMVk1BTURHUFVJbmZvIC1sTExWTVN1cHBvcnQgLWxMTFZN
RGVtYW5nbGUgLWx6IC1scnQgLWxkbCAtbHB0aHJlYWQgLWxtIC1seG1sMiAtbGRybV9pbnRlbCAt
bGRybSAtbGRsCgoK

--_004_c4355b3cebdb4bfbb037b3818a9b5af5baesystemscom_--
