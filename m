Return-Path: <celledge@digitallumens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6F37E00BE9; Thu,  5 Apr 2018 12:29:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AC5CE00BE9
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 12:29:34 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r131so10244530wmb.2
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 12:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=digitallumens-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fT55YOXVb8+sx3MfA06dzmvv/LpOOVnDtp6scmAHSJE=;
	b=fqGNIt7dRqQg9QcWLRDvpRVUO5wEti0F7BvMckWAW/nLeuDRgcE1aPPv2djgwTtxgA
	txC/tD/eOdxuavvOHq1J2j+lm0X908eu4Ba4fwfbUG7teLACYLFKQEiYOD6gjU9hR8hX
	CDllwkLv8IUcIb7Sm9n6yhEEcl9EtF7no4tpmDrze+WnaxsTR530M6tvKxRRq6jLXLXh
	znWky0jK+onm8Fr9IbbemRthUsM0gfEpow5LTRIE57TsnZPhCavzeeKn/z5D8bd4tt1F
	KXOwD0X4wo08JUoOLj3oxbHUmWgvBqPSI36RMPDYhlDs00I6gCEiH9Lbq/BkOLhOPld/
	iYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fT55YOXVb8+sx3MfA06dzmvv/LpOOVnDtp6scmAHSJE=;
	b=jC5HXo9fm1O+HYkX6tcOBIWT4/28osXtTR+7iqfAESaAHd6bzZujTIBa2TfDdUvlyQ
	jX5FEw2tLFU5wi31+op8esgyG85u5I6jx+verm11bUMATu/glV0iI1VWg8gyjVttgsCu
	ZUK1QXs+kYDEaRYpfYtoi0AGNog/iPxW+QVbXJA5qKphAjwLCqnup5G5Amjfpwllx4Rw
	dbd+HfOu58N3T0857HNlj7xH+Dhm2K7o08SwpwbhaRhKuY0i801cbxVi4UdbHodMUBLy
	mq3/BlKM6NHkBF1yUE/BQ/dDZyb9GVxlhutzxlWdOqikSA3BJ3Uhu9XnejHq39pygbbM
	/jHg==
X-Gm-Message-State: ALQs6tAslEmnsQB9vQY6SpPyWt/TxoERxLF3ziBFVDCLkfTz6ZnxCTSn
	E56wuiPXDWoxZ2BqtwKTQuhMeTRwv6H6ml/DXaFNPQ==
X-Google-Smtp-Source: AIpwx49G76wyudrt7BIDcflhojlMOqfChHTJTysLlUJfx7Uuee38Jtwi6hUVm4buWarbozISKFJcmtqe5dcbgtI05hM=
X-Received: by 10.46.134.89 with SMTP id i25mr11611891ljj.121.1522956573829;
	Thu, 05 Apr 2018 12:29:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.146.85 with HTTP; Thu, 5 Apr 2018 12:29:33 -0700 (PDT)
In-Reply-To: <CAMKF1spzhN3HQW1Cyt5sbT7PEPFX_4ptT=x8C9-qOmH=ULVFaQ@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
	<CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
	<CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
	<CAGfzNigE-s30pWaGmvjgAnqRDgPr=ZiEJknev8NEPn1aLwst_g@mail.gmail.com>
	<CAMKF1srp1od_yxNdJBp-Gt7U_S4OEzk8vsh+bLkPbsRBg1WwQg@mail.gmail.com>
	<CAMKF1spzhN3HQW1Cyt5sbT7PEPFX_4ptT=x8C9-qOmH=ULVFaQ@mail.gmail.com>
From: Chris Elledge <celledge@digitallumens.com>
Date: Thu, 5 Apr 2018 15:29:33 -0400
Message-ID: <CAGfzNiicm2xYuD5mhW0RQwHmR7f8CfdZPXxrszrue-dG8t6yJA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Thu, 05 Apr 2018 19:29:35 -0000
Content-Type: multipart/alternative; boundary="f4f5e80eea8c9784f305691ef559"

--f4f5e80eea8c9784f305691ef559
Content-Type: text/plain; charset="UTF-8"

If I have neither the +1 nor the ORR then the kernel boot does this:

Loading file '/boot/gateway3.dtb' to addr 0x21000000 with size 28500
(0x00006f54)...
Done
Loading file '/boot/zImage' to addr 0x22000000 with size 3182128
(0x00308e30)...
Done
Kernel image @ 0x22000000 [ 0x000000 - 0x308e30 ]
## Flattened Device Tree blob at 21000000
   Booting using the fdt blob at 0x21000000
   Loading Device Tree to 3fe2f000, end 3fe38f53 ... OK

