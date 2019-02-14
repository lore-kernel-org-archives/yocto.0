Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A19A3E00C71; Thu, 14 Feb 2019 12:38:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CED8CE00A0C
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:38:45 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id u64so4464173vsc.12
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=E/s0OtVAtGh01uA+1akV4dAlkK/wDahqqS6Ol9pZR3A=;
	b=ksY35bQkfupkk6Ew6HjWhjBHFSsBEDq5WDkBWwgw40pz/ygVQdy7zAQLLD1TJ2zXIC
	lId6UqNB26tLQtru+QAvL0sr/iE+cD+7kd7VuDLegs3wcmm9WuZxCycDsS/TXkbPrFTh
	2YeMlF6yk0JvsMol1YuNlbSV7o56DzEcQU6FH0jC2kngEiy1etGC5aDcNV8j490TzDG3
	wWC582m6sIJZViLX85yG7QNXKqWQSslasO9JxDQMZ3CeJQeRWkYvuwZkYmZfcmz0sMTq
	6jWE8JPMV+Ct8H7RhAZOrTPg7ZvTFkMN5dhYUZsaPpM+Rluds+8gkThfWHYGSwz7Tsa9
	0rJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=E/s0OtVAtGh01uA+1akV4dAlkK/wDahqqS6Ol9pZR3A=;
	b=pMX20MFtNJORBk3B++nHWzKhGN0jzWb/eGbENs05g8I6dXhxg344THfkSbi7xIn4Ox
	IjAMn8u/8K8FAY+j6D16hsWYmoEi7eILEZaQ+q1+4fJwT8utVAdQ6w20S07a8W4GgWQN
	0YkRFJXzNnuLD0yMX3t/Ttv+PIgMGfQ4YYfoYcuTxiyR1jhJFt1KohTzS3J9FK1BMO3d
	Ah7geFV9A7ZXPtvLjOQmvTQoeGzvCkAb4xnkQt+97YsT3z9u0iDZGenNdMuvMRUt4LEi
	mvNHghhZaaU22nR2G9cVm6EbwJVkQ6nZHQCAgVGUKYvnZDWvpBRbU021erbKDQ8CGgRS
	aAeA==
X-Gm-Message-State: AHQUAuZmzSXAX6KqQBpynNHfEsrkazcDBxxNfmoylNHzN04EkXwGWi92
	dx5R3FCS+nMmohUB3OOl5gQza6I3IpGqPvuLhi8=
X-Google-Smtp-Source: AHgI3IZLRkivACm1NSIV4mN1K70AyjsdvAp39fWu21TNbji5P4KDnjPg1YzWfBeLs810+qdLw7dU5hIQ1GjY2zO7vMI=
X-Received: by 2002:a67:f4d3:: with SMTP id s19mr3114723vsn.134.1550176725099; 
	Thu, 14 Feb 2019 12:38:45 -0800 (PST)
MIME-Version: 1.0
References: <CAKpuFdft3u6-H2BwRe3PJSvhOem9Twc2KZ0OEwTys4-rPDodaA@mail.gmail.com>
In-Reply-To: <CAKpuFdft3u6-H2BwRe3PJSvhOem9Twc2KZ0OEwTys4-rPDodaA@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 14 Feb 2019 12:38:34 -0800
Message-ID: <CAB=6tBQWHaJT2VBZJ_gkSgBehaja-JpMuxOq6fvT2zuGLRgW3A@mail.gmail.com>
To: Jonas Andersson <jonaskgandersson@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: npm recipe bad task order
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
X-List-Received-Date: Thu, 14 Feb 2019 20:38:46 -0000
Content-Type: multipart/alternative; boundary="00000000000009e7dd0581e0a590"

--00000000000009e7dd0581e0a590
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Normally the source archive is unpacked first, which contains the license
file. Is there something different with the source packaging for your
recipe?

..Ch:W..

On Thu, Feb 14, 2019 at 02:26 Jonas Andersson <jonaskgandersson@gmail.com>
wrote:

