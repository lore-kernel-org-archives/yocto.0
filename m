Return-Path: <natalia_th92@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39DD9E00AA2; Tue, 11 Apr 2017 16:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natalia_th92[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.71.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 25261 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Apr 2017 16:36:55 PDT
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092071077.outbound.protection.outlook.com [40.92.71.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 582E6E009C2;
	Tue, 11 Apr 2017 16:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=tbxeP8kMO32h6kTdw403AKUs+giNXtyDVNHvAaGhU2E=;
	b=GkHJUDd/uicUqapT9Kat20j3fjAeKZmoQS58PmNmBOh6Gh99/HxBzj+XImobo24sjIEYNxnJxoX35lhEwIn9W/ZG19f4mxmPddFa3zQItYEGtXBNwFnyYiJpQjxtT8e9ApceyURwhl5X5jqTn3ooBxG0TO8tYG6rZ1mEZJlsjLep6T/OHrFJBLXxpYJ3DnUvsvm699mhfN64lFKSKB7sGlHRRCJlOg4lEEf+bKvm81BJVkqq9va7C3R24oiYmMpX9J1y64uIZPE5v2bZ9izs1lbVvNNsIMp4qs+F/94Up74iK0C0IQrl0ucl2SpL0BZ2ge1DQLJlVhndtwY48n0M0Q==
Received: from VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
	(10.152.18.56) by VE1EUR03HT114.eop-EUR03.prod.protection.outlook.com
	(10.152.19.185) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1019.14;
	Tue, 11 Apr 2017 09:59:49 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com (10.152.18.55) by
	VE1EUR03FT061.mail.protection.outlook.com (10.152.19.220) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.14 via Frontend Transport; Tue, 11 Apr 2017 09:59:49 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) by
	VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) with mapi id
	15.01.1019.025; Tue, 11 Apr 2017 09:59:49 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] yocto Digest, Vol 79, Issue 23
Thread-Index: AQHSru7Vp0L4aujnbUWDNzhtbaQCRaG+qNSrgADH1gCAAEwcT4AAAfihgAA3X4M=
Date: Tue, 11 Apr 2017 09:59:49 +0000
Message-ID: <VI1PR05MB3376C5C31FD0FC3956DD4498F9000@VI1PR05MB3376.eurprd05.prod.outlook.com>
References: <mailman.64321.1491494297.15860.yocto@yoctoproject.org>
	<VI1PR05MB3376EF89C390BAFE1B57F658F9010@VI1PR05MB3376.eurprd05.prod.outlook.com>,
	<3424568.qg3npLRIuq@peggleto-mobl.ger.corp.intel.com>,
	<VI1PR05MB3376542B4739AF7119A5EFDDF9000@VI1PR05MB3376.eurprd05.prod.outlook.com>,
	<VI1PR05MB33761BA1D487C6B407956188F9000@VI1PR05MB3376.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB33761BA1D487C6B407956188F9000@VI1PR05MB3376.eurprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:854261329B0753AA6F327673C633FF4FE80CC96B08DB16A96BFC83091012D7ED;
	UpperCasedChecksum:6427A5CB5A9F50971288ED1725550C5E57F6BD2047B6FAC833A321FF487AA729;
	SizeAsReceived:8519; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [xE4IRqOYwbykkx+oQ0BncdCNfUvAaVqE]
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT114;
	5:9FMrsk9bjGLgZTv6q4JUJpkj/W1rtcdT3lLFMdQIf1tOUitngluzdpUmHRZXhrdkmI0UM7Lhh/iOZuUsMLgRo//zxCgiCfv0nJfy0Quvr0NxVAsM/i0wsnKt/wqz5pyLBmGPMauHoZ2zaLUSA7D54X8Z3DEGD3itRa5edFAB4EM=;
	24:ghvHpZg4uk65821PQ8R0vMCOmSO41QX1KsIiAaBexkkNpzf+9ywzMgvptrLNKrjuWCXJ7xQqbtoO6J9A+AUU7C06BoptkLWuUcdUJjdapKk=;
	7:kiFQ7L6Z20MjcmprqoIN/PaEIMbMRTSGjhkBJjb1BK+q4TKa5X1a9DancKZ4w77F8m1DC1xQ1UZTKdUBuT/4pxXUcKD4yzXW9aAnn7MkonahzEzVdG/McU9Qt/PnXiY6Mkuz6LYDl4Z6u2mAWwtJhkxqXmfsXgXUfiC/i/6fmNXSNrLWq6jActzKUYbghqSitsKKgMuXbJ6A2qsip/nWOsnPVuHzGjw11UyRDuG8uui4YkuJbKkcYzl7EzUpHB07hINGeHSkbEZGxn/m9k2V6pqDomikJe2AzpsM3I9ceW1B8zAydrNBEHEB2vfcCZyF
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR03HT114;
	H:VI1PR05MB3376.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 0305f92d-17b5-41c9-4bc1-08d480c17de8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:VE1EUR03HT114; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:VE1EUR03HT114; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT114; 
