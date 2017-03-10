Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CF43E009DA; Fri, 10 Mar 2017 06:51:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 06:51:51 PST
Received: from BAY004-OMC1S2.hotmail.com (bay004-omc1s2.hotmail.com
	[65.54.190.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26EF5E00939
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:51:51 -0800 (PST)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com ([65.54.190.59])
	by BAY004-OMC1S2.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 10 Mar 2017 06:50:51 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=r99x95Wt/P+3dp76K7lEHv3sXD/j7i/ZFhHqDdCaK8Y=;
	b=ozpGEnVfKsRksGqcz49a55XUnOQNg4k4ckkbTlWo/snEHbtJ1no5cKYSC15qcryZ+i/aCtNBU8MZ49Xmkj+ibgBqifdunTIl0lr5meWBn/tHe0Ywhms7Au+yyTEOgT3/sHotcocSRlStnf0l/tOftUDmwtIHbpUstWwO4h9aLA7LsyTJADiXu2nV48RU6c4MSmhLi9shcHjXofyVUGJtqBXD7h0rqwLWIsxJwJQYva1WjhCfG3+6meG4dW9vyLte1LyBgQ6ssjtlXmmbIFeIQRpmURcueZc2M6ay1n7S9y4iE5JmBsgRnB2O0Hb83uut7zif2DKmvtDJzOGmtLaCXQ==
Received: from AM5EUR02FT041.eop-EUR02.prod.protection.outlook.com
	(10.152.8.53) by AM5EUR02HT102.eop-EUR02.prod.protection.outlook.com
	(10.152.9.59) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7;
	Fri, 10 Mar 2017 14:50:46 +0000
Received: from DB5PR0101MB1686.eurprd01.prod.exchangelabs.com (10.152.8.54) by
	AM5EUR02FT041.mail.protection.outlook.com (10.152.9.100) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.7 via Frontend Transport; Fri, 10 Mar 2017 14:50:46 +0000
Received: from DB5PR0101MB1686.eurprd01.prod.exchangelabs.com
	([fe80::79f2:6c68:b5be:d4a4]) by
	DB5PR0101MB1686.eurprd01.prod.exchangelabs.com
	([fe80::79f2:6c68:b5be:d4a4%14]) with mapi id 15.01.0947.022;
	Fri, 10 Mar 2017 14:50:46 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] Failed to patch "defconfig" for linux kernel
Thread-Index: AQHSma2yZ1uT4Djby0+ZXsZMqHULzA==
Date: Fri, 10 Mar 2017 14:50:46 +0000
Message-ID: <DB5PR0101MB1686CDF4B73864FF6879490492200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:A5A55FAC1936C13979A947A179C8428BE24B1A28DEAB2D53BDE8997DFA99DD9F;
	UpperCasedChecksum:0D5B60536DABB83A0A6DE29DF0A880C46DE8F67A999AD2AF1DE0B06A5BF9097E;
	SizeAsReceived:7718; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [FthcLs1hMVNgGmMS/EavIEygLbSjEEVi]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT102;
	5:FuEBWxh8k6BuFa7O/SCTYG5Nw7HX5UeLcnFZUvXq1i0cWfl8MLvFL+Il8GRlFtK5lhX0oAROXsHftwS3j6rG2KHGohxxe95+jdNY5k0vP46qo6ckvCBgxl95pfp5vKqsQSyDp9f6IRjBjWbW1Y3LRQ==;
	24:cKgOEZZYSMDU8FgW4okznTW/nZ4m5KSt8CTvGa3guWFmZ2H5liEu04wGIC9ISxaMPL1QnM22C+h1BBJgQgOj8tyqMhWaDDQVpEgM/auUo9o=;
	7:Z8qWnm8EEoFwhvMnJ44uvErPQEUV8LW1I5nFwd+b4MhjknGAzp5CvbDu62U2lZs9zqU5EHNb88AR/GJHYlekz0JR1Gp7D25CBrtR+a1uTkVYgxLXNRwY3V8CRWeROztP/qDhBjgc/PqxhbR4JRJFL6rY9BfOGWjdj5p0bRFIBl8jYmfEj6gaKnUkRgFpxzwKkKoMk9yeVV8IaKDLggMWzJ8kTF2n7MpFQUbGf8iCNXbB6eeu7B+gmRrn2QDmx6J+54/omQhQR7v/CYQtjhqG/sHg8/dC0utvVA7hyFbCDWfjzb+aBm+17Uon+Jout+CW
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900016);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT102;
	H:DB5PR0101MB1686.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: fa1eae7e-1ed8-4e44-55ae-08d467c4d5c3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:AM5EUR02HT102; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015176)(444000031); SRVR:AM5EUR02HT102; BCL:0; PCL:0;
	RULEID:; SRVR:AM5EUR02HT102; 
x-forefront-prvs: 02426D11FE
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2017 14:50:46.3056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT102
X-OriginalArrivalTime: 10 Mar 2017 14:50:51.0541 (UTC)
	FILETIME=[B661A450:01D299AD]
