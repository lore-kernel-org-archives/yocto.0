Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE006.bigfish.com (db3ehsobe006.messaging.microsoft.com
	[213.199.154.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A7BE01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 07:00:17 -0800 (PST)
Received: from mail32-db3-R.bigfish.com (10.3.81.243) by
	DB3EHSOBE006.bigfish.com (10.3.84.26) with Microsoft SMTP Server id
	14.1.225.23; Tue, 7 Feb 2012 15:00:15 +0000
Received: from mail32-db3 (localhost [127.0.0.1])	by mail32-db3-R.bigfish.com
	(Postfix) with ESMTP id 07D622405A3;
	Tue,  7 Feb 2012 15:00:15 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371Ic85dh98dKzz1202hzz8275ch8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail32-db3 (localhost.localdomain [127.0.0.1]) by mail32-db3
	(MessageSwitch) id 1328626813197208_21191;
	Tue,  7 Feb 2012 15:00:13 +0000 (UTC)
Received: from DB3EHSMHS004.bigfish.com (unknown [10.3.81.235])	by
	mail32-db3.bigfish.com (Postfix) with ESMTP id 2D5533A004C;
	Tue,  7 Feb 2012 15:00:13 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS004.bigfish.com
	(10.3.87.104) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 7 Feb 2012 15:00:10 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0355.003; Tue, 7 Feb 2012 08:59:55 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Scott Garman <scott.a.garman@intel.com>
Thread-Topic: [yocto] Trying to re-use sstate.
Thread-Index: AQHM5akmpcZ8ngiO70qAdxRPLWFsRQ==
Date: Tue, 7 Feb 2012 14:59:54 +0000
Message-ID: <CAEsOVNe2iXiaG+=je65zNAY10Bf4PqrbJfLuJtMhzwcGttUQXA@mail.gmail.com>
References: <4F2CB95F.6040509@intel.com>
In-Reply-To: <4F2CB95F.6040509@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to re-use sstate.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Feb 2012 15:00:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CAEsOVNe2iXiaGje65zNAY10Bf4PqrbJfLuJtMhzwcGttUQXAmailgm_"

--_000_CAEsOVNe2iXiaGje65zNAY10Bf4PqrbJfLuJtMhzwcGttUQXAmailgm_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The paths issue your are speculating on was fixed by myself and Richard las=
t November.

I would suggest running bitbake-diffsig to determine the actual sstate diff=
erences.

-M

On Feb 3, 2012 10:51 PM, "Scott Garman" <scott.a.garman@intel.com<mailto:sc=
ott.a.garman@intel.com>> wrote:
Hello,

I'm trying to re-use the sstate from one build directory and move it to ano=
ther. It's not working - bitbake is rebuilding *everything*.

My hunch is the reason for this is because bblayers.conf must differ betwee=
n the two build directories, because it uses full paths to the layer direct=
ories.

By default, when you source oe-init-build-env for the first time, it genera=
tes a bblayers.conf file with full paths to the default layers, meta and me=
ta-yocto.

I thought the point of sstate was that I could copy it between build direct=
ories - or even different hosts - and save myself the effort of rebuilding =
everything if the remaining metadata was the same?

Scott

--
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_CAEsOVNe2iXiaGje65zNAY10Bf4PqrbJfLuJtMhzwcGttUQXAmailgm_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <CDBC839F55194947BF6B79DC7A4B58A6@freescale.net>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<p>The paths issue your are speculating on was fixed by myself and Richard =
last November.</p>
<p>I would suggest running bitbake-diffsig to determine the actual sstate d=
ifferences.</p>
<p>-M</p>
<div class=3D"gmail_quote">On Feb 3, 2012 10:51 PM, &quot;Scott Garman&quot=
; &lt;<a href=3D"mailto:scott.a.garman@intel.com">scott.a.garman@intel.com<=
/a>&gt; wrote:<br type=3D"attribution">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello,<br>
<br>
I'm trying to re-use the sstate from one build directory and move it to ano=
ther. It's not working - bitbake is rebuilding *everything*.<br>
<br>
My hunch is the reason for this is because bblayers.conf must differ betwee=
n the two build directories, because it uses full paths to the layer direct=
ories.<br>
<br>
By default, when you source oe-init-build-env for the first time, it genera=
tes a bblayers.conf file with full paths to the default layers, meta and me=
ta-yocto.<br>
<br>
I thought the point of sstate was that I could copy it between build direct=
ories - or even different hosts - and save myself the effort of rebuilding =
everything if the remaining metadata was the same?<br>
<br>
Scott<br>
<br>
-- <br>
Scott Garman<br>
Embedded Linux Engineer - Yocto Project<br>
Intel Open Source Technology Center<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote>
</div>
</body>
</html>

--_000_CAEsOVNe2iXiaGje65zNAY10Bf4PqrbJfLuJtMhzwcGttUQXAmailgm_--
