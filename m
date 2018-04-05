Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54292E00A75; Thu,  5 Apr 2018 12:18:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C9B4E00903
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 12:18:05 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id z5-v6so2377868pln.1
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 12:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yFAWyBzg8CU0nEIWYUUZMvlrCWwDmyUgvY7kqS9676Y=;
	b=urlUPYZ3MwrAD4j9SQOMG5MoHoDyfbX+tmyiCk/ktbXWRKNTIwmKdgxsZfU7p1E+00
	5l/ZxqppExKb+WznZFsWJsrdSBsB7P5xyaTfL/NwvffjEwMRvxot6nAF8v4ht2GDBEN0
	A1o1GxiU5myVToymKtLBcWEz1sBVj6K3tc9QVTQmsbCfH9+tlBT6aXx91tXHvxw3Dj46
	ihEgVY+m97VTkpv2Jz191zH1+ecB/FQRiQD0900BdoLjhpq4Spo8899HYUf1k6Tehxxn
	tHrt9bwPzM5HDzy/2RqhydJhfzibAu9f71lNEUslwtlesOjUopNyio8j+iSHGbZeDyoN
	JStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yFAWyBzg8CU0nEIWYUUZMvlrCWwDmyUgvY7kqS9676Y=;
	b=GJS1M5DJYRSX/WHkVsfiuQu5HiaKWK6RFtgZUJSddQllhy3deBNL1b01Om9q5LbJ0H
	uC1pQwyG2pB4FzvfQUvtQMExlTu98jDde9wQFamNRR9qODb5VR9WOdyE5+qvT0Fs9Sbh
	pd7M/UEf4anlHx8NnuO8KGsFlqSwX3vTCxZeQ+Uy+CgXEdy7vpTv6zg27PTQELb6bC4T
	agCBQlLaBQ9O4QKiKT9ZU97wta2O1WkwJSFMo7Q+RejRne/lH5kWDWAeEtNmUIakvzuT
	4zQT7zyGVf6iBnihiihplNfUxejobh4vO7xR4vIpuVU0HZjqwEHxEsvv/QlvsN5hO/xf
	5RAw==
X-Gm-Message-State: AElRT7EXVZB6zj/m1mFfIxlWK7MTu5BJzO9raTh6VKJ8zlLLABlkv44n
	/RiU2DeOf7+7QiyVXtIdKD9P8GAC7kAR/a777T8=
X-Google-Smtp-Source: AIpwx4+aqdkriyk7pdq9QURRHEA8SdqQciKle1TyBspC7/kWu13N8GfLjswc5ynokLeOUqvPKR44EzbYU+zafnn6yjw=
X-Received: by 10.98.180.24 with SMTP id h24mr18152749pfn.213.1522955884586;
	Thu, 05 Apr 2018 12:18:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
	<CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
	<CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
	<CAGfzNigE-s30pWaGmvjgAnqRDgPr=ZiEJknev8NEPn1aLwst_g@mail.gmail.com>
	<CAMKF1srp1od_yxNdJBp-Gt7U_S4OEzk8vsh+bLkPbsRBg1WwQg@mail.gmail.com>
In-Reply-To: <CAMKF1srp1od_yxNdJBp-Gt7U_S4OEzk8vsh+bLkPbsRBg1WwQg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 05 Apr 2018 19:17:54 +0000
Message-ID: <CAMKF1spzhN3HQW1Cyt5sbT7PEPFX_4ptT=x8C9-qOmH=ULVFaQ@mail.gmail.com>
To: Chris Elledge <celledge@digitallumens.com>
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
X-List-Received-Date: Thu, 05 Apr 2018 19:18:06 -0000
Content-Type: multipart/alternative; boundary="f4f5e80c49f8826da105691eccfb"

