Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB2CCE00A4F; Thu, 15 Nov 2018 13:42:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38EB8E0095C
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 13:42:18 -0800 (PST)
Received: by mail-pf1-f176.google.com with SMTP id v9-v6so10321306pff.2
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 13:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=NerWKe0t//fPzvD75pGUdfiMx5PtsQ8yI+GrlS81nWQ=;
	b=u4qLZ4z4MRCJaCNb7HUwETaI7CJgSvznDetJ8Oj4wHcZB0oxaimVvrSX7DPGterGBZ
	cTf+e7oWrkE1Z/Mm7eq+XCkIuKpXXoc0OAP0jfjuuS4aacq98Azw9aIYkZgtwBYwWBDw
	uQ8ASYNvGS2wi4E7cAqeYBwVrvcmDIt5reT5hOdGF8FRb782RPqJ+P0CmmuxGvtZ8EkV
	jOGeEVZEny1JdPDOr9U3uEYgBmQLMZn5g4EaPMQrXFjMntwhW6q1MGzsJJMWTPZkiKvN
	jQki8D6FNaboU90H5JBsBy3w/ymzyT/6pK7Us2rhwp6/ogiUH4x7yl5n82qUvGYA+oTh
	pgBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=NerWKe0t//fPzvD75pGUdfiMx5PtsQ8yI+GrlS81nWQ=;
	b=IwouZj02bpKYump16PbHHuOQJ++3UOlL+VVnTegoOQeBpXDn6jInfQHi9GNARL34aR
	b021Qf5qFYbw+kH4lHJyPUsAVMP3lZuhE/JY56TGwmwDCKpHXNK0RkROUMGygrMMaNF7
	CZRJgm1p6X+/lH6wA/cEVp8IPKv7Etl/wSVgZMVkuSGk+PNHErUQM/KpS8qkB3LQEnAX
	z0ugSIHEeOoxe+6DlBfpaIoqINx8Z8ARemqknAVhNxf7uDqtD6Cw5+YJKtG6FsKGX6sX
	2hFBwXNvyuBAafqGbqb+uAwBQ1auBvUO36cbeXYRYhW2e0N3esXr6W1EWeSgsGkUOFTU
	HlIA==
X-Gm-Message-State: AGRZ1gKJ/lTtE8/BK5undFiijMjg+Yv1ehFMMYm5Emmtz46UWRAkmXVJ
	/e8jlrzZcM/mx0L/8+CBSr19BFBN
X-Google-Smtp-Source: AJdET5e1pU/XRhr1/+rRwWmfO9PNSI5BOXh4qA6U2lNxH+7Z43E9IOl/BE5af5meNGhpPATOioAOEw==
X-Received: by 2002:a62:5906:: with SMTP id n6mr4745872pfb.128.1542318137327; 
	Thu, 15 Nov 2018 13:42:17 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:ad7f:56cd:6813:1de5?
	([2601:202:4180:c33:ad7f:56cd:6813:1de5])
	by smtp.gmail.com with ESMTPSA id
	c13sm7206630pfo.121.2018.11.15.13.42.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Nov 2018 13:42:16 -0800 (PST)
To: Mike Worster <mike.worster@gmail.com>, yocto@yoctoproject.org
References: <CAE5DP0Ma1B4qs6pQJqW9EfxhvZOwSZz8kbEdDK-VYTkf9=qmxQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <ca6ec297-4ea2-0a09-7950-00d109828224@gmail.com>
Date: Thu, 15 Nov 2018 13:42:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAE5DP0Ma1B4qs6pQJqW9EfxhvZOwSZz8kbEdDK-VYTkf9=qmxQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 15 Nov 2018 21:42:18 -0000
Content-Type: multipart/alternative;
	boundary="------------99AFB0B40AF6CB88CE85D8FE"
Content-Language: en-US