x-forefront-prvs: 0274272F87
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2017 09:59:49.4571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT114
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: Fw: yocto Digest, Vol 79, Issue 23
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Apr 2017 23:37:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR05MB3376C5C31FD0FC3956DD4498F9000VI1PR05MB3376eurp_"

--_000_VI1PR05MB3376C5C31FD0FC3956DD4498F9000VI1PR05MB3376eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable




________________________________
From: Natalia Theologou <natalia_th92@hotmail.com>
Sent: Tuesday, April 11, 2017 9:39 AM
To: paul.eggleton@linux.intel.com
Cc: yocto@yoctoproject.org
Subject: Fw: [yocto] yocto Digest, Vol 79, Issue 23




________________________________
From: Natalia Theologou <natalia_th92@hotmail.com>
Sent: Tuesday, April 11, 2017 9:38 AM
To: Paul Eggleton
Subject: Re: [yocto] yocto Digest, Vol 79, Issue 23


Hello Paul,

Thank you for your answer.


My error is this:


 ERROR: oe_runmake failed
| WARNING: /~/build_directory/tmp/work/x86_64-linux/gmp-native/5.1.1-r0/tem=
p/run.do_compile.16521:1 exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at /~/build_direc=
tory/tmp/work/x86_64-linux/gmp-native/5.1.1-r0/temp/log.do_compile.16521)

ERROR: Task 1570
(virtual:native:/~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,
do_compile) failed with exit code '1' NOTE: Tasks Summary: Attempted 106
tasks of which 102 didn't need to be rerun and 2 failed. Waiting for 0
 running tasks to finish:


After this, I get also this message:


Summary: 2 tasks failed:
virtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb,
do_compile
virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,
do_compile


My whole message was this:


Well I am running Ubuntu 16 and trying to install yocto for a board.

When I run


bitbake core-image-x11

I get this error:

 ERROR: oe_runmake failed
| WARNING: /~/build_directory/tmp/work/x86_64-linux/gmp-native/5.1.1-r0/tem=
p/run.do_compile.16521:1 exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at /~/build_direc=
tory/tmp/work/x86_64-linux/gmp-native/5.1.1-r0/temp/log.do_compile.16521)


ERROR: Task 1570 (virtual:native:/~/sources/poky/meta/recipes-support/gmp/g=
mp_5.1.1.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 106 tasks of which 102 didn't need to be rer=
un and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
  virtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, =
do_compile
  virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_c=
ompile


gmp_5.1.1.bb has this code inside:


require gmp.inc
LICENSE=3D"LGPLv3&GPLv3"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504=
 \
            file://version.c;endline=3D18;md5=3Dd8c56b52b9092346b9f93b4da65=
ef790"

SRC_URI_append =3D " file://use-includedir.patch \
                   file://append_user_provided_flags.patch \
                   "

SRC_URI[md5sum] =3D "2fa018a7cd193c78494525f236d02dd6"
SRC_URI[sha256sum] =3D "a0d4779f48b36519dfaceb5f987a7c76fcac223258bebea3bb2=
244310970afad"


and when I run the  bitbake fsl-image-x11 I also have an error in ncurses.b=
b which has this code inside:


require ncurses.inc

PR =3D "${INC_PR}.1"

SRC_URI +=3D "file://tic-hang.patch \
            file://config.cache \
"

SRC_URI[md5sum] =3D "8cb9c412e5f2d96bc6f459aa8c6282a1"
SRC_URI[sha256sum] =3D "9046298fb440324c9d4135ecea7879ffed8546dd1b58e59430e=
a07a4633f563b"

Best regards and thanks,
Theologou Natalia





________________________________
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Sent: Tuesday, April 11, 2017 4:59 AM
To: Natalia Theologou
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] yocto Digest, Vol 79, Issue 23

Hi Natalia,

