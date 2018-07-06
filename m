Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7B2FE00A04; Fri,  6 Jul 2018 14:10:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C635E00A04
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 14:10:15 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id q4-v6so12015827iob.2
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 14:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hl4x9i3dj+HcrNfVlB0Mtbv3pCj+fye2Q65CpAVBGMc=;
	b=NjYW/xzmYeFzh4BE5Vr+5AGYU0rTE1Yo8Sruu6qAn9vxFuWqYu25gYLTVPy00Hq5VI
	xd1v+D582ZPv3ledMbA6bHFY19nxXIeWen2y5yLZIQc/h8eQXpKU/cAY/uBK2rwoBYNB
	oJLAVALw+pcdbl+YlkpZxFTaKNKGlGrrredhOenq4tpNn2H1CNNc5ozCv+tZORO6sftM
	WZxJhub+KY9dbHllILbUmTKLhn3DCkB8DKgGTQAs7bq0dZ7Y6QYH6dRhlC9RccY51BsU
	t2AAiyagWSUJFnvwGk/GNdXjxgzv4NOezRC9SUrPZsIfSyLDQ86xJI+GCt6MbimzNO6d
	Qvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hl4x9i3dj+HcrNfVlB0Mtbv3pCj+fye2Q65CpAVBGMc=;
	b=CUxzokm2VFuCsyrkdZtRUZ6bCQ+fYgpgZ9y1pam2xdWpRBKod9dQeG4T40OBoDM5Va
	F1+iUuir/uDj+7gJ1Xx4HW3LGgO1XgE51Oyw9lYrJs1r9gmp68XbFcaFmmiEV2FSwQWq
	txINNgYNUCCWbePt3AEd3g6BO2QxO6BWfDOSvR8MhG4czi4tCa4+V/nlBfYypEW+akpw
	PVfsnat25XqNoYBqUseSPpJzBqr3Sp0AootPyGc8ibNXGXKIU59N11aqgwNUCjpCNvOp
	1qKSrOtMgiH5LexOuGOawX9V7TLy7uxLuzRsKjl/mAXmFuHGPOY0M1NVMiB7pg1wxc+Y
	4RTg==
X-Gm-Message-State: APt69E3x6Bezt3TMSo1fI4xvR6wN7EZJU//kebFF9ZE341VTqR3wiG6E
	D2wWNXvSYVZUe/+xvcKM2iIEnxDNR7hHkA/3onk=
X-Google-Smtp-Source: AAOMgpd1eoaYj0Ls4gXLjHKU6gOxUldWp5UrGho/oDkr4mcsBU9fVXq7pa38Ja9uTHtNu6XXflCe1lK27mi4uEZi4oQ=
X-Received: by 2002:a6b:334f:: with SMTP id
	z76-v6mr9765381ioz.88.1530911414654; 
	Fri, 06 Jul 2018 14:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
	<CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
	<CAJ86T=X4NjfRUwN3vq6i8FTQ=6iqUoMjOc136ZRtfmm2ecJ+aA@mail.gmail.com>
	<CAFzUWGmE8sUDbBUZjfzRCSJ6e_SXiLfxYkof3uB+b275sD_0pg@mail.gmail.com>
	<CAJ86T=WyWPYtBNUvWySd6qTTg5HyB1Hg_nHqftg+vpP7wtDizA@mail.gmail.com>
In-Reply-To: <CAJ86T=WyWPYtBNUvWySd6qTTg5HyB1Hg_nHqftg+vpP7wtDizA@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 6 Jul 2018 16:10:03 -0500
Message-ID: <CAFzUWGn2BBjYzOQAfCkVnbQWH0L77cTe7EYQKX5eTbL7Mg13gQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Understanding "dev package contains non-symlink"
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
X-List-Received-Date: Fri, 06 Jul 2018 21:10:16 -0000
Content-Type: multipart/alternative; boundary="0000000000000d9cf805705b175c"

--0000000000000d9cf805705b175c
Content-Type: text/plain; charset="UTF-8"

Hi,

So the good news is that this is at least the source code itself appears to
be written in a packaged-up-manner which makes some things easier to deal
with. It seems that all of the plugins are here:
https://github.com/xrootd/xrootd/blob/dad82068ae99859ebf40f65d95fe7c44f7db057e/src/XrdPlugins.cmake


where it seems to install to

install(
  TARGETS ${LIB_XRD_PSS} ${LIB_XRD_BWM} ${LIB_XRD_GPFS} ${LIB_XRD_ZCRC32}
${LIB_XRD_THROTTLE} ${LIB_XRD_N2NO2P}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )

