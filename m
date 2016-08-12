Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E9D9E00C5B; Fri, 12 Aug 2016 15:50:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C27E00C51
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 15:50:29 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id 74so28060uau.3
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 15:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/Z5pVxDDxPutXD+ZNd0rG9bP8foizwKmgIiV/VblfiY=;
	b=q1VMEAzaYRMG5PM53K6EuRd2Kqv2R0PfyNz4pnGt3s386khWF19eua2VR8IjEKnROI
	qZ4Inm4Xx9X74ulxxZe+t5joCvT+hiS7wahP6ceNh+8J0+CVoYoaf9SF/ziHaIUGV2aA
	VrOHs3F/Oh9ehIm2X/FXGDR61Er0sJZUXQZaEzTJ5/5ZFbv5N0tjeOBGVkjljI5tNNjR
	JC85jKjVgtyvodoFAvk1vbP+qr6/RYTAoevNQrDTt/SuobFK8JD3IWGmhlOBfBiSK81e
	6UOCXx5ANy7s1m3ptgtQmEO4OEvCcU5AjiO68MWk+JkGf0oIN7iyheKe5oEYsf8cTNLH
	h2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/Z5pVxDDxPutXD+ZNd0rG9bP8foizwKmgIiV/VblfiY=;
	b=Mr8QEZNoPEw5vVGWJh6NLux5RQeR6bZNhg5ic2XeH07IUfnSDLuIe7wPgkgkdVcS0j
	3zER2NFvy+27dULm9g0ZY3GjeVg6dNIZu7ckNS8NK/a6fxbeopLxnFhKBakDSJKl8Njv
	wEMCEVFL4z7k4igj42k1OxeNV9C1rODBw/PHEM6tVvkJCi9c7q4UfkIXJMRmt7t5ZQOs
	ySYUOrNITjozSA3w/TwRy9l2HUKrb6bgDtdpCDqI//vUZw81+5LxlByQxp3OC19Is6Cb
	qPxQCyKiB2PGuhA2MHBQNf7dyAVfLAFh9huIjZJhDkewwDGZhQAzm5skJJA1E869NzUB
	uIYg==
X-Gm-Message-State: AEkooutwuwyzWe9t+rFjR5B/8d2jPz0SYx1CKP7eUwBmCCd8HLJ5M0V+XXQ0RvoEiWK4FagYmY8CAmnt+jXsIA==
X-Received: by 10.31.175.1 with SMTP id y1mr4028143vke.123.1471042228283; Fri,
	12 Aug 2016 15:50:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.194 with HTTP; Fri, 12 Aug 2016 15:50:27 -0700 (PDT)
In-Reply-To: <BN3PR1201MB0963796463290B74813475BBA51F0@BN3PR1201MB0963.namprd12.prod.outlook.com>
References: <BN3PR1201MB0963796463290B74813475BBA51F0@BN3PR1201MB0963.namprd12.prod.outlook.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 12 Aug 2016 19:50:27 -0300
Message-ID: <CAF3SDA5R6KRgq16rhU9qzmappQZk9V1pJsOA_mRx+Nih+a3uyw@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is There a easy way to check which version of GCC was been used to a package
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
X-List-Received-Date: Fri, 12 Aug 2016 22:50:33 -0000
Content-Type: multipart/alternative; boundary=001a114413b47771a90539e7b5bb

--001a114413b47771a90539e7b5bb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Try executing libc. It shows the version of gcc that was used to be
compiled. Here is a sample output from *my workstation*.

[geckos@localhost ~]$ /lib/libc-2.24.so
GNU C Library (GNU libc) stable release version 2.24, by Roland McGrath et
al.
Copyright (C) 2016 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.
Compiled by GNU CC version 6.1.1 20160802.
Available extensions:
    crypt add-on version 2.1 by Michael Glad and others
    GNU Libidn by Simon Josefsson
    Native POSIX Threads Library by Ulrich Drepper et al
    BIND-8.2.3-T5B
libc ABIs: UNIQUE IFUNC
For bug reporting instructions, please see:
<https://bugs.archlinux.org/>.
[geckos@localhost ~]$




2016-08-12 7:07 GMT-03:00 Richard Zhang <richard.zhang@pica8.com>:

> Hi all
>
>
>
> After use yocto build linux distro , how could I check the toolchain=E2=
=80=99s
> version?
>
> Is there a version description?
>
>
>
>
>
>
>
>
>
> Best Regard.
>
>
>
> Richard Zhang
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114413b47771a90539e7b5bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try executing libc. It shows the version of gcc that was u=
sed to be compiled. Here is a sample output from *my workstation*.<br><br>[=
geckos@localhost ~]$ /lib/<a href=3D"http://libc-2.24.so">libc-2.24.so</a> =
<br>GNU C Library (GNU libc) stable release version 2.24, by Roland McGrath=
 et al.<br>Copyright (C) 2016 Free Software Foundation, Inc.<br>This is fre=
e software; see the source for copying conditions.<br>There is NO warranty;=
 not even for MERCHANTABILITY or FITNESS FOR A<br>PARTICULAR PURPOSE.<br>Co=
mpiled by GNU CC version 6.1.1 20160802.<br>Available extensions:<br>=C2=A0=
=C2=A0=C2=A0 crypt add-on version 2.1 by Michael Glad and others<br>=C2=A0=
=C2=A0=C2=A0 GNU Libidn by Simon Josefsson<br>=C2=A0=C2=A0=C2=A0 Native POS=
IX Threads Library by Ulrich Drepper et al<br>=C2=A0=C2=A0=C2=A0 BIND-8.2.3=
-T5B<br>libc ABIs: UNIQUE IFUNC<br>For bug reporting instructions, please s=
ee:<br>&lt;<a href=3D"https://bugs.archlinux.org/">https://bugs.archlinux.o=
rg/</a>&gt;.<br>[geckos@localhost ~]$ <br><br><br><br></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">2016-08-12 7:07 GMT-03:00 Richar=
d Zhang <span dir=3D"ltr">&lt;<a href=3D"mailto:richard.zhang@pica8.com" ta=
rget=3D"_blank">richard.zhang@pica8.com</a>&gt;</span>:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">





<div link=3D"#0563C1" vlink=3D"#954F72" lang=3D"ZH-CN">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Af=
ter use yocto build linux distro , how could I check the toolchain=E2=80=99=
s version?<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Is=
 there a version description?<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Be=
st Regard.<span class=3D"HOEnZb"><font color=3D"#888888"><u></u><u></u></fo=
nt></span></span></p><span class=3D"HOEnZb"><font color=3D"#888888">
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Ri=
chard Zhang<u></u><u></u></span></p>
</font></span></div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:rig=
ht"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b=
>Yoda Master</b></i><br></div></div>
</div>

--001a114413b47771a90539e7b5bb--
