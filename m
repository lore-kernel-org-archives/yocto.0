Return-Path: <khanbahjat@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 251C1E00524; Mon, 17 Apr 2017 03:55:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (khanbahjat[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.64.109 listed in list.dnswl.org]
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
X-Greylist: delayed 17890 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Apr 2017 03:55:15 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064109.outbound.protection.outlook.com [40.92.64.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CC35E00349
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 03:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ZfmfrE7g3GMYvEN6tdl2ULxUfhxWaaBRqAJnSXT+z1s=;
	b=Z17VlITZLY59pakOzedTMVHGk6vKhvHLPK2kk8d+FLDXKabwGghUU88qR2Y85bWrN2dRqRs+Osxk3SeffPD+TJpCPNKq2MJdhShww78Nld74E8fGYtxjfE0ZuNR2/WO3VOZ1KD3QO8ts/Cno/NNyPaPU2qulnFfqy5zkZ7ffY2JQ6WXSftF4HqU2K4swhwm5MtFoougdc+Yevzp4C3anCpkDj5bO7S3WylpU9ueZ8bLmnmU5R5RKGXvRrj9euPUoraU7s3TT9tZguR6S9hotq6BdNeOgGtDaUMt4lSJSwEXrk3ZzZQ6jIgv6PStvXCQb/juWFHRNXb11bxdKtlTdrg==
Received: from VE1EUR01FT027.eop-EUR01.prod.protection.outlook.com
	(10.152.2.56) by VE1EUR01HT191.eop-EUR01.prod.protection.outlook.com
	(10.152.3.236) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1019.14;
	Sun, 16 Apr 2017 18:23:14 +0000
Received: from AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM (10.152.2.55) by
	VE1EUR01FT027.mail.protection.outlook.com (10.152.2.216) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.14 via Frontend Transport; Sun, 16 Apr 2017 18:23:14 +0000
Received: from AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM
	([fe80::840:1e07:be6:67b9]) by
	AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM
	([fe80::840:1e07:be6:67b9%15]) with mapi id 15.01.1034.013;
	Sun, 16 Apr 2017 18:23:13 +0000
From: bahjat khan <khanbahjat@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Noobie questions
Thread-Index: AQHSttxVIvk7VTnupE2pCxWy5v0t/Q==
Date: Sun, 16 Apr 2017 18:23:13 +0000
Message-ID: <AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:00280F343868676BFC1B31064EAB7CF168D35D0AFD3F492EF3377B5B64EEA545;
	UpperCasedChecksum:CA6E4FB5DF9F6281CBBEAAFCCD483C18F2099A35172F3D852B894777D66F1640;
	SizeAsReceived:7863; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hbWjqkzfC7szw9sJHuR4Pfekry2PmyR1]
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT191;
	5:47cs2THlW9u7h1t5tVhKdTC8sy633sL53u5E82FpahIxQxvcghVUFvDICfF1X8DOt7embUEuxyXCbKkp9cxBLsRpuA8Rx6K3otgD9X9W77+ZOEAexuQ8aD2qfrrYUfHxx/MOeE//K4YyC2+S7RbdUQ==;
	24:Igzm+aCyrG/FxJVva4wd1gh/nKmbO+2ZBCQtQFqMAn2CnuOk86EEI+fkCAoiGRDXcsadbLZG/CvSS44dvfpnsGDBqPLKBaU7NW7NmULeGPY=;
	7:8ruuKbRHrdkGn0bgQ2SkCI8pAJAzJiipmsmEBKL6nm3RCo4Jax8uHzBAdj33IRST9lafoYc6qBB3gOeSdbPkwDp8i9yT+q1J4ZzdYZOpJdiinZGOkTI0BW8u62ASYf4IWPisLzrbI3yl2Oh1isQRkBA1U4JuAdAwnyuBWcU/BzVOcWcDdWAey49TqE7xcz3ScfoQ50Eep38ayC+vwrzFo1vGaLi5naG9pO1y55RwjY2eyIANUDJTcf0vUWbOcifzXMZOJtXwUhoTydqd8IR0Uz9y4rFjpUb4dp1sol7jKGRuJGYKUNWnaqUC2uy06vSk
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR01HT191;
	H:AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 26a43cae-bd04-4e6e-fe7e-08d484f5a536
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045);
	SRVR:VE1EUR01HT191; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:VE1EUR01HT191; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT191; 
x-forefront-prvs: 0279B3DD0D
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2017 18:23:13.8687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT191
Subject: Noobie questions
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
X-List-Received-Date: Mon, 17 Apr 2017 10:55:20 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070AM4PR1001MB1347_"

--_000_AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070AM4PR1001MB1347_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Guys,


I'm extremely new to the yocto project, i've done quite a bit of reading on=
 it but i'm still very confused.

