Return-Path: <sdliyong@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16F41E0086E; Wed, 21 Jan 2015 00:12:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sdliyong[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC6E8E0086E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 00:11:56 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id a108so25187158qge.12
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 00:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xsQHXwzPTdzvKFi673mxLBwH8AfO7wvTMIjpseA9sIc=;
	b=QeoTHjWIXO5k276dTgPCF/UmVXRnYek3ivuIB4vS0cc7TlSDXFpyDuMV/zBlIYAxu9
	a+eMbbsB5pZkEobhEQechLXqM+1N80ymrC9oPsYVm6kCbawIMh0jk0J/SWSOHWZRdwuh
	XlAmW8GX4WpSOBFplCaELjJt0QPLfRkkm8vYdKeOX2x+s76WdbM1mqrpgfe7v/2liRSa
	2GxtyG2ksgHGYhwxR5dJEaA9EizJf25cM1PRZiDhCsM3EbfBRfn6cQgVTczWeHCgLxNx
	Z424/yA0s9Nxr3AdmsMVHGw2GjjeY6uck1DWjkRB7XQcRehvqLTR08gdpm6a5yGgLiQ1
	wQIQ==
X-Received: by 10.229.50.135 with SMTP id z7mr65369391qcf.21.1421827916035;
	Wed, 21 Jan 2015 00:11:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.70.194 with HTTP; Wed, 21 Jan 2015 00:11:35 -0800 (PST)
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808@UT40SVCWEM001.atk.com>
References: <CADO9-pdVciMmmOJda=YE75JLzBOSrJ8ZjmSggEZcAp7a5ye6AQ@mail.gmail.com>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E72E808@UT40SVCWEM001.atk.com>
From: Yong Li <sdliyong@gmail.com>
Date: Wed, 21 Jan 2015 16:11:35 +0800
Message-ID: <CADO9-pcFW27zx_8DMhyHLBEf5+whsVj2w7PMqVsZ-iPc6TY6ng@mail.gmail.com>
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@atk.com>,
	nicolas.dechesne@linaro.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot build the core-image-directfb for
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
X-List-Received-Date: Wed, 21 Jan 2015 08:12:09 -0000
Content-Type: multipart/alternative; boundary=001a11341e5cddffd2050d251b53

--001a11341e5cddffd2050d251b53
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your quick reply.

YES! Adding a leading space between the " and directfb, the build works, it
is building now!

Thanks again!
Yong LI
2015-01-21 16:07 GMT+08:00 Moore, Thomas (FtWorth) <Thomas.Moore2@atk.com>:

>  Try adding a space between the quotation mark and directfb:
>
> DISTRO_FEATURES_append =3D " directfb sysvinit"
>
> Thomas
>  ------------------------------
> From: Yong Li <sdliyong@gmail.com>
> Sent: =E2=80=8E1/=E2=80=8E21/=E2=80=8E2015 9:53 AM
> To: yocto@yoctoproject.org
> Cc: Yong Li <sdliyong@gmail.com>
> Subject: [yocto] Cannot build the core-image-directfb for
>
>   I can build the core-minimal or X11 image,  but I cannot build the
> directfb image, below is the error message, any suggestions?
>
>  bitbake core-image-directfb -v
> Loading cache: 100%
> |########################################################################=
#############################################################|
> ETA:  00:00:00
> Loaded 1313 entries from dependency cache.
> Parsing recipes: 100%
> |########################################################################=
###########################################################|
> Time: 00:00:00
> Parsing of 915 .bb files complete (914 cached, 1 parsed). 1313 targets,
> 112 skipped, 0 masked, 0 errors.
> ERROR: Nothing PROVIDES 'core-image-directfb'
> ERROR: core-image-directfb was skipped: missing required distro feature
> 'directfb' (not in DISTRO_FEATURES)
>
>  I have modified the conf/local.conf file as below:
>  DISTRO_FEATURES_append =3D "directfb sysvinit"
> DISTRO_FEATURES_remove =3D "x11 wayland"
>
>  MACHINE ??=3D "intel-corei7-64"
>

--001a11341e5cddffd2050d251b53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Thanks for your quick reply.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">YES! Add=
ing a leading space between the &quot; and directfb, the build works, it is=
 building now!</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Thanks again!</div><div class=3D"gmail_extra">Yong LI<br><div clas=
s=3D"gmail_quote">2015-01-21 16:07 GMT+08:00 Moore, Thomas (FtWorth) <span =
dir=3D"ltr">&lt;<a href=3D"mailto:Thomas.Moore2@atk.com" target=3D"_blank">=
Thomas.Moore2@atk.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div>
<div>
<div style=3D"font-size:11pt;font-family:Calibri,sans-serif">Try adding a s=
pace between the quotation mark and directfb:<br>
<br>
DISTRO_FEATURES_append =3D &quot; directfb sysvinit&quot;<br>
<br>
Thomas</div>
</div>
<div dir=3D"ltr">
<hr>
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;font-weight:bo=
ld">From:
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"><a hre=
f=3D"mailto:sdliyong@gmail.com" target=3D"_blank">Yong Li</a></span><br>
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;font-weight:bo=
ld">Sent:
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">=E2=80=
=8E1/=E2=80=8E21/=E2=80=8E2015 9:53 AM</span><br>
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;font-weight:bo=
ld">To:
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"><a hre=
f=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.or=
g</a></span><br>
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;font-weight:bo=
ld">Cc:
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"><a hre=
f=3D"mailto:sdliyong@gmail.com" target=3D"_blank">Yong Li</a></span><br>
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;font-weight:bo=
ld">Subject:
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">[yocto=
] Cannot build the core-image-directfb for</span><br>
<br>
</div><div><div class=3D"h5">
<div>
<div dir=3D"ltr">
<div>I can build the core-minimal or X11 image, =C2=A0but I cannot build th=
e directfb image, below is the error message, any suggestions?</div>
<div><br>
</div>
<div>bitbake core-image-directfb -v</div>
<div>Loading cache: 100% |#################################################=
###########################################################################=
#########| ETA: =C2=A000:00:00</div>
<div>Loaded 1313 entries from dependency cache.</div>
<div>Parsing recipes: 100% |###############################################=
###########################################################################=
#########| Time: 00:00:00</div>
<div>Parsing of 915 .bb files complete (914 cached, 1 parsed). 1313 targets=
, 112 skipped, 0 masked, 0 errors.</div>
<div>ERROR: Nothing PROVIDES &#39;core-image-directfb&#39;</div>
<div>ERROR: core-image-directfb was skipped: missing required distro featur=
e &#39;directfb&#39; (not in DISTRO_FEATURES)</div>
<div><br>
</div>
<div>I have modified the conf/local.conf file as below:</div>
<div>
<div>DISTRO_FEATURES_append =3D &quot;directfb sysvinit&quot;</div>
<div>DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;</div>
</div>
<div><br>
</div>
<div>MACHINE ??=3D &quot;intel-corei7-64&quot;<br>
</div>
</div>
</div>
</div></div></div>

</blockquote></div><br></div></div>

--001a11341e5cddffd2050d251b53--
