Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 087A4E00CE4; Wed, 23 Jan 2019 01:50:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9C7E006C7
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 01:50:53 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id k98so1385727otk.3
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 01:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=L3tVrivsbOjuPAY+J3EnwfqFWFLt3rMFKOwD7IjuP9Q=;
	b=daQ0SJS7v0L9f3P3ru2vN5pc94pSUpglm6Ks2TjuHIaject6uBrjTwibSmraMlQp+L
	lHuXC2JTs7aL/cZ13HrZNdEz2S58wxdIkJRl4HXx7VveIJLMv3MVsFJ8BsuoSVsT2rv3
	Djtk6zP2ZaUn0TSXdQbPhMdHuVU828EGQVtDcLuglGXd61fiXl5ex55QFNkVi0bFpb3L
	oZege/Eprk+8kgYdhTbghd1S2kh8jGz7KmUv4Bt5rcv/B4EqANEk0pKuLodjyLCY/9Lv
	Vg3euc0DoG4ZoaOxS0InRVH26yR/7h6QEUiBO6XRujvsqIGX4P5AjeWh3ivcJaozbPJJ
	hG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=L3tVrivsbOjuPAY+J3EnwfqFWFLt3rMFKOwD7IjuP9Q=;
	b=rwlEzRkXGr1pePFHauOu02GOBrM0unhc6T1BpsfdjcjJ6z0JIHk7WLPd0Bmsm5wFdJ
	M25BuLwN9bjvAgMu/kf7NuIf1sRm7HQNtlktoYWdXFi+STOXL+OanQc7x968I8v8hXKr
	GCTvRZEWd0w02hoWF/QZBlt5fWoHRmOzZlotQpyHPb8+V8etFZvKkSoyvwqrP6ihm0V4
	vY63ozZAtBoQuOl8MgasH6lX5aCmflOxYDgcwPBId8SL1Dd0pt4YV8vFrlvjgbR49lVC
	+XkBzh4T05l/ZUrw1bwyoLG60yPl2o6S1K4D4fJM8H9ICk6VU5fT2/wMJG18dIRD8UGb
	Rfsw==
X-Gm-Message-State: AJcUuker4SXi9XOCtqsT3HSZTGGenHTXFKEtGZklRW2lApZpu28Mlxn/
	1OxtU2M9nHenTQSgFqErwk64LffwGPwB6zepYzbdtdA51aI=
X-Google-Smtp-Source: ALg8bN5cEoR3/NuetxlqinQ15YogJBpaUFaE7BdpZ7/UqeZ5B3gnZ08CTBvGIr9AtHJElshA0nmRrVtn0r9qEBvfpDI=
X-Received: by 2002:a9d:121:: with SMTP id 30mr982711otu.189.1548237052536;
	Wed, 23 Jan 2019 01:50:52 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
	<CAB6-VtKjusNd4NOCwxezO26N0sxaYTxsa0mn8PtsSVSu0yfQAQ@mail.gmail.com>
In-Reply-To: <CAB6-VtKjusNd4NOCwxezO26N0sxaYTxsa0mn8PtsSVSu0yfQAQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 23 Jan 2019 10:50:41 +0100
Message-ID: <CAEhQi8nbA2dbvbGOh1c6JXohTsOd1s7jHrOqiiuRRvCTXnvAvA@mail.gmail.com>
To: Einar Vading <yocto-ml@vading.se>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 23 Jan 2019 09:50:54 -0000
Content-Type: multipart/alternative; boundary="0000000000008b6c8905801d0729"

--0000000000008b6c8905801d0729
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have verified that the so-lib file is part of the rpm package and I am
using INSANE_SKIP where I have added dev-so but I am willing to try
anything right now so thanks. The so-files is not something I have control
of it is something that is delivered to us.

BR
M=C3=A5ns Zigher

Den ons 23 jan. 2019 kl 10:12 skrev Einar Vading <yocto-ml@vading.se>:

> I'm not sure this is your problem but if you don't version your
> so-libs you could get this since the .so (without version) is not
> shipped by default I think.
>
> Try putting this in your recipe:
> SOLIBS =3D ".so*"
> FILES_SOLIBSDEV =3D ""
> ERROR_QA_remove =3D "dev-so"
>
> If that works I think the proper solution is to give your so-lib a versio=
n.
>
> // Einar
>
> On Tue, Jan 22, 2019 at 6:00 PM M=C3=A5ns Zigher <mans.zigher@gmail.com> =
wrote:
> >
> > Hi,
> >
> > I am struggling with a recipe which more or less just downloads binarie=
s
> and creating a package. We have previously been using ipkg but now we hav=
e
> switched to rpm in our builds. One of the binaries in the packages is a
> library let's call it libx_media_1.0.so. This library is part of the
> package that the recipe is producing. The library is placed under
> /usr/lib/. When building the image I am getting the following error
> >
> > ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
> > .....
> > ...
> > Error:
> >  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media,
> but none of the providers can be installed
> >   - conflicting requests
> >   - nothing provides libx_media_1.0.so()(64bit) needed by
> x_media-1.0-r44.imx8mq
> >
> > ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> >
> > Here is the output from running the command file on the library
> >
> > usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
> version 1 (SYSV), dynamically linked, stripped
> >
> > I have also verified that the library is part of the produced rpm so
> that is not the issue.
> >
> > Dose anyone have any suggestion on how to debug this problem? Because I
> am out of ideas
> >
> > BR
> > M=C3=A5ns Zigher
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008b6c8905801d0729
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have verified that the so-lib fil=
e is part of the rpm package and I am using INSANE_SKIP where I have added =
dev-so but I am willing to try anything right now so thanks. The so-files i=
s not something I have control of it is something that is delivered to us.<=
/div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Den ons 23 jan.=
 2019 kl 10:12 skrev Einar Vading &lt;<a href=3D"mailto:yocto-ml@vading.se"=
>yocto-ml@vading.se</a>&gt;:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">I&#39;m not sure this is your problem but if you don&#39;t ver=
sion your<br>
so-libs you could get this since the .so (without version) is not<br>
shipped by default I think.<br>
<br>
Try putting this in your recipe:<br>
SOLIBS =3D &quot;.so*&quot;<br>
FILES_SOLIBSDEV =3D &quot;&quot;<br>
ERROR_QA_remove =3D &quot;dev-so&quot;<br>
<br>
If that works I think the proper solution is to give your so-lib a version.=
<br>
<br>
// Einar<br>
<br>
On Tue, Jan 22, 2019 at 6:00 PM M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans=
.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrote:<b=
r>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am struggling with a recipe which more or less just downloads binari=
es and creating a package. We have previously been using ipkg but now we ha=
ve switched to rpm in our builds. One of the binaries in the packages is a =
library let&#39;s call it <a href=3D"http://libx_media_1.0.so" rel=3D"noref=
errer" target=3D"_blank">libx_media_1.0.so</a>. This library is part of the=
 package that the recipe is producing. The library is placed under /usr/lib=
/. When building the image I am getting the following error<br>
&gt;<br>
&gt; ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command<br>
&gt; .....<br>
&gt; ...<br>
&gt; Error:<br>
&gt;=C2=A0 Problem: package packagegroup-x-media-1.0-r11.noarch requires x_=
media, but none of the providers can be installed<br>
&gt;=C2=A0 =C2=A0- conflicting requests<br>
&gt;=C2=A0 =C2=A0- nothing provides <a href=3D"http://libx_media_1.0.so" re=
l=3D"noreferrer" target=3D"_blank">libx_media_1.0.so</a>()(64bit) needed by=
 x_media-1.0-r44.imx8mq<br>
&gt;<br>
&gt; ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
&gt;<br>
&gt; Here is the output from running the command file on the library<br>
&gt;<br>
&gt; usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" target=
=3D"_blank">libx_media_1.0.so</a>: ELF 64-bit LSB shared object, ARM aarch6=
4, version 1 (SYSV), dynamically linked, stripped<br>
&gt;<br>
&gt; I have also verified that the library is part of the produced rpm so t=
hat is not the issue.<br>
&gt;<br>
&gt; Dose anyone have any suggestion on how to debug this problem? Because =
I am out of ideas<br>
&gt;<br>
&gt; BR<br>
&gt; M=C3=A5ns Zigher<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000008b6c8905801d0729--
