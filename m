Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3F3AE00E31; Mon, 18 Apr 2016 10:39:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF928E00C70
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 10:39:21 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id c6so121050053qga.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 10:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=EM6Wa7jmjsUDZH/EajrGm5uauPFjFxB3NVENFehW+lM=;
	b=PahGw/UEqhpGBmzZQE3G9dLe9VIsXqsm+GXR2LQ37Qfm0qqbFY46FNMFXXXIdN6X5Y
	wkJ+8WDJakln93kQt8q/EPmdRhMtca2zQiX79yAIz+eg+S+/IxC5O+OyS9KDQqcgtoPq
	4Lyvk1ezAsYLuuI/OZCRouB16fcgJYmkKBT8VPkv1BzOBNKzC+98LYWN5HSyf3L/PsB3
	0dghyjSBI2rkizg5HE7M7zXVHYAFrf2FBx6wQRzVM5RE1KlhI9Yz2kypsGMQG+vsTbqN
	uhtcbP+4JLYFtR1NLnZu4b/IAfa2vl8lMYITne8RpZ9DD/OwQ08SKOqM9tDLyLUDKhb9
	bCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=EM6Wa7jmjsUDZH/EajrGm5uauPFjFxB3NVENFehW+lM=;
	b=Gs1TRwtkmrCeUEDPi4TCKVhdO7eR3CVU/lNC4Mx5ErXdLxo0VQIS5jvxi0eBn7pAiV
	zG0r7F90EmkDDkiug+SXLEPUNMlAm9YIOKd/Vw1Im4SKde4iLwF+Zgp9P341RSu7hSPZ
	u2FWtarfQJHkmVhyVf8x6mn7Jtd/0QM6ZD9AZiiPGvPAZ1+StJYE/GhbssgjVgkXamyb
	IQh1LXaO8FBSyt8Ijpik0UQw4h96OMWB5mbzrQR2aaN6hxREt/5dlNnEx7kDd2WoEwnc
	f12oiMoz/zIW2fQ53mxJDILrmNeixfA1gLhnMopq13bYTaqebNF4gDh1tbHpd9pF+KyA
	8DDg==
X-Gm-Message-State: AOPr4FVpNQTy2K0hUR9FpQbTdiT6LEmHo0tK2SX9zNrAXWGMG/fE2yN00fLxuJA41pwXLGzssGvcjCRpSaFsnQ==
MIME-Version: 1.0
X-Received: by 10.140.196.74 with SMTP id r71mr45936516qha.41.1461001160797;
	Mon, 18 Apr 2016 10:39:20 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 10:39:20 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 10:39:20 -0700 (PDT)
In-Reply-To: <CALRMKQpOwgNW_brGxU4RGd-nSgQbqo3EOrJR-53y2krkjp0Hag@mail.gmail.com>
References: <CALRMKQpOwgNW_brGxU4RGd-nSgQbqo3EOrJR-53y2krkjp0Hag@mail.gmail.com>
Date: Mon, 18 Apr 2016 10:39:20 -0700
Message-ID: <CAMKF1sqgHQLgS8i0XU+Rt+6PD7LzCc2OVZp_GNKD2m=EstSMsg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Poky-Tiny errors building util-linux/2.26.2-r0
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
X-List-Received-Date: Mon, 18 Apr 2016 17:39:23 -0000
Content-Type: multipart/alternative; boundary=001a11431e1c34b7820530c5d7b9

--001a11431e1c34b7820530c5d7b9
Content-Type: text/plain; charset=UTF-8

You propbably need to enable more. Eglibc options than default. Or else
update to 2.1 release which uses musl
On Apr 18, 2016 7:56 AM, "Ronald Oakes" <ronaldo@brc2.com> wrote:

