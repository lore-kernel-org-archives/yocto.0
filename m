Return-Path: <mike.worster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D75B7E00A1A; Thu, 15 Nov 2018 14:17:27 -0800 (PST)
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
	*      [209.85.210.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9A8E00901
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 14:17:26 -0800 (PST)
Received: by mail-ot1-f68.google.com with SMTP id 81so19545894otj.2
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 14:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dVHf8XTnbAnvgVV0xnpbytjNCw8ceL5h841YrfxT8Tc=;
	b=mFQTmXiYk3RB7tb2Cel26s3M7pPccj7l3EJDcP1Xj5SWuSkV2jpFQt6I/Apv8JK2fY
	Z6y0HPiV98/AEBJ6Ajfo8NECEqzZ0YuD+kN8EPrY7yE69T3DC5ZU2VBw6us4lazBPr62
	lCtLQFdLrJPefSaVukWSRKGQCyXGLiVhjBGsSslsGcATvbJh8UgywEcuHZXphHQ4CNY6
	JtGhTaCdJ0SmmXtQEFUb7fcW9gcRwORFdd/BwDQU3JaQFljvupnP0ROt4j+RYTMKyBkY
	ZFsYErwqKiRAbSsFo8U95ZIv+A2sCfzXzy0orLCAVZcjmrhYySJ2bll+GS2/y1y+MNo3
	q9ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dVHf8XTnbAnvgVV0xnpbytjNCw8ceL5h841YrfxT8Tc=;
	b=moR6hyJQ6YPIJrwIIxdmpgrytEMONMbKhFdetOV8J2khZzuENK5ND/clTdPYK+9Oh/
	FG0XdYC6qh35ZmPHGahzS7NEXAiXjwT0FRhf5CoF6t922RcyEQVCrXkJFDUA0djCzuyE
	y7ZI2eqWI2kTZQseUWX8lSIiVdpWM177aemAkK0+RCnzvn6fHY5q8mFNH6wFHRU+YgSJ
	L+FrvkLh3A+cSGSSOCDXnskD2RBpSG7VPTSGSmNZqVNcDQLBVMfGmhn5LQpnY4cSvJVS
	+80wuZPC8t39MU+yZ/bMWaZX2Nq8W7sdXpspmWbeQl1owx0IvgZXSzjS7pOxggNipXuA
	hbHA==
X-Gm-Message-State: AGRZ1gKT6L3ESh87PnEDSpI0jDyz/SreQO0sPXCa3iWLOG9ApZ85jg8b
	ekmcetBATTUAcmCLWHteCF+aebZAnEJ4ydWsLiQ=
X-Google-Smtp-Source: AJdET5fmMBmkrVo0kGvV+tUkzo5Jw0Nvh1r1gKLOuGN0vvXBmEwV4Zpf3T+phsf3haqszQb1EoCagIMafWRJaRQm4t8=
X-Received: by 2002:a9d:4a21:: with SMTP id h30mr4907954otf.280.1542320246084; 
	Thu, 15 Nov 2018 14:17:26 -0800 (PST)
MIME-Version: 1.0
References: <CAE5DP0Ma1B4qs6pQJqW9EfxhvZOwSZz8kbEdDK-VYTkf9=qmxQ@mail.gmail.com>
	<ca6ec297-4ea2-0a09-7950-00d109828224@gmail.com>
In-Reply-To: <ca6ec297-4ea2-0a09-7950-00d109828224@gmail.com>
From: Mike Worster <mike.worster@gmail.com>
Date: Thu, 15 Nov 2018 16:17:14 -0600
Message-ID: <CAE5DP0Npkc5y5oBwzMa27rXWhSeyi96E+JyyNKPkZzHiFqBHyg@mail.gmail.com>
To: akuster808@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: How do I enabled Fortran support in Sumo?
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
X-List-Received-Date: Thu, 15 Nov 2018 22:17:27 -0000
Content-Type: multipart/alternative; boundary="00000000000065d793057abb6aff"

--00000000000065d793057abb6aff
Content-Type: text/plain; charset="UTF-8"

Thanks for your input. Unfortunately adding your suggested line:
RUNTIMETARGET_append_pn-gcc-runtime = " libquadmath"
doesn't seem to change the build error for me.

Odd thing is when I look at the output of the RUNTIMETARGET variable it
doesn't appear to be set:
$ bitbake -e libgfortran | grep "RUNTIMETARGET"
# $RUNTIMETARGET
RUNTIMETARGET=""

On Thu, Nov 15, 2018 at 3:42 PM akuster808 <akuster808@gmail.com> wrote:

>
>
> On 11/15/18 1:31 PM, Mike Worster wrote:
>
> I'm trying to get Fortran support (gfortran and libgfortran) enabled in a
> Yocto Sumo build.
>
> Based on advice I got from this site:
> https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-build.html
>
> I have enabled fortran in my local.conf via adding:
>
>     FORTRAN_forcevariable = ",fortran"
>
> And I have created a gcc-runtime_7.3.bbappend file containing:
>
>     RUNTIMETARGET += "libgfortran"
>
>
> I recently ran into something similar. I ended up using in my local.conf
> FORTRAN_forcevariable = ",fortran"
> RUNTIMETARGET_append_pn-gcc-runtime = " libquadmath" <<<--- maybe key??
>
> and in one recipe I had a depends on "libgfortran" and is seems to build
> fine.
>
> - armin
>
>
> And I have added gfortran to my image:
>
>     FORTRAN_TOOLS = " \
>         gfortran \
>         gfortran-symlinks \
>         libgfortran \
>         libgfortran-dev \
>      "
>
>     IMAGE_INSTALL += " \
>         ${FORTRAN_TOOLS} \
>      "
> After all these modifications when I go to build I see the following error:
>
> |
> ../../../../../../../../work-shared/gcc-7.3.0-r0/gcc-7.3.0/libgfortran/runtime/backtrace.c:36:10:
> fatal error: backtrace-supported.h: No such file or directory
> |  #include "backtrace-supported.h"
> |           ^~~~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
> | Makefile:2310: recipe for target 'backtrace.lo' failed
> | make[1]: *** [backtrace.lo] Error 1
>
> I've found I can get past this by updating
> poky/meta/recipes-devtools/gcc/gcc-7.3.inc with the following line:
>
>     CFLAGS += " -I../../libbacktrace "
>
> The build then dies later here:
>
> | libtool: link: cannot find the library `../libbacktrace/libbacktrace.la'
> or unhandled argument `../libbacktrace/libbacktrace.la'
> | Makefile:1364: recipe for target 'libgfortran.la' failed
> | make[1]: *** [libgfortran.la] Error 1
>
> I can resolve that by adjusting the Makefile found at:
> tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/Makefile.
> The following adjustment:
>
>      $(LTLDFLAGS) $(LIBQUADLIB) ../../libbacktrace/libbacktrace.la \
>
> gets past the failure to find the library (one directory up). Then running
> the build again, there is the real problem:
>
> | ../../libbacktrace/.libs/libbacktrace.a: member
> ../../libbacktrace/.libs/libbacktrace.a(atomic.o) in archive is not an
> object
> | collect2: error: ld returned 1 exit status
> | ERROR: oe_runmake failed
> | Makefile:1364: recipe for target 'libgfortran.la' failed
> | make[1]: *** [libgfortran.la] Error 1
>
> As far as I can tell, the archive's elements (atomic.o being first) are
> being built for x86 instead of ARM, and thus they are not being recognized
> as objects.
>
> Does anyone have input on this issue? Any ideas why this is broken, or how
> to resolve this?
>
> -Mike
>
>
>

--00000000000065d793057abb6aff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks for your input. Unfortunately=
 adding your suggested line:</div><div>RUNTIMETARGET_append_pn-gcc-runtime =
=3D &quot; libquadmath&quot;</div><div>doesn&#39;t seem to change the build=
 error for me. <br></div><div><br></div><div>Odd thing is when I look at th=
e output of the RUNTIMETARGET variable it doesn&#39;t appear to be set:</di=
v><div>$ bitbake -e libgfortran | grep &quot;RUNTIMETARGET&quot;<br># $RUNT=
IMETARGET<br>RUNTIMETARGET=3D&quot;&quot;<br></div></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">On Thu, Nov 15, 2018 at 3:42 PM akuster=
808 &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"m_3094076808578990684moz-cite-prefix">On 11/15/18 1:31 PM=
, Mike Worster
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>I&#39;m trying to get Fortran support (gfortran
                        and libgfortran) enabled in a Yocto Sumo build.
                        <br>
                      </div>
                      <div><br>
                      </div>
                      <div>Based on advice I got from this site: <a href=3D=
