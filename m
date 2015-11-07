Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91367E00B1C; Sat,  7 Nov 2015 00:49:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DBA6E00A26
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 00:49:27 -0800 (PST)
Received: by lbbwb3 with SMTP id wb3so71906871lbb.1
	for <yocto@yoctoproject.org>; Sat, 07 Nov 2015 00:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8xbLVLy8kWHDdbgz4jmR4nnaIFS3QyMPjINakufqqvA=;
	b=mmQnVRbMjqJW/qYYIJTLZfvTGixD8vgbTKZdQYaY/y1PC3YWpmJqKrRN+SI2Ro8w10
	TXyltdPoVQHlks8g4e8jB83wDDY2cTmUhiZzalD7PXNdnK9rCZzZD87sKE5yDnSa9K+y
	hB9VFCPB5K9ooXLuSAwR+B66gGBuVbkHdCBMzfPYGvpZRSqCzct0UQW5dwN046EcZlGH
	MkDMD8nV7ak7kSiYQa+DDf3cDZRQk7deajnJ+Zigp/hMvY6hlI9vyis8nssrO52pShKp
	rFtEpgw08P14wA+3jst26kQEIeMap9iLIcCrLnX2elGKMTLX6+ZGxrCrLIdOzJu+W4TI
	xXKA==
MIME-Version: 1.0
X-Received: by 10.112.149.5 with SMTP id tw5mr9297639lbb.50.1446886166596;
	Sat, 07 Nov 2015 00:49:26 -0800 (PST)
Received: by 10.25.218.5 with HTTP; Sat, 7 Nov 2015 00:49:26 -0800 (PST)
In-Reply-To: <23334139.OfoGbnEVIn@peggleto-mobl.ger.corp.intel.com>
References: <CABatt_zq+Bt3w=PyTYfSM9X5TUyOYXBuVTpK8a0JH-L2HAApMQ@mail.gmail.com>
	<46665729.FfZ08QW5SE@peggleto-mobl.ger.corp.intel.com>
	<CABatt_wJb_j_YOptOeirf03SWO2znr9cXqzCzgFxxT-s_vq29Q@mail.gmail.com>
	<23334139.OfoGbnEVIn@peggleto-mobl.ger.corp.intel.com>
Date: Sat, 7 Nov 2015 08:49:26 +0000
Message-ID: <CABatt_wr1Ja-H0BOC2guAo-9pDjosaVKR3EeNtNnxuQcLVPyhQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk and debian packages problem
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
X-List-Received-Date: Sat, 07 Nov 2015 08:49:31 -0000
Content-Type: multipart/alternative; boundary=047d7b3434d2fd95ed0523ef6fb7

--047d7b3434d2fd95ed0523ef6fb7
Content-Type: text/plain; charset=UTF-8

Hi,

I fixed the problem but I don't know if it's the right way to fix it.
Basically it occurs because I redefine DPKG_ARCH
DPKG_ARCH ?= "armv7ahf-vfp-neon"
in local.conf
We need to do this as we support several arm platforms that are all little
endian but some have soft floating point, some are armv5 etc.
This breaks do_package_write_deb in package_deb.bbclass which maps
DPKG_ARCH to Debian's ideas about architectures.  My fix was to use
PACAKGE_ARCH and add "i686-nativesdk" to the list
I've added "x86_64-nativesdk" to the 64 bit list but I don't know if this
is correct or not, just building now.

python () {
    if d.getVar('PACKAGES', True) != '':
        deps = ' dpkg-native:do_populate_sysroot
virtual/fakeroot-native:do_populate_sysroot'
        d.appendVarFlag('do_package_write_deb', 'depends', deps)
        d.setVarFlag('do_package_write_deb', 'fakeroot', "1")

    # Map TARGET_ARCH to Debian's ideas about architectures
    darch = d.getVar('PACKAGE_ARCH', True)
    if darch in ["x86", "i486", "i586", "i686", "i686-nativesdk",
"pentium"]:
         d.setVar('DPKG_ARCH', 'i386')
    elif darch in ["x86_64", "x86_64-nativesdk"]:
         d.setVar('DPKG_ARCH', 'amd64')
    elif darch == "arm":
         d.setVar('DPKG_ARCH', 'armel')


Like I said I don't know if this is the correct way of doing it, this is my
first time of delving into the depths of bitbake and Yocto :)

If it is correct I don't mind submitting a patch if someone shows me how to
do this.

Cheers,
Martin.