While all other "non-plugins" also install to the same
"CMAKE_INSTALL_LIBDIR". I suppose it might be possible to patch this one
particular file to get the installs in a separate location? This seems like
potentially a short patch given that all plug-ins, from a cursory glance,
are installed with the same CMake instruction...

If not, I would be ok with adding

INSANE_SKIP_${PN} += "dev-so"

to my recipe along with the other two lines I've added (one to erase the
so-libs pattern for ${PN}-dev, and one to force all the *.so libs into
${PN}).

Would a third option be to just manually write out my ${PN} and ${PN}-dev
files to split up which are symlinks and which are not -- given that I'm
writing this recipe for a given version/configuration?

Giordon


On Fri, Jul 6, 2018 at 3:52 PM Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Jul 6, 2018 at 1:28 PM, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi,
> >
> > Been struggling to understand the differences here. This is what the
> > directory looks like
> >
> > kratsg@dc:/local/d4/gstark/poky/build$ ls
> >
> tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/
> > total 4.3M
> > drwxr-xr-x 2 kratsg atlas 4.0K Jun 28 16:13 .
> > drwxr-xr-x 5 kratsg atlas 4.0K Jun 28 16:13 ..
> > lrwxrwxrwx 1 kratsg atlas   19 Jun 28 16:13 libXrdAppUtils.so ->
> > libXrdAppUtils.so.1
> > lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdAppUtils.so.1 ->
> > libXrdAppUtils.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas  44K Jun 28 16:13 libXrdAppUtils.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdBlacklistDecision-4.so
> > -rwxr-xr-x 2 kratsg atlas  59K Jun 28 16:13 libXrdBwm-4.so
> > -rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdCksCalczcrc32-4.so
> > lrwxrwxrwx 1 kratsg atlas   13 Jun 28 16:13 libXrdCl.so -> libXrdCl.so.2
> > -rwxr-xr-x 2 kratsg atlas  27K Jun 28 16:13 libXrdClProxyPlugin-4.so
> > lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdClient.so ->
> > libXrdClient.so.2
> > lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdClient.so.2 ->
> > libXrdClient.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas 554K Jun 28 16:13 libXrdClient.so.2.0.0
> > lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdCl.so.2 ->
> > libXrdCl.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas 937K Jun 28 16:13 libXrdCl.so.2.0.0
> > lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdCrypto.so ->
> > libXrdCrypto.so.1
> > lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdCryptoLite.so ->
> > libXrdCryptoLite.so.1
> > lrwxrwxrwx 1 kratsg atlas   25 Jun 28 16:13 libXrdCryptoLite.so.1 ->
> > libXrdCryptoLite.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas 5.9K Jun 28 16:13 libXrdCryptoLite.so.1.0.0
> > lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdCrypto.so.1 ->
> > libXrdCrypto.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas  95K Jun 28 16:13 libXrdCrypto.so.1.0.0
> > lrwxrwxrwx 1 kratsg atlas   14 Jun 28 16:13 libXrdFfs.so ->
> libXrdFfs.so.2
> > lrwxrwxrwx 1 kratsg atlas   18 Jun 28 16:13 libXrdFfs.so.2 ->
> > libXrdFfs.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas  47K Jun 28 16:13 libXrdFfs.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas 156K Jun 28 16:13 libXrdFileCache-4.so
> > -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdN2No2p-4.so
> > -rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdOssSIgpfsT-4.so
> > lrwxrwxrwx 1 kratsg atlas   16 Jun 28 16:13 libXrdPosix.so ->
> > libXrdPosix.so.2
> > lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdPosixPreload.so ->
> > libXrdPosixPreload.so.1
> > lrwxrwxrwx 1 kratsg atlas   27 Jun 28 16:13 libXrdPosixPreload.so.1 ->
> > libXrdPosixPreload.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas  67K Jun 28 16:13 libXrdPosixPreload.so.1.0.0
> > lrwxrwxrwx 1 kratsg atlas   20 Jun 28 16:13 libXrdPosix.so.2 ->
> > libXrdPosix.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas 128K Jun 28 16:13 libXrdPosix.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas  56K Jun 28 16:13 libXrdPss-4.so
> > -rwxr-xr-x 2 kratsg atlas  19K Jun 28 16:13 libXrdSecProt-4.so
> > -rwxr-xr-x 2 kratsg atlas 112K Jun 28 16:13 libXrdSecpwd-4.so
> > -rwxr-xr-x 2 kratsg atlas  35K Jun 28 16:13 libXrdSecsss-4.so
> > -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdSecunix-4.so
> > -rwxr-xr-x 2 kratsg atlas  52K Jun 28 16:13 libXrdSec-4.so
> > lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdServer.so ->
> > libXrdServer.so.2
> > lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdServer.so.2 ->
> > libXrdServer.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas 764K Jun 28 16:13 libXrdServer.so.2.0.0
> > lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdSsiLib.so ->
> > libXrdSsiLib.so.1
> > lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdSsiLib.so.1 ->
> > libXrdSsiLib.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas 108K Jun 28 16:13 libXrdSsiLib.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdSsiLog-4.so
> > lrwxrwxrwx 1 kratsg atlas   19 Jun 28 16:13 libXrdSsiShMap.so ->
> > libXrdSsiShMap.so.1
> > lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdSsiShMap.so.1 ->
> > libXrdSsiShMap.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas  31K Jun 28 16:13 libXrdSsiShMap.so.1.0.0
> > -rwxr-xr-x 2 kratsg atlas 100K Jun 28 16:13 libXrdSsi-4.so
> > -rwxr-xr-x 2 kratsg atlas  47K Jun 28 16:13 libXrdThrottle-4.so
> > lrwxrwxrwx 1 kratsg atlas   16 Jun 28 16:13 libXrdUtils.so ->
> > libXrdUtils.so.2
> > lrwxrwxrwx 1 kratsg atlas   20 Jun 28 16:13 libXrdUtils.so.2 ->
> > libXrdUtils.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas 589K Jun 28 16:13 libXrdUtils.so.2.0.0
> > lrwxrwxrwx 1 kratsg atlas   14 Jun 28 16:13 libXrdXml.so ->
> libXrdXml.so.2
> > lrwxrwxrwx 1 kratsg atlas   18 Jun 28 16:13 libXrdXml.so.2 ->
> > libXrdXml.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas  88K Jun 28 16:13 libXrdXml.so.2.0.0
> > -rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdXrootd-4.so
> >
> >
> > According to the docs, there is a CMAKE_INSTALL_PREFIX I can configure:
> >
> >   * CMAKE_INSTALL_PREFIX - indicates where the XRootD files should be
> > installed,
> >                            (default: /usr)
> >
> > and this might let me set the install prefix to something custom, move
> those
> > files into the package, and the plug-ins elsewhere.. But I'm not sure if
> > this is the right way to go... e.g.
> >
> > EXTRA_OEMAKE = "-DCMAKE_INSTALL_PREFIX=/opt/xrootd" or something.
>
> That's probably just going to install everything in a different
> location. What you ideally want is to install the shared libraries
> (e.g. libXrdAppUtils.so*, etc) where they are now in /usr/lib and the
> plug-ins (e.g. lib*-4.so) somewhere else. That will potentially
> require patching the cmake files etc and probably the sources as well
> (to change the directory from which plug-ins are loaded).
>
> You could perhaps get away with moving the plug-ins from a
> do_install_append() (ie let cmake install proceed as it does now and
> then move them afterwards) but then you'd still need to potentially
> patch the sources so that the plug-ins are found in their new
> location.
>
> If you're not interested in that amount of work (and submitting the
> fixes upstream, etc) then, as already suggested, you can alternatively
> just force all .so files into the main run-time package and ignore the
> "dev-so" QA test. That would be an acceptable workaround.
>
-- 
Giordon Stark

