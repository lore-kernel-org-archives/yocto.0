Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C27BE00BE8; Fri, 11 Jan 2019 07:52:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF793E009AA
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 07:52:56 -0800 (PST)
Received: by mail-it1-f182.google.com with SMTP id i145so3172481ita.4
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 07:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=79MPlIYVT6twaT114N5n1OTpoP7c8V3v3HJlz/fy3K8=;
	b=lzfspImLbDOxjBROZ+ULrnYHRuJnRhi3VrDbGdlzT4TuTUJCKa177N6E3WudWPwIeX
	tHJOPgN/exMEv6CVAyrv2U8gMaHZGW692Y4vWjLZxSJm4E4lFsMqX8KsuuOs0LH/0Jni
	neeyc8mBoeWT7TCm8L0WZJJ3Ja9CLrHGFgJ0BX99fk15JOSbZC8KzoGScF2UDogeJJdN
	WTJyX6NztM+itKWKL/lJi18dZStqAcYUXv2pzbuY4gUlUZLCqL5NYLML+WPWbSn8oHFp
	am7RJV/JAmt3OzGn3RcWRW2vo11TPNkzWEyKBdxQJWSYTqX8FJ/xZO48iBcdLDfnTrcG
	RkFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=79MPlIYVT6twaT114N5n1OTpoP7c8V3v3HJlz/fy3K8=;
	b=kJM6HPjuUa+QfjoFISgI228zRpIYj506akK+u83NchrByMI3FVupceS6UDJKLYZorm
	dc6pLtNmNtBT5f0v0lubRQFa1pCnuU77cPI1wQwuxOHhZsFzSJNljnWRtu94GH3v7A1R
	JddjgNqWmIRi1ws+rhJu6+UO4EP6/g4igv6u8qYNUC3KpYyLGZX9I7zUY2udWiTwnKFS
	1iq9zpwLynkozYVw47brfOQAoNFgHGfubrhN+TmsZy0rwYbQIRkzdZahC2iDZdlBrhQJ
	mjsAN2FCu1LNlK6IeUhRDxu+t4eiQhTTCejNRhImhCvZKODdYjyei3BUXFeI+jC+qkgX
	4HCA==
X-Gm-Message-State: AJcUukfm6+FJ3M1xtGpUR+PUqy4WnBLgn/fCh3YXLESeSKe7KMG7XLJ3
	vHe6SDS3IH5znMFmq6f1xgIJo6/0F+dEFMyjvCa3bD7q
X-Google-Smtp-Source: ALg8bN6Cs/SjoLxGRMtn8/7SOdpNzUZRz/HjMaFUoNMdCqu140tMyRlbasxu+2MCpNcoCq/HRwLDtoUeKOfhZvsTS4Q=
X-Received: by 2002:a24:1d4a:: with SMTP id 71mr1399137itj.62.1547221976163;
	Fri, 11 Jan 2019 07:52:56 -0800 (PST)
MIME-Version: 1.0
References: <20190111155046.GA1920@grante>
In-Reply-To: <20190111155046.GA1920@grante>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Jan 2019 15:52:45 +0000
Message-ID: <CAJTo0LZOjtEVBj73LKCmgHLZxiRtZ+Ak8Dta2OP=+ENx4=He9w@mail.gmail.com>
To: Grant Edwards <grant.b.edwards@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: SDK missing /usr/include/asm header files
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
X-List-Received-Date: Fri, 11 Jan 2019 15:52:57 -0000
Content-Type: multipart/alternative; boundary="000000000000473ed5057f30b00a"

--000000000000473ed5057f30b00a
Content-Type: text/plain; charset="UTF-8"

How did you build the SDK?

Ross

On Fri, 11 Jan 2019 at 15:51, Grant Edwards <grant.b.edwards@gmail.com>
wrote:

