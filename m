Return-Path: <ryansvb91@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10017E00A54; Thu, 13 Aug 2015 13:26:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76119E00A73
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 13:26:39 -0700 (PDT)
Received: by igui7 with SMTP id i7so90847261igu.1
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 13:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=NEDT1MtYxUGzErTeNbj83fkm/CpG2kcb07bgTdKRqZU=;
	b=cPMJdKxhNHYo7VQAFiRjPX6DKW/Rv9Uc5OE6bJYwHKFnVYb6dDicdFfvnLrUo1h7dq
	X2gx+ZuQxXtLi6XCUToolwino9FyY+cU8XZKO81yHpcE3Yos/keKNFyuob4htqFcXHcF
	jaiVoy7Y2Nnl1d+ftITqq8NT+Ao5tO/+O8x9lQ1edTSKVkW1W39XRK4zVqHhJOxPGabX
	gRmyB8HViC7L/th8VrfataLqTZ/4MO98jyfFkYU+RXFLVvKWWLfMTHjsta/wIHOI4x95
	YUNQQyDunTwiQiKfG/Uh3zCZLKdVOM/c/JZmPpiJsvXsfiMC5QVYBOXHsNTA9r6e+vWU
	y8YQ==
MIME-Version: 1.0
X-Received: by 10.50.117.65 with SMTP id kc1mr5248106igb.94.1439497599178;
	Thu, 13 Aug 2015 13:26:39 -0700 (PDT)
Sender: ryansvb91@gmail.com
Received: by 10.79.29.76 with HTTP; Thu, 13 Aug 2015 13:26:39 -0700 (PDT)
In-Reply-To: <53C7D019-CC77-4FDB-A40E-16FCF6D00781@gmail.com>
References: <CAHWMYyDRB9nO0cxM+-Pi4hWz_cfViiPND6qi+9cP2Y=ZRFF0Eg@mail.gmail.com>
	<53C7D019-CC77-4FDB-A40E-16FCF6D00781@gmail.com>
Date: Thu, 13 Aug 2015 13:26:39 -0700
X-Google-Sender-Auth: ZGYWxn6C1n1ZRoQR3EQ4vnwFLuw
Message-ID: <CAMeZNHTzYBU5hcPFVJub1g2B1b-_88SBdDQ8nv920isnTmB4bw@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: No '/lib/modules' directory in image, modprobe fails
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
X-List-Received-Date: Thu, 13 Aug 2015 20:26:41 -0000
Content-Type: multipart/alternative; boundary=089e0118271e0de0f9051d372730

--089e0118271e0de0f9051d372730
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 11, 2015 at 6:36 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Aug 11, 2015, at 5:53 PM, Todd Efflam <todd.efflam@gmail.com> wrote:
> >
> > Hello,
> > We're trying to load and unload modules using modprobe but are having
> problems.  The command fails with "modprobe: can't change directory to
> '/lib/modules': no such file or directory".  There is actually no
> /lib/modules directory on the image at all.  We tried to install the
> linux-libc-headers package but it failed and I think the reason is we are
> using the 3.14 kernel and the package is 3.19.  Any help would be
> appreciated!
>
> linux-libc-headers is kernel APIs for userland. The modules are generated
> as individual packages during kernel build. You can choose which modules
> you want to package
> default it none. if you want all default modules to be included in image
> you can add
>
> MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules=E2=80=9D
>
> to you machine.conf
>
> Otherwise if you know which ones your system needs then you can add it to
> IMAGE_INSTALL individually.
>
> IMAGE_INSTALL +=3D "kernel-module-<name-of-module>=E2=80=9D
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
Thank you this fixed the problem!

-Todd

--089e0118271e0de0f9051d372730
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Aug 11, 2015 at 6:36 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
&gt; On Aug 11, 2015, at 5:53 PM, Todd Efflam &lt;<a href=3D"mailto:todd.ef=
flam@gmail.com">todd.efflam@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt; We&#39;re trying to load and unload modules using modprobe but are hav=
ing problems.=C2=A0 The command fails with &quot;modprobe: can&#39;t change=
 directory to &#39;/lib/modules&#39;: no such file or directory&quot;.=C2=
=A0 There is actually no /lib/modules directory on the image at all.=C2=A0 =
We tried to install the linux-libc-headers package but it failed and I thin=
k the reason is we are using the 3.14 kernel and the package is 3.19.=C2=A0=
 Any help would be appreciated!<br>
<br>
</span>linux-libc-headers is kernel APIs for userland. The modules are gene=
rated as individual packages during kernel build. You can choose which modu=
les you want to package<br>
default it none. if you want all default modules to be included in image yo=
u can add<br>
<br>
MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules=E2=80=9D<br>
<br>
to you machine.conf<br>
<br>
Otherwise if you know which ones your system needs then you can add it to I=
MAGE_INSTALL individually.<br>
<br>
IMAGE_INSTALL +=3D &quot;kernel-module-&lt;name-of-module&gt;=E2=80=9D<br>
<br>
<br>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div><div class=3D"gmail_extra">Thank you this =
fixed the problem!<br><br></div><div class=3D"gmail_extra">-Todd<br></div><=
/div>

--089e0118271e0de0f9051d372730--