On Tue, Nov 3, 2015 at 2:52 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Tuesday 03 November 2015 14:34:33 Martin Townsend wrote:
> > I don't know if it worked before, we were using daisy with an external
> > toolchain and populate_sdk wasn't working.  I've wanted to go to Fido and
> > use the built toolchain so I bit the bullet as all looks good except
> > populate_sdk with dpkg.  Anyway, I'll file a bug as it looks like there
> is
> > a problem.
>
> OK, thanks.
>
> > In the meantime if someone could point me in the direction of which class
> > files to look at that would be great as I need to get this working asap
> and
> > I don't mind doing some ground work.
>
> Basically:
>
> meta/classes/package_deb.bbclass
> meta/classes/rootfs_deb.bbclass
>
> Most of the logic is actually in Dpkg* classes in:
>
> meta/lib/oe/sdk.py
> meta/lib/oe/package_manager.py
> meta/lib/oe/rootfs.py
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b3434d2fd95ed0523ef6fb7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I fixed the prob=
lem but I don&#39;t know if it&#39;s the right way to fix it.<br></div>Basi=
cally it occurs because I redefine DPKG_ARCH<br>DPKG_ARCH ?=3D &quot;armv7a=
hf-vfp-neon&quot;<br></div><div>in local.conf<br></div>We
 need to do this as we support several arm platforms that are all little
 endian but some have soft floating point, some are armv5 etc.<br></div>Thi=
s
 breaks do_package_write_deb in package_deb.bbclass which maps DPKG_ARCH
 to Debian&#39;s ideas about architectures.=C2=A0 My fix was to use PACAKGE=
_ARCH=20
and add &quot;i686-nativesdk&quot; to the list<br></div>I&#39;ve added &quo=
t;x86_64-nativesdk&quot; to the 64 bit list but I don&#39;t know if this is=
 correct or not, just building now.<br><div><br>python () {<br>=C2=A0=C2=A0=
=C2=A0 if d.getVar(&#39;PACKAGES&#39;, True) !=3D &#39;&#39;:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 deps =3D &#39; dpkg-native:do_populate_sy=
sroot virtual/fakeroot-native:do_populate_sysroot&#39;<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.appendVarFlag(&#39;do_package_write_deb&#39;,=
 &#39;depends&#39;, deps)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.s=
etVarFlag(&#39;do_package_write_deb&#39;, &#39;fakeroot&#39;, &quot;1&quot;=
)<br><br>=C2=A0=C2=A0=C2=A0 # Map TARGET_ARCH to Debian&#39;s ideas about a=
rchitectures<br>=C2=A0=C2=A0=C2=A0 darch =3D d.getVar(&#39;PACKAGE_ARCH&#39=
;, True)<br>=C2=A0=C2=A0=C2=A0 if darch in [&quot;x86&quot;, &quot;i486&quo=
t;, &quot;i586&quot;, &quot;i686&quot;, &quot;i686-nativesdk&quot;, &quot;p=
entium&quot;]:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.setVar=
(&#39;DPKG_ARCH&#39;, &#39;i386&#39;)<br>=C2=A0=C2=A0=C2=A0 elif darch in [=
&quot;x86_64&quot;, &quot;x86_64-nativesdk&quot;]:<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.setVar(&#39;DPKG_ARCH&#39;, &#39;amd64&#39;)<=
br>=C2=A0=C2=A0=C2=A0 elif darch =3D=3D &quot;arm&quot;:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d.setVar(&#39;DPKG_ARCH&#39;, &#39;armel&=
#39;)<br><br><br></div><div>Like
 I said I don&#39;t know if this is the correct way of doing it, this is my=
=20
first time of delving into the depths of bitbake and Yocto :)<br><br></div>=
<div>If it is correct I don&#39;t mind submitting a patch if someone shows =
me how to do this.<br><br></div><div>Cheers,<br></div>Martin.</div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Nov 3, 2015 at 2:=
52 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@=
linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Tuesday 0=
3 November 2015 14:34:33 Martin Townsend wrote:<br>
&gt; I don&#39;t know if it worked before, we were using daisy with an exte=
rnal<br>
&gt; toolchain and populate_sdk wasn&#39;t working.=C2=A0 I&#39;ve wanted t=
o go to Fido and<br>
&gt; use the built toolchain so I bit the bullet as all looks good except<b=
r>
&gt; populate_sdk with dpkg.=C2=A0 Anyway, I&#39;ll file a bug as it looks =
like there is<br>
&gt; a problem.<br>
<br>
</span>OK, thanks.<br>
<span class=3D""><br>
&gt; In the meantime if someone could point me in the direction of which cl=
ass<br>
&gt; files to look at that would be great as I need to get this working asa=
p and<br>
&gt; I don&#39;t mind doing some ground work.<br>
<br>
</span>Basically:<br>
<br>
meta/classes/package_deb.bbclass<br>
meta/classes/rootfs_deb.bbclass<br>
<br>
Most of the logic is actually in Dpkg* classes in:<br>
<br>
meta/lib/oe/sdk.py<br>
meta/lib/oe/package_manager.py<br>
meta/lib/oe/rootfs.py<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7b3434d2fd95ed0523ef6fb7--
