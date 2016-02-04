Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B0A8E00C9C; Thu,  4 Feb 2016 04:49:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.117.213.104 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (idealsim[at]laposte.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz29.laposte.net [194.117.213.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 259DEE00C98
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 04:49:41 -0800 (PST)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout017 (Postfix) with ESMTP id 85C19A00EB5
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1454590180; bh=K+HNZGK+idbe6NS/awFkoLB4E1bwMpPVevT4xSFAe2U=;
	h=To:Cc:Subject:References:Date:From:In-Reply-To;
	b=mAkoYeZPgQXwzW66oJVOImpgF3n3wEeb6OEQVsKhHrxdo4ate1bgcb07wLInfzxg6
	vCiv0cAj1GEymrsidOkOJiTn9fb1svzW6Bs8rShMPsd/6gqEwEw4TeBxcO6L985Fxl
	DK1XqgRXxIgKNj11zSmId2LSlCwPUMSwnIFchJt03nOSRGWjTSiSbaMDD++zYXJAS3
	kFQBYFeJRZSMpvFHtPbrQIvI0CTotlwxzhapUMlvL8gZvO9eUY84E+hHUGEaoOa/vT
	V4zJHEB7u2vhik1FS/gYYJjRynnQdS9EClyCcjnP2aD/0eMoPyKO/mxzZev9IZ/d/O
	wn5UuHh2PgqCQ==
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.laposte [10.128.63.2])
	by lpn-prd-vrout017 (Postfix) with ESMTP id 7A557A00E6A
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:49:40 +0100 (CET)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 6438E36540C
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:49:40 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [195.200.163.38])
	by lpn-prd-vrin001 (Postfix) with ESMTPA id 90E883653F3;
	Thu,  4 Feb 2016 13:49:39 +0100 (CET)
To: "Burton, Ross" <ross.burton@intel.com>
References: <op.yca5dm1gmnlnty@pc-mls.ecafaros.local>
	<CAJTo0LbbiN_wp+f0xB9r1BdAPWaR8NghWUDsXXUpO9QeJ+mBCQ@mail.gmail.com>
Date: Thu, 04 Feb 2016 13:49:37 +0100
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yca68zpvmnlnty@pc-mls.ecafaros.local>
In-Reply-To: <CAJTo0LbbiN_wp+f0xB9r1BdAPWaR8NghWUDsXXUpO9QeJ+mBCQ@mail.gmail.com>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 195.200.163.38
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekjedrvddtgdeggecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfhkfgjfgesrgdtreertderleenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepohhp
X-VR-Cause-5: vghrrgdrtghomhenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdr
X-VR-Cause-6: vggtrghfrghrohhsrdhlohgtrghlpdhinhgvthepudelhedrvddttddrudeifedrfeekpdhmrghilhhf
X-VR-Cause-7: rhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshiho
X-VR-Cause-8: tghtohhprhhojhgvtghtrdhorhhg
X-VR-AvState: No
X-VR-State: 0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto and linux mint 17.3
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
X-List-Received-Date: Thu, 04 Feb 2016 12:49:47 -0000
Content-Type: multipart/alternative; boundary=----------Cv3wPSdXJ2MpyuBeGgqZU9

------------Cv3wPSdXJ2MpyuBeGgqZU9
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

I don't think, probably install by default ! do you think i can remove  =

python 3 to solve the problem ?

Le Thu, 04 Feb 2016 13:32:10 +0100, Burton, Ross <ross.burton@intel.com>=
 a  =

=E9crit:

>
> On 4 February 2016 at 12:09, idealsim <idealsim@laposte.net> wrote:
>>  apparently bb can't import pysqlite2 ? I already install pip install=
  =

>> pysqlite libsqlite3-dev but nothing to solve my problem ... An idea t=
o  =

>> >>resolve this please ?
>
> Did that install a pysqlite for python 3?  bitbake uses python2.
>
> Ross



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------Cv3wPSdXJ2MpyuBeGgqZU9
Content-Type: multipart/related; boundary=----------Cv3wPSdXJ2MpyuZ4qSIJJJ

------------Cv3wPSdXJ2MpyuZ4qSIJJJ
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1454590177839.2d4a9c675d6a2083@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head>
<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body><div>I don't think, probably install by default ! do you think i c=
an remove python 3 to solve the problem ?</div><div><br></div><div>Le Th=
u, 04 Feb 2016 13:32:10 +0100, Burton, Ross &lt;ross.burton@intel.com&gt=
; a =E9crit:<br></div><br><blockquote style=3D"margin: 0 0 0.80ex; borde=
r-left: #0000FF 2px solid; padding-left: 1ex"><div dir=3D"ltr"><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On 4 February 2016 at 1=
2:09, idealsim <span dir=3D"ltr">&lt;<a href=3D"mailto:idealsim@laposte.=
net" target=3D"_blank">idealsim@laposte.net</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>&nbsp;
<span style=3D"color:rgb(51,51,51);font-family:'Lucida Grande','Trebuche=
t MS',Verdana,Helvetica,Arial,sans-serif;font-size:13px;font-style:norma=
l;font-variant:normal;font-weight:normal;letter-spacing:normal;line-heig=
ht:18.2px;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;display:inline!important;float:none;backgroun=
d-color:rgb(224,237,211)">apparently bb can't import pysqlite2 ? I alrea=
dy install pip install pysqlite libsqlite3-dev but nothing to solve my p=
roblem ... An idea to resolve this please ?</span>
<br></div></blockquote></div><br>Did that install a pysqlite for python =
3? &nbsp;bitbake uses python2.</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>
</blockquote><br><br><br><div id=3D"M2Signature"><div>-- </div><div>Util=
isant le logiciel de courrier d'Opera : <a href=3D"http://www.opera.com/=
mail/">http://www.opera.com/mail/</a></div></div></body></html>

------------Cv3wPSdXJ2MpyuZ4qSIJJJ--

------------Cv3wPSdXJ2MpyuBeGgqZU9--
