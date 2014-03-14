Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6C4E00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 02:04:54 -0700 (PDT)
Received: by mail-oa0-f49.google.com with SMTP id g12so2260036oah.8
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 02:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=M/5nHoxza5XMknnc/lZ5r9UV3KNr3xGve6zdT7tLNzc=;
	b=C3WGThr4OW1++nzX29MFO2KplcS2Z9jsglRPnXDb2UgNF3E1jmJNJq9qtH/R3XiT2W
	vKJMCGGxXY2N0jb/SO02JtpnTyzlIr/BNdxUVXyYAJcWj31+pMoBWRdfxcNnsL1cIOxf
	HY/ydkmer2Y3sXUYx+/qfG3h7jabSyeB+4bEUrxmSSzIYXkTPjF4aAxhOdEiz6Htuwp7
	YmscBlyJKQmCmIaB1l6KoHhhqr3S71ZCeoZEyioL22dwNrdKtAsSE5jZYxdNnnqmAYHA
	CV+8Ngh1QM9pVhD5lx1QMk5kYWWAQbv8sc2U5y2g/igzF6xcVTycF4yVYOt2o8+HPSuJ
	moFQ==
MIME-Version: 1.0
X-Received: by 10.182.126.167 with SMTP id mz7mr409544obb.69.1394787894064;
	Fri, 14 Mar 2014 02:04:54 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Fri, 14 Mar 2014 02:04:53 -0700 (PDT)
In-Reply-To: <CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
Date: Fri, 14 Mar 2014 10:04:53 +0100
Message-ID: <CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 09:04:55 -0000
Content-Type: multipart/alternative; boundary=001a11c1f540f67c5804f48d5c6a

--001a11c1f540f67c5804f48d5c6a
Content-Type: text/plain; charset=ISO-8859-1

Thank you Nicolas.
I try to explain better, sorry, yesterday I wrote the email in a hurry.

I'm working to build an OS based on sato, but I have to modify the code
of some libraries included in the distribution. When I wrote "customize"
I meant modify source code.

I answer to your questions:

>
> can you be a bit more specific? not sure i understand completely what
> you want to do. also how are you getting your distribution?
> it's
> prebuilt and you only have the image or you build it yourself from
> recipes?
>

I'm basing my distribution on sato-sdk. I've built it from source. I've
built and
installed a cross toolchain and root filesystem to use for building. I'm
developing applications
using the cross toolchain, adt tools and Eclipse. It is all set up properly.


>
> telling us more about the trouble might be useful. also telling how
> you build the toolchain and sysrootfs.
>

I have to modify some source code of some gstreamer plugins to support
some custom functionalities. During the developement I would like to
work outside bitbake to develop / compile / debug on the target. I know
that when I've finished I can simply add my patch to a bb append file of
my own, and when the developement will be finished I will certainly do.



>
> well, that would definitely be the more natural way of customizing
> existing recipes. that's what most people would do in their own
> layers, generally with .bbappend recipes. it's probably even easier to
> do that building your own toolchain/SDK to some extends.. why don't
> you like this option?
>


I certainly use this option when I customize existing recipes! My problem
is in developement phase.


This is the specific problem I get when I try to build gst-plugins-base:

ake[4]: ingresso nella directory
"/home/vitalife/sources/gst-plugins-base-0.10.36/gst-libs/gst/tag"
  CC     libgsttag_0.10_la-gstvorbistag.lo
  CC     libgsttag_0.10_la-gstid3tag.lo
  CC     libgsttag_0.10_la-gstxmptag.lo
gstxmptag.c: In function 'xmp_tag_type_get_name':
gstxmptag.c:178:1: warning: control reaches end of non-void function
[-Wreturn-type]
 }
 ^
  CC     libgsttag_0.10_la-gstexiftag.lo
  CC     libgsttag_0.10_la-lang.lo
  CC     libgsttag_0.10_la-licenses.lo
  CC     libgsttag_0.10_la-tags.lo
  CC     libgsttag_0.10_la-gsttagdemux.lo
  CC     libgsttag_0.10_la-gsttagmux.lo
  CC     libgsttag_0.10_la-gsttageditingprivate.lo
  CC     libgsttag_0.10_la-id3v2.lo
  CC     libgsttag_0.10_la-id3v2frames.lo
  CC     libgsttag_0.10_la-xmpwriter.lo
  CCLD   libgsttag-0.10.la
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
libgstbase-0.10.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
libgstreamer-0.10.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
libgobject-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
libgmodule-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
libgthread-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
libglib-2.0.la' was moved.
libtool: link: warning: library
`/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libxml2.la'
was moved.
sed: can't read /usr/lib/libgstreamer-0.10.la: No such file or directory
libtool: link: `=/usr/lib/libgstreamer-0.10.la' is not a valid libtool
archive
make[4]: *** [libgsttag-0.10.la] Errore 1

The library configured for cross compilation. I'm starting from the sources
patched as in yocto.

Any help appreciated!

--001a11c1f540f67c5804f48d5c6a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Nicolas.<div>I try to explain better, sorry, yes=
terday I wrote the email in a hurry.</div><div><br></div><div>I&#39;m worki=
ng to build an OS based on sato, but I have to modify the code</div><div>of=
 some libraries included in the distribution. When I wrote &quot;customize&=
quot;</div>
<div>I meant modify source code.</div><div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">I answer to your questions:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">

