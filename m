Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7E14E00D8A; Sat, 24 Sep 2016 07:38:36 -0700 (PDT)
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
	*      [65.55.90.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Sep 2016 07:38:33 PDT
Received: from SNT004-OMC4S33.hotmail.com (snt004-omc4s33.hotmail.com
	[65.55.90.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46844E008FB
	for <yocto@yoctoproject.org>; Sat, 24 Sep 2016 07:38:33 -0700 (PDT)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com ([65.55.90.200])
	by SNT004-OMC4S33.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 24 Sep 2016 07:37:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=gu1bShL0oyMvlQiUOkFyo1X0uV8QdUSxEG1xphK/VKQ=;
	b=BMDO/dlU9J8yYUB40wist71KtecEqeInnBJ5v/Hjfess5aEm3QJyKvla4lIDlx3W6JxxKEkxI/oHz4Z+3m8fR5GM2bVvHuaXmNw5TE65ti/QFfRcPCYGFbU/21ZUd7X6pqh/+lXJNqqyJfS5M4ayv9obmXU6Kh+1DYiyMlKNEW4V/zPFBvJVOOXmUOAnvoyYw0JjjHWgrgt4kKPyilcAVFDJ1b/HP1y/Ya6pkZtnwc9puflZSPmHQ89OYxxHq5U2DMKfIA6TALVaXBrPnrL+W6BSfW14yytQfOGvCB49U12MVQjnubzaaCOHmV/qYHfWXV/yKARLpIijPFbCgS1Dcg==
Received: from AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
	(10.152.16.59) by AM5EUR03HT113.eop-EUR03.prod.protection.outlook.com
	(10.152.17.106) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Sat, 24 Sep 2016 14:37:30 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.16.58) by
	AM5EUR03FT019.mail.protection.outlook.com (10.152.16.104) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Sat, 24 Sep 2016 14:37:29 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0629.018; Sat, 24 Sep 2016 14:37:29 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-toradex] failed to patch
	dont_start_connman_on_nfsboot.patch
Thread-Index: AQHSFnDlzeL8FwRGYkaZMF0TQr8nuw==
Date: Sat, 24 Sep 2016 14:37:29 +0000
Message-ID: <HE1PR01MB1883A9A270A8D1993228C9EC92CB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.16.58)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.16.58 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5/SMhI/QOycNK9KR1tXjq7VtuTHHWOP4]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT113;
	6:gBQWwmBKx3MM8+57c6Q84jCDCz6zj38JHcbG9KUQ5cBu1CLdEiEGYbqk3m+u9+zRsnEhyW5Iq4dwRB34S51ekstHrdi62iH2dpOBZMdD+eI4lEN8948dFaDGbHXKkkk6JkH0PcZo+NBPMNnd9xcz8UU2A9qP6WEhOGN4T8Y21UZyKU9EQLGC0NVbYtNajHg17cug1PUsR8FIRHvqSDRgPqRDBcb4A8pIHlX+1WYa5zFdwHu+Rr2Uxvo7rsqFeYCttugoV2bOu9fGoN07oqkCxP47VdkbI3sR70BBz+E5KWs=;
	5:WBq5DrqIOWUMBWchecrlDEzt+MRE4dAb8a6nrJdW/O/jmByzrrTDrhfnSUdgq40rT3btpz5KUfkuoJwAFd7Zbnx86NRjSn4xMPpZr4JjRVucjkLxy0J12mH5/KaN9K1GxM8AaIbZgwt+GvOuuJTFbw==;
	24:vjcDC9zmP/7AOMHwN6zfytXM4VfGBk9lcwFenKiuNAbGphUJ1WBG7yhERtdvnBOdkMfy4OomW93z77a9U4D3e5/aDWFDKWM+1aHOXDJnTes=;
	7:Etby3KUX4IBbwQeVvznmPzG+q9hBefi2Un9ujoojN7uc5x7jN5BeJXujU/cRHes88iKojTH1KtruvSIX7X9AbqbLsR8g/1w+8+6yNTCbXx4VDnPpP/iTT1RktiVzHo0DGTIwz5HDctUc7iUeNg2kQDcJKDCY7a8dBJctu1E7fAgtmJUX5BdsvR0lnUGKUhGuVl66MSYIs2DQTvRac/r8VyywUHf36bjjPkgcXM92UH8gyVNvQd0QSOdmZcduStl2WsIdldL+ib0wcEtDRgGXSLPU5lbSxRdx1IEYipQ7JfJsfQO4v4CJxj9GepWCkHAa
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR03HT113;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 41a4c1b6-6e8a-493b-a6f8-08d3e4884fdc
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR03HT113;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR03HT113; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT113; 
x-forefront-prvs: 0075CB064E
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2016 14:37:29.4306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT113
X-OriginalArrivalTime: 24 Sep 2016 14:37:32.0280 (UTC)
	FILETIME=[2EFFD780:01D21671]
Subject: [meta-toradex] failed to patch dont_start_connman_on_nfsboot.patch
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
X-List-Received-Date: Sat, 24 Sep 2016 14:38:36 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883A9A270A8D1993228C9EC92CB0HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883A9A270A8D1993228C9EC92CB0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I'm building a core-image-sato based on toradex colibrit20 bsp.

Using meta-toradex.


During build, I have the follwoing error:


