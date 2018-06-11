Return-Path: <o_o@ieee.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 603CBE022F6; Mon, 11 Jun 2018 16:14:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 557FDE022E9
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 16:14:08 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id g7-v6so25865293ioh.11
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 16:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ieee-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KeMlBX/BRkgMNfoJo4R7ngoZADp98Fej1bIuUYvVeAI=;
	b=HdkGIGyEYdmz6NpP2OC1k1H2W90o/KMWzcj1unk82CypRaR8qnQDlImZ1Pi/EP9Tmm
	riQeA0LJpH4ymgbTHQ3pukubdLOKQeGr+I8zyH7t2Na0Tggc4L8BvbDO9ZU1whNfUXEM
	2DkWSFYSBYgEX1pok9dM7kvOceZVwYTZmUhl56e6t9geo5VSyZTdqvxd6W+6AUU+HrK/
	GSmYHZg3QXx9EKq8fFVVq7uH8XEjqLIt7X6jCKyAFQfduhgYn3sMvBJ0yPKehx7DMY+7
	ndh6M2pTJWQGzI4qKb159JqkgVReanc8wgCA2YUe05gjegUeZFwuJiFRM+TTxd+3ZbGq
	gXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KeMlBX/BRkgMNfoJo4R7ngoZADp98Fej1bIuUYvVeAI=;
	b=GrFv86MQILQkeq6eURkO4qC35W33A9owF6wYhKPdehjMB1Pb7lOFXnV1wHJbpRUTs5
	w3LxYb0GSUugGPGtoFYv6BXkgYRRZbXhmQrwrK908HKi6GGCcVHpCseFzFk3Vd5jqtyB
	aMW1RN3r+ialvkiz66RiU4QYLP7XI73zRJxvZi1lVWLA2Mn1TSmtNSF0nr3Bcx27+1ZL
	qyzbRnGG7ugez7sb6wmb8Wn2aNuiUjM2/GLpYhd1INNPb86KEJSzsK5AfxX8sGBVK2a4
	8by8ZRnM8akjMsYqNMqHMRKKRiNxIYMI1TTC+mbqpqQhay2rVM4b//IjbtCEFKvpEItB
	UXDg==
X-Gm-Message-State: APt69E2cik+gik40e7od37uIGcbQ1n/zVxg/RW3Qtt38ChGCe2yUckhi
	CqFassGfhY2RP7/fP+PiCN42o+10kdVtpvTloyzwFw==
X-Google-Smtp-Source: ADUXVKKUkGulqIWMpcWdh8Zw4WF0y0fVmAVrhI9y3IkqT3PdoCLagK61ULtuxN9IXB5qp8z1WKsDa8zWzdYrwVfaAT8=
X-Received: by 2002:a6b:c689:: with SMTP id
	w131-v6mr1116408iof.79.1528758847568; 
	Mon, 11 Jun 2018 16:14:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4d51:0:0:0:0:0 with HTTP; Mon, 11 Jun 2018 16:14:07
	-0700 (PDT)
In-Reply-To: <611dfb80-87b3-33f7-7bdc-3a3f36a6be7f@gmail.com>
References: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
	<5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
	<CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
	<611dfb80-87b3-33f7-7bdc-3a3f36a6be7f@gmail.com>
From: Ricardo Ramirez <o_o@ieee.org>
Date: Mon, 11 Jun 2018 18:14:07 -0500
Message-ID: <CAMXie8GXRqKFwCOOPApHUcxpEo1K9NeCVazsqSvWtzZ-Bxsqzw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Mon, 11 Jun 2018 23:14:09 -0000
Content-Type: multipart/alternative; boundary="0000000000000ea3ab056e65e8ad"

--0000000000000ea3ab056e65e8ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply, Khem!

