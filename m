Return-Path: <pcjegan@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188FEE00747
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 00:13:36 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id gf12so1038676vcb.22
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 00:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=M64Vq04Sny+7WXM0qoZM+oolx2h+1Rtnq4+JFzxyM3Y=;
	b=jGxtpwle1C0FnbWnLoK0OIEC4Mw0iVxoeqfMH7LaCQUujD597M3kufswnDkChKoGEx
	6PAik1D3Nnfaxxzzv8Ys3QweG8f6KpydwGemLo3AibKsGixfWCDNSByfSpyihNd9z/fI
	p9EBnJVCKrYC+C3fyYXAffhNAH1TUWC9Oe1LbnfcocL5PfVqXiAzLIsH/t84vlwgxQNr
	6t1UDVrNxZreTR364JQX1lQVN5KgahQdqYBD5oc/yTlUe4ZMt3YxS1JYP0f6tcnMgOSN
	hcActVM3or8Fc0obMxmBOIMACSg+zFdLUL7kVNB0fVuYb6c11TE/pZ7pAJ4cxy7f4Qpc
	ZDbQ==
X-Received: by 10.221.51.206 with SMTP id vj14mr6893605vcb.17.1377846815841;
	Fri, 30 Aug 2013 00:13:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.169.146 with HTTP; Fri, 30 Aug 2013 00:13:15 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C6@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C5@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<3808315.9VeeB8TmeS@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101C6@BLRINMSMBX01.bglrodc.lntinfotech.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Fri, 30 Aug 2013 12:43:15 +0530
Message-ID: <CAAA4K6+XFQZttgBCGJTZRPkP0DeCW=c0s7VoKReNcvfHUqvoEQ@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: OE recipes- linphone build error in poky-9.0.0 build environment
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
X-List-Received-Date: Fri, 30 Aug 2013 07:13:40 -0000
Content-Type: multipart/alternative; boundary=001a1133225203620904e524f6de

--001a1133225203620904e524f6de
Content-Type: text/plain; charset=ISO-8859-1

Hi Amit,


ERROR: Fetcher failure for URL: '
> http://download.savannah.nongnu.org/releases/linphone/1.6.x/sources/linphone-1.6.0.tar.gz'.
> No checksum specified for
> /home/yocto/YOCTO/poky-dylan-9.0.0/build/downloads/linphone-1.6.0.tar.gz,
> please add at least one to the recipe:
> SRC_URI[md5sum] = "fb345125e23c787df0818ff7caad5515"
> SRC_URI[sha256sum] =
> "ba1c32207fd62d374c9397a81fb1247da93edb859e30d0d855dc65e5457f690b"
>

Can you add/replace the above 2 lines in your linphone recipe? This error
came as there is mismatch on md5sum and sha256sum values.


> Do anyone knows how to fix the LIC_FILES_CHKSUM for libosip2 .bb file or
> linphone .bb file.
> Please suggest me how to fix this error.
>
>
>
Untar the libosip2 source and check for any license files available. In
libosip2 you will find COPYING. Add that in LIC_FILES_CHKSUM with its
md5sum value. Refer
https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide#LIC_FILES_CHKSUM
 and
http://www.yoctoproject.org/docs/1.0/poky-ref-manual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM


These should fix your problems.

-JC-

--001a1133225203620904e524f6de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Amit,<br><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">

ERROR: Fetcher failure for URL: &#39;<a href=3D"http://download.savannah.no=
ngnu.org/releases/linphone/1.6.x/sources/linphone-1.6.0.tar.gz" target=3D"_=
blank">http://download.savannah.nongnu.org/releases/linphone/1.6.x/sources/=
linphone-1.6.0.tar.gz</a>&#39;. No checksum specified for /home/yocto/YOCTO=
/poky-dylan-9.0.0/build/downloads/linphone-1.6.0.tar.gz, please add at leas=
t one to the recipe:<br>


SRC_URI[md5sum] =3D &quot;fb345125e23c787df0818ff7caad5515&quot;<br>
SRC_URI[sha256sum] =3D &quot;ba1c32207fd62d374c9397a81fb1247da93edb859e30d0=
d855dc65e5457f690b&quot;<br></blockquote><div><br></div><div>Can you add/re=
place the above 2 lines in your linphone recipe? This error came as there i=
s mismatch on md5sum and sha256sum values.</div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">
<br>
Do anyone knows how to fix the LIC_FILES_CHKSUM for libosip2 .bb file or li=
nphone .bb file.<br>
Please suggest me how to fix this error.<br>
<br><br></blockquote><div><br></div><div>Untar the libosip2 source and chec=
k for any license files available. In libosip2 you will find COPYING. Add t=
hat in LIC_FILES_CHKSUM with its md5sum value. Refer=A0<a href=3D"https://w=
iki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide#LIC_FILES_CHKSUM">ht=
tps://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide#LIC_FILES_CHK=
SUM</a>=A0and=A0<a href=3D"http://www.yoctoproject.org/docs/1.0/poky-ref-ma=
nual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM">http://www=
.yoctoproject.org/docs/1.0/poky-ref-manual/poky-ref-manual.html#usingpoky-s=
pecifying-LIC_FILES_CHKSUM</a></div>

<div><br></div><div><br></div><div>These should fix your problems.</div><di=
v><br></div><div>-JC-</div><div><br></div><div><br></div><div><br></div></d=
iv></div></div>

--001a1133225203620904e524f6de--
