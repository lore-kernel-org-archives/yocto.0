Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B08E2E00C1B; Fri,  8 Apr 2016 07:44:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE94E00BB9
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2016 07:44:43 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id ui10so17832734igc.1
	for <yocto@yoctoproject.org>; Fri, 08 Apr 2016 07:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ou0lNO4zTKms3Y8HJvGEsx4pXAHm91WPc07vLYva5b0=;
	b=GI358ylepVx16ZZlU8iMCqquMXwdwDCtrL6/1HLW6MgZy/67d2cZFRNJ3uaXyXkZ9H
	w1lpP1Cbjw/DtyVv6e+Wf+LGNQ95R3ZktFMZWbQrzTwVqSOqe+0FqHtAOTts04bQlKiV
	BC6eGikrwwJh1Efmk47b8P7zimNJ6DSyxNQ50KFeLBVfggR2Ol+1XWn1w15cqVLUo093
	eZyevXUFlITL3WNlF4whhwq4NKijFWqUo4+X/nbTIxic5lR94KN2xbWg2IUV5CFCec31
	LhAfrwNe/qPTeK36NjKnyTJBSMLScaDD+61Jv174eYbEKU65Ia7DWYBQ2z0wAxLwymI4
	/UbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ou0lNO4zTKms3Y8HJvGEsx4pXAHm91WPc07vLYva5b0=;
	b=c3plA7Mgdf0oS8vk3Le7RcHPtPcqcBGD5qFbgh9f2xIY7+SHxDO8mLZxeaMJ8hMtlV
	FbRtM4GbrCn6PmWg63z5M6jJQKQh3tb3aEM3B5+frpaUZrikbwNGVlhrc+c7Elk7doWX
	Kz4+50nqyKAaSk7LDT5VTApm+ZsB0JM3+BKjHyLSHZjVSqXGfkrq6v0ZWJmJtY3aMCPL
	v2LVuEhpgohOzvAnUe3HMZ5LPlEBSK52vP5h5x/GK9tlI5NsCf03+Cehe+GxW3iwnibe
	k3oLBmjjoanLSUCQXgUoiRIsw8c9cDtTmRT80ThRRtMD1IDnYN57gZr6DE69RZLGR+yh
	qokg==
X-Gm-Message-State: AD7BkJKR5kQnjg8ba8qfTc+lLIW49cW761eLw3u0UAfT92Vh7KfNXta8vwqjiJhS1bkweE0ig1BKDL305S5XZkxJ
X-Received: by 10.50.155.67 with SMTP id vu3mr3955313igb.52.1460126682940;
	Fri, 08 Apr 2016 07:44:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Fri, 8 Apr 2016 07:44:23 -0700 (PDT)
In-Reply-To: <3804BDFE6D2105429FC87BEC5F7ABA16CCD48B@MXEX2010.minnetronix.com>
References: <3804BDFE6D2105429FC87BEC5F7ABA16CCD48B@MXEX2010.minnetronix.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Apr 2016 15:44:23 +0100
Message-ID: <CAJTo0LZVdjL6GtZVnTnabz_cnHwrraD8vyq_B58R2o0SpqEyVg@mail.gmail.com>
To: Andy Gikling <agikling@minnetronix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Prescribed way to make global variables in recipes?
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
X-List-Received-Date: Fri, 08 Apr 2016 14:44:49 -0000
Content-Type: multipart/alternative; boundary=001a1134dbec43c819052ffa3c90

--001a1134dbec43c819052ffa3c90
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 April 2016 at 15:30, Andy Gikling <agikling@minnetronix.com> wrote:

> Dear Yocto,
>
>
>
> First of all, I love this project.  Thanks for all your hard work.
>
>
>
> Question:  What is the prescribed way to allow image recipes to make
> global configuration variables that other recipes can use?
>
>
You can't.  The basic reason being that images are built from packages, and
the packages have already been built when the image is built.


> Ideally, for CI purposes we would like to allow our CI server to simply
> call =E2=80=9Cbitbake faux-app=E2=80=9D to make a release build and then =
=E2=80=9Cbitbake
> faux-app-debug=E2=80=9D to make a debug build.  The thought process is I =
could have
> a variable defined in both =E2=80=9Cfaux-app_0.1.bb=E2=80=9D and =E2=80=
=9Cfaux-app-debug_0.1.bb=E2=80=9D
> called FAUX_RELEASE_MODE.  In faux-app_0.1.bb this variable would be set
> to =E2=80=9Crelease=E2=80=9D and in faux-app-debug_0.1.bb it would be set=
 to =E2=80=9Cdebug.=E2=80=9D
>

In your view, what would happen if you did "bitbake faux-app
faux-app-debug"?

There are several ways to fix this that don't involve breaking how OE
works.  Either have a rootfs-time postprocess command in the debug image
recipe that manipulates the installed file system, or have two recipes for
the thing that changes (in this case u-boot) where one includes the other
and makes the changes required, and the image install the relevant package
(u-boot vs u-boot-debug).

Ross

--001a1134dbec43c819052ffa3c90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 April 2016 at 15:30, Andy Gikling <span dir=3D"ltr">&=
lt;<a href=3D"mailto:agikling@minnetronix.com" target=3D"_blank">agikling@m=
innetronix.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Dear Yocto,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">First of all, I love this project.=C2=A0 Thanks for =
all your hard work.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Question:=C2=A0 What is the prescribed way to allow =
image recipes to make global configuration variables that other recipes can=
 use?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u></p></div></div></blockquote><div><br></div><=
div>You can&#39;t.=C2=A0 The basic reason being that images are built from =
packages, and the packages have already been built when the image is built.=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-US" l=
ink=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNormal"><u></u></p>
<p class=3D"MsoNormal">Ideally, for CI purposes we would like to allow our =
CI server to simply call =E2=80=9Cbitbake faux-app=E2=80=9D to make a relea=
se build and then =E2=80=9Cbitbake faux-app-debug=E2=80=9D to make a debug =
build.=C2=A0 The thought process is I could have a variable defined in
 both =E2=80=9C<a href=3D"http://faux-app_0.1.bb" target=3D"_blank">faux-ap=
p_0.1.bb</a>=E2=80=9D and =E2=80=9C<a href=3D"http://faux-app-debug_0.1.bb"=
 target=3D"_blank">faux-app-debug_0.1.bb</a>=E2=80=9D called FAUX_RELEASE_M=
ODE.=C2=A0 In <a href=3D"http://faux-app_0.1.bb" target=3D"_blank">faux-app=
_0.1.bb</a> this variable would be set to =E2=80=9Crelease=E2=80=9D and in =
<a href=3D"http://faux-app-debug_0.1.bb" target=3D"_blank">faux-app-debug_0=
.1.bb</a> it would be set to =E2=80=9Cdebug.=E2=80=9D</p></div></div></bloc=
kquote><div><br></div><div>In your view, what would happen if you did &quot=
;bitbake faux-app faux-app-debug&quot;?</div><div><br></div><div>There are =
several ways to fix this that don&#39;t involve breaking how OE works.=C2=
=A0 Either have a rootfs-time postprocess command in the debug image recipe=
 that manipulates the installed file system, or have two recipes for the th=
ing that changes (in this case u-boot) where one includes the other and mak=
es the changes required, and the image install the relevant package (u-boot=
 vs u-boot-debug).</div><div><br></div><div>Ross</div></div></div></div>

--001a1134dbec43c819052ffa3c90--
