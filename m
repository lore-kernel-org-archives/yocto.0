Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8017E00BEC; Wed, 21 Mar 2018 08:15:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 737D5E0070F
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:15:52 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id a22-v6so8407424lfg.9
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=hcREeRzIdQjvvuI2A4Exi3BNN+mFjKwbXJ3fFj4ImTw=;
	b=V64EzHjJKu12KKsfpGsBhR8cfIukwK+JCW4+RObouxU5XgL4awZO5h/A2dr0opmN/l
	knkCWugPcph4ECSw9dyQ7OFVH8etcVRgrXVK6oRNZ/pZCP5IsTqQYbqoPfqchceFumx3
	JiUtm3lSxDMo+wGZS9Q7vyrS+4YafWcwro58UDN2GQpkmTwFhc2ccHQJn0tkt62kv6wd
	lyZEmGzcYoz6V/DR3ot1MTisLz98QVq8bn8xXS58bbG46xvjPGBFYNkGTkQfDCrXg2R+
	oPQ8dzBsDr2KGl7gb+XoYcFoDe4TBC1vsnj+pU+cXt5Uhad9cumZoCpkiTXS+aHFWIbj
	pnFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=hcREeRzIdQjvvuI2A4Exi3BNN+mFjKwbXJ3fFj4ImTw=;
	b=Ow9IC9/mXxXe6tEiKOkLE1JtlNe0laXAPcmt7p3mTzvATiQRIf2iF3GxyveIqIiRZW
	huGZrcrBEgwRatWU2KUKLCVYavjRHuiKAfZGbhDE4ej3yKNdJRBUsV4E4vq7kGK8uzvG
	QVj5QMz12n8+/2/r3LWAgJT1W3NuMaOzv4mcNIs4ayhvbFhVUq28RkdG4s4cEnkWe61p
	txl6AOZLpzhRHywxIUjT1vaaq9jErPdGowbPla0I6+i/dTJxLhIm+HkE9tX3lAq0tJD2
	VP2vuXnGF72dZLrxqOUU66ojQHPIWg1jNsXsTYlb9ddDx3mMsspQQ43CqixL6ZnZ1Vsr
	L8vw==
X-Gm-Message-State: AElRT7GYHB90/qo03s+V/JQqhZaQtQ4dKBhIie6N5f+63RnqbQOnrEhd
	v5DLaK+oOGYphUDXRWRY88Cod4t2niu7KBAjyGAkcHuS
X-Google-Smtp-Source: AG47ELv/pt1+eOPjNR6csfXXpX25+w3ai4rW/GhwmFGjtabj4zyGnO/4MdbsjXOBPHAY0ZyWDq9CngQ4oGebk4krrKA=
X-Received: by 10.46.29.140 with SMTP id w12mr9508535lje.108.1521645351811;
	Wed, 21 Mar 2018 08:15:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Wed, 21 Mar 2018 08:15:51
	-0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 21 Mar 2018 16:15:51 +0100
Message-ID: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Cc: linux-bluetooth@vger.kernel.org,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Subject: Building BlueZ from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:15:54 -0000
Content-Type: multipart/alternative; boundary="94eb2c1a6636ab7b9c0567edaab6"

--94eb2c1a6636ab7b9c0567edaab6
Content-Type: text/plain; charset="UTF-8"

Started this issue a few days ago thinking it was a problem with
the bluez flags. I guess it might still be given it tries to build obex
even when it's been configured that is shouldn't...

The exact issue seems to point it's a Yocto related
or might be both (hence both lists). I have configured
BlueZ to build without any flags.

In terms of BlueZ code this means:

    git clone https://git.kernel.org/pub/scm/bluetooth/bluez.git
    cd bluez
    ./bootstrap
    make

This is built correctly for x86.

Trying to replicate that to Yocto, I've extended the recipe to
not to pass any feature configuration flags:

    $ bitbake bluez5 -e | grep EXTRA_OECONF
    ...
    EXTRA_OECONF=""