>
> I've built a "poky" SDK for use with a Renesas RZN1 eval board (dual
> ARM Cortex-A7 cores), and the toolchain's sysroot seems to be missing
> the "asm" header directory.  When I try to compile a simple tcp echo
> server program I get this:
>
>
> /home/grante/rzn1d/toolchain/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> --sysroot=/home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi
> -march=armv7ve -marm -mfpu=vfp -mfloat-abi=hard -Wall -Werror -std=gnu99 -c
> tcpecho.c
>     In file included from
> /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/signal.h:287:0,
>                  from
> /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/sys/wait.h:36,
>                  from tcpecho.c:6:
>
> /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/bits/sigcontext.h:30:11:
> fatal error: asm/sigcontext.h: No such file or directory
>      # include <asm/sigcontext.h>
>                ^~~~~~~~~~~~~~~~~~
>     compilation terminated.
>     make: *** [Makefile:26: tcpecho.o] Error 1
>
> Browsing throught the installed toolchain's sysroot confirms that gcc
> is correct: there's no "asm" directory in the sysroot's usr/include
> directory (or anywhere else in the toolchain's installation tree).
>
> This is the first time I've tried to build an SDK, so I've probably
> done something wrong, but I could use a clue as to what might have
> gone wrong...
>
> --
> Grant Edwards               grant.b.edwards        Yow! What's the MATTER
>                                   at               Sid? ... Is your
> BEVERAGE
>                               gmail.com            unsatisfactory?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000473ed5057f30b00a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How did you build the SDK?<div><br></div><div>Ross</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, 11 Jan 2019 at =
15:51, Grant Edwards &lt;<a href=3D"mailto:grant.b.edwards@gmail.com">grant=
.b.edwards@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-sty=
le:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><br>
I&#39;ve built a &quot;poky&quot; SDK for use with a Renesas RZN1 eval boar=
d (dual<br>
ARM Cortex-A7 cores), and the toolchain&#39;s sysroot seems to be missing<b=
r>
the &quot;asm&quot; header directory.=C2=A0 When I try to compile a simple =
tcp echo<br>
server program I get this:<br>
<br>
=C2=A0 =C2=A0 /home/grante/rzn1d/toolchain/sysroots/x86_64-pokysdk-linux/us=
r/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc --sysroot=3D/home/g=
rante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi -march=3Dar=
mv7ve -marm -mfpu=3Dvfp -mfloat-abi=3Dhard -Wall -Werror -std=3Dgnu99 -c tc=
pecho.c<br>
=C2=A0 =C2=A0 In file included from /home/grante/rzn1d/toolchain/sysroots/a=
rmv7vehf-vfp-poky-linux-gnueabi/usr/include/signal.h:287:0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/gr=
ante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/=
sys/wait.h:36,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from tcpecho.=
c:6:<br>
=C2=A0 =C2=A0 /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linu=
x-gnueabi/usr/include/bits/sigcontext.h:30:11: fatal error: asm/sigcontext.=
h: No such file or directory<br>
=C2=A0 =C2=A0 =C2=A0# include &lt;asm/sigcontext.h&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~<b=
r>
=C2=A0 =C2=A0 compilation terminated.<br>
=C2=A0 =C2=A0 make: *** [Makefile:26: tcpecho.o] Error 1<br>
<br>
Browsing throught the installed toolchain&#39;s sysroot confirms that gcc<b=
r>
is correct: there&#39;s no &quot;asm&quot; directory in the sysroot&#39;s u=
sr/include<br>
directory (or anywhere else in the toolchain&#39;s installation tree).<br>
<br>
This is the first time I&#39;ve tried to build an SDK, so I&#39;ve probably=
<br>
done something wrong, but I could use a clue as to what might have<br>
gone wrong...<br>
<br>
-- <br>
Grant Edwards=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0grant.b=
.edwards=C2=A0 =C2=A0 =C2=A0 =C2=A0 Yow! What&#39;s the MATTER<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 at=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0Sid? ... Is your BEVERAGE<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://gmail.com" rel=3D"norefer=
rer" target=3D"_blank">gmail.com</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 unsatisfactory?<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000473ed5057f30b00a--
