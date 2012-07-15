Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82451E00281
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 00:00:07 -0700 (PDT)
Received: by bkty5 with SMTP id y5so4006352bkt.35
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 00:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WhoDD/Dgz1PErhMVPR1HvMA5wAquQg4Fk10mIevB8y4=;
	b=nY/8TbMzoE8lxuavY8ULEtj5ZwZoHG6qs4GuJWCVYYFOz88bPHhGdQRRMvXQthC9/m
	ATp1eGnkqpL16VidT5Yj8h2qdJVJwtYH8u+sLOe0VUadbaNsiOwyqVolTHkMNSrihj9T
	sfRTtbScelARzyN2NzpZ016k6367oV+LtyCSx4ABfNdC1VvH2B51THR3/Mh1LgQi398D
	nT81Enh+bVQ7AW51MqrOHk32YSaDX5ur2fFsH4Ql/P+lf9faDoxgPJ2s3dFZanVDdblt
	9YivX2wwZJ/pLuwlxaabAL1HtANAsTyhHurRHD+d9Rm7V2w1DwJq++m+w7yRgxDPHtgW
	vtRw==
Received: by 10.205.123.133 with SMTP id gk5mr3113435bkc.140.1342335605992;
	Sun, 15 Jul 2012 00:00:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.205.34.4 with HTTP; Sat, 14 Jul 2012 23:59:45 -0700 (PDT)
In-Reply-To: <CAMKF1srz6miopeorH=6K+oR0kFUvCic+JaY9xd6ttB42OhK0uA@mail.gmail.com>
References: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
	<CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
	<CA+Z6RkUFyCqtFWpqzUTN5_cR423L8OF=-cz+edGo=kKR0dW8pw@mail.gmail.com>
	<CAMKF1sr3XDQJOBRdAbSJZLGfJR8KuBsoU4zq4r22t2ptTgUWHA@mail.gmail.com>
	<CA+Z6RkXTW-+_KNDZLQOgA7C6APW2EcRjQK3ZR_NBdERs1-pN8A@mail.gmail.com>
	<CAMKF1srz6miopeorH=6K+oR0kFUvCic+JaY9xd6ttB42OhK0uA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Sat, 14 Jul 2012 23:59:45 -0700
Message-ID: <CA+Z6RkWPdNpFFd5RUafC=rCqwnEsUZF44cO8+dktUHa6FtaVCw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org, navani.srivastava@lnties.com
Subject: Re: Error while adding a new recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 15 Jul 2012 07:00:07 -0000
Content-Type: multipart/alternative; boundary=000e0ce0040ef6ee3804c4d8dc94

--000e0ce0040ef6ee3804c4d8dc94
Content-Type: text/plain; charset=ISO-8859-1

I did the mentioned modification and it worked..
Thanks a lot..

On Thu, Jul 12, 2012 at 7:33 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Jul 12, 2012 at 1:03 AM, Navani Srivastava
> <navani.srivastava@gmail.com> wrote:
> > Sorry, but it didn't worked for me..
> > .bb file is something like-
> >
> > "PACKAGES = "colorado"
> >
> > SRC_URI = " file://colorado_gui_bk"
> >
> > do_install () {
> > #
> > # Create directories and install device independent scripts
> > #
> >          install -d ${D}/{homedir}/Test
> >          install -d ${D}${homedir}/Test/Bin
> > #       install -m 0755         ${WORKDIR}/colorado_gui_bk
> > ${D}${homedir}/Test/Bin
> >         cp ${WORKDIR}/colorado_gui_bk
>  ${D}${homedir}/Test/Bin
> > }
> > #FILES_${PN}-dbg += "\
> > #  ${homedir}/Test/Bin/.debug/colorado_gui_bk \
> > #"
> >
> > INHIBIT_PACKAGE_STRIP = "1"
>
> add
>
> INSANE_SKIP_${PN} = "arch"
> as well
>
> > "
> > Please review if anything else need to be added..
> >
> >
> >
> > On Thu, Jul 12, 2012 at 1:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Wed, Jul 11, 2012 at 9:03 PM, Navani Srivastava
> >> <navani.srivastava@gmail.com> wrote:
> >> > Thanks for your reply..
> >> > It is a pre-built-binary which I am trying to put in a specific path
> of
> >> > rootfs.
> >> > I didn't get what does it mean by "packaging it seperately"..
> >>
> >> is this the only file in this package ? you might add
> >> INHIBIT_PACKAGE_STRIP = "1" to the recipe then
> >> but be aware this will disable stripping the binaries and if you have
> >> other legit binaries that this
> >> recipe is generating then they wont be stripped as well.
> >>
> >> >
> >> > On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >> >>
> >> >> On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava
> >> >> <navani.srivastava@gmail.com> wrote:
> >> >> > ERROR: QA Issue: Architecture did not match (40 to 3) on
> >> >> >
> >> >> >
> >> >> >
> /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk
> >> >>
> >> >> what is this file ?
> >> >> is it some precompiled binary or some firmware blob ?
> >> >> you need to package is separately and then may be skip stripping just
> >> >> that one package
> >> >
> >> >
> >
> >
>