"https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-build.html" ta=
rget=3D"_blank">https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto=
-build.html</a><br>
                      </div>
                      <div><br>
                      </div>
                      <div>I have enabled fortran in my local.conf via
                        adding:</div>
                      <div><br>
                      </div>
                      <div>=C2=A0=C2=A0=C2=A0 FORTRAN_forcevariable =3D &qu=
ot;,fortran&quot;<br>
                      </div>
                      <div><br>
                      </div>
                      <div>And I have created a gcc-runtime_7.3.bbappend
                        file containing:</div>
                      <div><br>
                      </div>
                      <div>=C2=A0=C2=A0=C2=A0 RUNTIMETARGET +=3D &quot;libg=
fortran&quot;</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I recently ran into something similar. I ended up using in my
    local.conf<br>
    FORTRAN_forcevariable =3D &quot;,fortran&quot;<br>
    RUNTIMETARGET_append_pn-gcc-runtime =3D &quot; libquadmath&quot; &lt;&l=
t;&lt;---
    maybe key??<br>
    <br>
    and in one recipe I had a depends on &quot;libgfortran&quot; and is see=
ms to
    build fine.<br>
    <br>
    - armin<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div><br>
                      </div>
                      <div>And I have added gfortran to my image:</div>
                      <div><br>
                      </div>
                      <div>=C2=A0=C2=A0=C2=A0 FORTRAN_TOOLS =3D &quot; \<br=
