Return-Path: <sanjuchopracool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FF26E00CAC; Tue, 18 Dec 2018 05:39:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sanjuchopracool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B98AE0053F
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 05:39:00 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id v15-v6so14196116ljh.13
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 05:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uSiDCCdu7WTVxesY0RWDeGlr66txNlXZzuDhBIAECIo=;
	b=HYXgkUfnKFFX4Ty6Lf+AmQaPnYb63UhfJ0BsMpCsb8x7+fjGZ5sgjh0UU5aOocZboo
	j1Hq9MzHttZvmcezoJ5EZr6mScFbw22/FBAnrPFEQnx0NqpjPJe9nBZr9N2eHLPwQeIw
	uXus6rXGPNDBKc9rfROl54DDVgF25UvcPX+IecLdi3tQX/nu52QujwVajeS9Wsv3twHf
	LL3kwur7b6njBNVLLcO63aQB6NfDNetSaz0c1U7ayjQa5xnT7HVdUrIcZ/zDtBjEbF3B
	BDIY01ZtmdlYJeYODYllmCU9eZt4wCttaUPk9JrO/3p/NAXQxvRysaVZxecjDWA1J3Ol
	Z+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uSiDCCdu7WTVxesY0RWDeGlr66txNlXZzuDhBIAECIo=;
	b=U1F99aTnmWANlVcFmmey4hzf4LDj5ncbSyWx1gMgIFnnaTLnnylIihRKHcxIfP0uWN
	QmXbTf2sAhf623L/DW9DXe8Tpjil/F3s0jAdN1KU261ar2wFOzfymaKODteiL2wikWtq
	zDOuR+dN8NS1sFc/kNux0ci4GUf+lZhsrawkDwc789A8WjvcuETnzercv5xopMdnT5YW
	V5TqbJ5VbCKgXKLz4ywYQz3V7QqgAoIcswojWyk2h3BhEe6xGIz7nKsxPvZrmCKq5LYt
	UBd/BXcj01WvdH9fB9eC0nihkPhrxsHcS4d352mwegZCr5LxWuHX0mZLLqctFhNvn9LZ
	ahNw==
X-Gm-Message-State: AA+aEWarR4Er+aFDYzxNjS4ZaG4+qZhnaU1goZAhi63wVJ3e5e7Rz9g4
	/Z9m5NRK2oJjx1vTzVCQkK2AINRQgQqCO74zMck=
X-Google-Smtp-Source: AFSGD/WMQG1sWgbyI4Qu4b31xnRWJWmbPeYQoLYAjGw4loUIze6PNVZWfEerMvplkiDg/ltNEhmj8q7uGJ4poQYwqos=
X-Received: by 2002:a2e:98c9:: with SMTP id s9-v6mr641264ljj.166.1545140339404;
	Tue, 18 Dec 2018 05:38:59 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
	<CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
	<CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
	<CAMKF1so-DSbCCb5PavqLCkdsQ0vVPSOr6kRV_HEZrenzWDwWEQ@mail.gmail.com>
	<CAC0z2vFvJPrwMQSjRsJZGitb9WP0JOsOEBWTc=2tDJTf5czNZg@mail.gmail.com>
	<CAJTo0LY9NF5D0+f3eSuMBPADWBQHSN8ASd1By1uiVaEZq-M_jw@mail.gmail.com>
In-Reply-To: <CAJTo0LY9NF5D0+f3eSuMBPADWBQHSN8ASd1By1uiVaEZq-M_jw@mail.gmail.com>
From: sanjay chopra <sanjuchopracool@gmail.com>
Date: Tue, 18 Dec 2018 19:08:48 +0530
Message-ID: <CAC0z2vGxYjWUbY1vYJ8T6p4yEfTUM2ZMxUSB-b9P6L2K0mRFvg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: build fails for qemux86
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
X-List-Received-Date: Tue, 18 Dec 2018 13:39:01 -0000
Content-Type: multipart/alternative; boundary="0000000000000ef5ee057d4c0546"

--0000000000000ef5ee057d4c0546
Content-Type: text/plain; charset="UTF-8"

I have not changed anything, I also tried with fresh download from
https://www.yoctoproject.org/software-overview/downloads/
I tried cleaning build directory.

I have kept my downloads in a separate partition(NTFS), but I am building
inside my home directory (ext4 partition).
I used default configuration files except only one line change in local.conf

DL_DIR ?= "/mnt/DATA_PARTITION/poky-downloads"


On Tue, Dec 18, 2018 at 6:44 PM Burton, Ross <ross.burton@intel.com> wrote:

