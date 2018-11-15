Return-Path: <mike.worster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1168E00A4F; Thu, 15 Nov 2018 13:31:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mike.worster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A99B8E0095C
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 13:31:44 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id w13so5430296oiw.9
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 13:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6RcsT3kZvFhR/JIKnu73rXO9FZ9JxqrilF+5lndMqeI=;
	b=MRavn9sjz1d0fAtrcD+csjI4c8BM62/ON1jYSBSjZhtUSGktGSjvZ0Agd7ApB6iN08
	YzVrJ2AUC7gXnXZffso6EJ7n79/IwlQAOFDMAOxxRRVHT0rEztWH8SyqRMyO1vobQ3R4
	M+tl5Bp3lCgQ1rHQgWuCcjfkmj8M4ZiszxyS6lJKjHqCGdZ73gwreyu1tFPOr8X/RVbz
	gIJlP1ZxOCv16keTdAfmtkKs48nTA92UoErU3GxwUM5lmZ7lXJfsrYjxyL8Ap6/nfaSW
	+nFYMq2nRlF4khHkmWrB9U9c/gW6vqUoOMafivt9BxtqnlyvyFNGySQ7xEtrLwpkwQ39
	Yv4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6RcsT3kZvFhR/JIKnu73rXO9FZ9JxqrilF+5lndMqeI=;
	b=HidnMDDskODJDHtWurd4rx348gLA8Gnhhn4EjIhuqzofHpNAeeavmwqtFCp2DX+tSX
	2qzJTBVJ8mOpOOVvpztU0aqXpq9kxFtXFgostJVvcwaRlZRfvxyHh0KmkMDgPE1INTSe
	IBa4NgqaenUoJClLhTmSRIimz7yeIHtR2YDGDEFeq+leT+/npxu8irPBNxyq0wjeuNfa
	zKZWkvWY4zk49NzowgVZbbOLK9Zy8y0s6HbtNlPNWBHqoYkBniNoXkHKftfH0kfj1fk9
	tYtydKLMutfIIoZ9+b4TD4p02o0r0FPoynAd5a0fFv515ub6OPfuWXIYbAMvv6l1pynG
	bQYQ==
X-Gm-Message-State: AGRZ1gI/MZ7QdpJf8NWV2T/fDWm7z2e00l6clpWtMQrHRkWmaXXAIOoo
	oYOFuYFBqsq+pjs2wKhWG1I01usOdLgm01tn3fJb2Qky
X-Google-Smtp-Source: AJdET5dUOMrLPEmSyaFGLPAds+K768gvPqEwTsljXCvDG5enoMWkNarNI3ko/a6XGFc2vpTyGgTY/J/oTsrAN7PLJLM=
X-Received: by 2002:aca:da0b:: with SMTP id
	r11-v6mr4779003oig.35.1542317503519; 
	Thu, 15 Nov 2018 13:31:43 -0800 (PST)
MIME-Version: 1.0
From: Mike Worster <mike.worster@gmail.com>
Date: Thu, 15 Nov 2018 15:31:32 -0600
Message-ID: <CAE5DP0Ma1B4qs6pQJqW9EfxhvZOwSZz8kbEdDK-VYTkf9=qmxQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How do I enabled Fortran support in Sumo?
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
X-List-Received-Date: Thu, 15 Nov 2018 21:31:46 -0000
Content-Type: multipart/alternative; boundary="000000000000eda144057abac6df"

--000000000000eda144057abac6df
Content-Type: text/plain; charset="UTF-8"

I'm trying to get Fortran support (gfortran and libgfortran) enabled in a
Yocto Sumo build.

Based on advice I got from this site:
https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-build.html

I have enabled fortran in my local.conf via adding:

    FORTRAN_forcevariable = ",fortran"

And I have created a gcc-runtime_7.3.bbappend file containing:

    RUNTIMETARGET += "libgfortran"

And I have added gfortran to my image:

    FORTRAN_TOOLS = " \
        gfortran \
        gfortran-symlinks \
        libgfortran \
        libgfortran-dev \
     "

    IMAGE_INSTALL += " \
        ${FORTRAN_TOOLS} \
     "
After all these modifications when I go to build I see the following error:

|
../../../../../../../../work-shared/gcc-7.3.0-r0/gcc-7.3.0/libgfortran/runtime/backtrace.c:36:10:
fatal error: backtrace-supported.h: No such file or directory
|  #include "backtrace-supported.h"
|           ^~~~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| Makefile:2310: recipe for target 'backtrace.lo' failed
| make[1]: *** [backtrace.lo] Error 1

I've found I can get past this by updating
poky/meta/recipes-devtools/gcc/gcc-7.3.inc with the following line:

    CFLAGS += " -I../../libbacktrace "

The build then dies later here:

| libtool: link: cannot find the library `../libbacktrace/libbacktrace.la'
or unhandled argument `../libbacktrace/libbacktrace.la'
| Makefile:1364: recipe for target 'libgfortran.la' failed
| make[1]: *** [libgfortran.la] Error 1

I can resolve that by adjusting the Makefile found at:
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/Makefile.
The following adjustment:

     $(LTLDFLAGS) $(LIBQUADLIB) ../../libbacktrace/libbacktrace.la \

