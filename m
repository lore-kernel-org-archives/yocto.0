Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74FD5E00CE8; Wed, 23 Jan 2019 03:02:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283B2E00CE4
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 03:02:21 -0800 (PST)
Received: by mail-ot1-f66.google.com with SMTP id v23so1512923otk.9
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 03:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=GYvrpKGsrRN49CC5KY7LVhG2dKUotHQen6PHLO/HYKI=;
	b=QdGOryTwus6KGIGKfVS0Y2sfQSH6hetfY+aHiIxyMWbjYSUCC02FmlPIhWBMS54L2Y
	driZYmdJJXuaU+1NG0QEsSyyUKSr/2rBb+jZ7BDMJNavTI6pwOtC0+RrBCadpNhi9UZt
	crlaGaxu/Wn/3iT+Lkr7SK8qSo7gEQnDNurCu/21Uw9evMfkzypPH8Ar67k2mEiK/Gt/
	7xtAxAKkWTWCMrKhrhwHOHw5NpJHOQ9s2y2G2BQ9Zm+7/aqLYUxMKNdNTvvRYR9J8vTr
	kxDc5L6UUytrnvjMw7Ui3RuitOM4xF/KYCkFXClAV6N6m4a/mPVB2k9YeKenxsCPsDP+
	ve0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=GYvrpKGsrRN49CC5KY7LVhG2dKUotHQen6PHLO/HYKI=;
	b=pHFXUhsFo6Ssy8tR15ZkFhZ0FWdp/Nk1CKQFCVEQC9Zm9FBz1m2SZZSBNmWrG//YYy
	BVfF0ABikS3Oovpqk+kcVySY3OPLpSG1mchlOF7+Du3tcYmhimcHnioUYjeY6fdMMppZ
	d2C8MhZEqd1fma4vwgrsFyGWlJ/nm4eQuhPpu6lbC7FbaeQ/URRHfYuIAtT/IzbCTwa6
	UIvHB96GY3GPmfjSxbLpGk+TeNG9GiNgiyODELwgnmZkkix9aGS4+N2IoRNgf4Qvhy/V
	XoTijmKjUjhBwaxFKUUDgRTAhim8Bdx1Grgp2db+BfN2H6PRFtQYsTUQSaoRYcXzIG+Q
	BJ0A==
X-Gm-Message-State: AJcUukd2fa+Q9S/FyjzdFCvPYvfu+W7lHU+R/BRUYkS/d+COyIHKqHaQ
	h/u1vWzECKvsZIvpqTGHRl4lMlK9PSmygBdDSRMphvIMbbpobw==
X-Google-Smtp-Source: ALg8bN4yf40ysq2gaekxeNZsTgqqmjauLCWiwpfCr/59u0RZdrKIIepgIn9t2snxRsL8GAjFaH+G/3PBzcG6MxDQSJQ=
X-Received: by 2002:a9d:3a5:: with SMTP id f34mr1171798otf.208.1548241341166; 
	Wed, 23 Jan 2019 03:02:21 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
In-Reply-To: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 23 Jan 2019 12:02:09 +0100
Message-ID: <CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Wed, 23 Jan 2019 11:02:23 -0000
Content-Type: multipart/alternative; boundary="0000000000002ab83d05801e07f7"

--0000000000002ab83d05801e07f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have toke the rpm file that was produced. I found the file under the
build directory under
tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-rpms/imx8mq/temp/x_media=
-1.0-r44.imx8mq.rpm.
I used the following commands
7z x x_media-1.0-r44.imx8mq.rpm
7z x x_media-1.0-r44.imx8mq.cpio

The result from this gave me the file tree where I then could run
file usr/lib/libx_media_1.0.so

usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
version 1 (SYSV), dynamically linked, stripped

So I believe that I have concluded that the rpm include the file that dnf
is complaining about. I don't understand why dnf thinks that this
dependency is not meet when it clearly is part of the package. I have added
verbose flags to the dnf call but dose not give any more information.
I am not sure how I can proceed to find out what I have done wrong. The
recipe is a bit of a freak of nature because the binaries that I am
packaging is actually built using another toolchain but it is for the same
arch can dnf detect that?

BR
M=C3=A5ns Zigher

Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com=
>:

