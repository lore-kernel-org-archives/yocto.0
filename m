Received: from xtrwsxqr.outbound-mail.sendgrid.net (xtrwsxqr.outbound-mail.sendgrid.net [167.89.106.69])
 by mx.groups.io with SMTP id smtpd.web12.23.1591387364446368290
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 13:02:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cmss.com header.s=s1 header.b=bN0EzUff;
 spf=pass (domain: em7737.cmss.com, ip: 167.89.106.69, mailfrom: bounces+10226496-caa1-yocto=lists.yoctoproject.org@em7737.cmss.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cmss.com;
	h=from:subject:mime-version:to:content-type;
	s=s1; bh=kN8RG3p0vvkSH9RdaOxd/7cHOVnHYKb/6WeuKbfEZvg=;
	b=bN0EzUffHZLSpikClZUpGTJvQnfPAaysZqpWgp1KuT9iwA6gTS1v/vHTSyNgFqhECToy
	RStcpv3ZudAVneegXB4sBJNVoaMN6eXMg6PLMHHQhgqNRg1PEifyfdNvu7/hE/WCNVH/MJ
	raO46ee+fdpqFvpymh1kgdmcHmmaZKpGA=
Received: by filterdrecv-p3mdw1-6f5df8956d-x2qpw with SMTP id filterdrecv-p3mdw1-6f5df8956d-x2qpw-20-5EDAA4E3-57
        2020-06-05 20:02:43.564979248 +0000 UTC m=+172138.951575671
Received: from [192.168.1.122] (unknown)
	by ismtpd0003p1las1.sendgrid.net (SG) with ESMTP id pFODvh-gQ9KdNp2EJJkAgg
	for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 20:02:43.235 +0000 (UTC)
From: "R Keith Beal" <r@cmss.com>
Subject: Yocto gdb build error on Microblaze platform
Organization: CMSS
Message-ID: <95d62cb9-5791-970e-4397-488c497afa61@CMSS.com>
Date: Fri, 05 Jun 2020 20:02:43 +0000 (UTC)
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
X-SG-EID: 
 =?us-ascii?Q?zH5BvTCLmxveNZUWTpA1kjPQlMx6WUZjO4chbQW4mTSooAYdJEnNhAeGXMD6WE?=
 =?us-ascii?Q?9r9mzpPBnktQnEWvGIziAjykCBE6iri0JAzJSX7?=
 =?us-ascii?Q?O4H1VW3kP70FtoFk+OOCWxXTMS8L39TWbStMivD?=
 =?us-ascii?Q?Fwn8haEBD94SI6hwGRLAukbizpSX855wvw=2FAj0f?=
 =?us-ascii?Q?V=2FcD4t+S7SE3ZcDFPD1UDFcsNEsKEo8VGAquzW+?=
 =?us-ascii?Q?bxwt0A8zzyIbl392S9U+6SDGKDsKi+Qrjwtv2t?=
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative;
 boundary="------------45289DDBBB657EE77E25B016"
Content-Language: en-US

--------------45289DDBBB657EE77E25B016
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Fellow Developers,


I am attempting to add gdb to a Yocto project based on Yocto 2.3 (Pyro).

The build complains about a missing libreadline.a.


*| make[2]: Leaving directory 
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/opcodes'*

*| make[2]: Entering directory 
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'*

*| make[2]: *** No rule to make target '../readline/libreadline.a', 
needed by 'gdb'.Stop.*

*| make[2]: *** Waiting for unfinished jobs....*

I tried several solutions from related searches.

http://url1567.cmss.com/ls/click?upn=THw5ysdXae-2B-2Btp69CrkSktfnnmsBMoq2fcLowO1MzKn3wcqowiND-2FTX2Ck09GJGF11Hdqxt9-2BJySKGonPkx0-2FsBVZ74oHM4kelhYpa4edNE-3D8p2T_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2FcjU3hpChsPjc-2F1yV-2Fy-2FqYqvP0R0ga7sDTpc0xAErHOPta6wxiaAu6AxpdmfODDLShss6kwLSUrYDD-2Blu1f1t6JOIXb54UcLQ1jl-2Bt-2FM1Df2FGOUq2KT8E3r3P-2BJ339dtjkdSSHNILM4ZuiCObkRvoU-3D

http://url1567.cmss.com/ls/click?upn=THw5ysdXae-2B-2Btp69CrkSkhlnHi-2FYRYLnr3RlrnNZXmyK27CyplgiatU0F3nje-2FAXjDAERK7GpIYABqm2VrjanqpD9-2FFXkXtOSF1ZzOXINUA-3DoTvx_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2FRTx-2B4fNAXrHZKp3D4Q26gT1QyfMP2VyOgj0cWkVr0aAxCZq5nVYw-2F-2FW7z2B-2B-2BQTAgDm3JxjNhK9NyC2UMI1YkyOzY2m0cYgn4QjDv0YF1CFQtc3YGQpM7IDUxoZc8iNdpJqoB23dymTZ6InMsH9ebA-3D

Tried *PACKAGECONFIG_remove_pn-gdb = "readline"* but it does not help.

Tried adding *EXTRA_OECONF_append = " --without-system-readline"* to the 
image recipe but it doesn’t help.**

From 
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/gdb-7.7.1/gdb/Makefile.in

*# Where is the READLINE library?Typically in ../readline.*

*READLINE_DIR = ../readline*

*READLINE_SRC = $(srcdir)/$(READLINE_DIR)*

*READLINE = @READLINE@*

*READLINE_DEPS = @READLINE_DEPS@*

*READLINE_CFLAGS = @READLINE_CFLAGS@*

I tried adding *PACKAGECONFIG_remove_pn-gdb = "readline"* to the 
local.conf**


As a test, I manually built gdb’s local copy of readline and I get lots 
of compile errors that look like some sort of version skew with the 
thread library.

*| In file included from ../../gdb-7.7.1/gdb/proc-service.c:28:0:*

*| ../../gdb-7.7.1/gdb/gdb_proc_service.h:162:9: error: unknown type 
name 'gdb_fpregset_t'*

*|typedef gdb_fpregset_t gdb_prfpregset_t;*

*|^~~~~~~~~~~~~~*

*| ../../gdb-7.7.1/gdb/proc-service.c:151:1: warning: no previous 
prototype for 'ps_lgetxregsize' [-Wmissing-prototypes]*

*|ps_lgetxregsize (gdb_ps_prochandle_t ph, lwpid_t lwpid, int *xregsize)*

*|^~~~~~~~~~~~~~~*

*| ../../gdb-7.7.1/gdb/proc-service.c:161:1: warning: no previous 
prototype for 'ps_lgetxregs' [-Wmissing-prototypes]*

*|ps_lgetxregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, caddr_t xregset)*

