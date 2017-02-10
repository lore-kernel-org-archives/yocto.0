Return-Path: <der_flori@hotmail.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76755E009F4; Fri, 10 Feb 2017 06:11:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (der_flori[at]hotmail.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Feb 2017 06:11:56 PST
Received: from COL004-OMC3S1.hotmail.com (col004-omc3s1.hotmail.com
	[65.55.34.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43DE9E009E2
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 06:11:56 -0800 (PST)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com ([65.55.34.137])
	by COL004-OMC3S1.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 10 Feb 2017 06:10:54 -0800
Received: from DB5EUR03FT049.eop-EUR03.prod.protection.outlook.com
	(10.152.20.59) by DB5EUR03HT241.eop-EUR03.prod.protection.outlook.com
	(10.152.21.92) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.888.7;
	Fri, 10 Feb 2017 14:10:53 +0000
Received: from DB6PR0901MB0951.eurprd09.prod.outlook.com (10.152.20.55) by
	DB5EUR03FT049.mail.protection.outlook.com (10.152.20.191) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.904.16 via Frontend Transport; Fri, 10 Feb 2017 14:10:53 +0000
Received: from DB6PR0901MB0951.eurprd09.prod.outlook.com ([10.168.12.155]) by
	DB6PR0901MB0951.eurprd09.prod.outlook.com ([10.168.12.155]) with
	mapi id 15.01.0888.026; Fri, 10 Feb 2017 14:10:52 +0000
From: Florian Wulff <der_flori@hotmail.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cannot find -lgcc in glibc 2.24-r0 
Thread-Index: AQHSg6QhhBfSF6UNvEu2KZqIUBpM6g==
Date: Fri, 10 Feb 2017 14:10:52 +0000
Message-ID: <DB6PR0901MB095165B364EBD4494E85F5F8FD440@DB6PR0901MB0951.eurprd09.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.de;
x-incomingtopheadermarker: OriginalChecksum:20592B0566114F7D859DCD54D80820774B9DB615F89CEA29204138F70685FFF1;
	UpperCasedChecksum:95533C9FD6322140E9D778CB248D35812E8DFDA00F91D0AE7B2624337DA70D22;
	SizeAsReceived:7617; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [t0GuQS9KkHblWySyN0UR6qgGcbL3ONeM]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT241;
	5:UrsGEWC+fW9p2IMzqNE1W7Citr+lhxhnJEiOxmPAommEHal9kV5uQwVfeTnz3+RIc6zK+oD02YSjvSGOSNBsd1oJwRoV4Xrop64FJ8OJ/TQg7ZkyWMPZnTk3aeWekKO8nUb6Rp/A/LPMW7H4W2YG2g==;
	24:W2HvFtxthj5sb/YotK8Je1/2IfgF6lFzqx/Ikr10W5iRyzKB16FPTYIbxdCbUwXGkf4ZwRQs80FHALR1p+1rEqR69WIprYGglBuzlsa+4zQ=;
	7:LMkRb7oLDfUSBh2vrQHdAD4McmJvziG5ruV4XO1yxuMhza2IakMZhtxMl5Do2V6bihxzsJbCVP1r51R/9xE+0MTMKhwQE3mCuzeabneMLH9q4000SvAyL/MVCVQubTZ5avzr7ZZlZJ+qZGnfs9V3ckYGMw516xs0VsIcBYMjAimgkaay/LdFEvbu55+g/Nge/OXsDXA90IdyfDVHOvfv+whkwDGghNuM2MS9mojz8syFvSkC/Mmm92owqbNAZ0uh3OD8imvkw+e41Vk5Er5ri3+ZFx1q0SA9V364h0q1J5PLVY77pJ6Tpi9pWKAYeJBxPHo/nC3HjI4WixQABCgX/0FmXugoD8oFCfYSBUxgo1X0OM2g2CgeCwIpJDjhVNQdffumA8eLh64RrqiK03R1Mr2Ej9Jocc5Mk1O+GeJ1qXXCd9ag/IE01s/1XJFvibDlJIov7h8WdxFvYuWl55D3wHtSxOa2OeHCdhySAilhrJlktbaWL1fpPrfdDDoh4VGfdV4yXcfFGhyojFHfh9Lu0w==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR03HT241;
	H:DB6PR0901MB0951.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 35e84808-5ad3-4fc0-2573-08d451be9f96
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(5061506426)(5061507331)(1603103135)(1601125107)(1701031045);
	SRVR:DB5EUR03HT241; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015086)(82015046);
	SRVR:DB5EUR03HT241; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT241; 
x-forefront-prvs: 0214EB3F68
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2017 14:10:52.8415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT241
X-OriginalArrivalTime: 10 Feb 2017 14:10:55.0036 (UTC)
	FILETIME=[7E62FFC0:01D283A7]
X-Mailman-Approved-At: Fri, 10 Feb 2017 06:46:23 -0800
Subject: ld: cannot find -lgcc in glibc 2.24-r0
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
X-List-Received-Date: Fri, 10 Feb 2017 14:11:57 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0901MB095165B364EBD4494E85F5F8FD440DB6PR0901MB0951_"

--_000_DB6PR0901MB095165B364EBD4494E85F5F8FD440DB6PR0901MB0951_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Yocto team,

I have an issues building and linked the glibc (2.24-r0) with Morty Yocto 2=
.2
It can not find the libgcc -lgcc, but gcc and gcc-multilib are installed in=
 /usr/lib/gcc

This problem occur when bitbake core-image-minimal-dev or bitbake core-imag=
e-minimal-dev -c populate_sdk but only for glibc

How and where can I specify the path for gcc_lib or LIBRARY_PATH or LDFLAGS=
 etc.
Thank you very much

BR Florian

| x86_64-poky-linux-gcc  -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dss=
e -msse4.2 --sysroot=3D/home/developer/yocto/Poky/build/tmp/sysroots/kontro=
n-kbox-a103-tcbootstrap   -nostdlib -nostartfiles -r -o /home/developer/yoc=
to/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky=
-linux/libc_pic.os \
|  -Wl,-d -Wl,--whole-archive /home/developer/yocto/Poky/build/tmp/work/cor=
ei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-linux/libc_pic.a -o /home=
/developer/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/bui=
ld-x86_64-poky-linux/libc_pic.os
| x86_64-poky-linux-gcc  -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dss=
e -msse4.2 --sysroot=3D/home/developer/yocto/Poky/build/tmp/sysroots/kontro=
n-kbox-a103-tcbootstrap   -nostdlib -nostartfiles -r -o /home/developer/yoc=
to/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky=
-linux/elf/librtld.map.o '-Wl,-(' /home/developer/yocto/Poky/build/tmp/work=
/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-linux/elf/dl-allobjs.=
os /home/developer/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.2=
4-r0/build-x86_64-poky-linux/libc_pic.a -lgcc '-Wl,-)' -Wl,-Map,/home/devel=
oper/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86=
_64-poky-linux/elf/librtld.mapT
| /home/developer/yocto/Poky/build/tmp/sysroots/x86_64-linux/usr/libexec/x8=
6_64-poky-linux.gcc-cross-initial-x86_64/gcc/x86_64-poky-linux/6.2.0/ld: ca=
nnot find -lgcc
| collect2: error: ld returned 1 exit status
| Makefile:349: recipe for target '/home/developer/yocto/Poky/build/tmp/wor=
k/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-linux/elf/librtld.ma=
p' failed
| make[2]: *** [/home/developer/yocto/Poky/build/tmp/work/corei7-64-poky-li=
nux/glibc/2.24-r0/build-x86_64-poky-linux/elf/librtld.map] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory '/home/developer/yocto/Poky/build/tmp/work/cor=
ei7-64-poky-linux/glibc/2.24-r0/git/elf'
| Makefile:234: recipe for target 'elf/subdir_lib' failed
| make[1]: *** [elf/subdir_lib] Error 2
| make[1]: Leaving directory '/home/developer/yocto/Poky/build/tmp/work/cor=
ei7-64-poky-linux/glibc/2.24-r0/git'
| Makefile:9: recipe for target 'all' failed
| make: *** [all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/develope=
r/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/temp/log.do_=
compile.106361)
ERROR: Task (/home/developer/yocto/Poky/meta/recipes-core/glibc/glibc_2.24.=
bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1258 tasks of which 1106 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /home/developer/yocto/Poky/meta/recipes-core/glibc/glibc_2.24.bb:do_compi=
le
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.



--_000_DB6PR0901MB095165B364EBD4494E85F5F8FD440DB6PR0901MB0951_
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
<p></p>
<div>Dear Yocto team,</div>
<div><br>
</div>
<div>I have an issues building and linked the glibc (2.24-r0) with Morty Yo=
cto 2.2</div>
<div>It can not find the libgcc -lgcc, but gcc and gcc-multilib are install=
ed in /usr/lib/gcc</div>
<div><br>
</div>
<div>This problem occur when bitbake core-image-minimal-dev or bitbake core=
-image-minimal-dev -c populate_sdk but only for glibc</div>
<div><br>
</div>
<div>How and where can I specify the path for gcc_lib or LIBRARY_PATH or LD=
FLAGS etc.&nbsp;</div>
<div>Thank you very much</div>
<div><br>
</div>
<div>BR Florian&nbsp;</div>
<div><br>
</div>
<div>| x86_64-poky-linux-gcc &nbsp;-m64 -march=3Dcorei7 -mtune=3Dcorei7 -mf=
pmath=3Dsse -msse4.2 --sysroot=3D/home/developer/yocto/Poky/build/tmp/sysro=
ots/kontron-kbox-a103-tcbootstrap &nbsp; -nostdlib -nostartfiles -r -o /hom=
e/developer/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/bu=
ild-x86_64-poky-linux/libc_pic.os
 \</div>
<div>| &nbsp;-Wl,-d -Wl,--whole-archive /home/developer/yocto/Poky/build/tm=
p/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-linux/libc_pic.=
a -o /home/developer/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2=
.24-r0/build-x86_64-poky-linux/libc_pic.os</div>
<div>| x86_64-poky-linux-gcc &nbsp;-m64 -march=3Dcorei7 -mtune=3Dcorei7 -mf=
pmath=3Dsse -msse4.2 --sysroot=3D/home/developer/yocto/Poky/build/tmp/sysro=
ots/kontron-kbox-a103-tcbootstrap &nbsp; -nostdlib -nostartfiles -r -o /hom=
e/developer/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/bu=
ild-x86_64-poky-linux/elf/librtld.map.o
 '-Wl,-(' /home/developer/yocto/Poky/build/tmp/work/corei7-64-poky-linux/gl=
ibc/2.24-r0/build-x86_64-poky-linux/elf/dl-allobjs.os /home/developer/yocto=
/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-l=
inux/libc_pic.a -lgcc '-Wl,-)' -Wl,-Map,/home/developer/yocto/Poky/build/tm=
p/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-linux/elf/librt=
ld.mapT</div>
<div>| /home/developer/yocto/Poky/build/tmp/sysroots/x86_64-linux/usr/libex=
ec/x86_64-poky-linux.gcc-cross-initial-x86_64/gcc/x86_64-poky-linux/6.2.0/l=
d: cannot find -lgcc</div>
<div>| collect2: error: ld returned 1 exit status</div>
<div>| Makefile:349: recipe for target '/home/developer/yocto/Poky/build/tm=
p/work/corei7-64-poky-linux/glibc/2.24-r0/build-x86_64-poky-linux/elf/librt=
ld.map' failed</div>
<div>| make[2]: *** [/home/developer/yocto/Poky/build/tmp/work/corei7-64-po=
ky-linux/glibc/2.24-r0/build-x86_64-poky-linux/elf/librtld.map] Error 1</di=
v>
<div>| make[2]: *** Waiting for unfinished jobs....</div>
<div>| make[2]: Leaving directory '/home/developer/yocto/Poky/build/tmp/wor=
k/corei7-64-poky-linux/glibc/2.24-r0/git/elf'</div>
<div>| Makefile:234: recipe for target 'elf/subdir_lib' failed</div>
<div>| make[1]: *** [elf/subdir_lib] Error 2</div>
<div>| make[1]: Leaving directory '/home/developer/yocto/Poky/build/tmp/wor=
k/corei7-64-poky-linux/glibc/2.24-r0/git'</div>
<div>| Makefile:9: recipe for target 'all' failed</div>
<div>| make: *** [all] Error 2</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Function failed: do_compile (log file is located at /home/dev=
eloper/yocto/Poky/build/tmp/work/corei7-64-poky-linux/glibc/2.24-r0/temp/lo=
g.do_compile.106361)</div>
<div>ERROR: Task (/home/developer/yocto/Poky/meta/recipes-core/glibc/glibc_=
2.24.bb:do_compile) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 1258 tasks of which 1106 didn't need to=
 be rerun and 1 failed.</div>
<div><br>
</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/developer/yocto/Poky/meta/recipes-core/glibc/glibc_2.24.b=
b:do_compile</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_DB6PR0901MB095165B364EBD4494E85F5F8FD440DB6PR0901MB0951_--