--0000000000000d9cf805705b175c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>So the good news is that this is at=
 least the source code itself appears to be written in a packaged-up-manner=
 which makes some things easier to deal with. It seems that all of the plug=
ins are here:=C2=A0<a href=3D"https://github.com/xrootd/xrootd/blob/dad8206=
8ae99859ebf40f65d95fe7c44f7db057e/src/XrdPlugins.cmake">https://github.com/=
xrootd/xrootd/blob/dad82068ae99859ebf40f65d95fe7c44f7db057e/src/XrdPlugins.=
cmake</a>=C2=A0</div><div><br></div><div>where it seems to install to</div>=
<div><br></div><div><div><font face=3D"monospace">install(</font></div><div=
><font face=3D"monospace">=C2=A0 TARGETS ${LIB_XRD_PSS} ${LIB_XRD_BWM} ${LI=
B_XRD_GPFS} ${LIB_XRD_ZCRC32} ${LIB_XRD_THROTTLE} ${LIB_XRD_N2NO2P}</font><=
/div><div><font face=3D"monospace">=C2=A0 LIBRARY DESTINATION ${CMAKE_INSTA=
LL_LIBDIR} )</font></div></div><div><font face=3D"monospace"><br></font></d=
iv><div>While all other &quot;non-plugins&quot; also install to the same &q=
uot;CMAKE_INSTALL_LIBDIR&quot;. I suppose it might be possible to patch thi=
s one particular file to get the installs in a separate location? This seem=
s like potentially a short patch given that all plug-ins, from a cursory gl=
ance, are installed with the same CMake instruction...</div><div><br></div>=
<div>If not, I would be ok with adding</div><div><br><font face=3D"monospac=
e">INSANE_SKIP_${PN} +=3D &quot;dev-so&quot;</font><br></div><div><br></div=
><div>to my recipe along with the other two lines I&#39;ve added (one to er=
ase the so-libs pattern for ${PN}-dev, and one to force all the *.so libs i=
nto ${PN}).</div><div><br></div><div>Would a third option be to just manual=
ly write out my ${PN} and ${PN}-dev files to split up which are symlinks an=
d which are not -- given that I&#39;m writing this recipe for a given versi=
on/configuration?</div><div><br></div><div>Giordon</div><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 6, 2018 at 3:=
52 PM Andre McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com">armccurdy@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, Jul =
6, 2018 at 1:28 PM, Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail.com" t=
arget=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; Been struggling to understand the differences here. This is what the<b=
r>
&gt; directory looks like<br>
&gt;<br>
&gt; kratsg@dc:/local/d4/gstark/poky/build$ ls<br>
&gt; tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/=
lib/<br>
&gt; total 4.3M<br>
&gt; drwxr-xr-x 2 kratsg atlas 4.0K Jun 28 16:13 .<br>
&gt; drwxr-xr-x 5 kratsg atlas 4.0K Jun 28 16:13 ..<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A019 Jun 28 16:13 libXrdAppUtils.s=
o -&gt;<br>
&gt; libXrdAppUtils.so.1<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A023 Jun 28 16:13 libXrdAppUtils.s=
o.1 -&gt;<br>
&gt; libXrdAppUtils.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 44K Jun 28 16:13 libXrdAppUtils.so.1.0=
.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXrdBlacklistDecisi=
on-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 59K Jun 28 16:13 libXrdBwm-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 11K Jun 28 16:13 libXrdCksCalczcrc32-4=
.so<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A013 Jun 28 16:13 libXrdCl.so -&gt=
; libXrdCl.so.2<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 27K Jun 28 16:13 libXrdClProxyPlugin-4=
.so<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdClient.so =
-&gt;<br>
&gt; libXrdClient.so.2<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 28 16:13 libXrdClient.so.=
2 -&gt;<br>
&gt; libXrdClient.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 554K Jun 28 16:13 libXrdClient.so.2.0.0<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdCl.so.2 -&=
gt;<br>
&gt; libXrdCl.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 937K Jun 28 16:13 libXrdCl.so.2.0.0<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdCrypto.so =
-&gt;<br>
&gt; libXrdCrypto.so.1<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 28 16:13 libXrdCryptoLite=
.so -&gt;<br>
&gt; libXrdCryptoLite.so.1<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A025 Jun 28 16:13 libXrdCryptoLite=
.so.1 -&gt;<br>
&gt; libXrdCryptoLite.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 5.9K Jun 28 16:13 libXrdCryptoLite.so.1.0.0<=
br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 28 16:13 libXrdCrypto.so.=
1 -&gt;<br>
&gt; libXrdCrypto.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 95K Jun 28 16:13 libXrdCrypto.so.1.0.0=
<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A014 Jun 28 16:13 libXrdFfs.so -&g=
t; libXrdFfs.so.2<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A018 Jun 28 16:13 libXrdFfs.so.2 -=
&gt;<br>
&gt; libXrdFfs.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 47K Jun 28 16:13 libXrdFfs.so.2.0.0<br=
>
&gt; -rwxr-xr-x 2 kratsg atlas 156K Jun 28 16:13 libXrdFileCache-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXrdN2No2p-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 11K Jun 28 16:13 libXrdOssSIgpfsT-4.so=
<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A016 Jun 28 16:13 libXrdPosix.so -=
&gt;<br>
&gt; libXrdPosix.so.2<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A023 Jun 28 16:13 libXrdPosixPrelo=
ad.so -&gt;<br>
&gt; libXrdPosixPreload.so.1<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A027 Jun 28 16:13 libXrdPosixPrelo=
ad.so.1 -&gt;<br>
&gt; libXrdPosixPreload.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 67K Jun 28 16:13 libXrdPosixPreload.so=
.1.0.0<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A020 Jun 28 16:13 libXrdPosix.so.2=
 -&gt;<br>
