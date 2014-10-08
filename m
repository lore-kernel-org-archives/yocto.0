Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3369DE00848; Wed,  8 Oct 2014 14:34:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kevinthesunwy[at]gmail.com)
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
	*      [209.85.217.175 listed in list.dnswl.org]
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4C8DE0077F
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 14:34:31 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id u10so9136299lbd.34
	for <yocto@yoctoproject.org>; Wed, 08 Oct 2014 14:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mfqsB5JnJyrarUSNl4jBTKnbfQoo9dwPxUZyJA4iM6M=;
	b=a03jOjfJF/pB+BcKejbZzgi49GfqdBg59yZzGKqbX9d0HzC3377YkZ5IpfrMTyC6tk
	7oHRQ7vVfd7OLoKU8VDG947rR/9pqKDMKGKEIQh9sXvEmXplcz5//B5q2wHtfvvJbH4z
	uPdAj4OhBFLVi/0t1dopsS4Hqp+Y9irl+pXTcfGv192HlPry9h8FZ+ZgvK2rjo0Y89+z
	Au7h3K7lGpMoBEnws1aIQbCUwLI2zpFpnupikC6yFRFco2cO21+ecaLKrKsL5Ezyfn7x
	SIvkyfSeaWTtEK3Bwjc29pcJ6NV5Fw5hF3RNfnxMSom4M2o4tBeinXDZj4om9N9IiAVh
	q8NA==
MIME-Version: 1.0
X-Received: by 10.112.54.130 with SMTP id j2mr13348803lbp.41.1412804069733;
	Wed, 08 Oct 2014 14:34:29 -0700 (PDT)
Received: by 10.112.56.6 with HTTP; Wed, 8 Oct 2014 14:34:29 -0700 (PDT)
In-Reply-To: <20141008204308.GM25997@denix.org>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
Date: Thu, 9 Oct 2014 05:34:29 +0800
Message-ID: <CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
From: Wy kevinthesun <kevinthesunwy@gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
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
X-List-Received-Date: Wed, 08 Oct 2014 21:34:44 -0000
Content-Type: multipart/alternative; boundary=001a11c332b6b6bba60504f01447

--001a11c332b6b6bba60504f01447
Content-Type: text/plain; charset=UTF-8

Hi Denys, I have tried 1.5.1 and 1.3. All of them use ld-linux.so.3.
Actually in the /lib directory of these toolchains I only find
ld-linux.so.3.

Thank you.

2014-10-09 4:43 GMT+08:00 Denys Dmytriyenko <denis@denix.org>:

> On Tue, Oct 07, 2014 at 07:05:42PM -0700, Wy kevinthesun wrote:
> > However, a new problem occurs. Now when I tries run HelloWorld binary,
> > after "Hello World" is printed, the terminal also prints "Segmentation
> > fault". It seems that some memory problems occurs. I guess it comes from
> > that the 1.5.1 yocto system on boards hopes ld-linux-armhf.so.3 as
> dynamic
> > linker, instead of ld-linux.so.3, which is used by toolchain. There may
> be
> > some memory address problem between them. How can I solve it?
>
> As Nicolas suggested earlier, it seems you are trying to mix ABIs here.
> Because ld-linux-armhf.so.3 indicates the system uses hardfp ABI, but the
> example app you built with your toolchain wants ld-linux.so.3, which is
> usually the old softfp ABI. You'd need to match ABIs and the easiest
> solution
> is to use the same toolchain that was used to build the system (1.5.1?)
>
> --
> Denys
>
>
> > 2014-10-07 18:17 GMT-07:00 Wy kevinthesun <kevinthesunwy@gmail.com>:
> >
> > > Problem solved! It turns out it is the mismatch of ld-linux.so. I
> referred
> > > to this post
> > >
> http://stackoverflow.com/questions/24543474/cross-compiled-gnu-arm-beagleboneblack-from-windows-runtime-error-on-elf
> ,
> > > and found my problem was exactly the same: the binary needs
> > > /lib/ld-linux.so.3 to run, but that file is missing in the 1.5.1 yocto
> > > system on board. Then I copied ld-linux.so.3 file from Yocto toolchain
> on
> > > my pc. Then it works!
> > >
> > > Thank you!
> > >
> > > 2014-10-07 8:21 GMT-07:00 Nicolas Dechesne <
> nicolas.dechesne@linaro.org>:
> > >
> > > On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun <
> kevinthesunwy@gmail.com>
> > >> wrote:
> > >> > Hi, I am new to Yocto Project and learning to develop software on
> Atmel
> > >> > SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I
> followed
> > >> the
> > >> > instructions and got the 1.6.1 toolchain
> > >> >
> > >> > poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.1.sh
> .
> > >> >
> > >> > I can compile the simple HelloWorld program and binary file is made.
> > >> Then I
> > >> > copied the binary file
> > >> >
> > >> > into board and tried to run it. However, when I changed to the file
> > >> located
> > >> > directory and type
> > >> >
> > >> > "./Hello", it returned "sh: ./Hello: No such file or directory".
> Then I
> > >> > tried "sh Hello", it gave
> > >> >
> > >> > me  "Hello: Hello: cannot execute binary file ". If I type "file
> > >> Hello", it
> > >> > gives "Hello: ELF 32-bit
> > >> >  LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked
> (uses
> > >> > shared libs), for GNU/Linux 2.6.16,
> > >> > BuildID[sha1]=9933a2d2ce212099c5f9902a8e612c1423e136da, not
> stripped". I
> > >> > googled and someone
> > >> >
> > >> > said the problem may be the toolchain. Then I tried 1.3, 1.5.1
> > >> toolchain for
> > >> > arm, but still same
> > >> >
> > >> > error. Could you please help me about this problem?
> > >>
> > >>
> > >> i suspect this is an armv7 soft-float vs hard-float mismatch. Either
> > >> your prebuilt OE system is configured with soft-float and the
> > >> toolchain you use compiled for hard-float by default, or the other way
> > >> around. can you check how you've compile HelloWolrd and check the
> > >> other ABI?
> > >>
> > >
> > >
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c332b6b6bba60504f01447
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Denys, I have tried 1.5.1 and 1.3. All of them use=
  ld-linux.so.3. Actually in the /lib directory of these toolchains I only =
find ld-linux.so.3.<br><br></div>Thank you.<br></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">2014-10-09 4:43 GMT+08:00 Denys Dmytriy=
enko <span dir=3D"ltr">&lt;<a href=3D"mailto:denis@denix.org" target=3D"_bl=
ank">denis@denix.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On Tue, Oct 07, 2014 at 07:05:42PM -0700, Wy kevinthesun wrote=
:<br>
&gt; However, a new problem occurs. Now when I tries run HelloWorld binary,=
<br>
&gt; after &quot;Hello World&quot; is printed, the terminal also prints &qu=
ot;Segmentation<br>
&gt; fault&quot;. It seems that some memory problems occurs. I guess it com=
es from<br>
&gt; that the 1.5.1 yocto system on boards hopes ld-linux-armhf.so.3 as dyn=
amic<br>
&gt; linker, instead of ld-linux.so.3, which is used by toolchain. There ma=
y be<br>
&gt; some memory address problem between them. How can I solve it?<br>
<br>
</span>As Nicolas suggested earlier, it seems you are trying to mix ABIs he=
re.<br>
Because ld-linux-armhf.so.3 indicates the system uses hardfp ABI, but the<b=
r>
example app you built with your toolchain wants ld-linux.so.3, which is<br>
usually the old softfp ABI. You&#39;d need to match ABIs and the easiest so=
lution<br>
is to use the same toolchain that was used to build the system (1.5.1?)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Denys<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; 2014-10-07 18:17 GMT-07:00 Wy kevinthesun &lt;<a href=3D"mailto:kevint=
hesunwy@gmail.com">kevinthesunwy@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; &gt; Problem solved! It turns out it is the mismatch of ld-linux.so. I=
 referred<br>