*|^~~~~~~~~~~~*

*| ../../gdb-7.7.1/gdb/proc-service.c:171:1: warning: no previous 
prototype for 'ps_lsetxregs' [-Wmissing-prototypes]*

*|ps_lsetxregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, caddr_t xregset)*

*|^~~~~~~~~~~~*

*| ../../gdb-7.7.1/gdb/proc-service.c:180:1: warning: no previous 
prototype for 'ps_plog' [-Wmissing-prototypes]*

*|ps_plog (const char *fmt, ...)*

*|^~~~~~~*

*| ../../gdb-7.7.1/gdb/proc-service.c:298:1: error: conflicting types 
for 'ps_lgetfpregs'*

*|ps_lgetfpregs (gdb_ps_prochandle_t ph, lwpid_t lwpid,*

*|^~~~~~~~~~~~~*

*| In file included from ../../gdb-7.7.1/gdb/gdb_proc_service.h:25:0,*

*|from ../../gdb-7.7.1/gdb/proc-service.c:28:*

*| 
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/recipe-sysroot/usr/include/proc_service.h:61:17: 
note: previous declaration of 'ps_lgetfpregs' was here*

*|extern ps_err_e ps_lgetfpregs (struct ps_prochandle *,*

*|^~~~~~~~~~~~~*

*| ../../gdb-7.7.1/gdb/proc-service.c:318:1: error: conflicting types 
for 'ps_lsetfpregs'*

*|ps_lsetfpregs (gdb_ps_prochandle_t ph, lwpid_t lwpid,*

*|^~~~~~~~~~~~~*

*| In file included from ../../gdb-7.7.1/gdb/gdb_proc_service.h:25:0,*

*|from ../../gdb-7.7.1/gdb/proc-service.c:28:*

*| 
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/recipe-sysroot/usr/include/proc_service.h:63:17: 
note: previous declaration of 'ps_lsetfpregs' was here*

*|extern ps_err_e ps_lsetfpregs (struct ps_prochandle *,*

*|^~~~~~~~~~~~~*

*| ERROR: oe_runmake failed*

*| Makefile:1011: recipe for target 'proc-service.o' failed*

*| make[2]: *** [proc-service.o] Error 1*

*| make[2]: *** Waiting for unfinished jobs....*

*| In file included from ../../gdb-7.7.1/gdb/linux-thread-db.c:24:0:*

*| ../../gdb-7.7.1/gdb/gdb_proc_service.h:162:9: error: unknown type 
name 'gdb_fpregset_t'*

*|typedef gdb_fpregset_t gdb_prfpregset_t;*

*|^~~~~~~~~~~~~~*

*| Makefile:1011: recipe for target 'linux-thread-db.o' failed*

*| make[2]: *** [linux-thread-db.o] Error 1*

*| make[2]: Leaving directory 
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'*

*| Makefile:8278: recipe for target 'all-gdb' failed*

*| make[1]: *** [all-gdb] Error 2*

*| make[1]: Leaving directory 
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux'*

*| Makefile:832: recipe for target 'all' failed*

*| make: *** [all] Error 2*

*| WARNING: 
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/temp/run.do_compile.18533:1exit 
1 from 'exit 1'*

*| ERROR: Function failed: do_compile (log file is located at 
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/temp/log.do_compile.18533)*

*ERROR**: Task 
(/opt/yocto/poky/meta-xilinx/recipes-microblaze/gdb/gdb_7.7.1.bb:do_compile) 
failed with exit code '1'*


--------------45289DDBBB657EE77E25B016
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Fellow Developers,</p>
    <p><br>
    </p>
    <p><!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves/>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="376">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"/>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"/>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"/>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"/>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"/>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Mention"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Smart Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hashtag"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Unresolved Mention"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Smart Link"/>
 </w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
</style>
<![endif]-->
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">I am
        attempting to add gdb to a Yocto project based on Yocto 2.3
        (Pyro).</p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">The build
        complains about a missing libreadline.a.</p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"> <br>
      </p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: Leaving directory
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/opcodes'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: Entering directory
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: *** <span
              style="background:yellow;mso-highlight:yellow">No rule to
              make target
              '../readline/libreadline.a', needed by 'gdb'.<span
                style="mso-spacerun:yes"> 
              </span>Stop.</span></span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: *** Waiting for
            unfinished jobs....</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"> </p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">I tried several
        solutions from related searches.</p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"><a
href="http://url1567.cmss.com/ls/click?upn=THw5ysdXae-2B-2Btp69CrkSktfnnmsBMoq2fcLowO1MzKn3wcqowiND-2FTX2Ck09GJGF11Hdqxt9-2BJySKGonPkx0-2FvLNAXTq0WYwTE0-2B6Uyz0Q0-3Ds3H8_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2Fb7gapUyik7iAzbey0Nv6Nh1PPsPq0e6zs-2FHGTQciMLMokCWW2i0XDtIP1PxZS-2FBaX9nG8vzU0xSEsOh5-2B-2BNrbSSvAUSyjTopTajwQc0OlCGBRmdkOAlI4rLI2-2FbXadatAeHM2ppplObheY876Um-2F7s-3D">https://www.yoctoproject.org/pipermail/yocto/2017-June/036676.html</a></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"><a
href="http://url1567.cmss.com/ls/click?upn=THw5ysdXae-2B-2Btp69CrkSkhlnHi-2FYRYLnr3RlrnNZXmyK27CyplgiatU0F3nje-2FAXjDAERK7GpIYABqm2VrjansniTichrksQOsPzjrfGRnQ-3D3jnn_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2FROKHNngrTHmIDyLyzUDU4zrfMIpo78C2wBlDsxv8-2BZrviAWCn1byCAfT7YiEftQVK3DN3LssMFNwtjmKXL-2FfZ3nlLFAqjcUW5B7S21IzlkqE9-2BhkLOYjNKhAmXnXDCrWhn8go40EayViSLFCcW2bIE-3D">https://yocto.yoctoproject.narkive.com/gUVw5u2k/failed-to-build-gdb</a></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"> </p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">Tried <b><span
style="font-size:7.0pt;line-height:107%;font-family:&quot;Courier
            New&quot;">PACKAGECONFIG_remove_pn-gdb
            = "readline"</span></b> but it does not help.</p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">Tried adding
        <b><span
            style="font-size:7.0pt;line-height:107%;font-family:&quot;Courier
            New&quot;;
            color:black">EXTRA_OECONF_append = "
            --without-system-readline"</span></b>
        to the image recipe but it doesn’t help.<b><span
            style="font-size:7.0pt;
            line-height:107%;font-family:&quot;Courier
            New&quot;;color:black"></span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"> </p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><span
          style="font-size:
          9.0pt;font-family:&quot;Lucida
          Console&quot;;mso-bidi-font-family:&quot;Lucida Console&quot;">From
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/gdb-7.7.1/gdb/Makefile.in</span></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">#
            Where is the READLINE
            library?<span style="mso-spacerun:yes">  </span>Typically
            in ../readline.</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">READLINE_DIR
            = ../readline</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">READLINE_SRC
            =
            $(srcdir)/$(READLINE_DIR)</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">READLINE
            = @READLINE@</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">READLINE_DEPS
            =
            @READLINE_DEPS@</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">READLINE_CFLAGS
            =
            @READLINE_CFLAGS@</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"> </p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">I tried adding
        <b><span
            style="font-size:7.0pt;line-height:107%;font-family:&quot;Courier
            New&quot;;
            mso-fareast-font-family:&quot;Times New Roman&quot;">PACKAGECONFIG_remove_pn-gdb
            =
            "readline"</span></b> to the local.conf<b><span
            style="font-size:
            7.0pt;line-height:107%;font-family:&quot;Courier
            New&quot;;mso-fareast-font-family:&quot;Times New
            Roman&quot;"></span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"><br>
      </p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt">As a test, I
        manually built gdb’s local copy of readline and I get lots of
        compile errors that
        look like some sort of version skew with the thread library.</p>
    </p>
    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt"><!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves/>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="376">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"/>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"/>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"/>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"/>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"/>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Mention"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Smart Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hashtag"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Unresolved Mention"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Smart Link"/>
 </w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
</style>
<![endif]-->
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            In file included from
            ../../gdb-7.7.1/gdb/proc-service.c:28:0:</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/gdb_proc_service.h:162:9: error: unknown
            type name
            'gdb_fpregset_t'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>typedef gdb_fpregset_t
            gdb_prfpregset_t;</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">          </span>^~~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/proc-service.c:151:1: warning: no
            previous prototype for
            'ps_lgetxregsize' [-Wmissing-prototypes]</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>ps_lgetxregsize
            (gdb_ps_prochandle_t ph,
            lwpid_t lwpid, int *xregsize)</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>^~~~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/proc-service.c:161:1: warning: no
            previous prototype for
            'ps_lgetxregs' [-Wmissing-prototypes]</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>ps_lgetxregs
            (gdb_ps_prochandle_t ph, lwpid_t
            lwpid, caddr_t xregset)</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>^~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/proc-service.c:171:1: warning: no
            previous prototype for
            'ps_lsetxregs' [-Wmissing-prototypes]</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>ps_lsetxregs
            (gdb_ps_prochandle_t ph, lwpid_t
            lwpid, caddr_t xregset)</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>^~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/proc-service.c:180:1: warning: no
            previous prototype for
            'ps_plog' [-Wmissing-prototypes]</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>ps_plog (const char
            *fmt, ...)</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>^~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/proc-service.c:298:1: error: conflicting
            types for
            'ps_lgetfpregs'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>ps_lgetfpregs
            (gdb_ps_prochandle_t ph,
            lwpid_t lwpid,</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>^~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            In file included from
            ../../gdb-7.7.1/gdb/gdb_proc_service.h:25:0,</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">                  </span>from
            ../../gdb-7.7.1/gdb/proc-service.c:28:</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/recipe-sysroot/usr/include/proc_service.h:61:17:
            note: previous declaration of 'ps_lgetfpregs' was here</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>extern ps_err_e
            ps_lgetfpregs (struct
            ps_prochandle *,</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">                  </span>^~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/proc-service.c:318:1:
            error: conflicting types for 'ps_lsetfpregs'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>ps_lsetfpregs
            (gdb_ps_prochandle_t ph,
            lwpid_t lwpid,</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>^~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            In file included from
            ../../gdb-7.7.1/gdb/gdb_proc_service.h:25:0,</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">                  </span>from
            ../../gdb-7.7.1/gdb/proc-service.c:28:</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/recipe-sysroot/usr/include/proc_service.h:63:17:
            note: previous declaration of 'ps_lsetfpregs' was here</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>extern ps_err_e
            ps_lsetfpregs (struct
            ps_prochandle *,</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">                  </span>^~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ERROR: oe_runmake failed</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            Makefile:1011: recipe for
            target 'proc-service.o' failed</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: ***
            [proc-service.o] Error 1</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: *** Waiting for
            unfinished jobs....</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            In file included from
            ../../gdb-7.7.1/gdb/linux-thread-db.c:24:0:</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ../../gdb-7.7.1/gdb/gdb_proc_service.h:162:9: error: unknown
            type name
            'gdb_fpregset_t'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">  </span>typedef gdb_fpregset_t
            gdb_prfpregset_t;</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|<span
              style="mso-spacerun:yes">          </span>^~~~~~~~~~~~~~</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            Makefile:1011: recipe for
            target 'linux-thread-db.o' failed</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: ***
            [linux-thread-db.o] Error 1</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[2]: Leaving directory
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            Makefile:8278: recipe for
            target 'all-gdb' failed</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[1]: *** [all-gdb]
            Error 2</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make[1]: Leaving directory
'/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            Makefile:832: recipe for
            target 'all' failed</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            make: *** [all] Error 2</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            WARNING:
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/temp/run.do_compile.18533:1exit
            1 from 'exit 1'</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">|
            ERROR: Function failed:
            do_compile (log file is located at
/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-cmp-mh-poky-linux/gdb/7.7.1-r0/temp/log.do_compile.18533)</span></b></p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
        normal;mso-layout-grid-align:none;text-autospace:none"><b><span
            style="font-size:7.0pt;font-family:&quot;Courier
            New&quot;;color:#FF4040">ERROR</span></b><b><span
            style="font-size:7.0pt;font-family:&quot;Courier New&quot;">:
            <span style="color:#BF0000">Task
(/opt/yocto/poky/meta-xilinx/recipes-microblaze/gdb/gdb_7.7.1.bb:do_compile)
              failed with exit code '1'</span></span></b></p>
    </p>
    <p>
      <p class="MsoNormal"
        style="margin-bottom:0in;margin-bottom:.0001pt"> </p>
    </p>
  <img src="http://url1567.cmss.com/wf/open?upn=gBDCMYoc6mSi-2BxYmKnDpwZwU3FILgl9Dv-2B-2BPyLkDynrmyfH8ygM53Jq3z3DtpSGkfRYzuo6PkEh2Yaofgmh0fVjJp4b-2FW2AOj75Sq5jlKTJnyctaOUFvfYYoWHPbgjIXIjCHsJcwqZMziObxeGFcoW3WBSdyufj89lt8Qr4ylo8mEY6O1Wqqi7JaqJW02ToF-2FcdL20fXh9Rfe2SJvBiAaSkzpFKSJmBA2KPs7cUcw76lM4CKwuWmVLRes9fmon6x" alt="" width="1" height="1" border="0" style="height:1px !important;width:1px !important;border-width:0 !important;margin-top:0 !important;margin-bottom:0 !important;margin-right:0 !important;margin-left:0 !important;padding-top:0 !important;padding-bottom:0 !important;padding-right:0 !important;padding-left:0 !important;"/></body>
</html>

--------------45289DDBBB657EE77E25B016--
