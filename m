Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B076E016B2
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 18:47:39 -0700 (PDT)
Received: by mail-ea0-f176.google.com with SMTP id q16so723637ead.7
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 18:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=TvroLwAJDbso9hEJkHoQuCIKuOeNFvMlDBLkqyLn9d4=;
	b=YJBHLwhRWrXegQ56GgiwP63GMVDAjuSR+ziGWclDvBjd6NBLvQUwiEl+CnOkT3cNER
	Cgsxc3v+4CbMCh7XeDqgBGhEiR2DwTm1RszEGJp9rvUuIn5kn0TPrRBglNZe4d5RCNg3
	8FBgdk3APnuxN+EPBhupik1qdOYpJ/WC5VdQrFZUPTIfC0/damOrdQ3jzrdqtITtHTYP
	G2p/ib6A/+n0XD7wkNOWiFg2NjcvGVBUFK36djF16rdc/Aaa83PKhT4EGTRHpxNa2PSr
	dDUFiXRG9+qPTia83W1EOTL9uLTfABFv2Stm1f9RpwzHxDkce7zGAXSvsqg9fjg0bqTZ
	dn0Q==
X-Gm-Message-State: ALoCoQliYt5WZwcX3OuYvP1XJQCdmAVOVIhhsYZzcCkVWTU8llT/zBR97YztJnN+Vgd4P7HYgjD1
MIME-Version: 1.0
X-Received: by 10.15.74.197 with SMTP id j45mr9049450eey.40.1381974458952;
	Wed, 16 Oct 2013 18:47:38 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Wed, 16 Oct 2013 18:47:38 -0700 (PDT)
In-Reply-To: <CAMS2kBGt8OgC2uL8Yy=xh4U1Cs+tRiN5R8=iH-=eW7nDoa=cWg@mail.gmail.com>
References: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
	<CAP71WjxftsAwVoew6PtO5fWJv6xTPmWpSAaQgMfy4gZbq_KEeQ@mail.gmail.com>
	<CAMS2kBGt8OgC2uL8Yy=xh4U1Cs+tRiN5R8=iH-=eW7nDoa=cWg@mail.gmail.com>
Date: Wed, 16 Oct 2013 21:47:38 -0400
Message-ID: <CALmOhgk_wEaBCN8vBFRrNHD7t1UUWAGGk+JEvk3FHg+MCcUE-g@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Glenn Schmottlach <gschmottlach@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OPKG configuration questions
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
X-List-Received-Date: Thu, 17 Oct 2013 01:47:44 -0000
Content-Type: multipart/alternative; boundary=001a11c39808b7017604e8e60076

--001a11c39808b7017604e8e60076
Content-Type: text/plain; charset=ISO-8859-1

On 16 October 2013 18:19, Glenn Schmottlach <gschmottlach@gmail.com> wrote:
> One thing
> that did disturb me a little was that when I look in my
> <project>/build/tmp-eglibc/deploy/ipk is see the following:
>
>   4 drwxr-xr-x 6 gschmottlach gschmottlach   4096 Oct 16 16:38 .
>   4 drwxr-xr-x 8 gschmottlach gschmottlach   4096 Oct  3 05:53 ..
>  12 drwxr-xr-x 2 gschmottlach gschmottlach  12288 Oct 16 16:38 all
> 176 drwxr-xr-x 2 gschmottlach gschmottlach 176128 Oct 16 16:38
armv7a-vfp-neon
>  24 drwxr-xr-x 2 gschmottlach gschmottlach  24576 Oct 16 16:38
i686-nativesdk
>  40 drwxr-xr-x 2 gschmottlach gschmottlach  36864 Oct 16 16:38 nitrogen6x
>   0 -rw-rw-r-- 1 gschmottlach gschmottlach      0 Oct 16 16:38 Packages
>   0 -rw-r--r-- 1 gschmottlach gschmottlach      0 Oct  3 00:24
Packages.flock
>   4 -rw-rw-r-- 1 gschmottlach gschmottlach     20 Oct 16 16:38 Packages.gz
>   0 -rw-r--r-- 1 gschmottlach gschmottlach      0 Oct 16 16:38
Packages.stamps

Yes, I'm seeing that too.

What happens if you run (on your build machine, from your
build location) (replace stuff in <> as required):

$ <tmpdir>/sysroots/<build arch>/usr/bin/opkg-cl -o <tmpdir>/work/<target
machine>/<image>/<version>/rootfs list

For example:

$ tmp-qemuarm/sysroots/x86_64-linux/usr/bin/opkg-cl -o
tmp-qemuarm/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs
list

Does that print you a list of all the packages in your image?

Just out of curiosity, is it possible that you added "package-management"
to IMAGE_FEATURES after you already had a successful full build? Or is
it possible that you had already done a full build with "package_rpm" or
"_deb" before switching to "package_ipk"?