Before hand did all the steps so that BlueZ is correctly pulled
from master, and no patches from Yocto are applied to it.

Building it with Yocto results in the mentioned error:

| ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
network input hog  gap scanparam deviceinfo  battery > src/builtin.h
| ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap mas
mns > obexd/src/builtin.h
| /bin/bash: obexd/src/builtin.h: No such file or directory
| Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
| make: *** [obexd/src/builtin.h] Error 1
| make: *** Waiting for unfinished jobs....
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.


It seems that for some reason in Yocto, make can't redirect into
`obexd/src/builtin.h` while
it does so successfully for native build.

Open for comments/critics on how to diagnose this.... :)

Be Well,
Alan





On Fri, Mar 16, 2018 at 5:13 PM, Luiz Augusto von Dentz <
luiz.dentz@gmail.com> wrote:

> Hi Alan,
>
> On Fri, Mar 16, 2018 at 4:50 PM, Alan Martinovic
> <alan.martinovic@senic.com> wrote:
> > Hi,
> > I'm trying to cross compile a BLE BlueZ master.
> > Am having build issues pointing to obex.
> > I'm building it using Yocto but have stripped it down
> > to the essentials:
> >
> > ./configure
> >   --build=x86_64-linux
> >   --host=arm-linux-gnueabi
> >   --target=arm-linux-gnueabi
> >   --prefix=/usr
> >   --exec_prefix=/usr
> >   --bindir=/usr/bin
> >   --sbindir=/usr/sbin
> >   --libexecdir=/usr/libexec
> >   --datadir=/usr/share
> >   --sysconfdir=/etc
> >   --sharedstatedir=/com
> >   --localstatedir=/var
> >   --libdir=/usr/lib
> >   --includedir=/usr/include
> >   --oldincludedir=/usr/include
> >   --infodir=/usr/share/info
> >   --mandir=/usr/share/man
> >   --disable-silent-rules
> >   --disable-dependency-tracking
> >   --with-libtool-sysroot=/home/alan/senic-os/build/tmp-glibc/
> work/cortexa7hf-neon-vfpv4-senic-linux-gnueabi/bluez5/5.
> 49+gitAUTOINC+969dfae9a7-r0/recipe-sysroot
> >   --enable-test
> >   --enable-datafiles
> >   --enable-library
> >   --enable-a2dp
> >   --enable-avrcp
> >   --disable-cups
> >   --enable-deprecated
> >   --disable-health
> >   --enable-hid
> >   --enable-hog
> >   --disable-midi
> >   --enable-network
> >   --disable-nfc
> >   --disable-obex
> >   --enable-client
> >   --disable-sap
> >   --disable-sixaxis
> >   --enable-systemd
> >   --disable-testing
> >   --disable-threads
> >   --enable-tools
> > make -j 16
> >
> > This results in a build error:
> >
> >  ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp  mas mns >
> > obexd/src/builtin.h
> >  /bin/bash: obexd/src/builtin.h: No such file or directory
> >  Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
> >
> >
> > Given that I don't need it for BLE, what else is required
> > besides "--disable-obex" to bypass this error?
>
> Obviously, it is a bug in the way we handle --disable-obex so we will
> need to fix it.
>
> --
> Luiz Augusto von Dentz
>