<div><br>
</div>can you be a bit more specific? not sure i understand completely what=
<br>
you want to do. also how are you getting your distribution?=A0<br>
<div>it&#39;s<br>prebuilt and you only have the image or you build it yours=
elf from<br><div>recipes?=A0</div></div></blockquote><div><br></div><div>I&=
#39;m basing my distribution on sato-sdk. I&#39;ve built it from source. I&=
#39;ve built and</div>
<div>installed a cross toolchain and root filesystem to use for building. I=
&#39;m developing applications</div><div>using the cross toolchain, adt too=
ls and Eclipse. It is all set up properly.</div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">
<div><br>
<br>
</div>telling us more about the trouble might be useful. also telling how<b=
r>
you build the toolchain and sysrootfs.<br></blockquote><div><br></div><div>=
I have to modify some source code of some gstreamer plugins to support</div=
><div>some custom functionalities. During the developement I would like to<=
/div>
<div>work outside bitbake to develop / compile / debug on the target. I kno=
w</div><div>that when I&#39;ve finished I can simply add my patch to a bb a=
ppend file of</div><div>my own, and when the developement will be finished =
I will certainly do.</div>
<div><br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex"><div><br>
<br>
</div>well, that would definitely be the more natural way of customizing<br=
>
existing recipes. that&#39;s what most people would do in their own<br>
layers, generally with .bbappend recipes. it&#39;s probably even easier to<=
br>
do that building your own toolchain/SDK to some extends.. why don&#39;t<br>
you like this option?<br></blockquote><div><br></div><div><br></div><div>I =
certainly use this option when I customize existing recipes! My problem</di=
v><div>is in developement phase.</div><div>=A0</div><div><br></div><div>
This is the specific problem I get when I try to build gst-plugins-base:</d=
iv><div><br></div><div><div>ake[4]: ingresso nella directory &quot;/home/vi=
talife/sources/gst-plugins-base-0.10.36/gst-libs/gst/tag&quot;</div><div>
=A0 CC =A0 =A0 libgsttag_0.10_la-gstvorbistag.lo</div><div>=A0 CC =A0 =A0 l=
ibgsttag_0.10_la-gstid3tag.lo</div><div>=A0 CC =A0 =A0 libgsttag_0.10_la-gs=
txmptag.lo</div><div>gstxmptag.c: In function &#39;xmp_tag_type_get_name&#3=
9;:</div><div>
gstxmptag.c:178:1: warning: control reaches end of non-void function [-Wret=
urn-type]</div><div>=A0}</div><div>=A0^</div><div>=A0 CC =A0 =A0 libgsttag_=
0.10_la-gstexiftag.lo</div><div>=A0 CC =A0 =A0 libgsttag_0.10_la-lang.lo</d=
iv><div>=A0 CC =A0 =A0 libgsttag_0.10_la-licenses.lo</div>
<div>=A0 CC =A0 =A0 libgsttag_0.10_la-tags.lo</div><div>=A0 CC =A0 =A0 libg=
sttag_0.10_la-gsttagdemux.lo</div><div>=A0 CC =A0 =A0 libgsttag_0.10_la-gst=
tagmux.lo</div><div>=A0 CC =A0 =A0 libgsttag_0.10_la-gsttageditingprivate.l=
o</div><div>=A0 CC =A0 =A0 libgsttag_0.10_la-id3v2.lo</div>
<div>=A0 CC =A0 =A0 libgsttag_0.10_la-id3v2frames.lo</div><div>=A0 CC =A0 =
=A0 libgsttag_0.10_la-xmpwriter.lo</div><div>=A0 CCLD =A0 <a href=3D"http:/=
/libgsttag-0.10.la">libgsttag-0.10.la</a></div><div>libtool: link: warning:=
 library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/<a =
href=3D"http://libgstbase-0.10.la">libgstbase-0.10.la</a>&#39; was moved.</=
div>
<div>libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-po=
ky-linux-gnueabi/usr/lib/<a href=3D"http://libgstreamer-0.10.la">libgstream=
er-0.10.la</a>&#39; was moved.</div><div>libtool: link: warning: library `/=
opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/<a href=3D"htt=
p://libgobject-2.0.la">libgobject-2.0.la</a>&#39; was moved.</div>
<div>libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-po=
ky-linux-gnueabi/usr/lib/<a href=3D"http://libgmodule-2.0.la">libgmodule-2.=
0.la</a>&#39; was moved.</div><div>libtool: link: warning: library `/opt/po=
ky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/<a href=3D"http://li=
bgthread-2.0.la">libgthread-2.0.la</a>&#39; was moved.</div>
<div>libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-po=
ky-linux-gnueabi/usr/lib/<a href=3D"http://libglib-2.0.la">libglib-2.0.la</=
a>&#39; was moved.</div><div>libtool: link: warning: library `/opt/poky/1.5=
.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/<a href=3D"http://libxml2.=
la">libxml2.la</a>&#39; was moved.</div>
<div>sed: can&#39;t read /usr/lib/<a href=3D"http://libgstreamer-0.10.la">l=
ibgstreamer-0.10.la</a>: No such file or directory</div><div>libtool: link:=
 `=3D/usr/lib/<a href=3D"http://libgstreamer-0.10.la">libgstreamer-0.10.la<=
/a>&#39; is not a valid libtool archive</div>
<div>make[4]: *** [<a href=3D"http://libgsttag-0.10.la">libgsttag-0.10.la</=
a>] Errore 1</div></div><div><br></div><div>The library configured for cros=
s compilation. I&#39;m starting from the sources patched as in yocto.=A0</d=
iv>
<div><br></div><div>Any help appreciated!</div><div><br></div><div><br></di=
v></div></div></div></div>

--001a11c1f540f67c5804f48d5c6a--