The reason I ask is (although I never confirmed this definitively but) when
I was playing with this stuff a while back I was sure that this package
stuff
would only get generated after adjusting these configurations when a full,
clean build was performed (i.e. removing <tmpdir> and <sstate-cache>).

If you are making changes to your build which might affect your packages
you'll need to perform:

$ bitbake package-index

Have you had a look at:
http://www.yoctoproject.org/docs/1.5/mega-manual/mega-manual.html#using-runtime-package-management

Maybe something in there might help? But it certainly sounds like you're
doing everything correctly.

--001a11c39808b7017604e8e60076
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>On 16 October 2013 18:19, Glenn Schmottlach=
 &lt;<a href=3D"mailto:gschmottlach@gmail.com">gschmottlach@gmail.com</a>&g=
t; wrote:<br>&gt; One thing<br>&gt; that did disturb me a little was that w=
hen I look in my<br>
&gt; &lt;project&gt;/build/tmp-eglibc/deploy/ipk is see the following:<br>&=
gt;<br>&gt; =A0 4 drwxr-xr-x 6 gschmottlach gschmottlach =A0 4096 Oct 16 16=
:38 .<br>&gt; =A0 4 drwxr-xr-x 8 gschmottlach gschmottlach =A0 4096 Oct =A0=
3 05:53 ..<br>
&gt; =A012 drwxr-xr-x 2 gschmottlach gschmottlach =A012288 Oct 16 16:38 all=
<br>&gt; 176 drwxr-xr-x 2 gschmottlach gschmottlach 176128 Oct 16 16:38 arm=
v7a-vfp-neon<br>&gt; =A024 drwxr-xr-x 2 gschmottlach gschmottlach =A024576 =
Oct 16 16:38 i686-nativesdk<br>
&gt; =A040 drwxr-xr-x 2 gschmottlach gschmottlach =A036864 Oct 16 16:38 nit=
rogen6x<br>&gt; =A0 0 -rw-rw-r-- 1 gschmottlach gschmottlach =A0 =A0 =A00 O=
ct 16 16:38 Packages<br>&gt; =A0 0 -rw-r--r-- 1 gschmottlach gschmottlach =
=A0 =A0 =A00 Oct =A03 00:24 Packages.flock<br>
&gt; =A0 4 -rw-rw-r-- 1 gschmottlach gschmottlach =A0 =A0 20 Oct 16 16:38 P=
ackages.gz<br>&gt; =A0 0 -rw-r--r-- 1 gschmottlach gschmottlach =A0 =A0 =A0=
0 Oct 16 16:38 Packages.stamps<br><br>Yes, I&#39;m seeing that too.<br><br>=
What happens if you run (on your build machine, from your<br>
build location) (replace stuff in &lt;&gt; as required):<br><br><div style=
=3D"margin-left:40px"><span style=3D"font-family:courier new,monospace">$ &=
lt;tmpdir&gt;/sysroots/&lt;build arch&gt;/usr/bin/opkg-cl -o &lt;tmpdir&gt;=
/work/&lt;target machine&gt;/&lt;image&gt;/&lt;version&gt;/rootfs list</spa=
n><br>
</div><br>For example:<br><br><div style=3D"margin-left:40px"><span style=
=3D"font-family:courier new,monospace">$ tmp-qemuarm/sysroots/x86_64-linux/=
usr/bin/opkg-cl -o tmp-qemuarm/work/qemuarm-poky-linux-gnueabi/core-image-m=
inimal/1.0-r0/rootfs list</span><br>
</div><br></div>Does that print you a list of all the packages in your imag=
e?<br><br></div>Just out of curiosity, is it possible that you added &quot;=
package-management&quot;<br>to IMAGE_FEATURES after you already had a succe=
ssful full build? Or is<br>
it possible that you <span class=3D""></span><span class=3D""></span>had al=
ready done a full build with &quot;package_rpm&quot; or<br>&quot;_deb&quot;=
 before switching to &quot;package_ipk&quot;?<br><br>The reason I ask is (a=
lthough I never confirmed this definitively but) when<br>
I was playing with this stuff a while back I was sure that this package stu=
ff<br>would only get generated after adjusting these configurations when a =
full,<br>clean build was performed (i.e. removing &lt;tmpdir&gt; and &lt;ss=
tate-cache&gt;).<br>
<br></div><div>If you are making changes to your build which might affect y=
our packages<br>you&#39;ll need to perform:<br><br><div style=3D"margin-lef=
t:40px"><span style=3D"font-family:courier new,monospace">$ bitbake package=
-index</span></div>
</div><div><br></div><div>Have you had a look at:<br><a href=3D"http://www.=
yoctoproject.org/docs/1.5/mega-manual/mega-manual.html#using-runtime-packag=
e-management">http://www.yoctoproject.org/docs/1.5/mega-manual/mega-manual.=
html#using-runtime-package-management</a><br>
<br></div><div>Maybe something in there might help? But it certainly sounds=
 like you&#39;re<br>doing everything correctly.<br></div></div>

--001a11c39808b7017604e8e60076--
