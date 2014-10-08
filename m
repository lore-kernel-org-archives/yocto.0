Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B311E00848; Tue,  7 Oct 2014 18:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kevinthesunwy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F35E0076C
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 18:17:09 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id p9so7126950lbv.5
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 18:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=drDQndAxGU/ZVw7ca1x1RDQy2rjqQswdmAdgw3dYFoo=;
	b=XTGu5zQ5dlHJqQpXDRNQ+FO0OSb/uSing0/Y+Cf/1c/kbuSWq7um2trgC18+3Sj85P
	3k0rEG3KhqkeOo28swWhxPiiU+ChAb++p4Etlq9BEAHh9ouje6Tawxb4TsxcY3k8S48Y
	A4yxQn6zsfzoYlqSn7n7ysIBqcQXsHFIWSDZ+6KiwJ9zgAMw5qxvt0FYxwk+gen0oOIR
	Ep82hymCRhdDTlEJ8uHw+js4w2Q/z/AHnwlK2Dw47FoukLkRUnrmn3Ad5AuypW+Uti1W
	UYr2QxpIVGzBzknlPlco5G6G39yuI+O7D+qNMr/uda3H/0lxD4TfuLlHhAWDso6IZ5C0
	KD8g==
MIME-Version: 1.0
X-Received: by 10.152.28.167 with SMTP id c7mr7666752lah.27.1412731028072;
	Tue, 07 Oct 2014 18:17:08 -0700 (PDT)
Received: by 10.112.56.6 with HTTP; Tue, 7 Oct 2014 18:17:08 -0700 (PDT)
In-Reply-To: <CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
Date: Tue, 7 Oct 2014 18:17:08 -0700
Message-ID: <CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
From: Wy kevinthesun <kevinthesunwy@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
X-Mailman-Approved-At: Wed, 08 Oct 2014 08:36:06 -0700
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Wed, 08 Oct 2014 01:17:22 -0000
Content-Type: multipart/alternative; boundary=089e0160b616176db20504df134c

--089e0160b616176db20504df134c
Content-Type: text/plain; charset=UTF-8

Problem solved! It turns out it is the mismatch of ld-linux.so. I referred
to this post
http://stackoverflow.com/questions/24543474/cross-compiled-gnu-arm-beagleboneblack-from-windows-runtime-error-on-elf,
and found my problem was exactly the same: the binary needs
/lib/ld-linux.so.3 to run, but that file is missing in the 1.5.1 yocto
system on board. Then I copied ld-linux.so.3 file from Yocto toolchain on
my pc. Then it works!

Thank you!

2014-10-07 8:21 GMT-07:00 Nicolas Dechesne <nicolas.dechesne@linaro.org>:

> On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun <kevinthesunwy@gmail.com>
> wrote:
> > Hi, I am new to Yocto Project and learning to develop software on Atmel
> > SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I followed the
> > instructions and got the 1.6.1 toolchain
> >
> > poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.1.sh.
> >
> > I can compile the simple HelloWorld program and binary file is made.
> Then I
> > copied the binary file
> >
> > into board and tried to run it. However, when I changed to the file
> located
> > directory and type
> >
> > "./Hello", it returned "sh: ./Hello: No such file or directory". Then I
> > tried "sh Hello", it gave
> >
> > me  "Hello: Hello: cannot execute binary file ". If I type "file Hello",
> it
> > gives "Hello: ELF 32-bit
> >  LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked (uses
> > shared libs), for GNU/Linux 2.6.16,
> > BuildID[sha1]=9933a2d2ce212099c5f9902a8e612c1423e136da, not stripped". I
> > googled and someone
> >
> > said the problem may be the toolchain. Then I tried 1.3, 1.5.1 toolchain
> for
> > arm, but still same
> >
> > error. Could you please help me about this problem?
>
>
> i suspect this is an armv7 soft-float vs hard-float mismatch. Either
> your prebuilt OE system is configured with soft-float and the
> toolchain you use compiled for hard-float by default, or the other way
> around. can you check how you've compile HelloWolrd and check the
> other ABI?
>

--089e0160b616176db20504df134c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Problem solved! It turns out it is the mismatch of ld=
-linux.so. I referred to this post <a href=3D"http://stackoverflow.com/ques=
tions/24543474/cross-compiled-gnu-arm-beagleboneblack-from-windows-runtime-=
error-on-elf">http://stackoverflow.com/questions/24543474/cross-compiled-gn=
u-arm-beagleboneblack-from-windows-runtime-error-on-elf</a>, and found my p=
roblem was exactly the same: the binary needs /lib/ld-linux.so.3 to run, bu=
t that file is missing in the 1.5.1 yocto system on board. Then I copied ld=
-linux.so.3 file from Yocto toolchain on my pc. Then it works!<br><br></div=
>Thank you!<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2014-10-07 8:21 GMT-07:00 Nicolas Dechesne <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne=
@linaro.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D=
"HOEnZb"><div class=3D"h5">On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun &=
lt;<a href=3D"mailto:kevinthesunwy@gmail.com">kevinthesunwy@gmail.com</a>&g=
t; wrote:<br>
&gt; Hi, I am new to Yocto Project and learning to develop software on Atme=
l<br>
&gt; SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I followed =
the<br>
&gt; instructions and got the 1.6.1 toolchain<br>
&gt;<br>
&gt; <a href=3D"http://poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-too=
lchain-1.6.1.sh" target=3D"_blank">poky-eglibc-i686-core-image-sato-armv7a-=
vfp-neon-toolchain-1.6.1.sh</a>.<br>
&gt;<br>
&gt; I can compile the simple HelloWorld program and binary file is made. T=
hen I<br>
&gt; copied the binary file<br>
&gt;<br>
&gt; into board and tried to run it. However, when I changed to the file lo=
cated<br>
&gt; directory and type<br>
&gt;<br>
&gt; &quot;./Hello&quot;, it returned &quot;sh: ./Hello: No such file or di=
rectory&quot;. Then I<br>
&gt; tried &quot;sh Hello&quot;, it gave<br>
&gt;<br>
&gt; me=C2=A0 &quot;Hello: Hello: cannot execute binary file &quot;. If I t=
ype &quot;file Hello&quot;, it<br>
&gt; gives &quot;Hello: ELF 32-bit<br>
&gt;=C2=A0 LSB=C2=A0 executable, ARM, EABI5 version 1 (SYSV), dynamically l=
inked (uses<br>
&gt; shared libs), for GNU/Linux 2.6.16,<br>
&gt; BuildID[sha1]=3D9933a2d2ce212099c5f9902a8e612c1423e136da, not stripped=
&quot;. I<br>
&gt; googled and someone<br>
&gt;<br>
&gt; said the problem may be the toolchain. Then I tried 1.3, 1.5.1 toolcha=
in for<br>
&gt; arm, but still same<br>
&gt;<br>
&gt; error. Could you please help me about this problem?<br>
<br>
<br>
</div></div>i suspect this is an armv7 soft-float vs hard-float mismatch. E=
ither<br>
your prebuilt OE system is configured with soft-float and the<br>
toolchain you use compiled for hard-float by default, or the other way<br>
around. can you check how you&#39;ve compile HelloWolrd and check the<br>
other ABI?<br>
</blockquote></div><br></div>

--089e0160b616176db20504df134c--