What steps should I follow to be able to verify the build I put together
for SPARCv9 works (or doesn't)?

I realize it is a pretty non-conventional (newbie like) question but I'd
like to follow a methodological procedure to validate the build.

I appreciate your answer.

-R

On Mon, Jun 11, 2018 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:

> Hi Ricardo
>
> On 6/10/18 7:06 PM, Ricardo Ramirez wrote:
>
>> Hi David,
>>
>> Thanks for the prompt reply!
>>
>> My question was a follow up of Khem's inquire (posted on 2014-05-02)
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2014-May/019387.html
>>
>>
> this reply still holds as of today.
>
> Using the links you sent me, I found that the old OE-Classic branch
>> supports sparc32 but didn't see any sparc64
>>
>> http://layers.openembedded.org/layerindex/oe-classic/recipes/
>>
>> As such, I'd like to know what steps I need to follow in order to enable
>> a SPARCv9 machine in Yocto.
>>
>>
> We support arm/aarch64/mips/mips64/ppc/ppc64/riscv64/x86/x86_64 for major
> arches in OE-Core, we also carry patches to support SH4 but do not test
> actively for it. sparc support is in there atleast I see basic constructs
> are there. Its should be possible to build upon that easily. But it will
> not work out of box to set your expectations right.
>
> I appreciate your answer.
>>
>> -R
>>
>>
>> On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David <david.reyna@windriver.com
>> <mailto:david.reyna@windriver.com>> wrote:
>>
>>     Hi Ricardo,____
>>
>>     __ __
>>
>>     If you are asking about the list of MACHINE types that Yocto Project
>>     supports, then the best place to look is in the Layer Index:____
>>
>>     __ __
>>
>>     https://layers.openembedded.org/layerindex/branch/master/layers/
>>     <https://layers.openembedded.org/layerindex/branch/master/layers/
>> >____
>>
>>     __ __
>>
>>     Click on the =E2=80=9CMachines=E2=80=9D tab, click on the =E2=80=9CS=
earch=E2=80=9D tab with or
>>     without a search value, and see the glorious list.____
>>
>>     __ __
>>
>>     The same goes for supported layers, recipes, classes, and distro
>>     values.____
>>
>>     __ __
>>
>>     You can change the =E2=80=9CBranch=E2=80=9D value to see the MACHINE=
=E2=80=99s per
>> release.____
>>
>>     __ __
>>
>>     - David Reyna____
>>
>>     __ __
>>
>>     *From:*yocto-bounces@yoctoproject.org
>>     <mailto:yocto-bounces@yoctoproject.org>
>>     [mailto:yocto-bounces@yoctoproject.org
>>     <mailto:yocto-bounces@yoctoproject.org>] *On Behalf Of *Ricardo
>> Ramirez
>>     *Sent:* Sunday, June 10, 2018 5:07 PM
>>     *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     *Subject:* Re: [yocto] Target CPU architectures that Yocto Project
>>     Support____
>>
>>     __ __
>>
>>     Hi,____
>>
>>     __ __
>>
>>     Naive question from a newbie. How can this be achieved? I'd
>>     appreciate if you could please shed some light on what steps need to
>>     be followed?____
>>
>>     __ __
>>
>>     Thanks in advance,____
>>
>>     __ __
>>
>>     -R____
>>
>>
>>
>>

--0000000000000ea3ab056e65e8ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the reply, Khem!<div><br></div><div>What steps =
should I follow to be able to verify the build I put together for SPARCv9 w=
orks (or doesn&#39;t)?</div><div><br></div><div>I realize it is a pretty no=
n-conventional (newbie like) question but I&#39;d like to follow a methodol=
ogical procedure to validate the build.</div><div><br></div><div>I apprecia=
te=C2=A0your answer.</div><div><br></div><div>-R</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Mon, Jun 11, 2018 at 5:41 PM,=
 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Ricardo<span class=3D""><br>
<br>
On 6/10/18 7:06 PM, Ricardo Ramirez wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi David,<br>
<br>
Thanks for the prompt reply!<br>
<br>
My question was a follow up of Khem&#39;s inquire (posted on 2014-05-02)<br=
>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-May/019387.h=
tml" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wb=
r>/pipermail/yocto/2014-May/0193<wbr>87.html</a><br>
<br>
</blockquote>
<br></span>
this reply still holds as of today.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Using the links you sent me, I found that the old OE-Classic branch support=
s sparc32 but didn&#39;t see any sparc64<br>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/oe-classic/recipes/" r=
el=3D"noreferrer" target=3D"_blank">http://layers.openembedded.org<wbr>/lay=
erindex/oe-classic/recipes<wbr>/</a><br>
<br>
As such, I&#39;d like to know what steps I need to follow in order to enabl=
e a SPARCv9 machine in Yocto.<br>
<br>
</blockquote>
<br></span>
We support arm/aarch64/mips/mips64/ppc/pp<wbr>c64/riscv64/x86/x86_64 for ma=
jor arches in OE-Core, we also carry patches to support SH4 but do not test=
 actively for it. sparc support is in there atleast I see basic constructs =
are there. Its should be possible to build upon that easily. But it will no=
t work out of box to set your expectations right.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">
I appreciate=C2=A0your answer.<br>
<br>
-R<br>
<br>
<br></span>
On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David &lt;<a href=3D"mailto:david.r=
eyna@windriver.com" target=3D"_blank">david.reyna@windriver.com</a> &lt;mai=
lto:<a href=3D"mailto:david.reyna@windriver.com" target=3D"_blank">david.re=
yna@windriver.<wbr>com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 Hi Ricardo,____<br>
<br>
=C2=A0 =C2=A0 __ __<span class=3D""><br>
<br>
=C2=A0 =C2=A0 If you are asking about the list of MACHINE types that Yocto =
Project<br></span>
=C2=A0 =C2=A0 supports, then the best place to look is in the Layer Index:_=
___<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://layers.openembedded.org/layerindex/branch/=
master/layers/" rel=3D"noreferrer" target=3D"_blank">https://layers.openemb=
edded.or<wbr>g/layerindex/branch/master/lay<wbr>ers/</a><br>
=C2=A0 =C2=A0 &lt;<a href=3D"https://layers.openembedded.org/layerindex/bra=
nch/master/layers/" rel=3D"noreferrer" target=3D"_blank">https://layers.ope=
nembedded.o<wbr>rg/layerindex/branch/master/la<wbr>yers/</a>&gt;____<br>
<br>
=C2=A0 =C2=A0 __ __<span class=3D""><br>
<br>
=C2=A0 =C2=A0 Click on the =E2=80=9CMachines=E2=80=9D tab, click on the =E2=
=80=9CSearch=E2=80=9D tab with or<br></span>
=C2=A0 =C2=A0 without a search value, and see the glorious list.____<br>
<br>
=C2=A0 =C2=A0 __ __<span class=3D""><br>
<br>
=C2=A0 =C2=A0 The same goes for supported layers, recipes, classes, and dis=
tro<br></span>
=C2=A0 =C2=A0 values.____<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 You can change the =E2=80=9CBranch=E2=80=9D value to see the =
MACHINE=E2=80=99s per release.____<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 - David Reyna____<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 *From:*<a href=3D"mailto:yocto-bounces@yoctoproject.org" targ=
et=3D"_blank">yocto-bounces@yoctoproj<wbr>ect.org</a><br>
=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" =
target=3D"_blank">yocto-bounces@yoctopro<wbr>ject.org</a>&gt;<br>
=C2=A0 =C2=A0 [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" tar=
get=3D"_blank">yocto-bounces@yoctopro<wbr>ject.org</a><br>
=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" =
target=3D"_blank">yocto-bounces@yoctopro<wbr>ject.org</a>&gt;] *On Behalf O=
f *Ricardo Ramirez<br>
=C2=A0 =C2=A0 *Sent:* Sunday, June 10, 2018 5:07 PM<br>
=C2=A0 =C2=A0 *To:* <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bl=
ank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctopro=
ject.org" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>
=C2=A0 =C2=A0 *Subject:* Re: [yocto] Target CPU architectures that Yocto Pr=
oject<br>
=C2=A0 =C2=A0 Support____<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 Hi,____<br>
<br>
=C2=A0 =C2=A0 __ __<span class=3D""><br>
<br>
=C2=A0 =C2=A0 Naive question from a newbie. How can this be achieved? I&#39=
;d<br>
=C2=A0 =C2=A0 appreciate if you could please shed some light on what steps =
need to<br></span>
=C2=A0 =C2=A0 be followed?____<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 Thanks in advance,____<br>
<br>
=C2=A0 =C2=A0 __ __<br>
<br>
=C2=A0 =C2=A0 -R____<br>
<br>
<br>
<br>
</blockquote>
</blockquote></div><br></div>

--0000000000000ea3ab056e65e8ad--