> Hi,
>
> I am struggling with a recipe which more or less just downloads binaries
> and creating a package. We have previously been using ipkg but now we hav=
e
> switched to rpm in our builds. One of the binaries in the packages is a
> library let's call it libx_media_1.0.so. This library is part of the
> package that the recipe is producing. The library is placed under
> /usr/lib/. When building the image I am getting the following error
>
> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
> .....
> ...
> Error:
>  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media,
> but none of the providers can be installed
>   - conflicting requests
>   - nothing provides libx_media_1.0.so()(64bit) needed by
> x_media-1.0-r44.imx8mq
>
> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>
> Here is the output from running the command file on the library
>
> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
> version 1 (SYSV), dynamically linked, stripped
>
> I have also verified that the library is part of the produced rpm so that
> is not the issue.
>
> Dose anyone have any suggestion on how to debug this problem? Because I a=
m
> out of ideas
>
> BR
> M=C3=A5ns Zigher
>

--0000000000002ab83d05801e07f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have toke the rpm file that was produced. I found the fi=
le under the build directory under tmp/work/imx8mq-strix-linux/x_media/1.0-=
r44/deploy-rpms/imx8mq/temp/x_media-1.0-r44.imx8mq.rpm. I used the followin=
g commands<div><div>7z x x_media-1.0-r44.imx8mq.rpm</div><div>7z x x_media-=
1.0-r44.imx8mq.cpio<br></div><div><br></div><div>The result from this gave =
me the file tree where I then could run</div><div>file usr/lib/<a href=3D"h=
ttp://libx_media_1.0.so/" target=3D"_blank">libx_media_1.0.so</a>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br></=
div><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div><div>usr/lib=
/<a href=3D"http://libx_media_1.0.so/" target=3D"_blank">libx_media_1.0.so<=
/a>: ELF 64-bit LSB shared object, ARM aarch64, version 1 (SYSV), dynamical=
ly linked, stripped</div></div><div><br></div><div>So I believe that I have=
 concluded that the rpm include the file that dnf is complaining about. I d=
on&#39;t understand why dnf thinks that this dependency is not meet when it=
 clearly is part of the package. I have added verbose flags to the dnf call=
 but dose not give any more information.</div><div>I am not sure how I can =
proceed to find out what I have done wrong. The recipe is a bit of a freak =
of nature because the binaries that I am packaging is actually built using =
another toolchain but it is for the same arch can dnf detect that?</div><di=
v><br></div><div>BR</div><div>M=C3=A5ns Zigher=C2=A0=C2=A0</div></span></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher &lt;<a href=3D"mailt=
o:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt;:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div>=
<div>I am struggling with a recipe which more or less just downloads binari=
es and creating a package. We have previously been using ipkg but now we ha=
ve switched to rpm in our builds. One of the binaries in the packages is a =
library let&#39;s call it=C2=A0<a href=3D"http://libx_media_1.0.so/" target=
=3D"_blank">libx_media_1.0.so</a>. This library is part of the package that=
 the recipe is producing. The library is placed under /usr/lib/. When build=
ing the image I am getting the following error</div><div><br></div><div><di=
v>ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command</div><d=
iv>.....</div><div>...</div><div>Error:=C2=A0</div><div>=C2=A0Problem: pack=
age packagegroup-x-media-1.0-r11.noarch requires x_media, but none of the p=
roviders can be installed</div><div>=C2=A0 - conflicting requests</div><div=
>=C2=A0 - nothing provides=C2=A0<a href=3D"http://libx_media_1.0.so/" targe=
t=3D"_blank">libx_media_1.0.so</a>()(64bit) needed by x_media-1.0-r44.imx8m=
q</div><div><br></div><div>ERROR: base-image-1.0-r0 do_rootfs: Function fai=
led: do_rootfs</div></div><div><br></div><div>Here is the output from runni=
ng the command file on the library</div><div><br></div><div>usr/lib/<a href=
=3D"http://libx_media_1.0.so/" target=3D"_blank">libx_media_1.0.so</a>: ELF=
 64-bit LSB shared object, ARM aarch64, version 1 (SYSV), dynamically linke=
d, stripped<br></div><div><br></div><div>I have also verified that the libr=
ary is part of the produced rpm so that is not the issue.</div><div><br></d=
iv><div>Dose anyone have any suggestion on how to debug this problem? Becau=
se I am out of ideas</div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher=
</div></div>
</blockquote></div>

--0000000000002ab83d05801e07f7--