&gt; &gt; to this post<br>
&gt; &gt; <a href=3D"http://stackoverflow.com/questions/24543474/cross-comp=
iled-gnu-arm-beagleboneblack-from-windows-runtime-error-on-elf" target=3D"_=
blank">http://stackoverflow.com/questions/24543474/cross-compiled-gnu-arm-b=
eagleboneblack-from-windows-runtime-error-on-elf</a>,<br>
&gt; &gt; and found my problem was exactly the same: the binary needs<br>
&gt; &gt; /lib/ld-linux.so.3 to run, but that file is missing in the 1.5.1 =
yocto<br>
&gt; &gt; system on board. Then I copied ld-linux.so.3 file from Yocto tool=
chain on<br>
&gt; &gt; my pc. Then it works!<br>
&gt; &gt;<br>
&gt; &gt; Thank you!<br>
&gt; &gt;<br>
&gt; &gt; 2014-10-07 8:21 GMT-07:00 Nicolas Dechesne &lt;<a href=3D"mailto:=
nicolas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt;:<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun &lt;<a href=3D"mai=
lto:kevinthesunwy@gmail.com">kevinthesunwy@gmail.com</a>&gt;<br>
&gt; &gt;&gt; wrote:<br>
&gt; &gt;&gt; &gt; Hi, I am new to Yocto Project and learning to develop so=
ftware on Atmel<br>
&gt; &gt;&gt; &gt; SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-buil=
t. I followed<br>
&gt; &gt;&gt; the<br>
&gt; &gt;&gt; &gt; instructions and got the 1.6.1 toolchain<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; <a href=3D"http://poky-eglibc-i686-core-image-sato-armv7=
a-vfp-neon-toolchain-1.6.1.sh" target=3D"_blank">poky-eglibc-i686-core-imag=
e-sato-armv7a-vfp-neon-toolchain-1.6.1.sh</a>.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; I can compile the simple HelloWorld program and binary f=
ile is made.<br>
&gt; &gt;&gt; Then I<br>
&gt; &gt;&gt; &gt; copied the binary file<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; into board and tried to run it. However, when I changed =
to the file<br>
&gt; &gt;&gt; located<br>
&gt; &gt;&gt; &gt; directory and type<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; &quot;./Hello&quot;, it returned &quot;sh: ./Hello: No s=
uch file or directory&quot;. Then I<br>
&gt; &gt;&gt; &gt; tried &quot;sh Hello&quot;, it gave<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; me=C2=A0 &quot;Hello: Hello: cannot execute binary file =
&quot;. If I type &quot;file<br>
&gt; &gt;&gt; Hello&quot;, it<br>
&gt; &gt;&gt; &gt; gives &quot;Hello: ELF 32-bit<br>
&gt; &gt;&gt; &gt;=C2=A0 LSB=C2=A0 executable, ARM, EABI5 version 1 (SYSV),=
 dynamically linked (uses<br>
&gt; &gt;&gt; &gt; shared libs), for GNU/Linux 2.6.16,<br>
&gt; &gt;&gt; &gt; BuildID[sha1]=3D9933a2d2ce212099c5f9902a8e612c1423e136da=
, not stripped&quot;. I<br>
&gt; &gt;&gt; &gt; googled and someone<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; said the problem may be the toolchain. Then I tried 1.3,=
 1.5.1<br>
&gt; &gt;&gt; toolchain for<br>
&gt; &gt;&gt; &gt; arm, but still same<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; error. Could you please help me about this problem?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; i suspect this is an armv7 soft-float vs hard-float mismatch.=
 Either<br>
&gt; &gt;&gt; your prebuilt OE system is configured with soft-float and the=
<br>
&gt; &gt;&gt; toolchain you use compiled for hard-float by default, or the =
other way<br>
&gt; &gt;&gt; around. can you check how you&#39;ve compile HelloWolrd and c=
heck the<br>
&gt; &gt;&gt; other ABI?<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</div></div></blockquote></div><br></div>

--001a11c332b6b6bba60504f01447--
