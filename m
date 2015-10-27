Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D3B5E008AE; Tue, 27 Oct 2015 01:45:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5EBCE007E4
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 01:45:46 -0700 (PDT)
Received: by qgbb65 with SMTP id b65so140354340qgb.2
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 01:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=I3V8N0HW58YBorxeMXzUYT5bQhDQfajPGBKOUkuRSw8=;
	b=rGNE9gGaqqJeqFYLfmGzc5Y8IDbx5t5nVirFUXvSqnBTbr2Opmo8LF0BeTY/0XtFDY
	XtlbU+dSgOd9OimXUuZ+jonvaEu/OUoQMsoPa3jl3QqLoekRAG8BBjSie32serNOI3Ru
	IZzgH8oO2FBZDkdS9ATPbjHWSaOZlst1/rlkiDBYtu/iq2mxdPWX/ZwHmekD1rmPuYkR
	2AYlBkjZi0PGVVkel5ZP7pGsnRfcOG1kZVBwlTi5tz6Kb2CVk/SJ0r2AZZurdCeOuW25
	OccvmSYdj2SHLdiBVkEWkK1A1DOHfcyszYg4jHQ90g2SLBSBG5p5tmOm9JZAtRf8KsEN
	K9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=I3V8N0HW58YBorxeMXzUYT5bQhDQfajPGBKOUkuRSw8=;
	b=eg+X3Xb30oGP+sTI2Cc4Xlr7rgIz0fun+K2+mSP1Zo8IM7jcmHbR3F7IghjmRF03vT
	ra0PJBCuYed+R9KEjzxvgqMi7WlM0hOaIDKtoOxGy43L5eA6uBCHlbsiDM10sA6mU1yq
	9x4LvgdZ4Qqeq3Psy4eBCURd2LcCaqETZZN+W+hBbviU6Zh2qWBb+WC1g4xwULs0Ikom
	YjH1AQsYCVlik3yTtvN7K4dxjoJfCuyS/i85lBhowl5CRNkarEp4QxJI1ItaSarm0Qwx
	49MPQcfwRK1BLWtaA7NzIrbqmnFLq+6kKEm7ngOlxC8WzdcsUleLqG2QtE6EyIo5RBj4
	nJhg==
X-Gm-Message-State: ALoCoQnPueb7TYcC+tuEvDVSMEis34PnNC5jSWDnrLccHCXvh7gElXRqC+DN6O0KKq7yeYd1KZhi
X-Received: by 10.140.109.74 with SMTP id k68mr49461161qgf.77.1445935545625;
	Tue, 27 Oct 2015 01:45:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Tue, 27 Oct 2015 01:45:26 -0700 (PDT)
In-Reply-To: <CAHWMYyDWu5k5bK=bGLwHOxZyS18peHR2PMndou5=LGm+_PLwqg@mail.gmail.com>
References: <CAHWMYyDLXYt2m3qgZd1M8y09wuz0xW==uAmDbPN_8cF9vKCZmg@mail.gmail.com>
	<CAJTo0LaqsGry89MGvS=7Q9kWn1Cz9ZZ=eH9vFOG=j4mPE2CP8g@mail.gmail.com>
	<CAHWMYyDWu5k5bK=bGLwHOxZyS18peHR2PMndou5=LGm+_PLwqg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Oct 2015 08:45:26 +0000
Message-ID: <CAJTo0LZV6-BdOuk9+rTWvdFaJnC7nCxOp2SA-nHheLWfj=_Umw@mail.gmail.com>
To: Todd Efflam <todd.efflam@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling ipv6
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
X-List-Received-Date: Tue, 27 Oct 2015 08:45:48 -0000
Content-Type: multipart/alternative; boundary=001a1139af2490ee3e0523121a97

--001a1139af2490ee3e0523121a97
Content-Type: text/plain; charset=UTF-8

On 26 October 2015 at 20:16, Todd Efflam <todd.efflam@gmail.com> wrote:

> Thanks for the tip.  We tried adding this to the local.conf file but
> it failed with the following error:
> ERROR: Nothing PROVIDES 'glibc'
> ERROR: glibc was skipped: missing required distro feature 'ipv6' (not
> in DISTRO_FEATURES)
>

Ouch.  That's surely not right.

The commit that introduced this was:

commit 97899bc908a421295d814801ff86edeb9304d2fd
Author: Chen Qi <Qi.Chen@windriver.com>
Date:   Thu Jul 3 11:23:42 2014 +0800

    eglibc: check for required distro features

    If users accidently override the DISTRO_FEATURES in local.conf,
    then build failures occur for lack of libc functions.

    All features in DISTRO_FEATURES_LIBC should be in DISTRO_FEATURES.
    That's why this patch let the recipe inherit distro_features_check
    class and set REQUIRED_DISTRO_FEATURES to "${DISTRO_FEATURES_LIBC}".

    [YOCTO #6381]

But the entire point of the logic in glibc-options is to make these
options, well, optional.

It looks like the required_distro_features use in eglibc is misguided.  Can
you comment out the REQUIRED_DISTRO_FEATURES assignment in glibc.inc and
verify that it then builds fine without ipv6 enabled?

Cheers,
Ross

--001a1139af2490ee3e0523121a97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 October 2015 at 20:16, Todd Efflam <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:todd.efflam@gmail.com" target=3D"_blank">todd.efflam@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border=
-left-style:solid;padding-left:1ex"><div id=3D":xh" class=3D"" style=3D"ove=
rflow:hidden">Thanks for the tip.=C2=A0 We tried adding this to the local.c=
onf file but<br>
it failed with the following error:<br>
ERROR: Nothing PROVIDES &#39;glibc&#39;<br>
ERROR: glibc was skipped: missing required distro feature &#39;ipv6&#39; (n=
ot<br>
in DISTRO_FEATURES)</div></blockquote></div><br>Ouch.=C2=A0 That&#39;s sure=
ly not right.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">The commit that introduced this was:</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_extra">commit 97=
899bc908a421295d814801ff86edeb9304d2fd</div><div class=3D"gmail_extra">Auth=
or: Chen Qi &lt;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.=
com</a>&gt;</div><div class=3D"gmail_extra">Date: =C2=A0 Thu Jul 3 11:23:42=
 2014 +0800</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">=C2=A0 =C2=A0 eglibc: check for required distro features</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=C2=A0 =C2=A0 If u=
sers accidently override the DISTRO_FEATURES in local.conf,</div><div class=
=3D"gmail_extra">=C2=A0 =C2=A0 then build failures occur for lack of libc f=
unctions.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">=C2=A0 =C2=A0 All features in DISTRO_FEATURES_LIBC should be in DISTRO_=
FEATURES.</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 That&#39;s why this=
 patch let the recipe inherit distro_features_check</div><div class=3D"gmai=
l_extra">=C2=A0 =C2=A0 class and set REQUIRED_DISTRO_FEATURES to &quot;${DI=
STRO_FEATURES_LIBC}&quot;.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">=C2=A0 =C2=A0 [YOCTO #6381]</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">But the entire point of the logi=
c in glibc-options is to make these options, well, optional.</div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It looks like the re=
quired_distro_features use in eglibc is misguided.=C2=A0 Can you comment ou=
t the REQUIRED_DISTRO_FEATURES assignment in glibc.inc and verify that it t=
hen builds fine without ipv6 enabled?</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Cheers,</div><div class=3D"gmail_extra">Ros=
s</div></div></div>

--001a1139af2490ee3e0523121a97--