gets past the failure to find the library (one directory up). Then running
the build again, there is the real problem:

| ../../libbacktrace/.libs/libbacktrace.a: member
../../libbacktrace/.libs/libbacktrace.a(atomic.o) in archive is not an
object
| collect2: error: ld returned 1 exit status
| ERROR: oe_runmake failed
| Makefile:1364: recipe for target 'libgfortran.la' failed
| make[1]: *** [libgfortran.la] Error 1

As far as I can tell, the archive's elements (atomic.o being first) are
being built for x86 instead of ARM, and thus they are not being recognized
as objects.

Does anyone have input on this issue? Any ideas why this is broken, or how
to resolve this?

-Mike

--000000000000eda144057abac6df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>I&#39;m t=
rying to get Fortran support (gfortran and libgfortran) enabled in a Yocto =
Sumo build. <br></div><div><br></div><div>Based on advice I got from this s=
ite: <a href=3D"https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto=
-build.html">https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-bu=
ild.html</a><br></div><div><br></div><div>I have enabled fortran in my loca=
l.conf via adding:</div><div><br></div><div>=C2=A0=C2=A0=C2=A0 FORTRAN_forc=
evariable =3D &quot;,fortran&quot;<br></div><div><br></div><div>And I have =
created a gcc-runtime_7.3.bbappend file containing:</div><div><br></div><di=
v>=C2=A0=C2=A0=C2=A0 RUNTIMETARGET +=3D &quot;libgfortran&quot;</div><div><=
br></div><div>And I have added gfortran to my image:</div><div><br></div><d=
iv>=C2=A0=C2=A0=C2=A0 FORTRAN_TOOLS =3D &quot; \<br>=C2=A0 =C2=A0=C2=A0 =C2=
=A0=C2=A0 gfortran \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gfortran=
-symlinks \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libgfortran \<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libgfortran-dev \<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 &quot;<br><br>=C2=A0=C2=A0=C2=A0 IMAGE_INSTALL +=3D &quot; =
\<br>=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 ${FORTRAN_TOOLS} \<br>=C2=A0 =C2=A0=
=C2=A0 &quot;<br></div><div>After all these modifications when I go to buil=
d I see the following error:</div><div><br></div><div>| ../../../../../../.=
./../work-shared/gcc-7.3.0-r0/gcc-7.3.0/libgfortran/runtime/backtrace.c:36:=
10: fatal error: backtrace-supported.h: No such file or directory<br>|=C2=
=A0 #include &quot;backtrace-supported.h&quot;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~<br>| compilati=
on terminated.<br>| Makefile:2310: recipe for target &#39;backtrace.lo&#39;=
 failed<br>| make[1]: *** [backtrace.lo] Error 1<br></div><div><br></div><d=
iv>I&#39;ve found I can get past this by updating poky/meta/recipes-devtool=
s/gcc/gcc-7.3.inc with the following line:</div><div><br></div><div>=C2=A0 =
=C2=A0 CFLAGS=C2=A0+=3D &quot; -I../../libbacktrace &quot;</div><div><br></=
div><div> The build then dies later here:</div><div><br></div><div>| libtoo=
l: link: cannot find the library `../libbacktrace/<a href=3D"http://libback=
trace.la">libbacktrace.la</a>&#39; or unhandled argument `../libbacktrace/<=
a href=3D"http://libbacktrace.la">libbacktrace.la</a>&#39;<br>| Makefile:13=
64: recipe for target &#39;<a href=3D"http://libgfortran.la">libgfortran.la=
</a>&#39; failed<br>| make[1]: *** [<a href=3D"http://libgfortran.la">libgf=
ortran.la</a>] Error 1<br></div><div><br></div><div>I can resolve that by a=
djusting the Makefile found at: tmp/work/cortexa9hf-neon-poky-linux-gnueabi=
/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.arm-poky-linux-gnueabi.arm-poky-linux=
-gnueabi/arm-poky-linux-gnueabi/libgfortran/Makefile. The following adjustm=
ent:</div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 $(LTLDFLAGS) $(LIBQU=
ADLIB) ../../libbacktrace/<a href=3D"http://libbacktrace.la">libbacktrace.l=
a</a> \</div><div><br></div><div>gets past the failure to find the library =
(one directory up). Then running the build again, there is the real problem=
:<br></div><div><br></div><div>| ../../libbacktrace/.libs/libbacktrace.a: m=
ember ../../libbacktrace/.libs/libbacktrace.a(atomic.o) in archive is not a=
n object<br>| collect2: error: ld returned 1 exit status<br>| ERROR: oe_run=
make failed<br>| Makefile:1364: recipe for target &#39;<a href=3D"http://li=
bgfortran.la">libgfortran.la</a>&#39; failed<br>| make[1]: *** [<a href=3D"=
http://libgfortran.la">libgfortran.la</a>] Error 1</div><div><br></div><div=
>As far as I can tell, the archive&#39;s elements (atomic.o being first) ar=
e being built for x86 instead of ARM, and thus they are not being recognize=
d as objects. <br></div><div><br></div><div>Does anyone have input on this =
issue? Any ideas why this is broken, or how to resolve this?</div><div><br>=
</div><div>-Mike<br></div></div></div></div></div></div></div></div></div>

--000000000000eda144057abac6df--
