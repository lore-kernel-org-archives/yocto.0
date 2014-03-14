Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0DF7E00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 03:09:11 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id wp4so2278081obc.26
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 03:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=h2hIhFj7m0jI8RwcL3ySQw1CnMfGqltMGVdEV/WR/FU=;
	b=PUMX9sXjt6tFaV/uHJ5ROw+nw/5sF5kI0LZsM8As6SXI1oSyKoGZnNaRSO9y4O+rPU
	cECYEo9oqzpiKtl7NXAXRMzbp1Ws/nn3ghV0PYnQplr3ntiZMCOocDGEG3u9fDGyfoSW
	9CLOaDOYBwHbREM30f6F3PdaW50CsjpNhvLFFK25rcTcFeZbUzU5YwMMW0Spe/wT/OA7
	rt9me9b1pd8BjG1rWN6HlZ2n5kHU+FFrsvLg38KlAKVm451r3N/HmbOSKJ+7SmqF7wl3
	eSpUzT9m+mRheMLFfmfEwX5xeGwq34an+Lzo+Dp4kOFdbCZiqOCdaMzPJljDRWYA+PGP
	wQWw==
MIME-Version: 1.0
X-Received: by 10.182.2.42 with SMTP id 10mr338235obr.73.1394791750552; Fri,
	14 Mar 2014 03:09:10 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Fri, 14 Mar 2014 03:09:10 -0700 (PDT)
In-Reply-To: <CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
	<5322C771.8070601@mlbassoc.com>
	<CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>
Date: Fri, 14 Mar 2014 11:09:10 +0100
Message-ID: <CAD78y+5oXeVFhmq8QYiftL+SXLY0SuPx=PS2gWE1-+a6aVimMg@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Fri, 14 Mar 2014 10:09:14 -0000
Content-Type: multipart/alternative; boundary=001a1134ad06d3d39d04f48e42db

--001a1134ad06d3d39d04f48e42db
Content-Type: text/plain; charset=ISO-8859-1

Thank you Nicholas and Gary! I'm quite experienced in linux embedded
developement, but I'm new to yocto / openembedded.
Nicolas, can you please explain me how to use my sources separate from OE
build dir tree and still using oe built system?
Do I have to edit the sources directly in builddir/tmp/work/etcetera or can
I keep it separate?




2014-03-14 10:24 GMT+01:00 Nicolas Dechesne <nicolas.dechesne@linaro.org>:

