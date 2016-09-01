Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB51E00CF0; Thu,  1 Sep 2016 03:43:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52DD4E00CEC
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 03:43:45 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id p186so75158522oia.2
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 03:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VWuhN/YsWzQz2ZkwbC9MXL0pQzTKhvHbxlrRU6Wd0wo=;
	b=nlouxthS51Tlr0mTkKVz8Q88aFV7WUL/uCtaPPZ59noLvwxdRJt2JetN1ii+N7NbD+
	/IpicuU9ylb1wV0hkuCvqpqjepHT2veUhr4gMBt2VTtzBUZRMr87cHuz8rAvqsxM21Ze
	IWt3n74mCaSY6K6qHASUXQat9WnDklpZpy85FHAwoJGPSCGk0l4gZ6VYImrBaXxflyCw
	JbtyJYaPfsLQMM9VLgywkJtWi7nr0hVEXi7AWBP/tplsYVwhIfZ2Ag7nW5mUo1TjAlW1
	3eLdeykdDbXw4GJufcb+g15rZ6n5/liItB27au6GELHcFo2T/hydnqTi5509yOsGnTDB
	TpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VWuhN/YsWzQz2ZkwbC9MXL0pQzTKhvHbxlrRU6Wd0wo=;
	b=eeFs/JetxaGwtu7+bOYWjOr2tiMA2wEenpg2a9nc9/JivhUwkDRliDiyJ6qlDcT7Vn
	QmAKo3XVp2l7RsPQAr+jp0xWz+ps3eY7ubwkVLNLw3JJBakpBghCLmML0Vpd+YnH6JFW
	0ebq9HvUb79+AZ4WdSbRJ5uPqw7dEfTQqpS0onTZKy5lTJ1Gkczcaedj401UjveMsEQ4
	m8D8x2jDs7Txj8YBD0awvaYI2kv0cCQwj8gcO7RZQjV8Wh6j1jFIJhwmNum5i/FjE/Uz
	bvKFiriArWMvcEtd+O8lTS+GY6GM3Opa9+f5bV8fKVD5NXkAPUY7UpEXbZZscECdZQLy
	06/w==
X-Gm-Message-State: AE9vXwMZGbvck0hZT61BTulqiH94Qn5Rf/IVNiP+VoIABiGxp86KkH0/hvPsdxvpKJ5ot0uKw4fg9VxNs5n3n0/u
X-Received: by 10.202.102.208 with SMTP id m77mr12927747oik.24.1472726625462; 
	Thu, 01 Sep 2016 03:43:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.241.11 with HTTP; Thu, 1 Sep 2016 03:43:14 -0700 (PDT)
In-Reply-To: <87fupkarqt.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 1 Sep 2016 13:43:14 +0300
Message-ID: <CAHiDW_FardNpR1pyq-GNOr1Lh=ptH1mdJ-u14toky0M07D3Pkg@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 10:43:48 -0000
Content-Type: multipart/alternative; boundary=001a11c015c45cc424053b6fe3dd

--001a11c015c45cc424053b6fe3dd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 1 September 2016 at 12:34, Pietro <pulsarpietro@posteo.net> wrote:

> Maciej Borz=C4=99cki
> <maciej.borzecki@rndity.com> writes:
>
> > On Thu, Sep 1, 2016 at 10:40 AM, Pietro <pulsarpietro@posteo.net> wrote=
:
> >> Maciej Borz=C4=99cki
> >> <maciej.borzecki@rndity.com> writes:
> >>
> >>> On Wed, Aug 31, 2016 at 6:44 PM, Pietro <pulsarpietro@posteo.net>
> wrote:
> >>>> Hi all,
> >>>>
> >>>> I am new to the Yocto building system and I could be talking
> nonsense. I
> >>>> used to work with buildroot time ago and I remember there is an area
> >>>> where compiled software/packages/tools previously built are "staged"
> and
> >>>> used when building other packages.
> >>>>
> >>>> Is there something like that available with Yocto ? Specifically I
> would
> >>>> like to add a package which uses the Google Protocol Buffer, I do no=
t
> have
> >>>> administrator rights on the machine and I can't install the packages=
 I
