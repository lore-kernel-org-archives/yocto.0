Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D292E00796; Mon, 21 Jul 2014 02:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AED7E0078A
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 02:55:59 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id lf12so11671769vcb.15
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 02:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=uf2nu25OEMovWKLnZ5Mug5/n7GUDQGBazypQlICJyfc=;
	b=bGk996YuHH/4V4s9tBE7bBhDPGt9xOHXpWMbclFMdJFZ8fdsKaBYBn11LxgLC+64PS
	nWfWLP0TB5WDORk9M4qS3EnfrOCCcjPvoHXL4fT6wAcd6wRkMmNyPr6+ZzKNdTSwpm0I
	JlkX25OVn9OHp18c5K4DYn7RVX3vFneHWyPWvI2nQQXWmrvpVxeSczi7AkDendXcvARp
	8a3dD/VGUljSKrWzTPGthyY6GCwmJJucv5WoMiH8VmkIoD2lR9b6IUg0Ngd0APH4Dx7D
	wTSCHeUkQG37XpiwLKlua3S8/FviZh1syRe1sCdA8fKv7zxd+qOeA/Tb0/+FCBm9N9nw
	CGxQ==
X-Received: by 10.220.192.129 with SMTP id dq1mr8161199vcb.57.1405936558516;
	Mon, 21 Jul 2014 02:55:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.81.4 with HTTP; Mon, 21 Jul 2014 02:55:38 -0700 (PDT)
In-Reply-To: <CALYamyLPp6BG-1ev_+z2=ZeH_DhxAUsTRuJ86MQF6n6xi5uMew@mail.gmail.com>
References: <CALYamyLPp6BG-1ev_+z2=ZeH_DhxAUsTRuJ86MQF6n6xi5uMew@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Mon, 21 Jul 2014 15:25:38 +0530
Message-ID: <CAAA4K6LabiuSPBcgSkHW07vCm_MdOBoVBCAWz4_xDCJ6O4Cd_w@mail.gmail.com>
To: "Wiktor S. Ovalle Correa" <w.s.ovalle@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building image without kernel
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
X-List-Received-Date: Mon, 21 Jul 2014 09:56:09 -0000
Content-Type: multipart/alternative; boundary=089e01293f2c25b0e904feb11d26

--089e01293f2c25b0e904feb11d26
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=E2=80=8BHi,

You can skip kernel build by a custom python function. It is supported by
bitbake. There is an event called '*SkipPackage*'
I did this for my custom distro in dylan. You can add this in your
linux.bbappend.

python __anonymous () {
    import bb, re
    nokb =3D (re.match('*insert ur distroname*', d.getVar('DISTRO', True)) =
!=3D
None)
    if nokb:
        raise bb.parse.SkipPackage("Skipping Yocto Kernel Build for our %s
Distro" %
                                   d.getVar('DISTRO', True))


-JC


On Mon, Jul 21, 2014 at 1:32 PM, Wiktor S. Ovalle Correa <
w.s.ovalle@gmail.com> wrote:

> Hi everyone.
>
> I didn't find it anywhere - is it possible to only use linux headers
> without compiling kernel?
>
> My problem is rather unusual - i got to use custom kernel which has been
> customized long ago in a horrible way by a former co-worker so it's
> impossible to compile it with yocto in a reasonable time, but i need its
> headers to compile other parts of a system.
>
> And it appears that it might be enough to only disable building kernel
> modules, if there's a way to do so.
>
> Any suggestions are appreciated,
> wiktor
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
JCP

--089e01293f2c25b0e904feb11d26
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">=E2=80=8BHi,</div><div class=3D"gmail_default" s=
tyle=3D"font-family:&#39;trebuchet ms&#39;,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">

You can skip kernel build by a custom python function. It is supported by b=
itbake. There is an event called &#39;<b>SkipPackage</b>&#39;</div><div cla=
ss=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif=
">

I did this for my custom distro in dylan. You can add this in your linux.bb=
append.</div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuch=
et ms&#39;,sans-serif"><br></div><div class=3D"gmail_default" style><div cl=
ass=3D"gmail_default" style>

<font face=3D"trebuchet ms, sans-serif">python __anonymous () {</font></div=
><div class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-serif"=
>=C2=A0 =C2=A0 import bb, re</font></div><div class=3D"gmail_default" style=
><font face=3D"trebuchet ms, sans-serif">=C2=A0 =C2=A0 nokb =3D (re.match(&=
#39;<b>insert ur distroname</b>&#39;, d.getVar(&#39;DISTRO&#39;, True)) !=
=3D None)</font></div>

<div class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-serif">=
=C2=A0 =C2=A0 if nokb:</font></div><div class=3D"gmail_default" style><font=
 face=3D"trebuchet ms, sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.par=
se.SkipPackage(&quot;Skipping Yocto Kernel Build for our %s Distro&quot; %<=
/font></div>

<div class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-serif">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.getVar(&#39;DISTRO&#3=
9;, True))</font></div></div><div class=3D"gmail_default" style=3D"font-fam=
ily:&#39;trebuchet ms&#39;,sans-serif">

<br></div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet =
ms&#39;,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:&#39;trebuchet ms&#39;,sans-serif">-JC</div></div><div class=3D"gmail_=
extra">

<br><br><div class=3D"gmail_quote">On Mon, Jul 21, 2014 at 1:32 PM, Wiktor =
S. Ovalle Correa <span dir=3D"ltr">&lt;<a href=3D"mailto:w.s.ovalle@gmail.c=
om" target=3D"_blank">w.s.ovalle@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">

<div dir=3D"ltr"><div><div><div><div>Hi everyone.<br><br></div>I didn&#39;t=
 find it anywhere - is it possible to only use linux headers without compil=
ing kernel?<br><br></div>My problem is rather unusual - i got to use custom=
 kernel which has been customized long ago in a horrible way by a former co=
-worker so it&#39;s impossible to compile it with yocto in a reasonable tim=
e, but i need its headers to compile other parts of a system.<br>


<br></div>And it appears that it might be enough to only disable building k=
ernel modules, if there&#39;s a way to do so.<br><br></div>Any suggestions =
are appreciated,<br>wiktor<br></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--089e01293f2c25b0e904feb11d26--