> On Fri, Mar 14, 2014 at 10:10 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> >>   CCLD   libgsttag-0.10.la <http://libgsttag-0.10.la>
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
> libgstbase-0.10.la <http://libgstbase-0.10.la>' was moved.
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
> libgstreamer-0.10.la <http://libgstreamer-0.10.la>' was moved.
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
> libgobject-2.0.la <http://libgobject-2.0.la>' was moved.
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
> libgmodule-2.0.la <http://libgmodule-2.0.la>' was moved.
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
> libgthread-2.0.la <http://libgthread-2.0.la>' was moved.
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/
> libglib-2.0.la <http://libglib-2.0.la>' was moved.
> >> libtool: link: warning: library
> `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libxml2.la<
> http://libxml2.la>' was moved.
> >> sed: can't read /usr/lib/libgstreamer-0.10.la <
> http://libgstreamer-0.10.la>: No such file or directory
> >> libtool: link: `=/usr/lib/libgstreamer-0.10.la <
> http://libgstreamer-0.10.la>' is not a valid libtool archive
> >> make[4]: *** [libgsttag-0.10.la <http://libgsttag-0.10.la>] Errore 1
> >>
> >> The library configured for cross compilation. I'm starting from the
> sources patched as in yocto.
> >>
> >> Any help appreciated!
> >
> > Why not do these changes/development using your bitbake/Yocto
> > build environment.  I've found that using quilt makes this quite
> > easy to do and helps manage the changes, patches, etc.  It will
> > also avoid the problem you are having which seems to stem from
> > trying to build outside the original environment.
>
> yeah. i would recommend that too. I find the externalsrc class quite
> handy for such things. E.g. you can keep your git tree separate during
> development, *but* still rely on OE to build, which I think gives you
> the best of both world...
>
> of course for your own applications, using the SDK makes sense.
>
> nicolas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1134ad06d3d39d04f48e42db
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Nicholas and Gary! I&#39;m quite experienced in =
linux embedded developement, but I&#39;m new to yocto / openembedded.<div>N=
icolas, can you please explain me how to use my sources separate from OE bu=
ild dir tree and still using oe built system?</div>
<div>Do I have to edit the sources directly in builddir/tmp/work/etcetera o=
r can I keep it separate?</div><div><div><br></div><div><br></div></div></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-03-14=
 10:24 GMT+01:00 Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=3D"mailto:n=
icolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@linaro.org</=
a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Fri, Mar 14, 2014 at 10:1=
0 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.co=
m</a>&gt; wrote:<br>

&gt;&gt; =A0 CCLD =A0 <a href=3D"http://libgsttag-0.10.la" target=3D"_blank=
">libgsttag-0.10.la</a> &lt;<a href=3D"http://libgsttag-0.10.la" target=3D"=
_blank">http://libgsttag-0.10.la</a>&gt;<br>
&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgstbase-0.10.la" target=
=3D"_blank">libgstbase-0.10.la</a> &lt;<a href=3D"http://libgstbase-0.10.la=
" target=3D"_blank">http://libgstbase-0.10.la</a>&gt;&#39; was moved.<br>

&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgstreamer-0.10.la" target=
=3D"_blank">libgstreamer-0.10.la</a> &lt;<a href=3D"http://libgstreamer-0.1=
0.la" target=3D"_blank">http://libgstreamer-0.10.la</a>&gt;&#39; was moved.=
<br>

&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgobject-2.0.la" target=3D=
"_blank">libgobject-2.0.la</a> &lt;<a href=3D"http://libgobject-2.0.la" tar=
get=3D"_blank">http://libgobject-2.0.la</a>&gt;&#39; was moved.<br>

&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgmodule-2.0.la" target=3D=
"_blank">libgmodule-2.0.la</a> &lt;<a href=3D"http://libgmodule-2.0.la" tar=
get=3D"_blank">http://libgmodule-2.0.la</a>&gt;&#39; was moved.<br>

&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libgthread-2.0.la" target=3D=
"_blank">libgthread-2.0.la</a> &lt;<a href=3D"http://libgthread-2.0.la" tar=
get=3D"_blank">http://libgthread-2.0.la</a>&gt;&#39; was moved.<br>

&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libglib-2.0.la" target=3D"_b=
lank">libglib-2.0.la</a> &lt;<a href=3D"http://libglib-2.0.la" target=3D"_b=
lank">http://libglib-2.0.la</a>&gt;&#39; was moved.<br>

&gt;&gt; libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vf=
p-poky-linux-gnueabi/usr/lib/<a href=3D"http://libxml2.la" target=3D"_blank=
">libxml2.la</a> &lt;<a href=3D"http://libxml2.la" target=3D"_blank">http:/=
/libxml2.la</a>&gt;&#39; was moved.<br>

&gt;&gt; sed: can&#39;t read /usr/lib/<a href=3D"http://libgstreamer-0.10.l=
a" target=3D"_blank">libgstreamer-0.10.la</a> &lt;<a href=3D"http://libgstr=
eamer-0.10.la" target=3D"_blank">http://libgstreamer-0.10.la</a>&gt;: No su=
ch file or directory<br>

&gt;&gt; libtool: link: `=3D/usr/lib/<a href=3D"http://libgstreamer-0.10.la=
" target=3D"_blank">libgstreamer-0.10.la</a> &lt;<a href=3D"http://libgstre=
amer-0.10.la" target=3D"_blank">http://libgstreamer-0.10.la</a>&gt;&#39; is=
 not a valid libtool archive<br>

&gt;&gt; make[4]: *** [<a href=3D"http://libgsttag-0.10.la" target=3D"_blan=
k">libgsttag-0.10.la</a> &lt;<a href=3D"http://libgsttag-0.10.la" target=3D=
"_blank">http://libgsttag-0.10.la</a>&gt;] Errore 1<br>
&gt;&gt;<br>
&gt;&gt; The library configured for cross compilation. I&#39;m starting fro=
m the sources patched as in yocto.<br>
&gt;&gt;<br>
&gt;&gt; Any help appreciated!<br>
&gt;<br>
&gt; Why not do these changes/development using your bitbake/Yocto<br>
&gt; build environment. =A0I&#39;ve found that using quilt makes this quite=
<br>
&gt; easy to do and helps manage the changes, patches, etc. =A0It will<br>
&gt; also avoid the problem you are having which seems to stem from<br>
&gt; trying to build outside the original environment.<br>
<br>
</div>yeah. i would recommend that too. I find the externalsrc class quite<=
br>
handy for such things. E.g. you can keep your git tree separate during<br>
development, *but* still rely on OE to build, which I think gives you<br>
the best of both world...<br>
<br>
of course for your own applications, using the SDK makes sense.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
nicolas<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a1134ad06d3d39d04f48e42db--
