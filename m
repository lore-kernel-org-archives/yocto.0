Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20C5DE00CFF; Mon, 25 Apr 2016 23:44:04 -0700 (PDT)
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
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31484E00CEC
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 23:44:02 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id q76so1744207qke.2
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 23:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=BuO7jxZ1cTDu5nbeTjJw8xJa33vAXFReJcY+TOihZ3M=;
	b=PdkqjH0gFKUca593M4J9e0m4C6LlvLgX8lDByck9u27hKSafJSaai850IIafzJ/7DM
	l9DVpeEkeN8yBIJVsPbLocRWqZk1eSPdIjlwohPxZ2mSPSCf9dl6f8PPR1aEYKlFNY86
	ElfAgrsEt5edGkTbwkR0ar9nP95D3+aw5iA1Sx2oP0tCT+dtiSfViKl5r8U6nv5qXQWC
	2XybuRqI8HrmQ3ZbXhm0mGM2WOJxG91emoqpz7QA0Pm4OogT6TKNiMCVM6PpbJg2GCNX
	GAn65tgt7YIitq00oDOLgpZQHwWb9h3MpSs5oHhuVC799oQIaU+CzAo84eUtf+6ImGQO
	qp3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=BuO7jxZ1cTDu5nbeTjJw8xJa33vAXFReJcY+TOihZ3M=;
	b=GxcIWUJxpfED4+PlglJcZlLesZbKnmY6QepL00T2QrxXAAXKz0/J6Cp7Jo6r+ZoSNd
	qypbV/qACsZudK4AXbUCxAopCc1E/FZr67BhL4JBBxo5eeLKBgpl9iuFNfNQu9alMutx
	IZ8EHF5zSTt+BKYknNNuJ3WIJPNMgoZYTehSgxSKpILI7yIxiXd7gZ4Oi/F1ySerVH0P
	yGVEweocgr0aHdC9ftyhtWI80XUmoYmkK1O3AFTdwm4afrcwDrBzOj8MJjNsBwcSZzYo
	A0U9PHQVnJsuKaOkqYYVktKg+9Z5TkWNd4XHhAc2FHjX1mFTo/YVFxUWdZdxOX2NNmzh
	sM2Q==
X-Gm-Message-State: AOPr4FVDy9cRbUMz88rWvobMFKEj6Iwjcmz6TVJmfdKzxZslS99FvHbsto9eCLmCCA8ATwBu9g93KuFXLKF2MQ==
X-Received: by 10.55.96.197 with SMTP id u188mr669629qkb.151.1461653042342;
	Mon, 25 Apr 2016 23:44:02 -0700 (PDT)
MIME-Version: 1.0
References: <PN1PR01MB0333D0AA52455F3BFC07AB53EF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN1PR01MB0333D0AA52455F3BFC07AB53EF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Apr 2016 06:43:52 +0000
Message-ID: <CAMKF1spiMKDGzfd21izpjak1rRm_XqpNzuTTd_Mx6726H9cw7Q@mail.gmail.com>
To: Harinath maddelal <Harinath.maddela@inedasystems.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Build error
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
X-List-Received-Date: Tue, 26 Apr 2016 06:44:04 -0000
Content-Type: multipart/alternative; boundary=94eb2c0560ce5fb4e405315d9ee0

--94eb2c0560ce5fb4e405315d9ee0
Content-Type: text/plain; charset=UTF-8

which version of kernel are you compiling and what version of gcc is in
play ?

On Mon, Apr 25, 2016 at 11:31 PM Harinath maddelal <
Harinath.maddela@inedasystems.com> wrote:

> Hi All,
>
>
> When i'm trying to build my kernel using yocto, im getting following error
>
> |   CHK     include/generated/compile.h
> |   AS      arch/mips/kernel/r4k_fpu.o
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:
> Assembler messages:
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:89:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f0,272+0($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:90:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f2,272+16($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:91:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f4,272+32($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:92:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f6,272+48($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:93:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f8,272+64($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:94:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f10,272+80($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:95:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f12,272+96($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:96:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f14,272+112($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:97:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f16,272+128($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:98:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f18,272+144($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:99:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f20,272+160($4)'
> |
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:100:
> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
> $f22,272+176($4)'
>
>
> Can you please tell me what could be the issue? We have used mips32r2 in
> our machine file but if the error log is observed where it says "Error:
> opcode not supported on this processor: mips3 (mips3) `sdc1 $f6,272+48($4)".
>
>
> Can you please help me resolve this issue. Thanks in Advance
>
>
> Thanks and Regards,
> Harinath
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0560ce5fb4e405315d9ee0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">which version of kernel are you compiling and what version=
 of gcc is in play ?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">O=
n Mon, Apr 25, 2016 at 11:31 PM Harinath maddelal &lt;<a href=3D"mailto:Har=
inath.maddela@inedasystems.com">Harinath.maddela@inedasystems.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hi All,</p>
<p><br>
</p>
<p>When i&#39;m trying to build my kernel using yocto, im getting following=
 error</p>
<br>
|=C2=A0=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/compile.h<br>
|=C2=A0=C2=A0 AS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 arch/mips/kernel/r4k_fpu.o<b=
r>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S: Assembler messages:<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:89: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f0,272+0($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:90: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f2,272+16($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:91: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f4,272+32($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:92: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f6,272+48($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:93: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f8,272+64($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:94: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f10,272+80($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:95: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f12,272+96($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:96: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f14,272+112($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:97: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f16,272+128($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:98: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f18,272+144($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:99: Error: opcode not supported on this processor: mips3 =
(mips3) `sdc1 $f20,272+160($4)&#39;<br>
| /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips=
/kernel/r4k_fpu.S:100: Error: opcode not supported on this processor: mips3=
 (mips3) `sdc1 $f22,272+176($4)&#39;<br>
<br>
<p><br>
</p>
<p>Can you please tell me what could be the issue? We have used mips32r2 in=
 our machine file but if the error log is observed where it says &quot;Erro=
r: opcode not supported on this processor: mips3 (mips3) `sdc1 $f6,272+48($=
4)&quot;.</p>
<p><br>
</p>
<p>Can you please help me resolve this issue. Thanks in Advance<br>
</p>
<p><br>
</p>
<div>
<div name=3D"divtagdefaultwrapper">
Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
</div>
</div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--94eb2c0560ce5fb4e405315d9ee0--
