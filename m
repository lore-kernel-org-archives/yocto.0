Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7208E0049B; Tue, 19 Jul 2016 06:46:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6439CE0043B
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 06:46:01 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id m101so19178753ioi.2
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 06:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OBoUXjCCsH2Ih3djxpAeqDsAId1/3F34o+FSAd54m/g=;
	b=EyOWX/ZmDC34miJiaL0310t3P8QXK8G4B7k1dt5M96oggzEPijssjq9KIBuJubB/Jr
	68J630owlA1fhEVgaScXvAi6ijETXuRO1BhrVuwgbyqhopmAwwSSiruVd1nMpG5Pn/L2
	G5p7s6D5qkxtOXNEM/wfDCIYMWqbVg/oh3gyJ6olMXGws5YcJnWuU9HsWNRwwN/tLmmz
	oZ0mkL6sgbT/8+z+7qJ8us0btF+XX39x0SrFPfbQe32vEDm3Qabb+QE7ynjB1FpYg1AY
	HGNgRccHF/Db8nM1/4ZSL1g3rRqGQ/+/kGW/5a3P4ShM4/GMzycqV/wK4UnKAcnKN5iQ
	N77g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OBoUXjCCsH2Ih3djxpAeqDsAId1/3F34o+FSAd54m/g=;
	b=K3BxBzoOL2D/r1J9pfHbSFppACOwQpe2GnMm7ysXmliam+qtWXRtYKoG57dT+cndTH
	mHD8jE91WLr5RDeUwiqUBc4GB8LbGaAtUExSqhAd3AV0i1qpeNk9+z3GqJYRD/8xdxc/
	3VMVztbXvh7oFaeaJwY3mO+WrTbRZD0bKrkm7PGbmYOGMEHq14FgquR339zTdlt/J1lU
	Bepi0wjRdG7HaUaMaSGHo5J4sr0u4aP9QPd3PMcqhR38Ch6vINaIzFNltirB7Y7NnUQb
	M0sXGWmpM62SXxsNr6Jn0Rr4Dw+VpywGO/v2hrqtoXCJfgPF2sw0ZWgxKsdQb32t0ycB
	etzQ==
X-Gm-Message-State: ALyK8tKJpH7CuHudQlzbValrPctY5bAuYc2eV+BBkZiOf5XxsapSbZ5808Txm91oAu3JDn+mHCNTaf+XXDQU2OWU
X-Received: by 10.107.138.212 with SMTP id c81mr37725087ioj.148.1468935960049; 
	Tue, 19 Jul 2016 06:46:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 19 Jul 2016 06:45:40 -0700 (PDT)
In-Reply-To: <CAAGP=A-UHjPdFrNQrErEJcaogH2UQdaey=79tk9XL8EJgONitw@mail.gmail.com>
References: <CAAGP=A-UHjPdFrNQrErEJcaogH2UQdaey=79tk9XL8EJgONitw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 Jul 2016 14:45:40 +0100
Message-ID: <CAJTo0Lb5G9is1ovansik1XXSs31zcEZSH-sCUpAbv=dDc_=Rug@mail.gmail.com>
To: Yile Ku <stiffstone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NOTE: Not creating empty RPM package for libvolk
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
X-List-Received-Date: Tue, 19 Jul 2016 13:46:03 -0000
Content-Type: multipart/alternative; boundary=001a113ed93219288a0537fd4e7a

--001a113ed93219288a0537fd4e7a
Content-Type: text/plain; charset=UTF-8

On 18 July 2016 at 14:55, Yile Ku <stiffstone@gmail.com> wrote:

> I am getting this error when building for PowerPC 64.
>
>
> The file:
> meta-sdr/recipes-core/gnuradio/gnuradio_git.bb
>
> says to include the libraries
> FILES_libvolk = "${libdir}/libvolk.so*"
> FILES_libvolk-dbg = "${libdir}/.debug/libvolk.so*"
>
> when I look for the libraries it shows:
> build-v2$ find . -name "libvolk*.so*" -print
>
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so.0.0.0
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so
>
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/.debug/libvolk.so.0.0.0
>
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so.0.0.0
>
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so
>
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so.0.0.0
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so
>

PowerPC64 has $libdir as /usr/lib64, so it appears that gnuradio isn't
listening to the value of libdir being passed to it at configure time.

Ross

--001a113ed93219288a0537fd4e7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 July 2016 at 14:55, Yile Ku <span dir=3D"ltr">&lt;<a href=3D"mailto:s=
tiffstone@gmail.com" target=3D"_blank">stiffstone@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>I am getting this error when =
building for PowerPC 64. <br><br><br>The file:<br>meta-sdr/recipes-core/gnu=
radio/<a href=3D"http://gnuradio_git.bb" target=3D"_blank">gnuradio_git.bb<=
/a><br><br>says to include the libraries<br>FILES_libvolk =3D &quot;${libdi=
r}/libvolk.so*&quot;<br>FILES_libvolk-dbg =3D &quot;${libdir}/.debug/libvol=
k.so*&quot;<br><br>when I look for the libraries it shows:<br>build-v2$ fin=
d . -name &quot;libvolk*.so*&quot; -print<br>./tmp/work/ppc64e6500-fsl-linu=
x/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so.0.0.0<br>./tmp/work/ppc64e650=
0-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so<br>./tmp/work/ppc64=
e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/.debug/libvolk.so.0.0.0<b=
r>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk=
.so.0.0.0<br>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/=
lib/libvolk.so<br>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/u=
sr/lib/libvolk.so.0.0.0<br>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r=
0/image/usr/lib/libvolk.so</div></blockquote></div><br>PowerPC64 has $libdi=
r as /usr/lib64, so it appears that gnuradio isn&#39;t listening to the val=
ue of libdir being passed to it at configure time.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ed93219288a0537fd4e7a--