On Tuesday, 11 April 2017 2:11:15 AM NZST Natalia Theologou wrote:
> Well I am running Ubuntu 16 and trying to install yocto for a board.
>
> When I run
>
> bitbake core-image-x11
>
> I get this error:
>
> ERROR: Task 1570
> (virtual:native:/~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,
> do_compile) failed with exit code '1' NOTE: Tasks Summary: Attempted 106
> tasks of which 102 didn't need to be rerun and 2 failed. Waiting for 0
> running tasks to finish:
>
> Summary: 2 tasks failed:
>   virtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb=
,
> do_compile
> virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,
> do_compile

This doesn't look like the complete message - it should be preceded by the
specific error that occurred, can you please paste that in?

Thanks,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

--_000_VI1PR05MB3376C5C31FD0FC3956DD4498F9000VI1PR05MB3376eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block; width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Natalia Theologou &lt=
;natalia_th92@hotmail.com&gt;<br>
<b>Sent:</b> Tuesday, April 11, 2017 9:39 AM<br>
<b>To:</b> paul.eggleton@linux.intel.com<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Fw: [yocto] yocto Digest, Vol 79, Issue 23</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Natalia Theologou &lt=
;natalia_th92@hotmail.com&gt;<br>
<b>Sent:</b> Tuesday, April 11, 2017 9:38 AM<br>
<b>To:</b> Paul Eggleton<br>
<b>Subject:</b> Re: [yocto] yocto Digest, Vol 79, Issue 23</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt">H=
ello Paul,&nbsp;</span></p>
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt">T=
hank you for your answer.</span></p>
<p><br>
</p>
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt">M=
y error is this:</span></p>
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt"><=
br>
</span></p>
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:11pt; b=
ackground-color:rgb(190,190,190)"><span style=3D"color:rgb(255,0,0)"></p>
<div><span style=3D"color: rgb(0, 0, 0); background-color: rgb(190, 190, 19=
0);">&nbsp;ERROR: oe_runmake failed</span></div>
<div><span style=3D"color: rgb(0, 0, 0); background-color: rgb(190, 190, 19=
0);">| WARNING: /~/<i>build_directory</i>/tmp/work/x86_64-linux/gmp-native/=
5.1.1-r0/temp/run.do_compile.16521:1 exit 1 from</span></div>
<div><span style=3D"color: rgb(0, 0, 0); background-color: rgb(190, 190, 19=
0);">| &nbsp; exit 1</span></div>
<div><span style=3D"color: rgb(0, 0, 0); background-color: rgb(190, 190, 19=
0);">| ERROR: Function failed: do_compile (log file is located at
<span style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 14.666=
7px; background-color: rgb(190, 190, 190);">
/~</span><span style=3D"font-family: Arial, Helvetica, sans-serif; font-siz=
e: 14.6667px; background-color: rgb(190, 190, 190);">/</span><span style=3D=
"font-family: Arial, Helvetica, sans-serif; font-size: 14.6667px; backgroun=
d-color: rgb(190, 190, 190);"></span><i style=3D"font-family: Arial, Helvet=
ica, sans-serif; font-size: 14.6667px;">build_directory</i>/tmp/work/x86_64=
-linux/gmp-native/5.1.1-r0/temp/log.do_compile.16521)</span></div>
</span></span>
<p></p>
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:11pt; b=
ackground-color:rgb(190,190,190)"><span style=3D"color:rgb(255,0,0)">ERROR:=
</span><span style=3D"color:rgb(255,0,0)"> Task 1570</span></span><br style=
=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&=
quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;=
,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:11pt; back=
ground-color:rgb(190,190,190)">(virtual:native:/~/sources/poky/meta/recipes=
-support/gmp/gmp_5.1.1.bb,</span><br style=3D"font-family:Calibri,Arial,Hel=
vetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiS=
ymbols; font-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:11pt; back=
ground-color:rgb(190,190,190)">do_compile) failed with exit code '1' NOTE: =
Tasks Summary: Attempted 106</span><br style=3D"font-family:Calibri,Arial,H=
elvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot=
;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoj=
iSymbols; font-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:11pt; back=
ground-color:rgb(190,190,190)">tasks of which 102 didn't need to be rerun a=
nd 2 failed. Waiting for 0</span><br style=3D"font-family:Calibri,Arial,Hel=
vetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiS=
ymbols; font-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt"><spa=
n style=3D"font-size:11pt; background-color:rgb(190,190,190)">&nbsp;running=
 tasks to finish:</span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px"=
><br>
</span></p>
<p><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt">A=
fter this, I get also this message:&nbsp;</span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px"=
><br>
</span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px"=
><span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt; bac=
kground-color:rgb(190,190,190)">Summary:
 2 tasks failed:</span><br style=3D"font-family:Calibri,Arial,Helvetica,san=
