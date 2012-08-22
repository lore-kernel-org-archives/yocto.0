Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37C88E01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:22:31 -0700 (PDT)
Received: by iagt4 with SMTP id t4so232768iag.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=K4A61JbRI5vkQpXDHXAN9Tx47fsKm9N4tWewakjBwGI=;
	b=mME+PuokIuuh8ct/Y65YlLcwPPvm+Y1uZryVFJpyO4s9RB5MiJcH8IA15yjCdiuOzz
	4UJCAjk7G+VK70c2hNWLTcFZXh2recdqwJxIk/PPCsNJf3PuAFPNI/h2Grl62Gx+COyL
	HKRGl7QC6vXWWqyV9hexzklzcXfeZavPS4P4IPHI9kSDUCf+0YkArcmEzOl3EGiAgVZC
	1TXOjn6u+ulqFS5lHGrMGjClDB+LZ2jIJbYBI2Ck/f8yUUAh8NSRp/Sf/SbRrx5Z8Hc/
	Yd2KF8aXRFv0XRKsUwZJ/tFvuWsoFQ1zaRfmg1iZG6c/kuUQZ0rWmPgqyO/4MjhaQ1ya
	R/Wg==
MIME-Version: 1.0
Received: by 10.50.100.129 with SMTP id ey1mr3949445igb.35.1345677750665; Wed,
	22 Aug 2012 16:22:30 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.142.134 with HTTP; Wed, 22 Aug 2012 16:22:30 -0700 (PDT)
Date: Wed, 22 Aug 2012 16:22:30 -0700
X-Google-Sender-Auth: wIFCX9NXzGzJvyCDZpRvbnNaPac
Message-ID: <CA+gsK-rG1i7A1CHgR+T7UevStRVQXku6ri6LK407hHzSqqLfUA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmghLD7foPwiKaT6lGUcYvRsX8RWEzG6Y2+cuzlyJu6G6jkpx5MDDtY0YU2ZOIu9CKg0959
Subject: [ADT] Autotools: configure using --with-libtool-sysroot
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
X-List-Received-Date: Wed, 22 Aug 2012 23:22:31 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9c114f833504c7e30433

--e89a8f3b9c114f833504c7e30433
Content-Type: text/plain; charset=ISO-8859-1

I tried, according to the documentation at
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesystem),
to configure and compile the autotooled GNU Hello World Applcation for x86
and ARM with

./configure --host=i586-poky-linux
--with-libtool-sysroot=${YOCTODIR}/adt-sysroots/x86

and

./configure
--host=armv5te-poky-linux-gnueabi
--with-libtool-sysroot=${YOCTODIR}/adt-sysroots/arm

As expected configure does not recognize --with-libtool-sysroot: configure:
WARNING: unrecognized options: --with-libtool-sysroot.

Running the suggested commands:

$ libtoolize --automake
$ aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
        [-I <dir_containing_your_project-specific_m4_macros>]
$ autoconf
$ autoheader
$ automake -a

did not make a difference (same error message). However, compiling the
application worked just fine.

Questions:

   - What exactly is --with-libtool-sysroot supposed to do?
   - What could be the reason that the steps to update the configure script
   to recognize the option do not work?

Suggestion:

   - Add --prefix to ./configure
   --host=armv5te-poky-linux-gnueabi --with-libtool-sysroot=<sysrootdir>
   --prefix=<sysrootdir>/<prefix> so that make install actually installs into
   the system root.

:rjs

--e89a8f3b9c114f833504c7e30433
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I tried, according to the documentation at=A0<a href=3D"http://www.yoctopro=
ject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesy=
stem">http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#e=
xtracting-the-root-filesystem</a>), to configure and compile the autotooled=
 GNU Hello World Applcation for x86 and ARM with<div>
<br></div><div>./configure --host=3Di586-poky-linux --with-libtool-sysroot=
=3D${YOCTODIR}/adt-sysroots/x86</div><div><br></div><div>and</div><div><br>=
</div><div>./configure --host=3Darmv5te-poky-linux-gnueabi=A0--with-libtool=
-sysroot=3D${YOCTODIR}/adt-sysroots/arm</div>
<div><br></div><div>As expected configure does not recognize --with-libtool=
-sysroot:=A0configure: WARNING: unrecognized options: --with-libtool-sysroo=
t.</div><div><br></div><div>Running the suggested commands:</div><div><br>
</div><div><pre class=3D"literallayout" style=3D"overflow:auto;color:rgb(51=
,51,51)"><font face=3D"arial, helvetica, sans-serif">$ libtoolize --automak=
e
$ aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
        [-I &lt;dir_containing_your_project-specific_m4_macros&gt;]
$ autoconf
$ autoheader
$ automake -a</font></pre><div><font face=3D"arial, helvetica, sans-serif">=
did not make a difference (same error message). However, compiling the appl=
ication worked just fine.</font></div><div><font face=3D"arial, helvetica, =
sans-serif"><br>
</font></div><div><font face=3D"arial, helvetica, sans-serif">Questions:</f=
ont></div><div><ul><li><span style=3D"font-family:arial,helvetica,sans-seri=
f">What exactly is --with-libtool-sysroot supposed to do?</span></li><li><s=
pan style=3D"font-family:arial,helvetica,sans-serif">What could be the reas=
on that the steps to update the configure script to recognize the option do=
 not work?</span></li>
</ul><div><font face=3D"arial, helvetica, sans-serif">Suggestion:</font></d=
iv></div><div><ul><li><font face=3D"arial, helvetica, sans-serif">Add --pre=
fix to=A0</font>./configure --host=3Darmv5te-poky-linux-gnueabi=A0--with-li=
btool-sysroot=3D&lt;sysrootdir&gt; --prefix=3D&lt;sysrootdir&gt;/&lt;prefix=
&gt; so that make install actually installs into the system root.</li>
</ul><div>:rjs</div></div><div><br></div></div>

--e89a8f3b9c114f833504c7e30433--