> Hi,
>
> I have some recipes created from npm packages with devtool.
>
> do_populate_lic with: WARNING: Could not copy license file
> and LIC_FILES_CHKSUM points to an invalid file.
>
> In my understanding the problem is that do_populate_lic task is running
> before do_compile:
>
> log.task_order
> _______________________________________________________________
> do_cleansstate (20550): log.do_cleansstate.20550
> do_cleanall (20551): log.do_cleanall.20551
> do_fetch (20653): log.do_fetch.20653
> do_unpack (22861): log.do_unpack.22861
> do_prepare_recipe_sysroot (22862): log.do_prepare_recipe_sysroot.22862
> do_patch (23281): log.do_patch.23281
> do_configure (23283): log.do_configure.23283
> do_populate_lic (23284): log.do_populate_lic.23284
> do_compile (23289): log.do_compile.23289
> _______________________________________________________________
>
> The recipes npm created with devtool reference license to S
> (${WORKDIR}/npmpkg):
>
> _________________________________________________________________________=
_____
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D75dbbb2f49d90bfc476532dc5861fd=
26 \
>
> file://node_modules/inherits/LICENSE;md5=3D5b2ef2247af6d355ae9d9f988092d4=
70 \
>
> file://node_modules/psl/LICENSE;md5=3D2425d288296fae32e27553694ff40294 \
>
> file://node_modules/rc/LICENSE.MIT;md5=3De0f70a42adf526e6f5e605a94d98a420=
"
>
> _________________________________________________________________________=
_____
>
> But as npm_do_compile is the task that populates workdir there is no
> license files available when do_populate_lic runs.
>
> I have tried both sumo and thud but with the same result, is the order
> something that have change?
>
> Best regards
> Jonas
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--00000000000009e7dd0581e0a590
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Normally the source archive is unpacked first, which=
 contains the license file. Is there something different with the source pa=
ckaging for your recipe?</div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">..Ch:W..</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Feb 14, 2019 at 02:26 Jonas Andersson &lt;<a hr=
ef=3D"mailto:jonaskgandersson@gmail.com">jonaskgandersson@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
">Hi,<div><br></div><div>I have some recipes created from npm packages with=
 devtool.</div><div><br></div><div>do_populate_lic with:=C2=A0WARNING: Coul=
d not copy license file and=C2=A0LIC_FILES_CHKSUM points to an invalid file=
.</div><div><br></div><div>In my understanding the problem is that do_popul=
ate_lic task is running before do_compile:</div><div><br></div><div>log.tas=
k_order</div><div>_________________________________________________________=
______</div><div><div>do_cleansstate (20550): log.do_cleansstate.20550</div=
><div>do_cleanall (20551): log.do_cleanall.20551</div><div>do_fetch (20653)=
: log.do_fetch.20653</div><div>do_unpack (22861): log.do_unpack.22861</div>=
<div>do_prepare_recipe_sysroot (22862): log.do_prepare_recipe_sysroot.22862=
</div><div>do_patch (23281): log.do_patch.23281</div><div>do_configure (232=
83): log.do_configure.23283</div><div>do_populate_lic (23284): log.do_popul=
ate_lic.23284</div><div>do_compile (23289): log.do_compile.23289</div></div=
><div>_______________________________________________________________</div>=
<div><br></div><div>The recipes npm created with devtool reference license =
to S (${WORKDIR}/npmpkg):</div><div>_______________________________________=
_______________________________________<br></div><div><div>LIC_FILES_CHKSUM=
 =3D &quot;file://LICENSE;md5=3D75dbbb2f49d90bfc476532dc5861fd26 \</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fil=
e://node_modules/inherits/LICENSE;md5=3D5b2ef2247af6d355ae9d9f988092d470 \<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://node_modules/psl/LICENSE;md5=3D2425d288296fae32e27553694ff402=
94 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 file://node_modules/rc/LICENSE.MIT;md5=3De0f70a42adf526e6f5e605a=
94d98a420&quot;</div></div><div>___________________________________________=
___________________________________</div><div><br></div><div>But as npm_do_=
compile is the task that populates workdir there is no license files availa=
ble when do_populate_lic runs.</div><div><br></div><div>I have tried both s=
umo and thud but with the same result, is the order something that have cha=
nge?=C2=A0</div><div><br></div><div>Best regards</div></div></div></div></d=
iv></div></div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Jonas</div><div><br></div><=
/div></div></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challe=
nge anyone here to think of a question upon which we once had a scientific=
=C2=A0answer, however inadequate, but for which now the best answer is a re=
ligious one.&quot;=C2=A0 -Sam Harris</div></div>

--00000000000009e7dd0581e0a590--