s-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorE=
moji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fo=
nt-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt; back=
ground-color:rgb(190,190,190)">virtual:native:/~/sources/poky/meta/recipes-=
core/ncurses/ncurses_5.9.bb,</span><br style=3D"font-family:Calibri,Arial,H=
elvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot=
;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoj=
iSymbols; font-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt; back=
ground-color:rgb(190,190,190)">do_compile</span><br style=3D"font-family:Ca=
libri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe =
UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emo=
ji&quot;,EmojiSymbols; font-size:13.3333px">
<span style=3D"font-family:Arial,Helvetica,sans-serif; font-size:12pt; back=
ground-color:rgb(190,190,190)">virtual:native:~/sources/poky/meta/recipes-s=
upport/gmp/gmp_5.1.1.bb,</span><br style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,No=
toColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSym=
bols; font-size:13.3333px">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple C=
olor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI S=
ymbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:14pt"><span s=
tyle=3D"font-size:12pt; font-family:Arial,Helvetica,sans-serif; background-=
color:rgb(190,190,190)">do_compile</span></span><br>
</span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px"=
><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:14pt"><i><sp=
an style=3D"font-size:12pt; font-family:Arial,Helvetica,sans-serif"><br>
</span></i></span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px"=
><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:14pt"><span =
style=3D"font-size:12pt; font-family:Arial,Helvetica,sans-serif">My
 whole message was this:&nbsp;</span></span></span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:13.3333px"=
><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:14pt"><span =
style=3D"font-size:12pt; font-family:Arial,Helvetica,sans-serif"><br>
</span></span></span></p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><span style=3D"font-size:14pt">Well I am running Ubuntu 16 and trying to i=
nstall yocto for a board.&nbsp;</span><br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><span style=3D"font-size:14pt">When I run&nbsp;</span><br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><br>
</p>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16p=
x"><u><span style=3D"font-size:14pt">bitbake core-image-x11</span><br>
</u><br>
<span style=3D"font-size:14pt">I get this error:&nbsp;</span><br>
<br>
</div>
<div style=3D"color: rgb(255, 0, 0); font-family: Arial, Helvetica, sans-se=
rif; font-size: 14.6667px; background-color: rgb(190, 190, 190);">
<span style=3D"color: rgb(0, 0, 0);">&nbsp;ERROR: oe_runmake failed</span><=
/div>
<div style=3D"color: rgb(255, 0, 0); font-family: Arial, Helvetica, sans-se=
rif; font-size: 14.6667px; background-color: rgb(190, 190, 190);">
<span style=3D"color: rgb(0, 0, 0);">| WARNING: /~/<i>build_directory</i>/t=
mp/work/x86_64-linux/gmp-native/5.1.1-r0/temp/run.do_compile.16521:1 exit 1=
 from</span></div>