--94eb2c1a6636ab7b9c0567edaab6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Started this issue a few days ago thinking it was a proble=
m with=C2=A0<div>the bluez flags. I guess it might still be given it tries =
to build obex=C2=A0<br></div><div>even when it&#39;s been configured that i=
s shouldn&#39;t...</div><div><br></div><div>The exact issue seems to point =
it&#39;s a Yocto related</div><div>or might be both (hence both lists). I h=
ave configured=C2=A0</div><div>BlueZ to build without any flags.</div><div>=
<br></div><div>In terms of BlueZ code this means:</div><div><br></div><div>=
=C2=A0 =C2=A0 git clone=C2=A0<a href=3D"https://git.kernel.org/pub/scm/blue=
tooth/bluez.git">https://git.kernel.org/pub/scm/bluetooth/bluez.git</a></di=
v><div>=C2=A0 =C2=A0 cd bluez</div><div>=C2=A0 =C2=A0 ./bootstrap</div><div=
>=C2=A0 =C2=A0 make</div><div><br></div><div>This is built correctly for x8=
6.</div><div><br></div><div>Trying to replicate that to Yocto, I&#39;ve ext=
ended the recipe to<br></div><div>not to pass any feature configuration fla=
gs:</div><div><br></div><div>=C2=A0 =C2=A0 $ bitbake bluez5 -e | grep EXTRA=
_OECONF<br></div><div>=C2=A0 =C2=A0 ...</div><div>=C2=A0 =C2=A0=C2=A0EXTRA_=
OECONF=3D&quot;&quot;</div><div><br></div><div>Before hand did all the step=
s so that BlueZ is correctly pulled</div><div>from master, and no patches f=
rom Yocto are applied to it.</div><div><br></div><div>Building it with Yoct=
o results in the mentioned error:</div><div><br></div><div><div>| ../git/sr=
c/genbuiltin hostname wiimote autopair policy=C2=A0 =C2=A0a2dp avrcp networ=
k input hog=C2=A0 gap scanparam deviceinfo=C2=A0 battery &gt; src/builtin.h=
</div><div>| ../git/obexd/src/genbuiltin filesystem bluetooth=C2=A0 opp ftp=
 irmc pbap mas mns &gt; obexd/src/builtin.h</div><div>| /bin/bash: obexd/sr=