Subject: [bitbake] Failed to patch "defconfig" for linux kernel
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
X-List-Received-Date: Fri, 10 Mar 2017 14:51:54 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR0101MB1686CDF4B73864FF6879490492200DB5PR0101MB1686_"

--_000_DB5PR0101MB1686CDF4B73864FF6879490492200DB5PR0101MB1686_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm currently trying to patch the linux kernel 3.8.13-r2 of an ARM based bo=
ard (Hachiko) in order to enable Bluetooth and RFCOMM support.


Currently, I select these options with bitbake -c menuconfig virtual/kernel

I'd like to use a patch on the defconfig in order to avoid the menuconfig s=
tep.


I've created a linux_3.8.13.bbappend file to apply the path.


Th patch file looks like:


--- a defconfig
+++ b defconfig
@@ -107,3 +107,16 @@
 CONFIG_CRYPTO_CBC=3Dy
 CONFIG_CRYPTO_MD5=3Dy
 CONFIG_CRYPTO_DES=3Dy
+#
+# FIR device drivers
+#
+CONFIG_BT=3Dy
+CONFIG_BT_RFCOMM=3Dy
+CONFIG_BT_RFCOMM_TTY=3Dy
+
+#
+# Bluetooth device drivers
+#
+CONFIG_BT_HCIBTUSB=3Dy
+CONFIG_WIRELESS=3Dy



The working directory of the linux is:


/home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-gnueabi/linux/3=
.8.13-r2/linux-3.8.13


But when the linux is fetched and unpacked, the root defconfig file is put =
in:


/home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-gnueabi/linux/3=
.8.13-r2


therefore, the patch step failed.


I tried to modify the patch with  --- a/../defconfig and b/../defconfig

but it does not work better.


Any idea how to make it work ?


Thanks.


Karim

--_000_DB5PR0101MB1686CDF4B73864FF6879490492200DB5PR0101MB1686_
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
<p>Hi,</p>
<p><br>
</p>
<p>I'm currently trying to patch the linux kernel 3.8.13-r2 of an ARM based=
 board (Hachiko) in order to enable Bluetooth and RFCOMM support.</p>
<p><br>
</p>
<p>Currently, I select these options with bitbake -c menuconfig virtual/ker=
nel</p>
<p>I'd like to use a patch on the defconfig in order to avoid the menuconfi=
g step.</p>
<p><br>
</p>
<p>I've created a linux_3.8.13.bbappend file to apply the path.</p>
<p><br>
</p>
<p>Th patch file looks like:</p>
<p><br>
</p>
<p></p>
<div><br>
</div>
<div><span style=3D"color: rgb(0, 111, 201);">--- a&nbsp;</span><span style=
=3D"color: rgb(0, 111, 201);">defconfig</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;&#43;&#43; b&nbsp;</span=
><span style=3D"color: rgb(0, 111, 201);">defconfig</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">@@ -107,3 &#43;107,16 @@</spa=
n></div>
<div><span style=3D"color: rgb(0, 111, 201);">&nbsp;CONFIG_CRYPTO_CBC=3Dy</=
span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&nbsp;CONFIG_CRYPTO_MD5=3Dy</=
span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&nbsp;CONFIG_CRYPTO_DES=3Dy</=
span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;#</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;# FIR device drivers</sp=
an></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;#</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;CONFIG_BT=3Dy</span></di=
v>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;CONFIG_BT_RFCOMM=3Dy</sp=
an></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;CONFIG_BT_RFCOMM_TTY=3Dy=
</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;#</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;# Bluetooth device drive=
rs</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;#</span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;CONFIG_BT_HCIBTUSB=3Dy</=
span></div>
<div><span style=3D"color: rgb(0, 111, 201);">&#43;CONFIG_WIRELESS=3Dy</spa=
n></div>
<div><br>
</div>
<p></p>
<p><br>
</p>
<p>The working directory of the linux is:</p>
<p><br>
</p>
<p><span><b style=3D"">/home/kai/yocto/build-hachiko/tmp/work/hachiko64-pok=
y-linux-gnueabi/linux/3.8.13-r2/linux-3.8.13</b></span><br>
</p>
<p><br>
</p>
<p>But when the linux is fetched and unpacked,&nbsp;the root&nbsp;defconfig=
 file is put in:</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><b style=3D"">/home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky=
-linux-gnueabi/linux/3.8.13-r2</b></span><br>
</p>
<p><br>
</p>
<p>therefore, the patch step failed.</p>
<p><br>
</p>
<p><span style=3D"font-size: 12pt;">I tried to modify the patch with &nbsp;=
--- a/../defconfig and b/../defconfig &nbsp; &nbsp;</span><br>
</p>
<p>but it does not work better.</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">Any idea how to make it work ?</span><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">Thanks.</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
<p>Karim</p>
<p></p>
</div>
</body>
</html>

--_000_DB5PR0101MB1686CDF4B73864FF6879490492200DB5PR0101MB1686_--