> >>>> need system wise.
> >>>>
> >>>> Is it possible to add recipes and use them at building time without
> >>>> including them in the image being generated ?
> >>>>
> >>>> A good example for that would be the protoc, the protocol buffer
> description
> >>>> file compiler.
> >>>>
> >>>
> >>> There is a recipe for protobuf in meta-oe (2.6.1). All you need to do=
,
> >>> is include meta-oe in your layers (bblayers.conf) and have
> >>> protobuf-native listed in DEPENDS inside your package recipe.
> >>>
> >>> The protoc compiler will be available in the PATH when package is
> >>> being built, so autotools checks like AC_CHECK_PROG/AC_PATH_PROG
> >>> should be able to find it.
> >>>
> >>> Cheers,
> >>> --
> >>> Maciej Borzecki
> >>> RnDity
> >> Thanks a lot.
> >>
> >> I have added the DEPENDS line and it indeed downloads and build the so=
me
> >> protobuf related stuff, where did you get the dependency name from ?
> >> I can't see the protobuf-native as a recipe in the meta-oe website :
> >>
> >> https://layers.openembedded.org/layerindex/branch/master/layer/meta-oe=
/
> >
> > It's just a mechanism that allows for building the native (i.e. for
> > the host) packages, and these are autmatically named ${PN}-native.
> > There should a BBCLASSEXTEND =3D "..native.." stanza inside the protobu=
f
> > recipe that enables this feature.
> >
> >>
> >> I have just realised that GRPC (http://www.grpc.io/) is needed for my
> >> project, it is a library which uses the protobuffers, is there a
> >> recipe/package which provides them around or do I need to create my ow=
n
> >> recipe ?
> >
> > You can try searching for a recipe at http://layers.openembedded.org
> > If there's none, try to write your own. This might be a good changes
> > to get yourself acquainted with `devtool` tool that will help you in
> > the process.
> >
> >>
> >> I would like to check the root filesystem being generated as part of t=
he
> >> build process, where is it ?
> >>
> >
> > ${TMPDIR}/<machine>_<distro?>/<imagename>/../rootfs
> >
> > for instance, for my current build:
> >
> > tmp/work/vexpress_qemu-poky-linux-gnueabi/core-image-
> minimal/1.0-r0/rootfs
> >
> > --
> > Maciej Borzecki
> > RnDity
>
> Thanks, much appreciated.
>
> Do you know where the software which is not included in the image - such
> us protoc - is it stored ?
>

The sysroots are in ${TMPDIR}/sysroots/: The native sysroot (probably
x86_64-linux) will be one of those.

The corresponding protobuf work directory will be in
${TMPDIR}/work/<target_system>/protobuf

See the Yocto dev manual and reference manual for more details about these.
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html

HTH,
  Jussi

--001a11c015c45cc424053b6fe3dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
 September 2016 at 12:34, Pietro <span dir=3D"ltr">&lt;<a href=3D"mailto:pu=
lsarpietro@posteo.net" target=3D"_blank">pulsarpietro@posteo.net</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"gmail-HOEnZb"><div class=3D"gmail-h5">Maciej Borz=C4=99cki<br>
&lt;<a href=3D"mailto:maciej.borzecki@rndity.com">maciej.borzecki@rndity.co=
m</a>&gt; writes:<br>
<br>
&gt; On Thu, Sep 1, 2016 at 10:40 AM, Pietro &lt;<a href=3D"mailto:pulsarpi=
etro@posteo.net">pulsarpietro@posteo.net</a>&gt; wrote:<br>
&gt;&gt; Maciej Borz=C4=99cki<br>
&gt;&gt; &lt;<a href=3D"mailto:maciej.borzecki@rndity.com">maciej.borzecki@=
rndity.com</a>&gt; writes:<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Wed, Aug 31, 2016 at 6:44 PM, Pietro &lt;<a href=3D"mailto:=
pulsarpietro@posteo.net">pulsarpietro@posteo.net</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I am new to the Yocto building system and I could be talki=
ng nonsense. I<br>
&gt;&gt;&gt;&gt; used to work with buildroot time ago and I remember there =
is an area<br>
&gt;&gt;&gt;&gt; where compiled software/packages/tools previously built ar=
e &quot;staged&quot; and<br>
&gt;&gt;&gt;&gt; used when building other packages.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Is there something like that available with Yocto ? Specif=
ically I would<br>
&gt;&gt;&gt;&gt; like to add a package which uses the Google Protocol Buffe=
r, I do not have<br>
&gt;&gt;&gt;&gt; administrator rights on the machine and I can&#39;t instal=
l the packages I<br>
&gt;&gt;&gt;&gt; need system wise.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Is it possible to add recipes and use them at building tim=
e without<br>
&gt;&gt;&gt;&gt; including them in the image being generated ?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; A good example for that would be the protoc, the protocol =
buffer description<br>
&gt;&gt;&gt;&gt; file compiler.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; There is a recipe for protobuf in meta-oe (2.6.1). All you nee=
d to do,<br>
&gt;&gt;&gt; is include meta-oe in your layers (bblayers.conf) and have<br>
&gt;&gt;&gt; protobuf-native listed in DEPENDS inside your package recipe.<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The protoc compiler will be available in the PATH when package=
 is<br>
&gt;&gt;&gt; being built, so autotools checks like AC_CHECK_PROG/AC_PATH_PR=
OG<br>
&gt;&gt;&gt; should be able to find it.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Cheers,<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Maciej Borzecki<br>
&gt;&gt;&gt; RnDity<br>
&gt;&gt; Thanks a lot.<br>
&gt;&gt;<br>
&gt;&gt; I have added the DEPENDS line and it indeed downloads and build th=
e some<br>
&gt;&gt; protobuf related stuff, where did you get the dependency name from=
 ?<br>
&gt;&gt; I can&#39;t see the protobuf-native as a recipe in the meta-oe web=
site :<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://layers.openembedded.org/layerindex/branch/maste=
r/layer/meta-oe/" rel=3D"noreferrer" target=3D"_blank">https://layers.opene=
mbedded.<wbr>org/layerindex/branch/master/<wbr>layer/meta-oe/</a><br>
&gt;<br>
&gt; It&#39;s just a mechanism that allows for building the native (i.e. fo=
r<br>
&gt; the host) packages, and these are autmatically named ${PN}-native.<br>
&gt; There should a BBCLASSEXTEND =3D &quot;..native..&quot; stanza inside =
the protobuf<br>
&gt; recipe that enables this feature.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; I have just realised that GRPC (<a href=3D"http://www.grpc.io/" re=
l=3D"noreferrer" target=3D"_blank">http://www.grpc.io/</a>) is needed for m=
y<br>
&gt;&gt; project, it is a library which uses the protobuffers, is there a<b=
r>
&gt;&gt; recipe/package which provides them around or do I need to create m=
y own<br>
&gt;&gt; recipe ?<br>
&gt;<br>
&gt; You can try searching for a recipe at <a href=3D"http://layers.openemb=
edded.org" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded.=
org</a><br>
&gt; If there&#39;s none, try to write your own. This might be a good chang=
es<br>
&gt; to get yourself acquainted with `devtool` tool that will help you in<b=
r>
&gt; the process.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; I would like to check the root filesystem being generated as part =
of the<br>
&gt;&gt; build process, where is it ?<br>
&gt;&gt;<br>
&gt;<br>
&gt; ${TMPDIR}/&lt;machine&gt;_&lt;distro?&gt;/<wbr>&lt;imagename&gt;/../ro=
otfs<br>
&gt;<br>
&gt; for instance, for my current build:<br>
&gt;<br>
&gt; tmp/work/vexpress_qemu-poky-<wbr>linux-gnueabi/core-image-<wbr>minimal=
/1.0-r0/rootfs<br>
&gt;<br>
&gt; --<br>
&gt; Maciej Borzecki<br>
&gt; RnDity<br>
<br>
</div></div>Thanks, much appreciated.<br>
<br>
Do you know where the software which is not included in the image - such<br=
>
us protoc - is it stored ?<br></blockquote><div><br></div><div>The sysroots=
 are in=C2=A0${TMPDIR}/sysroots/: The native sysroot (probably x86_64-linux=
)=C2=A0will be one of those.=C2=A0</div><div><br></div><div>The correspondi=
ng protobuf work directory will be in ${TMPDIR}/work/&lt;target_system&gt;/=
protobuf<br></div><div><br></div><div>See the Yocto dev manual and referenc=
e manual for more details about these.</div><div><a href=3D"http://www.yoct=
oproject.org/docs/current/dev-manual/dev-manual.html">http://www.yoctoproje=
ct.org/docs/current/dev-manual/dev-manual.html</a><br></div><div><a href=3D=
"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html">http:=
//www.yoctoproject.org/docs/current/ref-manual/ref-manual.html</a><br></div=
><div><br></div><div>HTH,</div><div>=C2=A0 Jussi</div></div></div></div>

--001a11c015c45cc424053b6fe3dd--
