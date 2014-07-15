Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAEA8E00547; Tue, 15 Jul 2014 11:20:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E51E004FF
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:20:17 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id rl12so3425187iec.24
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lhWJ0efO4SpJlRHsAb9RpgzrOjXxm5c0mxltDDKIaYQ=;
	b=TWQEI+D+5IKq2gSVTNaKhG/rKDPXjOoZnJ989l0heyy0UXTb2tiPWspKpBnlpwneaD
	wAz55nfVsv/bSys/jeLkm0s5tmEfZ/aNr/XFufqsvLb6BBHXQRgp3uaV9Pc7LxZ/w1xd
	jNXwJwiDU62RIF/gOoRhejFLGElK7Cyvu4Z1Nif0OUyv4B950dSDqffjWnFbiHDNegL9
	wM+alBbleB45axFtR+W/R0Hs63XaD0EQNCQv+vgAKBUtVLvOngpJFaQrjvEgfAiUdVgM
	WhkWIdNYaEOY9AUrfr2E4nZIHtf4thepGjtRYsLpUwPTtx6NT5P0Qymw04EykJqR0TpZ
	7Guw==
MIME-Version: 1.0
X-Received: by 10.50.176.202 with SMTP id ck10mr9102177igc.2.1405448416669;
	Tue, 15 Jul 2014 11:20:16 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:20:16 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:20:16 -0700 (PDT)
In-Reply-To: <CAH21_vEM74a_fFdXUhGuQ_8Jthxa2DyqTwDTwY6mE_9-na_21w@mail.gmail.com>
References: <31866b6cf9d84744aff245a947cb80a0@KCHJEXMBX01.kpit.com>
	<CAH21_vEM74a_fFdXUhGuQ_8Jthxa2DyqTwDTwY6mE_9-na_21w@mail.gmail.com>
Date: Tue, 15 Jul 2014 11:20:16 -0700
Message-ID: <CAMKF1srOe57Ktsw71wgEvUzzL+xdcgXxU5JS3U4-5ozV6XXNkA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: atulkumar singh <atul.singh008@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: MinGW support for qemux86-64
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
X-List-Received-Date: Tue, 15 Jul 2014 18:20:25 -0000
Content-Type: multipart/alternative; boundary=089e0111d758a036fc04fe3f7515

--089e0111d758a036fc04fe3f7515
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Jul 15, 2014 6:08 AM, "atulkumar singh" <atul.singh008@gmail.com> wrote:
>
> Hi All,
>
> Please let me know what I need to be updated for SDKMACHINE, when I am
building meta-toolchain with MACHINE as =E2=80=9Cqemux86-64=E2=80=9D in loc=
al.conf

nothing else unless you want to run sdk on different (64bit) host
>
> For qemux86, we are mentioning it as SDKMACHINE ?=3D "i686-mingw32".
>
>
> Thanks and Regards,
> ATUL KUMAR SINGH
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0111d758a036fc04fe3f7515
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jul 15, 2014 6:08 AM, &quot;atulkumar singh&quot; &lt;<a href=3D"mailto:=
atul.singh008@gmail.com">atul.singh008@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Please let me know what I need to be updated for SDKMACHINE, when I am=
 building meta-toolchain with MACHINE as =E2=80=9Cqemux86-64=E2=80=9D in lo=
cal.conf</p>
<p dir=3D"ltr">nothing else unless you want to run sdk on different (64bit)=
 host<br>
&gt;<br>
&gt; For qemux86, we are mentioning it as SDKMACHINE ?=3D &quot;i686-mingw3=
2&quot;.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt; Thanks and Regards,<br>
&gt; ATUL KUMAR SINGH<br>
&gt;<br>
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

--089e0111d758a036fc04fe3f7515--
