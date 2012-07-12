Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5738BE00344
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 01:04:10 -0700 (PDT)
Received: by bkty5 with SMTP id y5so1876843bkt.35
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 01:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZO0WnOtNPTtLeVyJVUGQpuKnE+gDU8+elQ/wAaGHRAM=;
	b=lKhpFVImCjNauXhuXkiDqZgZvfIjugmvxGtvBeyZRsUoMB8LaW/ODnW4ub+zq3sci8
	8jvFrNhraNXwSOrxCgfcRvJ3d7nDRlUHvD/OfEq3FwTMt5JXhZTYg+dw5u3kVa89wW1R
	XNqQ8Ykpk8tXRcnbOgEHuX4d0o3EzWH2ElNsy48rASnmnrwS/mSczgXdSiq0UlIbLjcI
	QdNq9twc9eOipjfHnGQq5J6RRy3/pR9H28SdNbHWUydxid0NqomCn+v1lLamAXQ9sb7+
	2Fe2vACq1sBAqcULKQtBYz2TCmGwpg4AqDMu7KycOh+QuMjcsxY8OcOQp4iOcon2iN0W
	mSXA==
Received: by 10.204.154.214 with SMTP id p22mr4705930bkw.111.1342080249180;
	Thu, 12 Jul 2012 01:04:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.205.34.4 with HTTP; Thu, 12 Jul 2012 01:03:49 -0700 (PDT)
In-Reply-To: <CAMKF1sr3XDQJOBRdAbSJZLGfJR8KuBsoU4zq4r22t2ptTgUWHA@mail.gmail.com>
References: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
	<CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
	<CA+Z6RkUFyCqtFWpqzUTN5_cR423L8OF=-cz+edGo=kKR0dW8pw@mail.gmail.com>
	<CAMKF1sr3XDQJOBRdAbSJZLGfJR8KuBsoU4zq4r22t2ptTgUWHA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 12 Jul 2012 13:33:49 +0530
Message-ID: <CA+Z6RkXTW-+_KNDZLQOgA7C6APW2EcRjQK3ZR_NBdERs1-pN8A@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Jul 2012 08:04:10 -0000
Content-Type: multipart/alternative; boundary=0015175df3d08332b104c49d68e2

--0015175df3d08332b104c49d68e2
Content-Type: text/plain; charset=ISO-8859-1

Sorry, but it didn't worked for me..
.bb file is something like-

"PACKAGES = "colorado"

SRC_URI = " file://colorado_gui_bk"

do_install () {
#
# Create directories and install device independent scripts
#
         install -d ${D}/{homedir}/Test
         install -d ${D}${homedir}/Test/Bin
#       install -m 0755         ${WORKDIR}/colorado_gui_bk
${D}${homedir}/Test/Bin
        cp ${WORKDIR}/colorado_gui_bk              ${D}${homedir}/Test/Bin
}
#FILES_${PN}-dbg += "\
#  ${homedir}/Test/Bin/.debug/colorado_gui_bk \
#"

INHIBIT_PACKAGE_STRIP = "1"
"
Please review if anything else need to be added..


On Thu, Jul 12, 2012 at 1:08 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jul 11, 2012 at 9:03 PM, Navani Srivastava
> <navani.srivastava@gmail.com> wrote:
> > Thanks for your reply..
> > It is a pre-built-binary which I am trying to put in a specific path of
> > rootfs.
> > I didn't get what does it mean by "packaging it seperately"..
>
> is this the only file in this package ? you might add
> INHIBIT_PACKAGE_STRIP = "1" to the recipe then
> but be aware this will disable stripping the binaries and if you have
> other legit binaries that this
> recipe is generating then they wont be stripped as well.
>
> >
> > On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava
> >> <navani.srivastava@gmail.com> wrote:
> >> > ERROR: QA Issue: Architecture did not match (40 to 3) on
> >> >
> >> >
> /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk
> >>
> >> what is this file ?
> >> is it some precompiled binary or some firmware blob ?
> >> you need to package is separately and then may be skip stripping just
> >> that one package
> >
> >
>

--0015175df3d08332b104c49d68e2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Sorry, but it didn&#39;t worked for me..<br>.bb file is something like-<br>=
<br>&quot;PACKAGES =3D &quot;colorado&quot;<br><br>SRC_URI =3D &quot; file:=
//colorado_gui_bk&quot;<br><br>do_install () {<br>#<br># Create directories=
 and install device independent scripts<br>


#<br>=A0 =A0 =A0=A0=A0=A0 install -d ${D}/{homedir}/Test<br>=A0=A0 =A0=A0=
=A0=A0=A0 install -d ${D}${homedir}/Test/Bin<br>#=A0=A0=A0=A0=A0=A0 install=
 -m 0755=A0=A0=A0=A0=A0=A0=A0=A0 ${WORKDIR}/colorado_gui_bk=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 ${D}${homedir}/Test/Bin<br>=A0=A0=A0=A0=A0=A0=A0 c=
p ${WORKDIR}/colorado_gui_bk=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${D}${h=
omedir}/Test/Bin<br>


}<br>#FILES_${PN}-dbg +=3D &quot;\<br>#=A0 ${homedir}/Test/Bin/.debug/color=
ado_gui_bk \<br>#&quot;<br><br>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>&=
quot;<br>Please review if anything else need to be added..<br><br><br><div =
class=3D"gmail_quote">


On Thu, Jul 12, 2012 at 1:08 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">


<div>On Wed, Jul 11, 2012 at 9:03 PM, Navani Srivastava<br>
&lt;<a href=3D"mailto:navani.srivastava@gmail.com" target=3D"_blank">navani=
.srivastava@gmail.com</a>&gt; wrote:<br>
&gt; Thanks for your reply..<br>
&gt; It is a pre-built-binary which I am trying to put in a specific path o=
f<br>
&gt; rootfs.<br>
&gt; I didn&#39;t get what does it mean by &quot;packaging it seperately&qu=
ot;..<br>
<br>
</div>is this the only file in this package ? you might add<br>
INHIBIT_PACKAGE_STRIP =3D &quot;1&quot; to the recipe then<br>
but be aware this will disable stripping the binaries and if you have<br>
other legit binaries that this<br>
recipe is generating then they wont be stripped as well.<br>
<div><div><br>
&gt;<br>
&gt; On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava<br>
&gt;&gt; &lt;<a href=3D"mailto:navani.srivastava@gmail.com" target=3D"_blan=
k">navani.srivastava@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; ERROR: QA Issue: Architecture did not match (40 to 3) on<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-s=
plit/colorado/home/Leica/Bin/colorado_gui_bk<br>
&gt;&gt;<br>
&gt;&gt; what is this file ?<br>
&gt;&gt; is it some precompiled binary or some firmware blob ?<br>
&gt;&gt; you need to package is separately and then may be skip stripping j=
ust<br>
&gt;&gt; that one package<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br>

--0015175df3d08332b104c49d68e2--