&gt; libXrdPosix.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 128K Jun 28 16:13 libXrdPosix.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 56K Jun 28 16:13 libXrdPss-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 19K Jun 28 16:13 libXrdSecProt-4.so<br=
>
&gt; -rwxr-xr-x 2 kratsg atlas 112K Jun 28 16:13 libXrdSecpwd-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 35K Jun 28 16:13 libXrdSecsss-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXrdSecunix-4.so<br=
>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 52K Jun 28 16:13 libXrdSec-4.so<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdServer.so =
-&gt;<br>
&gt; libXrdServer.so.2<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 28 16:13 libXrdServer.so.=
2 -&gt;<br>
&gt; libXrdServer.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 764K Jun 28 16:13 libXrdServer.so.2.0.0<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdSsiLib.so =
-&gt;<br>
&gt; libXrdSsiLib.so.1<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 28 16:13 libXrdSsiLib.so.=
1 -&gt;<br>
&gt; libXrdSsiLib.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 108K Jun 28 16:13 libXrdSsiLib.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXrdSsiLog-4.so<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A019 Jun 28 16:13 libXrdSsiShMap.s=
o -&gt;<br>
&gt; libXrdSsiShMap.so.1<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A023 Jun 28 16:13 libXrdSsiShMap.s=
o.1 -&gt;<br>
&gt; libXrdSsiShMap.so.1.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 31K Jun 28 16:13 libXrdSsiShMap.so.1.0=
.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 100K Jun 28 16:13 libXrdSsi-4.so<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 47K Jun 28 16:13 libXrdThrottle-4.so<b=
r>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A016 Jun 28 16:13 libXrdUtils.so -=
&gt;<br>
&gt; libXrdUtils.so.2<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A020 Jun 28 16:13 libXrdUtils.so.2=
 -&gt;<br>
