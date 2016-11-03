Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9583BE00C1A; Thu,  3 Nov 2016 06:17:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.103 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz28.laposte.net [194.117.213.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63DCE00C09
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 06:17:25 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout016 (Postfix) with ESMTP id 3C4C211427D
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 14:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1478179044; bh=Ise1qtLXHrgpSL3DmpyAYZxb7tl1dYbnlnpX8e94zYY=;
	h=To:Cc:Subject:References:Date:From:In-Reply-To;
	b=Jwa7CaAqkcLC4037UYaliwsiWv0qXDhXGpMk5s3PgjBF+GEP7F03OcbHX+b1Ayznb
	Yex2cSgeOkvcNeWnVr8reC1bKZqv7VuMB11/6JsgXUFgCh0P5m/c2CqM07FhYdSzrG
	4OOBSYERxHbRFdLoKHX4HFTTGQPZrVJDnDfD/dshVnG3QoWMBPzURl5Hq3XpPcqET8
	0pZXK9bATXQygIQiUm+wgGc8t0hhQuC18fZOJswFjOizyCEozS9ahUn+I3pCvzZJEe
	H3XuNKCysivCy1b7aWOZwmrGKCLa9lzgFSo7I8hEATjzZG96KA8px9T+jPRqEQi1jL
	zRV+Csi+sVmkw==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout016 (Postfix) with ESMTP id 30587115494
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 14:17:24 +0100 (CET)
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.prosodie [10.128.63.2])
	by lpn-prd-vrout016 (Postfix) with ESMTP id 23F7511427D
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 14:17:24 +0100 (CET)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 0CDA8366D45
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 14:17:24 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin001 (Postfix) with ESMTPA id BFD92366CCD;
	Thu,  3 Nov 2016 14:17:23 +0100 (CET)
To: "Burton, Ross" <ross.burton@intel.com>
References: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
	<a8763b48-7566-4974-895b-f9137e4d3e38@mlbassoc.com>
	<op.yqcrihyomnlnty@pc-mls.ecafaros.local>
	<CAJTo0LaF1+2GDymRDs0ccs1e5s+e8uSapMgWYU78RRYbCBe3bw@mail.gmail.com>
Date: Thu, 03 Nov 2016 14:17:23 +0100
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yqcsi9gbmnlnty@pc-mls.ecafaros.local>
In-Reply-To: <CAJTo0LaF1+2GDymRDs0ccs1e5s+e8uSapMgWYU78RRYbCBe3bw@mail.gmail.com>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrkeejgdefgecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfhkfgjfgesrgdtreertderleenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepohhp
X-VR-Cause-5: vghrrgdrtghomhdpghhithhhuhgsrdgtohhmnecukfhppedvuddvrddvfeegrdefiedrudefheenucfr
X-VR-Cause-6: rghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhsrdhl
X-VR-Cause-7: ohgtrghlpdhinhgvthepvdduvddrvdefgedrfeeirddufeehpdhmrghilhhfrhhomhepihguvggrlhhs
X-VR-Cause-8: ihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohepghgrrhihsehmlhgsrghsshhotgdrtghomh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 13:17:29 -0000
Content-Type: multipart/alternative; boundary=----------MZ6XXlhXdfGBChYQkpmv3D

------------MZ6XXlhXdfGBChYQkpmv3D
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Ok, i will try to add dev-pkgs to my recipe here  =

https://github.com/modjo756/meta-udoo-modjo/blob/krogoth-modjo/qt5-layer=
/recipes-qt/images/udoo-image-qt5.bb  =

and add udev to my local.conf.
I let you know if it's work...
Mickael

Le Thu, 03 Nov 2016 14:03:04 +0100, Burton, Ross <ross.burton@intel.com>=
 a  =

=E9crit:

>
> On 3 November 2016 at 12:55, idealsim <idealsim@laposte.net> wrote:
>> Thanks for your answer.
>> It seems that i didn't have DEPENDS =3D "udev".
>> How i can add it ?
>>        - to my local.conf
>>        or
>>        - to myImage.bb
>> Regards,
>
> If you want to do compiling inside the image, the easy way is to just =
 =

> add dev-pkgs to IMAGE_FEATURES for the image recipe.  This gives you a=
ll  =

> of the >headers for everything installed, which will include the udev =
 =

> headers assuming that your image has udev.
>
> Ross



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------MZ6XXlhXdfGBChYQkpmv3D
Content-Type: multipart/related; boundary=----------MZ6XXlhXdfGBChV3FP48vR

------------MZ6XXlhXdfGBChV3FP48vR
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1478179043543.0dee19655d6a88e5@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head>
<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body><div>Ok, i will try to add dev-pkgs to my recipe here https://gith=
ub.com/modjo756/meta-udoo-modjo/blob/krogoth-modjo/qt5-layer/recipes-qt/=
images/udoo-image-qt5.bb and add udev to my local.conf.</div><div>I let =
you know if it's work...</div><div>Mickael</div><div><br></div><div>Le T=
hu, 03 Nov 2016 14:03:04 +0100, Burton, Ross &lt;ross.burton@intel.com&g=
t; a =E9crit:<br></div><br><blockquote style=3D"margin: 0 0 0.80ex; bord=
er-left: #0000FF 2px solid; padding-left: 1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On 3 November 2016 at =
12:55, idealsim <span dir=3D"ltr">&lt;<a href=3D"mailto:idealsim@laposte=
.net" target=3D"_blank">idealsim@laposte.net</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div id=3D":124" class=3D"a3s aXjCH m158=
2a430067dd664">Thanks for your answer.<br>
It seems that i didn't have DEPENDS =3D "udev".<br>
How i can add it ?<br>
&nbsp; &nbsp; &nbsp; &nbsp; - to my local.conf<br>
&nbsp; &nbsp; &nbsp; &nbsp; or<br>
&nbsp; &nbsp; &nbsp; &nbsp; - to myImage.bb<br>
Regards,<br></div></blockquote></div><br>If you want to do compiling ins=
ide the image, the easy way is to just add dev-pkgs to IMAGE_FEATURES fo=
r the image recipe.&nbsp; This gives you all of the headers for everythi=
ng installed, which will include the udev headers assuming that your ima=
ge has udev.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Ross</div></div>
</blockquote><br><br><br><div id=3D"M2Signature"><div>-- </div><div>Util=
isant le logiciel de courrier d'Opera : <a href=3D"http://www.opera.com/=
mail/">http://www.opera.com/mail/</a></div></div></body></html>

------------MZ6XXlhXdfGBChV3FP48vR--

------------MZ6XXlhXdfGBChYQkpmv3D--