> On Tue, 18 Dec 2018 at 13:07, sanjay chopra <sanjuchopracool@gmail.com>
> wrote:
> > + qemu-i386 -r 3.2.0 -E
> LD_LIBRARY_PATH=/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib
> -L
> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
> -E
> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/libexec/fc-cache
> --sysroot=/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
> --system-only
> > usage: qemu-i386 [options] program [arguments...]
> > Linux CPU emulator (compiled for i386 emulation)
>
> So qemu doesn't like what it's been passed.  Unpacking what you posted:
>
> qemu-i386 \
>   -r 3.2.0 \
>   -E LD_LIBRARY_PATH=WORKDIR/rootfs/usr/lib:WORKDIR/rootfs/lib \
>   -L WORKDIR/rootfs \
>   -E \
>   WORKDIR/rootfs/usr/libexec/fc-cache \
>     --sysroot=WORKDIR/rootfs \
>     --system-only
>
> For some reason an extra -E is being passed. Have you changed the
> intercepts? This is what the script should look like:
>
>   $ cat scripts/postinst-intercepts/update_font_cache
>   #!/bin/sh
>   set -e
>   PSEUDO_UNLOAD=1 ${binprefix}qemuwrapper -L $D -E
> ${fontconfigcacheenv} $D${libexecdir}/${binprefix}fc-cache --sysro
> ot=$D --system-only ${fontconfigcacheparams}
>
> Note there's only one -E entry.
>
> Ross
>


-- 

*RegardsSanjay*

--0000000000000ef5ee057d4c0546
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small;color:rgb(0,0,0)">I have not changed anything, I also tried wi=
th fresh download from <a href=3D"https://www.yoctoproject.org/software-ove=
rview/downloads/" target=3D"_blank">https://www.yoctoproject.org/software-o=
verview/downloads/</a></div><div class=3D"gmail_default" style=3D"font-size=
:small;color:rgb(0,0,0)">I tried cleaning build directory.<br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)"><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)">I h=
ave kept my downloads in a separate partition(NTFS), but I am building insi=
de my home directory (ext4 partition).</div><div class=3D"gmail_default" st=
yle=3D"font-size:small;color:rgb(0,0,0)">I used default configuration files=
 except only one line change in local.conf</div><div class=3D"gmail_default=
" style=3D"font-size:small;color:rgb(0,0,0)"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small;color:rgb(0,0,0)">

<p style=3D"margin:0px;text-indent:0px;white-space:pre-wrap">DL_DIR ?=3D &q=
uot;/mnt/DATA_PARTITION/poky-downloads&quot;</p></div><div class=3D"gmail_d=
efault" style=3D"font-size:small;color:rgb(0,0,0)"><br></div></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Dec 18, 2018 at 6:44 =
PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On Tue, 18 Dec 2018 at 13:07, sanjay chopra &lt;<a=
 href=3D"mailto:sanjuchopracool@gmail.com" target=3D"_blank">sanjuchopracoo=
l@gmail.com</a>&gt; wrote:<br>
&gt; + qemu-i386 -r 3.2.0 -E LD_LIBRARY_PATH=3D/home/sanju/qemu_check/tmp/w=
ork/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju=
/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/li=
b -L /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/=
1.0-r0/rootfs -E /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/rootfs/usr/libexec/fc-cache --sysroot=3D/home/sanju/qemu=
_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs --syste=
m-only<br>
&gt; usage: qemu-i386 [options] program [arguments...]<br>
&gt; Linux CPU emulator (compiled for i386 emulation)<br>
<br>
So qemu doesn&#39;t like what it&#39;s been passed.=C2=A0 Unpacking what yo=
u posted:<br>
<br>
qemu-i386 \<br>
=C2=A0 -r 3.2.0 \<br>
=C2=A0 -E LD_LIBRARY_PATH=3DWORKDIR/rootfs/usr/lib:WORKDIR/rootfs/lib \<br>
=C2=A0 -L WORKDIR/rootfs \<br>
=C2=A0 -E \<br>
=C2=A0 WORKDIR/rootfs/usr/libexec/fc-cache \<br>
=C2=A0 =C2=A0 --sysroot=3DWORKDIR/rootfs \<br>
=C2=A0 =C2=A0 --system-only<br>
<br>
For some reason an extra -E is being passed. Have you changed the<br>
intercepts? This is what the script should look like:<br>
<br>
=C2=A0 $ cat scripts/postinst-intercepts/update_font_cache<br>
=C2=A0 #!/bin/sh<br>
=C2=A0 set -e<br>
=C2=A0 PSEUDO_UNLOAD=3D1 ${binprefix}qemuwrapper -L $D -E<br>
${fontconfigcacheenv} $D${libexecdir}/${binprefix}fc-cache --sysro<br>
ot=3D$D --system-only ${fontconfigcacheparams}<br>
<br>
Note there&#39;s only one -E entry.<br>
<br>
Ross<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail-m_-73512805219399877gmail_signature"><div dir=3D"ltr"><div><span style=
=3D"background-color:rgb(0,0,0)"><i style=3D"color:rgb(51,204,255)"><span s=
tyle=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"=
>Regards<br>Sanjay</span><span></span></span></i></span><br></div></div></d=
iv>

--0000000000000ef5ee057d4c0546--