>
                        =C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 gfortran \<br>
                        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gfortran=
-symlinks \<br>
                        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libgfort=
ran \<br>
                        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libgfort=
ran-dev \<br>
                        =C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br>
                        <br>
                        =C2=A0=C2=A0=C2=A0 IMAGE_INSTALL +=3D &quot; \<br>
                        =C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 ${FORTRAN_TOOLS} \=
<br>
                        =C2=A0 =C2=A0=C2=A0 &quot;<br>
                      </div>
                      <div>After all these modifications when I go to
                        build I see the following error:</div>
                      <div><br>
                      </div>
                      <div>|
../../../../../../../../work-shared/gcc-7.3.0-r0/gcc-7.3.0/libgfortran/runt=
ime/backtrace.c:36:10:
                        fatal error: backtrace-supported.h: No such file
                        or directory<br>
                        |=C2=A0 #include &quot;backtrace-supported.h&quot;<=
br>
                        |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~<br>
                        | compilation terminated.<br>
                        | Makefile:2310: recipe for target
                        &#39;backtrace.lo&#39; failed<br>
                        | make[1]: *** [backtrace.lo] Error 1<br>
                      </div>
                      <div><br>
                      </div>
                      <div>I&#39;ve found I can get past this by updating
                        poky/meta/recipes-devtools/gcc/gcc-7.3.inc with
                        the following line:</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0 CFLAGS=C2=A0+=3D &quot; -I../../li=
bbacktrace &quot;</div>
                      <div><br>
                      </div>
                      <div> The build then dies later here:</div>
                      <div><br>
                      </div>
                      <div>| libtool: link: cannot find the library
                        `../libbacktrace/<a href=3D"http://libbacktrace.la"=
 target=3D"_blank">libbacktrace.la</a>&#39; or
                        unhandled argument `../libbacktrace/<a href=3D"http=
://libbacktrace.la" target=3D"_blank">libbacktrace.la</a>&#39;<br>
                        | Makefile:1364: recipe for target &#39;<a href=3D"=
http://libgfortran.la" target=3D"_blank">libgfortran.la</a>&#39;
                        failed<br>
                        | make[1]: *** [<a href=3D"http://libgfortran.la" t=
arget=3D"_blank">libgfortran.la</a>]
                        Error 1<br>
                      </div>
                      <div><br>
                      </div>
                      <div>I can resolve that by adjusting the Makefile
                        found at:
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-runtime/7.3.0-r0/gcc-7.3.0/=
build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/=
libgfortran/Makefile.
                        The following adjustment:</div>
                      <div><br>
                      </div>
                      <div>=C2=A0=C2=A0=C2=A0=C2=A0 $(LTLDFLAGS) $(LIBQUADL=
IB)
                        ../../libbacktrace/<a href=3D"http://libbacktrace.l=
a" target=3D"_blank">libbacktrace.la</a> \</div>
                      <div><br>
                      </div>
                      <div>gets past the failure to find the library
                        (one directory up). Then running the build
                        again, there is the real problem:<br>
                      </div>
                      <div><br>
                      </div>
                      <div>| ../../libbacktrace/.libs/libbacktrace.a:
                        member
                        ../../libbacktrace/.libs/libbacktrace.a(atomic.o)
                        in archive is not an object<br>
                        | collect2: error: ld returned 1 exit status<br>
                        | ERROR: oe_runmake failed<br>
                        | Makefile:1364: recipe for target &#39;<a href=3D"=
http://libgfortran.la" target=3D"_blank">libgfortran.la</a>&#39;
                        failed<br>
                        | make[1]: *** [<a href=3D"http://libgfortran.la" t=
arget=3D"_blank">libgfortran.la</a>]
                        Error 1</div>
                      <div><br>
                      </div>
                      <div>As far as I can tell, the archive&#39;s elements
                        (atomic.o being first) are being built for x86
                        instead of ARM, and thus they are not being
                        recognized as objects. <br>
                      </div>
                      <div><br>
                      </div>
                      <div>Does anyone have input on this issue? Any
                        ideas why this is broken, or how to resolve
                        this?</div>
                      <div><br>
                      </div>
                      <div>-Mike<br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"m_3094076808578990684mimeAttachmentHeader"></field=
set>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000065d793057abb6aff--