&gt; libXrdUtils.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas 589K Jun 28 16:13 libXrdUtils.so.2.0.0<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A014 Jun 28 16:13 libXrdXml.so -&g=
t; libXrdXml.so.2<br>
&gt; lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A018 Jun 28 16:13 libXrdXml.so.2 -=
&gt;<br>
&gt; libXrdXml.so.2.0.0<br>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 88K Jun 28 16:13 libXrdXml.so.2.0.0<br=
>
&gt; -rwxr-xr-x 2 kratsg atlas=C2=A0 11K Jun 28 16:13 libXrdXrootd-4.so<br>
&gt;<br>
&gt;<br>
&gt; According to the docs, there is a CMAKE_INSTALL_PREFIX I can configure=
:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0* CMAKE_INSTALL_PREFIX - indicates where the XRootD files =
should be<br>
&gt; installed,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (default: /usr)<br>
&gt;<br>
&gt; and this might let me set the install prefix to something custom, move=
 those<br>
&gt; files into the package, and the plug-ins elsewhere.. But I&#39;m not s=
ure if<br>
&gt; this is the right way to go... e.g.<br>
&gt;<br>
&gt; EXTRA_OEMAKE =3D &quot;-DCMAKE_INSTALL_PREFIX=3D/opt/xrootd&quot; or s=
omething.<br>
<br>
That&#39;s probably just going to install everything in a different<br>
location. What you ideally want is to install the shared libraries<br>
(e.g. libXrdAppUtils.so*, etc) where they are now in /usr/lib and the<br>
plug-ins (e.g. lib*-4.so) somewhere else. That will potentially<br>
require patching the cmake files etc and probably the sources as well<br>
(to change the directory from which plug-ins are loaded).<br>
<br>
You could perhaps get away with moving the plug-ins from a<br>
do_install_append() (ie let cmake install proceed as it does now and<br>
then move them afterwards) but then you&#39;d still need to potentially<br>
patch the sources so that the plug-ins are found in their new<br>
location.<br>
<br>
If you&#39;re not interested in that amount of work (and submitting the<br>
fixes upstream, etc) then, as already suggested, you can alternatively<br>
just force all .so files into the main run-time package and ignore the<br>
&quot;dev-so&quot; QA test. That would be an acceptable workaround.<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--0000000000000d9cf805705b175c--