--f4f5e80c49f8826da105691eccfb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 5, 2018 at 12:16 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Apr 5, 2018 at 11:53 AM Chris Elledge <celledge@digitallumens.com=
>
> wrote:
>
>> Unfortunately, removing the "+1" doesn't work. That results in a kernel
>> which claims to start, but doesn't progress.
>>
>> Changing it to an "|1" also doesn't work due to this error:
>> arch/arm/kernel/entry-common.S:117: Error: invalid operands (.text and
>> *ABS* sections) for `|'
>>
>> Doing this to the badr macro:
>>  #ifdef CONFIG_THUMB2_KERNEL
>>   adr\c \rd, \sym
>>   orr\c \rd, \rd, #1
>>
>
Sent too soon I mean remove ORR completely

>  #else
>>
>> Is giving me a "Bad Linux ARM zImage magic!" error on boot
>>
>> So, I don't think it's an easy change to the kernel.
>>
>
> What hppens if you don=E2=80=99t do any change
>
>>
>> -Chris
>>
>> On Wed, Apr 4, 2018 at 4:04 PM, Andre McCurdy <armccurdy@gmail.com>
>> wrote:
>>
>>> On Wed, Apr 4, 2018 at 9:14 AM, Andre McCurdy <armccurdy@gmail.com>
>>> wrote:
>>> > On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge
>>> > <celledge@digitallumens.com> wrote:
>>> >> Thanks for the feedback. I rolled back binutils to 2.28.0 by copying
>>> the
>>> >> yocto-2.3.3 binutils recipe directory into my custom layer. That has
>>> >> resolved the issue.
>>> >>
>>> >> I can confirm that binutils 2.29.0 also has the problem. I went from
>>> >> yocto-2.3 to 2.4.2 so I hadn't tried binutils 2.29.0 previously.
>>> There are
>>> >> also reports that openssl and libavcodec are broken when targeting a=
n
>>> ARM
>>> >> Thumb2 platform with binutils 2.29.*
>>> >
>>> > Yes, that makes sense. The binutils change is in both 2.29.0 and
>>> > 2.29.1 (and also in 2.30.0).
>>> >
>>> > The next useful experiment would be to stay with binutils 2.29.1 and
>>> > apply a patch to revert the one particular commit which caused the
>>> > change in behaviour:
>>> >
>>> >
>>> https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3Dcommitdi=
ff;h=3De645cf40b111daef4518a58547de577eb9379ccb
>>>
>>> The experiment of patching the kernel would also be useful, since I
>>> would guess that the final solution from upstream will involve a
>>> change to the kernel rather than reverting the change to binutils.
>>>
>>> Changing "+ 1" to "| 1" in the badr macro would be a universal
>>> solution for all versions of binutils, but for a quick test with
>>> binutils 2.29.1 you could simply remove the "+ 1" from the
>>> CONFIG_THUMB2_KERNEL case (ie make the ARM and Thumb2 versions of the
>>> macro identical).
>>>
>>>
>>> https://github.com/torvalds/linux/blob/master/arch/arm/include/asm/asse=
mbler.h#L197
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--f4f5e80c49f8826da105691eccfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Thu, Apr 5, 2018 a=
t 12:16 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div clas=
s=3D"gmail_quote"><div dir=3D"auto">On Thu, Apr 5, 2018 at 11:53 AM Chris E=
lledge &lt;<a href=3D"mailto:celledge@digitallumens.com" target=3D"_blank">=
celledge@digitallumens.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div>Unfortunately, removing the &quot;+1&quot; doesn&#39;t work. Th=
at results in a kernel which claims to start, but doesn&#39;t progress.<div=
><br><div>Changing it to an &quot;|1&quot; also doesn&#39;t work due to thi=
s error:</div><div>arch/arm/kernel/entry-common.S:117: Error: invalid opera=
nds (.text and *ABS* sections) for `|&#39;<br></div><div><br></div><div>Doi=
ng this to the badr macro:</div></div></div><div><div><div><div>=C2=A0#ifde=
f CONFIG_THUMB2_KERNEL</div><div>=C2=A0 adr\c \rd, \sym</div><div>=C2=A0 or=
r\c \rd, \rd, #1</div></div></div></div></blockquote></div></div></blockquo=
te><div dir=3D"auto"><br></div><div dir=3D"auto">Sent too soon I mean remov=
e ORR completely=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><div><div></div><=
div>=C2=A0#else</div></div><div><br></div></div></div><div><div><div>Is giv=
ing me a &quot;Bad Linux ARM zImage magic!&quot; error on boot</div><div><b=
r></div><div>So, I don&#39;t think it&#39;s an easy change to the kernel.</=
div></div></div></blockquote><div dir=3D"auto"><br></div></div></div><div><=
div class=3D"gmail_quote"><div dir=3D"auto">What hppens if you don=E2=80=99=
t do any change=C2=A0</div></div></div><div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div><div><div></div></div></div><div><div><div>=
<br></div><div>-Chris</div></div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Wed, Apr 4, 2018 at 4:04 PM, Andre McCurdy <span>&=
lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"=
m_-6880632051023719215m_-6294133974547591877HOEnZb"><div class=3D"m_-688063=
2051023719215m_-6294133974547591877h5">On Wed, Apr 4, 2018 at 9:14 AM, Andr=
e McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armc=
curdy@gmail.com</a>&gt; wrote:<br>
&gt; On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge<br>
&gt; &lt;<a href=3D"mailto:celledge@digitallumens.com" target=3D"_blank">ce=
lledge@digitallumens.com</a>&gt; wrote:<br>
&gt;&gt; Thanks for the feedback. I rolled back binutils to 2.28.0 by copyi=
ng the<br>
&gt;&gt; yocto-2.3.3 binutils recipe directory into my custom layer. That h=
as<br>
&gt;&gt; resolved the issue.<br>
&gt;&gt;<br>
&gt;&gt; I can confirm that binutils 2.29.0 also has the problem. I went fr=
om<br>
&gt;&gt; yocto-2.3 to 2.4.2 so I hadn&#39;t tried binutils 2.29.0 previousl=
y. There are<br>
&gt;&gt; also reports that openssl and libavcodec are broken when targeting=
 an ARM<br>