c/builtin.h: No such file or directory</div><div>| Makefile:9431: recipe fo=
r target &#39;obexd/src/builtin.h&#39; failed</div><div>| make: *** [obexd/=
src/builtin.h] Error 1</div><div>| make: *** Waiting for unfinished jobs...=
.</div><div>| ERROR: oe_runmake failed</div><div>| WARNING: exit code 1 fro=
m a shell command.</div></div><div><br></div><div><br></div><div>It seems t=
hat for some reason in Yocto, make can&#39;t redirect into `obexd/src/built=
in.h` while</div><div>it does so successfully for native build.</div><div><=
br></div><div>Open for comments/critics on how to diagnose this.... :)<br><=
/div><div><br></div><div>Be Well,</div><div>Alan</div><div><br></div><div><=
br></div><div><br></div><div><br></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Fri, Mar 16, 2018 at 5:13 PM, Luiz Augusto von Den=
tz <span dir=3D"ltr">&lt;<a href=3D"mailto:luiz.dentz@gmail.com" target=3D"=
_blank">luiz.dentz@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi Alan,<br>
<div><div class=3D"gmail-h5"><br>
On Fri, Mar 16, 2018 at 4:50 PM, Alan Martinovic<br>
&lt;<a href=3D"mailto:alan.martinovic@senic.com">alan.martinovic@senic.com<=
/a>&gt; wrote:<br>
&gt; Hi,<br>
&gt; I&#39;m trying to cross compile a BLE BlueZ master.<br>
&gt; Am having build issues pointing to obex.<br>
&gt; I&#39;m building it using Yocto but have stripped it down<br>
&gt; to the essentials:<br>
&gt;<br>
&gt; ./configure<br>
&gt;=C2=A0 =C2=A0--build=3Dx86_64-linux<br>
&gt;=C2=A0 =C2=A0--host=3Darm-linux-gnueabi<br>
&gt;=C2=A0 =C2=A0--target=3Darm-linux-gnueabi<br>
&gt;=C2=A0 =C2=A0--prefix=3D/usr<br>
&gt;=C2=A0 =C2=A0--exec_prefix=3D/usr<br>
&gt;=C2=A0 =C2=A0--bindir=3D/usr/bin<br>
&gt;=C2=A0 =C2=A0--sbindir=3D/usr/sbin<br>
&gt;=C2=A0 =C2=A0--libexecdir=3D/usr/libexec<br>
&gt;=C2=A0 =C2=A0--datadir=3D/usr/share<br>
&gt;=C2=A0 =C2=A0--sysconfdir=3D/etc<br>
&gt;=C2=A0 =C2=A0--sharedstatedir=3D/com<br>
&gt;=C2=A0 =C2=A0--localstatedir=3D/var<br>
&gt;=C2=A0 =C2=A0--libdir=3D/usr/lib<br>
&gt;=C2=A0 =C2=A0--includedir=3D/usr/include<br>
&gt;=C2=A0 =C2=A0--oldincludedir=3D/usr/include<br>
&gt;=C2=A0 =C2=A0--infodir=3D/usr/share/info<br>
&gt;=C2=A0 =C2=A0--mandir=3D/usr/share/man<br>
&gt;=C2=A0 =C2=A0--disable-silent-rules<br>
&gt;=C2=A0 =C2=A0--disable-dependency-tracking<br>
&gt;=C2=A0 =C2=A0--with-libtool-sysroot=3D/home/<wbr>alan/senic-os/build/tm=
p-glibc/<wbr>work/cortexa7hf-neon-vfpv4-<wbr>senic-linux-gnueabi/bluez5/5.<=
wbr>49+gitAUTOINC+969dfae9a7-r0/<wbr>recipe-sysroot<br>
&gt;=C2=A0 =C2=A0--enable-test<br>
&gt;=C2=A0 =C2=A0--enable-datafiles<br>
&gt;=C2=A0 =C2=A0--enable-library<br>
&gt;=C2=A0 =C2=A0--enable-a2dp<br>
&gt;=C2=A0 =C2=A0--enable-avrcp<br>
&gt;=C2=A0 =C2=A0--disable-cups<br>
&gt;=C2=A0 =C2=A0--enable-deprecated<br>
&gt;=C2=A0 =C2=A0--disable-health<br>
&gt;=C2=A0 =C2=A0--enable-hid<br>
&gt;=C2=A0 =C2=A0--enable-hog<br>
&gt;=C2=A0 =C2=A0--disable-midi<br>
&gt;=C2=A0 =C2=A0--enable-network<br>
&gt;=C2=A0 =C2=A0--disable-nfc<br>
&gt;=C2=A0 =C2=A0--disable-obex<br>
&gt;=C2=A0 =C2=A0--enable-client<br>
&gt;=C2=A0 =C2=A0--disable-sap<br>
&gt;=C2=A0 =C2=A0--disable-sixaxis<br>
&gt;=C2=A0 =C2=A0--enable-systemd<br>
&gt;=C2=A0 =C2=A0--disable-testing<br>
&gt;=C2=A0 =C2=A0--disable-threads<br>
&gt;=C2=A0 =C2=A0--enable-tools<br>
&gt; make -j 16<br>
&gt;<br>
&gt; This results in a build error:<br>
&gt;<br>
&gt;=C2=A0 ../git/obexd/src/genbuiltin filesystem bluetooth=C2=A0 opp ftp=
=C2=A0 mas mns &gt;<br>
&gt; obexd/src/builtin.h<br>
&gt;=C2=A0 /bin/bash: obexd/src/builtin.h: No such file or directory<br>
&gt;=C2=A0 Makefile:9431: recipe for target &#39;obexd/src/builtin.h&#39; f=
ailed<br>
&gt;<br>
&gt;<br>
&gt; Given that I don&#39;t need it for BLE, what else is required<br>
&gt; besides &quot;--disable-obex&quot; to bypass this error?<br>
<br>
</div></div>Obviously, it is a bug in the way we handle --disable-obex so w=
e will<br>
need to fix it.<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
--<br>
Luiz Augusto von Dentz<br>
</font></span></blockquote></div><br></div></div>

--94eb2c1a6636ab7b9c0567edaab6--
