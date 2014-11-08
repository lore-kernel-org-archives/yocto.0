Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42734E00830; Sat,  8 Nov 2014 04:29:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6810E007BA
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 04:29:33 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id a13so14236286igq.11
	for <yocto@yoctoproject.org>; Sat, 08 Nov 2014 04:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=2Kn+b0mzjFYv3ng6oRweb63nRrmxR3mKPGjtVyTtjH0=;
	b=mEHgHytTXjbXINK6Tjmt1IBxCTtvmeKuNnXIhVW4y0cRhc5I/Aei78+pcpuNyCFKFi
	0Hje0QCJ+HLiQ04M2sI5LBzwnU+LGwx4F5pvtM0MiwsSqqkV7N8xkJ9lU5i8lnG0Ob8+
	3umM4WAJ1GSmrTqh/0In31q/12wMZwgh+ZvhqSlWZstkcwnWEqCngnzm+lEsVkJy5oJc
	avrXRtGUnxragbamuQ2L0aAKV38oEfKjVA40kG4e2GNwYFl1d34MeTNIdXRCGqbTEQZd
	DFKpl4t8uWski3K36u62gDg5lxF+9SdJj1KTYhR56LjPS66ZfaQGaqVDGsn3mAl8xyou
	Umlg==
MIME-Version: 1.0
X-Received: by 10.107.33.132 with SMTP id h126mr1002236ioh.92.1415449772538;
	Sat, 08 Nov 2014 04:29:32 -0800 (PST)
Received: by 10.64.32.8 with HTTP; Sat, 8 Nov 2014 04:29:32 -0800 (PST)
Received: by 10.64.32.8 with HTTP; Sat, 8 Nov 2014 04:29:32 -0800 (PST)
In-Reply-To: <1415448444.25200.YahooMailNeo@web193601.mail.sg3.yahoo.com>
References: <1415448444.25200.YahooMailNeo@web193601.mail.sg3.yahoo.com>
Date: Sat, 8 Nov 2014 13:29:32 +0100
Message-ID: <CAALGJZbqS+UKJvs8O2i9sF0eB1DcAhgtxG6P=qjEp6O9rKs0wQ@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: do_install() is not getting called
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
X-List-Received-Date: Sat, 08 Nov 2014 12:29:46 -0000
Content-Type: multipart/alternative; boundary=001a1140f5c6e3c4730507581432

--001a1140f5c6e3c4730507581432
Content-Type: text/plain; charset=UTF-8

Am 08.11.2014 13:10 schrieb "hari kumar" <harikumar523@yahoo.co.in>:
>
> Hi All,
>
> I am creating a new recipe in bsp layer. So I created a bb file inside
the recipe.
> Then from the build directory, I am able to successfully compile the
source files and was able to create the library ( bitbake -c compile -f
<package_name> ). This is a makefile based package and I don't have an
install target in my Makefile. So I am writing a do_install in my bb file
and I am doing install there. I can see that do_compile task is getting
called. But do_install ( which was overridden in my bb file ) task is not
called and the images and libraries are not installed in the sysroots
directory.
>
By running bitbake -f -c compile the do_install is not called. Either you
call bitbacke package_name or to force install butbake -c install.

Sometime a clean or cleanall before a compile also helps. This is needed if
you already had a successfull run.

Regards
Christian
> Bitbake Snippet :
>
> SRC_URI = "file://src/"
>
> PV = "1.0"
>
> S = "${WORKDIR}/src/"
>
> EXTRA_OEMAKE = "CFLAGS=--sysroot=${PKG_CONFIG_SYSROOT_DIR}
'LDFLAGS=-lpthread -lrt ${LDFLAGS}'"
>
> do_install () {
> oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir}
INCLUDEDIR=${includedir}
>        install -d ${D}${includedir}/
>
>        for f in ${S}/*.h; do
>            install -m 0644 $f ${D}${includedir}/
>        done
>
> }
> PARALLEL_MAKE = ""
> #BBCLASSEXTEND = "native"
>
> Could you please suggest why do_install is not getting called for this
Makefile based system ?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1140f5c6e3c4730507581432
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 08.11.2014 13:10 schrieb &quot;hari kumar&quot; &lt;<a href=3D"mailto:ha=
rikumar523@yahoo.co.in">harikumar523@yahoo.co.in</a>&gt;:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I am creating a new recipe in bsp layer. So I created a bb file inside=
 the recipe.<br>
&gt; Then from the build directory, I am able to successfully compile the s=
ource files and was able to create the library ( bitbake -c compile -f &lt;=
package_name&gt; ). This is a makefile based package and I don&#39;t have a=
n install target in my Makefile. So I am writing a do_install in my bb file=
 and I am doing install there. I can see that do_compile task is getting ca=
lled. But do_install ( which was overridden in my bb file ) task is not cal=
led and the images and libraries are not installed in the sysroots director=
y.<br>
&gt;<br>
By running bitbake -f -c compile the do_install is not called. Either you c=
all bitbacke package_name or to force install butbake -c install.</p>
<p dir=3D"ltr">Sometime a clean or cleanall before a compile also helps. Th=
is is needed if you already had a successfull run.</p>
<p dir=3D"ltr">Regards<br>
Christian<br>
&gt; Bitbake Snippet :<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://src/&quot;<br>
&gt;<br>
&gt; PV =3D &quot;1.0&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/src/&quot;<br>
&gt;<br>
&gt; EXTRA_OEMAKE =3D &quot;CFLAGS=3D--sysroot=3D${PKG_CONFIG_SYSROOT_DIR} =
&#39;LDFLAGS=3D-lpthread -lrt ${LDFLAGS}&#39;&quot;<br>
&gt;<br>
&gt; do_install () {<br>
&gt; oe_runmake install DESTDIR=3D${D} SBINDIR=3D${sbindir} MANDIR=3D${mand=
ir} =C2=A0 =C2=A0 INCLUDEDIR=3D${includedir}<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${includedir}/<br>
&gt;<br>
&gt; 	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for f in ${S}/*.h; do<br>
&gt; 	=C2=A0=C2=A0=C2=A0=C2=A0 	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0=
644 $f ${D}${includedir}/<br>
&gt; 	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 done<br>
&gt;<br>
&gt; }<br>
&gt; PARALLEL_MAKE =3D &quot;&quot;<br>
&gt; #BBCLASSEXTEND =3D &quot;native&quot;<br>
&gt;<br>
&gt; Could you please suggest why do_install is not getting called for this=
 Makefile based system ?=C2=A0<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a1140f5c6e3c4730507581432--