<div style=3D"color: rgb(255, 0, 0); font-family: Arial, Helvetica, sans-se=
rif; font-size: 14.6667px; background-color: rgb(190, 190, 190);">
<span style=3D"color: rgb(0, 0, 0);">| &nbsp; exit 1</span></div>
<div style=3D"color: rgb(255, 0, 0); font-family: Arial, Helvetica, sans-se=
rif; font-size: 14.6667px; background-color: rgb(190, 190, 190);">
<span style=3D"color: rgb(0, 0, 0);">| ERROR: Function failed: do_compile (=
log file is located at /<span style=3D"font-family: Arial, Helvetica, sans-=
serif; font-size: 14.6667px; background-color: rgb(190, 190, 190);">~</span=
><span style=3D"font-family: Arial, Helvetica, sans-serif; font-size: 14.66=
67px; background-color: rgb(190, 190, 190);">/</span><span style=3D"font-fa=
mily: Arial, Helvetica, sans-serif; font-size: 14.6667px; background-color:=
 rgb(190, 190, 190);"></span><i style=3D"font-family: Arial, Helvetica, san=
s-serif; font-size: 14.6667px;">build_directory/</i>tmp/work/x86_64-linux/g=
mp-native/5.1.1-r0/temp/log.do_compile.16521)</span></div>
<br style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px=
">
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
></p>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16p=
x"><span style=3D"font-size:14pt; background-color:rgb(190,190,190)"><span =
style=3D"color:rgb(255,0,0)">ERRO<span style=3D"color:rgb(255,0,0)">R</span=
></span><span style=3D"color:rgb(255,0,0)">:
 Task 1570 </span>(virtual:native:/~/sources/poky/meta/recipes-support/gmp/=
gmp_5.1.1.bb, do_compile) failed with exit code '1'</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">NOTE: Tas=
ks Summary: Attempted 106 tasks of which 102 didn't need to be rerun and 2 =
failed.</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">Waiting f=
or 0 running tasks to finish:</span><br>
<br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">Summary: =
2 tasks failed:</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&nbsp; vi=
rtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, do_c=
ompile</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&nbsp; vi=
rtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_compi=
le</span><br>
</div>
<br style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px=
">
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><span style=3D"font-size:14pt">gmp_5.1.1.bb has this code inside:</span></=
p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><br>
</p>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16p=
x"><span style=3D"font-size:14pt; background-color:rgb(190,190,190)">requir=
e gmp.inc</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">LICENSE=
=3D&quot;LGPLv3&amp;GPLv3&quot;</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">LIC_FILES=
_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504 \</=
span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&nbsp;&nb=
sp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; file://version.c;endline=3D=
18;md5=3Dd8c56b52b9092346b9f93b4da65ef790&quot;</span><br>
<br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">SRC_URI_a=
ppend =3D &quot; file://use-includedir.patch \</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; file://append_user_provided_flags.patch \</span><b=
r>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &quot;</span><br>
<br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">SRC_URI[m=
d5sum] =3D &quot;2fa018a7cd193c78494525f236d02dd6&quot;</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">SRC_URI[s=
ha256sum] =3D &quot;a0d4779f48b36519dfaceb5f987a7c76fcac223258bebea3bb22443=
10970afad&quot;</span></div>
<br style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px=
">
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><span style=3D"font-size:14pt">and when I run the&nbsp;&nbsp;bitbake fsl-i=
mage-x11&nbsp;I also have an error in ncurses.bb which has this code inside=
:</span></p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
><br>
</p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16px"=
></p>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:16p=
x"><span style=3D"font-size:14pt; background-color:rgb(190,190,190)">requir=
e ncurses.inc</span><br>
<br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">PR =3D &q=
uot;${INC_PR}.1&quot;</span><br>
<br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">SRC_URI &=
#43;=3D &quot;file://tic-hang.patch \</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://config.cac=
he \</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">&quot;</s=
pan><br>
<br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">SRC_URI[m=
d5sum] =3D &quot;8cb9c412e5f2d96bc6f459aa8c6282a1&quot;</span><br>
<span style=3D"font-size:14pt; background-color:rgb(190,190,190)">SRC_URI[s=
ha256sum] =3D &quot;9046298fb440324c9d4135ecea7879ffed8546dd1b58e59430ea07a=
4633f563b&quot;</span><br>
<br>
<span style=3D"font-size:14pt">Best regards and thanks,&nbsp;</span><br>
<span style=3D"font-size:14pt">Theologou Natalia</span></div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr style=3D"display:inline-block; width:98%" tabindex=3D"-1">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Paul Eggleton &lt;p=
aul.eggleton@linux.intel.com&gt;<br>
<b>Sent:</b> Tuesday, April 11, 2017 4:59 AM<br>
<b>To:</b> Natalia Theologou<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] yocto Digest, Vol 79, Issue 23</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText">Hi Natalia,<br>
<br>
On Tuesday, 11 April 2017 2:11:15 AM NZST Natalia Theologou wrote:<br>
&gt; Well I am running Ubuntu 16 and trying to install yocto for a board.<b=
r>
&gt; <br>
&gt; When I run<br>
&gt; <br>
&gt; bitbake core-image-x11<br>
&gt; <br>
&gt; I get this error:<br>
&gt; <br>
&gt; ERROR: Task 1570<br>
&gt; (virtual:native:/~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,=
<br>
&gt; do_compile) failed with exit code '1' NOTE: Tasks Summary: Attempted 1=
06<br>
&gt; tasks of which 102 didn't need to be rerun and 2 failed. Waiting for 0=
<br>
&gt; running tasks to finish:<br>
&gt; <br>
&gt; Summary: 2 tasks failed:<br>
&gt;&nbsp;&nbsp; virtual:native:/~/sources/poky/meta/recipes-core/ncurses/n=
curses_5.9.bb,<br>
&gt; do_compile<br>
&gt; virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,<b=
r>
&gt; do_compile<br>
<br>
This doesn't look like the complete message - it should be preceded by the =
<br>
specific error that occurred, can you please paste that in?<br>
<br>
Thanks,<br>
Paul<br>
<br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_VI1PR05MB3376C5C31FD0FC3956DD4498F9000VI1PR05MB3376eurp_--