&gt;&gt; Thumb2 platform with binutils 2.29.*<br>
&gt;<br>
&gt; Yes, that makes sense. The binutils change is in both 2.29.0 and<br>
&gt; 2.29.1 (and also in 2.30.0).<br>
&gt;<br>
&gt; The next useful experiment would be to stay with binutils 2.29.1 and<b=
r>
&gt; apply a patch to revert the one particular commit which caused the<br>
&gt; change in behaviour:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://sourceware.org/git/gitweb.cgi?p=3Dbinut=
ils-gdb.git;a=3Dcommitdiff;h=3De645cf40b111daef4518a58547de577eb9379ccb" re=
l=3D"noreferrer" target=3D"_blank">https://sourceware.org/git/gitweb.cgi?p=
=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3De645cf40b111daef4518a58547de577eb937=
9ccb</a><br>
<br>
</div></div>The experiment of patching the kernel would also be useful, sin=
ce I<br>
would guess that the final solution from upstream will involve a<br>
change to the kernel rather than reverting the change to binutils.<br>
<br>
Changing &quot;+ 1&quot; to &quot;| 1&quot; in the badr macro would be a un=
iversal<br>
solution for all versions of binutils, but for a quick test with<br>
binutils 2.29.1 you could simply remove the &quot;+ 1&quot; from the<br>
CONFIG_THUMB2_KERNEL case (ie make the ARM and Thumb2 versions of the<br>
macro identical).<br>
<br>
=C2=A0 <a href=3D"https://github.com/torvalds/linux/blob/master/arch/arm/in=
clude/asm/assembler.h#L197" rel=3D"noreferrer" target=3D"_blank">https://gi=
thub.com/torvalds/linux/blob/master/arch/arm/include/asm/assembler.h#L197</=
a><br>
</blockquote></div><br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></blockquote></div></div>

--f4f5e80c49f8826da105691eccfb--