ERROR: connman-1.31-r0 do_patch: Command Error: 'quilt --quiltrc /home/kai/=
yocto/colibri-t20-kts/tmp/sysroots/x86_64-linux/etc/quiltrc push' exited wi=
th 1  Output:
Applying patch dont_start_connman_on_nfsboot.patch
patching file src/connman.service.in
Hunk #1 FAILED at 3.
1 out of 1 hunk FAILED -- rejects in file src/connman.service.in
Patch dont_start_connman_on_nfsboot.patch does not apply (enforce with -f)
ERROR: connman-1.31-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /home/kai/yocto/colibri-t20-kts/tmp/wo=
rk/armv7ahf-vfp-poky-linux-gnueabi/connman/1.31-r0/temp/log.do_patch.8724
ERROR: Task 2836 (/home/kai/yocto/poky-toradex/meta/recipes-connectivity/co=
nnman/connman_1.31.bb, do_patch) failed with exit code '1'



In the log file:


NOTE: Applying patch '0001-iptables-Add-missing-function-item-of-xtables-to=
-mat.patch' (../poky-toradex/meta/recipes-connectivity/connman/connman/0001=
-iptables-Add-missing-func
tion-item-of-xtables-to-mat.patch)
NOTE: Applying patch 'dont_start_connman_on_nfsboot.patch' (../poky-toradex=
/meta-toradex/recipes-connectivity/connman/connman/dont_start_connman_on_nf=
sboot.patch)
ERROR: Command Error: 'quilt --quiltrc /home/kai/yocto/colibri-t20-kts/tmp/=
sysroots/x86_64-linux/etc/quiltrc push' exited with 1  Output:
Applying patch dont_start_connman_on_nfsboot.patch
patching file src/connman.service.in
Hunk #1 FAILED at 3.
1 out of 1 hunk FAILED -- rejects in file src/connman.service.in
Patch dont_start_connman_on_nfsboot.patch does not apply (enforce with -f)




I just can't figure out how to get rid of this error.

I'm not particulary familiar with patching and I haven't found any relevant=
 info on the internet...


Any suggestion / feedback ?


Z.

--_000_HE1PR01MB1883A9A270A8D1993228C9EC92CB0HE1PR01MB1883eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>I'm building a core-image-sato based on toradex colibrit20 bsp.</p>
<p>Using meta-toradex.</p>
<p><br>
</p>
<p>During build, I have the follwoing error:</p>
<p><br>
</p>
<p></p>
<div>ERROR: connman-1.31-r0 do_patch: Command Error: 'quilt --quiltrc /home=
/kai/yocto/colibri-t20-kts/tmp/sysroots/x86_64-linux/etc/quiltrc push' exit=
ed with 1 &nbsp;Output:</div>
<div>Applying patch dont_start_connman_on_nfsboot.patch</div>
<div>patching file src/connman.service.in</div>
<div>Hunk #1 FAILED at 3.</div>
<div>1 out of 1 hunk FAILED -- rejects in file src/connman.service.in</div>
<div>Patch dont_start_connman_on_nfsboot.patch does not apply (enforce with=
 -f)</div>
<div>ERROR: connman-1.31-r0 do_patch: Function failed: patch_do_patch</div>
<div>ERROR: Logfile of failure stored in: /home/kai/yocto/colibri-t20-kts/t=
mp/work/armv7ahf-vfp-poky-linux-gnueabi/connman/1.31-r0/temp/log.do_patch.8=
724</div>
<div>ERROR: Task 2836 (/home/kai/yocto/poky-toradex/meta/recipes-connectivi=
ty/connman/connman_1.31.bb, do_patch) failed with exit code '1'</div>
<div><br>
</div>
<br>
<p></p>
<p>In the log file:</p>
<p><br>
</p>
<p></p>
<div>NOTE: Applying patch '0001-iptables-Add-missing-function-item-of-xtabl=
es-to-mat.patch' (../poky-toradex/meta/recipes-connectivity/connman/connman=
/0001-iptables-Add-missing-func</div>
<div>tion-item-of-xtables-to-mat.patch)</div>
<div>NOTE: Applying patch 'dont_start_connman_on_nfsboot.patch' (../poky-to=
radex/meta-toradex/recipes-connectivity/connman/connman/dont_start_connman_=
on_nfsboot.patch)</div>
<div>ERROR: Command Error: 'quilt --quiltrc /home/kai/yocto/colibri-t20-kts=
/tmp/sysroots/x86_64-linux/etc/quiltrc push' exited with 1 &nbsp;Output:</d=
iv>
<div>Applying patch dont_start_connman_on_nfsboot.patch</div>
<div>patching file src/connman.service.in</div>
<div>Hunk #1 FAILED at 3.</div>
<div>1 out of 1 hunk FAILED -- rejects in file src/connman.service.in</div>
<div>Patch dont_start_connman_on_nfsboot.patch does not apply (enforce with=
 -f)</div>
<div><br>
</div>
<br>
<p></p>
<p><br>
</p>
<p>I just can't figure out how to get rid of this error.</p>
<p>I'm not particulary familiar with patching and I haven't found any relev=
ant info on the internet...</p>
<p><br>
</p>
<p>Any suggestion / feedback ?</p>
<p><br>
</p>
<p>Z.</p>
</div>
</body>
</html>

--_000_HE1PR01MB1883A9A270A8D1993228C9EC92CB0HE1PR01MB1883eurp_--