I've set my self a simple task of changing the kernel for a Yocto image tha=
t i build, the commands i use to build this yocto image are:


 $ git clone http://git.yoctoproject.org/git/poky
 $ cd poky
 $ git checkout -b fido origin/fido
 $ source oe-init-build-env
 $bitbake core-image-minimal
 $runqemu qemux86

I understand that i need to make changes to the poky.conf file to specify w=
hat kernel i want to use (i have a standard choice between 3.14 and 3.19).


However if i want to use a different kernel such as 4.4, i do this by makin=
g the changes in the poky.conf file, copying linux-yocto_3.19.bb file and r=
enaming it to linux-yocto_4.4.bb. I also change the SRC_URI to "git://git.y=
octoproject.org/linux-yocto-4.4.git;barcelone=3D1;branch=3D${KRBRANCH},${KM=
ETA};name=3Dmachine,meta"

It doesn't seem to find the place where it needs to download 4.4 from even =
though it's on the yocto website. I can download it by simply typing "git c=
lone xxxx"

Also i haven't changed the SRCREV_machine_qemuarm ?=3D "xxxxxxxxxxxx" numbe=
rs, because i don't know what they are or what the variable SRCREV_machine_=
qemuarm is.

With these warnings, it reverts back to 3.19 kernel.

I hope i've explained my problem well, but if you are still confused please=
 let me know.

Kind Regards,

Bahjat Murrad

--_000_AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070AM4PR1001MB1347_
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
<p>Hi Guys,&nbsp;</p>
<p><br>
</p>
<p>I'm extremely new to the yocto project, i've done quite a bit of reading=
 on it but i'm still very confused.&nbsp;<br>
<br>
I've set my self a simple task of changing the kernel for a Yocto image tha=
t i build, the commands i use to build this yocto image are:<br>
<br>
</p>
<pre style=3D"margin-top: 0px; margin-bottom: 1em; padding: 5px; border: 0p=
x; font-size: 13px; width: auto; max-height: 600px; overflow: auto; font-fa=
mily: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation=
 Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&q=
uot;, &quot;Courier New&quot;, monospace, sans-serif; background-color: rgb=
(239, 240, 241); word-wrap: normal; color: rgb(36, 39, 41);"><code style=3D=
"margin: 0px; padding: 0px; border: 0px; font-family: Consolas, Menlo, Mona=
co, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu S=
ans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quo=
t;, monospace, sans-serif; white-space: inherit;"> $ git clone http://git.y=
octoproject.org/git/poky=0A=
 $ cd poky=0A=
 $ git checkout -b fido origin/fido=0A=
 $ source oe-init-build-env=0A=
 $bitbake core-image-minimal=0A=
 $runqemu qemux86</code></pre>
I understand that i need to make changes to the poky.conf file to specify w=
hat kernel i want to use (i have a standard choice between 3.14 and 3.19).&=
nbsp;<br>
<br>
<p></p>
<p>However if i want to use a different kernel such as 4.4, i do this by ma=
king the changes in the poky.conf file, copying linux-yocto_3.19.bb file an=
d renaming&nbsp;it to&nbsp;<span style=3D"font-family: Calibri, Arial, Helv=
etica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI=
 Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Em=
oji&quot;, EmojiSymbols; font-size: 16px;">linux-yocto_4.4.bb.
 I also change the SRC_URI to &quot;<a href=3D"git://git.yoctoproject.org/l=
inux-yocto-4.4" style=3D"color: white; text-decoration: none; font-family: =
sans-serif; font-size: 13.3333px; white-space: nowrap; background-color: rg=
b(51, 51, 51);">git://git.yoctoproject.org/linux-yocto-4.4</a>.git;barcelon=
e=3D1;branch=3D${KRBRANCH},${KMETA};name=3Dmachine,meta&quot;<br>
<br>
It doesn't seem to find the place where it needs to download 4.4 from even =
though it's on the yocto website. I can download it by simply typing &quot;=
git clone xxxx&quot;&nbsp;<br>
<br>
Also i haven't changed the SRCREV_machine_qemuarm ?=3D &quot;xxxxxxxxxxxx&q=
uot; numbers, because i don't know what they are or what the variable SRCRE=
V_machine_qemuarm is.&nbsp;<br>
<br>
With these warnings, it reverts back to 3.19 kernel.&nbsp;<br>
<br>
I hope i've explained my problem well, but if you are still confused please=
 let me know.&nbsp;</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, Emoji=
Font, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;"><br>
Kind Regards,&nbsp;</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, Emoji=
Font, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">Bahjat Murrad&nbsp;</span></p>
</div>
</body>
</html>

--_000_AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070AM4PR1001MB1347_--