--000e0ce0040ef6ee3804c4d8dc94
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I did the mentioned modification and it worked..=A0<div>Thanks a lot..<br><=
br><div class=3D"gmail_quote">On Thu, Jul 12, 2012 at 7:33 AM, Khem Raj <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">=
raj.khem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Thu, Jul 12, 2012 at 1:=
03 AM, Navani Srivastava<br>
&lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.=
com</a>&gt; wrote:<br>
&gt; Sorry, but it didn&#39;t worked for me..<br>
&gt; .bb file is something like-<br>
&gt;<br>
&gt; &quot;PACKAGES =3D &quot;colorado&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot; file://colorado_gui_bk&quot;<br>
&gt;<br>
&gt; do_install () {<br>
&gt; #<br>
&gt; # Create directories and install device independent scripts<br>
&gt; #<br>
&gt; =A0 =A0 =A0 =A0 =A0install -d ${D}/{homedir}/Test<br>
&gt; =A0 =A0 =A0 =A0 =A0install -d ${D}${homedir}/Test/Bin<br>
&gt; # =A0 =A0 =A0 install -m 0755 =A0 =A0 =A0 =A0 ${WORKDIR}/colorado_gui_=
bk<br>
&gt; ${D}${homedir}/Test/Bin<br>
&gt; =A0 =A0 =A0 =A0 cp ${WORKDIR}/colorado_gui_bk =A0 =A0 =A0 =A0 =A0 =A0 =
=A0${D}${homedir}/Test/Bin<br>
&gt; }<br>
&gt; #FILES_${PN}-dbg +=3D &quot;\<br>
&gt; # =A0${homedir}/Test/Bin/.debug/colorado_gui_bk \<br>
&gt; #&quot;<br>
&gt;<br>
&gt; INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>
<br>
</div>add<br>
<br>
INSANE_SKIP_${PN} =3D &quot;arch&quot;<br>
as well<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; &quot;<br>
&gt; Please review if anything else need to be added..<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Jul 12, 2012 at 1:08 PM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jul 11, 2012 at 9:03 PM, Navani Srivastava<br>
&gt;&gt; &lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.srivasta=
va@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Thanks for your reply..<br>
&gt;&gt; &gt; It is a pre-built-binary which I am trying to put in a specif=
ic path of<br>
&gt;&gt; &gt; rootfs.<br>
&gt;&gt; &gt; I didn&#39;t get what does it mean by &quot;packaging it sepe=
rately&quot;..<br>
&gt;&gt;<br>
&gt;&gt; is this the only file in this package ? you might add<br>
&gt;&gt; INHIBIT_PACKAGE_STRIP =3D &quot;1&quot; to the recipe then<br>
&gt;&gt; but be aware this will disable stripping the binaries and if you h=
ave<br>
&gt;&gt; other legit binaries that this<br>
&gt;&gt; recipe is generating then they wont be stripped as well.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava<br>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani=
.srivastava@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; ERROR: QA Issue: Architecture did not match (40 to 3=
) on<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/p=
ackages-split/colorado/home/Leica/Bin/colorado_gui_bk<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; what is this file ?<br>
&gt;&gt; &gt;&gt; is it some precompiled binary or some firmware blob ?<br>
&gt;&gt; &gt;&gt; you need to package is separately and then may be skip st=
ripping just<br>
&gt;&gt; &gt;&gt; that one package<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--000e0ce0040ef6ee3804c4d8dc94--