--------------99AFB0B40AF6CB88CE85D8FE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 11/15/18 1:31 PM, Mike Worster wrote:
> I'm trying to get Fortran support (gfortran and libgfortran) enabled
> in a Yocto Sumo build.
>
> Based on advice I got from this site:
> https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-build.html
>
> I have enabled fortran in my local.conf via adding:
>
>     FORTRAN_forcevariable = ",fortran"
>
> And I have created a gcc-runtime_7.3.bbappend file containing:
>
>     RUNTIMETARGET += "libgfortran"

I recently ran into something similar. I ended up using in my local.conf
FORTRAN_forcevariable = ",fortran"
RUNTIMETARGET_append_pn-gcc-runtime = " libquadmath" <<<--- maybe key??

and in one recipe I had a depends on "libgfortran" and is seems to build
fine.

- armin

>
> And I have added gfortran to my image:
>
>     FORTRAN_TOOLS = " \
>         gfortran \
>         gfortran-symlinks \
>         libgfortran \
>         libgfortran-dev \
>      "
>
>     IMAGE_INSTALL += " \
>         ${FORTRAN_TOOLS} \
>      "
> After all these modifications when I go to build I see the following
> error:
>
> |
> ../../../../../../../../work-shared/gcc-7.3.0-r0/gcc-7.3.0/libgfortran/runtime/backtrace.c:36:10:
> fatal error: backtrace-supported.h: No such file or directory
> |  #include "backtrace-supported.h"
> |           ^~~~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
> | Makefile:2310: recipe for target 'backtrace.lo' failed
> | make[1]: *** [backtrace.lo] Error 1
>
> I've found I can get past this by updating
> poky/meta/recipes-devtools/gcc/gcc-7.3.inc with the following line:
>
>     CFLAGS += " -I../../libbacktrace "
>
> The build then dies later here:
>
> | libtool: link: cannot find the library
> `../libbacktrace/libbacktrace.la <http://libbacktrace.la>' or
> unhandled argument `../libbacktrace/libbacktrace.la
> <http://libbacktrace.la>'
> | Makefile:1364: recipe for target 'libgfortran.la
> <http://libgfortran.la>' failed
> | make[1]: *** [libgfortran.la <http://libgfortran.la>] Error 1
>
> I can resolve that by adjusting the Makefile found at:
> tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/Makefile.
> The following adjustment:
>
>      $(LTLDFLAGS) $(LIBQUADLIB) ../../libbacktrace/libbacktrace.la
> <http://libbacktrace.la> \
>
> gets past the failure to find the library (one directory up). Then
> running the build again, there is the real problem:
>
> | ../../libbacktrace/.libs/libbacktrace.a: member
> ../../libbacktrace/.libs/libbacktrace.a(atomic.o) in archive is not an
> object
> | collect2: error: ld returned 1 exit status
> | ERROR: oe_runmake failed
> | Makefile:1364: recipe for target 'libgfortran.la
> <http://libgfortran.la>' failed
> | make[1]: *** [libgfortran.la <http://libgfortran.la>] Error 1
>
> As far as I can tell, the archive's elements (atomic.o being first)
> are being built for x86 instead of ARM, and thus they are not being
> recognized as objects.
>
> Does anyone have input on this issue? Any ideas why this is broken, or
> how to resolve this?
>
> -Mike
>


--------------99AFB0B40AF6CB88CE85D8FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 11/15/18 1:31 PM, Mike Worster
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAE5DP0Ma1B4qs6pQJqW9EfxhvZOwSZz8kbEdDK-VYTkf9=qmxQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div>I'm trying to get Fortran support (gfortran
                        and libgfortran) enabled in a Yocto Sumo build.
                        <br>
                      </div>
                      <div><br>
                      </div>
                      <div>Based on advice I got from this site: <a
href="https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-build.html"
                          moz-do-not-send="true">https://jumpnowtek.com/yocto/Add-Fortran-support-to-a-Yocto-build.html</a><br>
                      </div>
                      <div><br>
                      </div>
                      <div>I have enabled fortran in my local.conf via
                        adding:</div>
                      <div><br>
                      </div>
                      <div>    FORTRAN_forcevariable = ",fortran"<br>
                      </div>
                      <div><br>
                      </div>
                      <div>And I have created a gcc-runtime_7.3.bbappend
                        file containing:</div>
                      <div><br>
                      </div>
                      <div>    RUNTIMETARGET += "libgfortran"</div>
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
    FORTRAN_forcevariable = ",fortran"<br>
    RUNTIMETARGET_append_pn-gcc-runtime = " libquadmath" &lt;&lt;&lt;---
    maybe key??<br>
    <br>
    and in one recipe I had a depends on "libgfortran" and is seems to
    build fine.<br>
    <br>
    - armin<br>
    <br>
    <blockquote type="cite"
cite="mid:CAE5DP0Ma1B4qs6pQJqW9EfxhvZOwSZz8kbEdDK-VYTkf9=qmxQ@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div><br>
                      </div>
                      <div>And I have added gfortran to my image:</div>
                      <div><br>
                      </div>
                      <div>    FORTRAN_TOOLS = " \<br>
                                gfortran \<br>
                                gfortran-symlinks \<br>
                                libgfortran \<br>
                                libgfortran-dev \<br>
                             "<br>
                        <br>
                            IMAGE_INSTALL += " \<br>
                                ${FORTRAN_TOOLS} \<br>
                             "<br>
                      </div>
                      <div>After all these modifications when I go to
                        build I see the following error:</div>
                      <div><br>
                      </div>
                      <div>|
../../../../../../../../work-shared/gcc-7.3.0-r0/gcc-7.3.0/libgfortran/runtime/backtrace.c:36:10:
                        fatal error: backtrace-supported.h: No such file
                        or directory<br>
                        |  #include "backtrace-supported.h"<br>
                        |           ^~~~~~~~~~~~~~~~~~~~~~~<br>
                        | compilation terminated.<br>
                        | Makefile:2310: recipe for target
                        'backtrace.lo' failed<br>
                        | make[1]: *** [backtrace.lo] Error 1<br>
                      </div>
                      <div><br>
                      </div>
                      <div>I've found I can get past this by updating
                        poky/meta/recipes-devtools/gcc/gcc-7.3.inc with
                        the following line:</div>
                      <div><br>
                      </div>
                      <div>    CFLAGS += " -I../../libbacktrace "</div>
                      <div><br>
                      </div>
                      <div> The build then dies later here:</div>
                      <div><br>
                      </div>
                      <div>| libtool: link: cannot find the library
                        `../libbacktrace/<a
                          href="http://libbacktrace.la"
                          moz-do-not-send="true">libbacktrace.la</a>' or
                        unhandled argument `../libbacktrace/<a
                          href="http://libbacktrace.la"
                          moz-do-not-send="true">libbacktrace.la</a>'<br>
                        | Makefile:1364: recipe for target '<a
                          href="http://libgfortran.la"
                          moz-do-not-send="true">libgfortran.la</a>'
                        failed<br>
                        | make[1]: *** [<a href="http://libgfortran.la"
                          moz-do-not-send="true">libgfortran.la</a>]
                        Error 1<br>
                      </div>
                      <div><br>
                      </div>
                      <div>I can resolve that by adjusting the Makefile
                        found at:
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/Makefile.
                        The following adjustment:</div>
                      <div><br>
                      </div>
                      <div>     $(LTLDFLAGS) $(LIBQUADLIB)
                        ../../libbacktrace/<a
                          href="http://libbacktrace.la"
                          moz-do-not-send="true">libbacktrace.la</a> \</div>
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
                        | Makefile:1364: recipe for target '<a
                          href="http://libgfortran.la"
                          moz-do-not-send="true">libgfortran.la</a>'
                        failed<br>
                        | make[1]: *** [<a href="http://libgfortran.la"
                          moz-do-not-send="true">libgfortran.la</a>]
                        Error 1</div>
                      <div><br>
                      </div>
                      <div>As far as I can tell, the archive's elements
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
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------99AFB0B40AF6CB88CE85D8FE--
