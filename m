Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 237C0E0146B
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:49:14 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id l10so409284eei.22
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=jhbCvNxd2z/rWexfucV6zj+BJs97m38i/cp0TnpemmI=;
	b=HgKmCM/t6tpItJTm238t8xjB8p4rZ31jRxbijtvfn1NXTt0tL/xhlKRYkGNxTDGu2/
	3t28mpcppPWuT8DaT2LHnZYTwvaCrKi17Z30mjhaUV983/BE99GjONpVN90dHw4RnOze
	YIU9d0CxO7QlNJPnzLtPRPGHDZn2ATUSCorGuK7G9/FlS6AAVufodsWSNoO2Sc6l6Nb9
	WETRzqmRntuVLqcV8/nwxS4Ng9m3lRv9r/D/0wxdpqHnESOqAS0zvJjOE0Nw/0XlBbXC
	CZevG0BxfQR0Kdd3J9ut1P87Gv4rk/rRf3izN4rSTal8C9/VlE5PB1bpj3R0KQ1Vo2tk
	kMhw==
MIME-Version: 1.0
X-Received: by 10.15.98.141 with SMTP id bj13mr9665554eeb.29.1366141754053;
	Tue, 16 Apr 2013 12:49:14 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 16 Apr 2013 12:49:13 -0700 (PDT)
In-Reply-To: <CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
Date: Tue, 16 Apr 2013 13:49:13 -0600
Message-ID: <CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 19:49:15 -0000
Content-Type: multipart/alternative; boundary=089e016814e2f6e41004da7fa99d

--089e016814e2f6e41004da7fa99d
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

With that said how does Angstrom which uses opkg upgrades images that are
build with Angstrom.   I prefer Yocto but I had some pre-built image that
came with my beagleboard and I used opkg upgrade  and opkg install
gfortran.   Also has anyone built gfortran, libgfortran, and numpy?
Currently these are some dependencies that I need for GNURADIO?
Thanks Any and all help is appreciated
Ed


On Tue, Apr 16, 2013 at 1:15 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Tue, Apr 16, 2013 at 3:02 PM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> > Are there any plans to provide a repo of pkgs where systems can be
> upgraded
> > and new pkgs installed like other distro Fedora, CentOS, and rhel?  Thi=
s
> > would also require yum or the new software that is replacing yum.
>
> I doubt it. The Yocto Project is not an embedded Linux distribution =96
> it creates a custom one for you. Providing a public package upgrade
> repository is fine for a given distribution (e.g. Fedora, Debian, etc)
> because it can make assumptions regarding the compiler, c library,
> build/configuration options, etc. If you are creating your own
> distributions, any of those variable can be tweaked, therefore making
> any such public repository useless.
>
> If you would like to have such an ability for your devices, you'll
> need have to create your own public site and build the packages
> yourself (all of which will incorporate any of your specific
> "tweaks"). Yocto will help you do that (and make it easy) but doing
> this in a generic way for everyone's Yocto distribution would be
> impossible (I would think).
>
> > Does any of embedded boards support PXE?
>
> Whether or not a board can boot via TFTP is a function of the
> bootloader. u-boot supports TFTP booting so theoretically this should
> be possible. Whether or not TFTP is enabled in your u-boot build
> and/or whether or not your BSP includes and builds your own u-boot is
> another question.
>

--089e016814e2f6e41004da7fa99d
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>With that said how does Angstrom which uses=
 opkg upgrades images that are build with Angstrom. =A0 I prefer Yocto but =
I had some pre-built image that came with my beagleboard and I used opkg up=
grade=A0 and opkg install gfortran. =A0 Also has anyone built gfortran, lib=
gfortran, and numpy?<br>
</div>Currently these are some dependencies that I need for GNURADIO?<br></=
div>Thanks Any and all help is appreciated<br></div>Ed<br></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Apr 16, 2013 at=
 1:15 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@g=
mail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, Apr 16, 2013 at 3:=
02 PM, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.d=
evelone@gmail.com</a>&gt; wrote:<br>

&gt; Are there any plans to provide a repo of pkgs where systems can be upg=
raded<br>
&gt; and new pkgs installed like other distro Fedora, CentOS, and rhel? =A0=
This<br>
&gt; would also require yum or the new software that is replacing yum.<br>
<br>
</div>I doubt it. The Yocto Project is not an embedded Linux distribution =
=96<br>
it creates a custom one for you. Providing a public package upgrade<br>
repository is fine for a given distribution (e.g. Fedora, Debian, etc)<br>
because it can make assumptions regarding the compiler, c library,<br>
build/configuration options, etc. If you are creating your own<br>
distributions, any of those variable can be tweaked, therefore making<br>
any such public repository useless.<br>
<br>
If you would like to have such an ability for your devices, you&#39;ll<br>
need have to create your own public site and build the packages<br>
yourself (all of which will incorporate any of your specific<br>
&quot;tweaks&quot;). Yocto will help you do that (and make it easy) but doi=
ng<br>
this in a generic way for everyone&#39;s Yocto distribution would be<br>
impossible (I would think).<br>
<div class=3D"im"><br>
&gt; Does any of embedded boards support PXE?<br>
<br>
</div>Whether or not a board can boot via TFTP is a function of the<br>
bootloader. u-boot supports TFTP booting so theoretically this should<br>
be possible. Whether or not TFTP is enabled in your u-boot build<br>
and/or whether or not your BSP includes and builds your own u-boot is<br>
another question.<br>
</blockquote></div><br></div>

--089e016814e2f6e41004da7fa99d--