Starting kernel ...

and it stalls until the hardware watchdog trips 16 seconds later.

-Chris

On Thu, Apr 5, 2018 at 3:17 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Thu, Apr 5, 2018 at 12:16 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Thu, Apr 5, 2018 at 11:53 AM Chris Elledge <celledge@digitallumens.com>
>> wrote:
>>
>>> Unfortunately, removing the "+1" doesn't work. That results in a kernel
>>> which claims to start, but doesn't progress.
>>>
>>> Changing it to an "|1" also doesn't work due to this error:
>>> arch/arm/kernel/entry-common.S:117: Error: invalid operands (.text and
>>> *ABS* sections) for `|'
>>>
>>> Doing this to the badr macro:
>>>  #ifdef CONFIG_THUMB2_KERNEL
>>>   adr\c \rd, \sym
>>>   orr\c \rd, \rd, #1
>>>
>>
> Sent too soon I mean remove ORR completely
>
>>  #else
>>>
>>> Is giving me a "Bad Linux ARM zImage magic!" error on boot
>>>
>>> So, I don't think it's an easy change to the kernel.
>>>
>>

--f4f5e80eea8c9784f305691ef559
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">If I have neither the +1 nor th=
e ORR then the kernel boot does this:</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra"><div class=3D"gmail_extra">Loading file &#3=
9;/boot/gateway3.dtb&#39; to addr 0x21000000 with size 28500 (0x00006f54)..=
.</div><div class=3D"gmail_extra">Done</div><div class=3D"gmail_extra">Load=
ing file &#39;/boot/zImage&#39; to addr 0x22000000 with size 3182128 (0x003=
08e30)...</div><div class=3D"gmail_extra">Done</div><div class=3D"gmail_ext=
ra">Kernel image @ 0x22000000 [ 0x000000 - 0x308e30 ]</div><div class=3D"gm=
ail_extra">## Flattened Device Tree blob at 21000000</div><div class=3D"gma=
il_extra">=C2=A0 =C2=A0Booting using the fdt blob at 0x21000000</div><div c=
lass=3D"gmail_extra">=C2=A0 =C2=A0Loading Device Tree to 3fe2f000, end 3fe3=
8f53 ... OK</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Starting kernel ...</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">and it stalls until the hardware watchdog trips 16 seco=
nds later.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">-Chris</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Thu, Apr 5, 2018 at 3:17 PM, Khem Raj <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><=
br><div class=3D"gmail_quote"><span class=3D"gmail-"><div dir=3D"auto">On T=
hu, Apr 5, 2018 at 12:16 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.c=
om" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail_quote"><di=
v dir=3D"auto">On Thu, Apr 5, 2018 at 11:53 AM Chris Elledge &lt;<a href=3D=
"mailto:celledge@digitallumens.com" target=3D"_blank">celledge@digitallumen=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div>Unfortunately, removing the &quot;+1&quot; doesn&#39;t work. That=
 results in a kernel which claims to start, but doesn&#39;t progress.<div><=
br><div>Changing it to an &quot;|1&quot; also doesn&#39;t work due to this =
error:</div><div>arch/arm/kernel/entry-common.<wbr>S:117: Error: invalid op=
erands (.text and *ABS* sections) for `|&#39;<br></div><div><br></div><div>=
Doing this to the badr macro:</div></div></div><div><div><div><div>=C2=A0#i=
fdef CONFIG_THUMB2_KERNEL</div><div>=C2=A0 adr\c \rd, \sym</div><div>=C2=A0=
 orr\c \rd, \rd, #1</div></div></div></div></blockquote></div></div></block=
quote><div dir=3D"auto"><br></div></span><div dir=3D"auto">Sent too soon I =
mean remove ORR completely=C2=A0</div><div><div class=3D"gmail-h5"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div><div><div><div></div>=
<div>=C2=A0#else</div></div><div><br></div></div></div><div><div><div>Is gi=
ving me a &quot;Bad Linux ARM zImage magic!&quot; error on boot</div><div><=
br></div><div>So, I don&#39;t think it&#39;s an easy change to the kernel.<=
/div></div></div></blockquote></div></div></blockquote></div></div></div></=
div></blockquote></div></div></div>

--f4f5e80eea8c9784f305691ef559--