> When I attempt to build using the poky-tiny distribution (or my
> distribution still very closely based on it), I keep getting link
> errors when building util-linux.  These seem to be related to the
> functions provided by wchar.h and locale.h and their associated
> library files.
>
> For example:
>
> x86_64-poky-linux-libtool: link: x86_64-poky-linux-gcc -m64
> -march=core2 -mtune=core2 -msse3 -mfpmath=sse
> --sysroot=/home/ron/yocto_production/build/tmp/sysroot
> s/qemux86-64 -fsigned-char -fno-common -Wall -Werror=sequence-point
> -Wextra -Wmissing-declarations -Wmissing-parameter-type
> -Wmissing-prototypes -Wno-missing-fi
> eld-initializers -Wredundant-decls -Wsign-compare -Wtype-limits
> -Wuninitialized -Wunused-but-set-parameter -Wunused-but-set-variable
> -Wunused-parameter -Wunused
> -result -Wunused-variable -Wnested-externs -Wpointer-arith
> -Wstrict-prototypes -Wimplicit-function-declaration -O2 -pipe -g
> -feliminate-unused-debug-types -Wl,-
> O1 -Wl,--hash-style=gnu -Wl,--as-needed -o dmesg sys-utils/dmesg.o
> lib/monotonic.o  ./.libs/libcommon.a
> sys-utils/dmesg.o: In function `safe_fwrite':
>
> /home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:628:
> undefined reference to `mbrtowc'
> /home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/
> sys-utils/dmesg.o: In function `safe_fwrite':
>
> /home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:628:
> undefined reference to `mbrtowc'
>
> /home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:636:
> undefined reference to `iswprint'
> ./.libs/libcommon.a(libcommon_la-strutils.o): In function `parse_size':
>
> /home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/lib/strutils.c:109:
> undefined reference to `localeconv'
> ./.libs/libcommon.a(libcommon_la-strutils.o): In function
> `size_to_human_string':
>
> /home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.26.2-r0/util-linux-2.26.2/lib/strutils.c:486:
> undefined reference to `localeconv'
> collect2: error: ld returned 1 exit status
>
>
> ----
>
> I suspect that I need to modify something to pull these libraries in
> when building util-linux for this distribution, but I'm new to Yocto
> and unsure where or how to do this.
>
> For what it is worth, I can build poky just fine using the same poky
> and layer downloads.
>
> I can attach my bblayers.conf file if needed.  At this point, I have
> no custom code or recipes included, but am including more than just
> the default poky layers.
>
> Ron Oakes
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11431e1c34b7820530c5d7b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">You propbably need to enable more. Eglibc options than defau=
lt. Or else update to 2.1 release which uses musl</p>
<div class=3D"gmail_quote">On Apr 18, 2016 7:56 AM, &quot;Ronald Oakes&quot=
; &lt;<a href=3D"mailto:ronaldo@brc2.com">ronaldo@brc2.com</a>&gt; wrote:<b=
r type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">When I attempt to bui=
ld using the poky-tiny distribution (or my<br>
distribution still very closely based on it), I keep getting link<br>
errors when building util-linux.=C2=A0 These seem to be related to the<br>
functions provided by wchar.h and locale.h and their associated<br>
library files.<br>
<br>
For example:<br>
<br>
x86_64-poky-linux-libtool: link: x86_64-poky-linux-gcc -m64<br>
-march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse<br>
--sysroot=3D/home/ron/yocto_production/build/tmp/sysroot<br>
s/qemux86-64 -fsigned-char -fno-common -Wall -Werror=3Dsequence-point<br>
-Wextra -Wmissing-declarations -Wmissing-parameter-type<br>
-Wmissing-prototypes -Wno-missing-fi<br>
eld-initializers -Wredundant-decls -Wsign-compare -Wtype-limits<br>
-Wuninitialized -Wunused-but-set-parameter -Wunused-but-set-variable<br>
-Wunused-parameter -Wunused<br>
-result -Wunused-variable -Wnested-externs -Wpointer-arith<br>
-Wstrict-prototypes -Wimplicit-function-declaration -O2 -pipe -g<br>
-feliminate-unused-debug-types -Wl,-<br>
O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o dmesg sys-utils/dmesg.o<br>
lib/monotonic.o=C2=A0 ./.libs/libcommon.a<br>
sys-utils/dmesg.o: In function `safe_fwrite&#39;:<br>
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.=
26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:628:<br>
undefined reference to `mbrtowc&#39;<br>
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/<br>
sys-utils/dmesg.o: In function `safe_fwrite&#39;:<br>
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.=
26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:628:<br>
undefined reference to `mbrtowc&#39;<br>
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.=
26.2-r0/util-linux-2.26.2/sys-utils/dmesg.c:636:<br>
undefined reference to `iswprint&#39;<br>
./.libs/libcommon.a(libcommon_la-strutils.o): In function `parse_size&#39;:=
<br>
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.=
26.2-r0/util-linux-2.26.2/lib/strutils.c:109:<br>
undefined reference to `localeconv&#39;<br>
./.libs/libcommon.a(libcommon_la-strutils.o): In function<br>
`size_to_human_string&#39;:<br>
/home/ron/yocto_production/build/tmp/work/core2-64-poky-linux/util-linux/2.=
26.2-r0/util-linux-2.26.2/lib/strutils.c:486:<br>
undefined reference to `localeconv&#39;<br>
collect2: error: ld returned 1 exit status<br>
<br>
<br>
----<br>
<br>
I suspect that I need to modify something to pull these libraries in<br>
when building util-linux for this distribution, but I&#39;m new to Yocto<br=
>
and unsure where or how to do this.<br>
<br>
For what it is worth, I can build poky just fine using the same poky<br>
and layer downloads.<br>
<br>
I can attach my bblayers.conf file if needed.=C2=A0 At this point, I have<b=
r>
no custom code or recipes included, but am including more than just<br>
the default poky layers.<br>
<br>
Ron Oakes<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11431e1c34b7820530c5d7b9--
