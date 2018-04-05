Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4FBBE00A75; Thu,  5 Apr 2018 12:16:28 -0700 (PDT)
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
	*      [209.85.160.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AB7E00BC3
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 12:16:24 -0700 (PDT)
Received: by mail-pl0-f47.google.com with SMTP id g20-v6so20513248plo.9
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 12:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SCEmkV7u8ybHkyAXLjtGN2FGPX5FBkCvSwttpueD62Y=;
	b=Hia5ox7CgehIA3/6TyZskKllUlFLEyQYDb0a+Luxi0XDDEi6QkC2+QZEDNnkTY3u3u
	l0GYcJ2Wo0cjUtXpx7YnJaVa3VIqesRnZuwInn/FwE8AqeO8sZpniCrk8BVwQOIgAxGf
	H8RCLvQx39YxL90ACP57w8Sv3UgSCdfC2CgvzfDzAqVXePhQNs3IDsQ2Gc71rrmo2k+i
	G77JV7VEEdN6z0bUEHeEU2NUYuTUa0vtIDxd4GZrnJYaFRZtXWMzTaCagYJBGpbtSMTy
	UYMXg9XNJ/g/3rJ+AcpoF4/UoHbPvDmxDmZ9YVOtadzggTKOJdauVP+mLakA33vKjToW
	oZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SCEmkV7u8ybHkyAXLjtGN2FGPX5FBkCvSwttpueD62Y=;
	b=CvhabraYaqA+namT562waNBqPaoLcXT4MQXl1XjpseUD6ITwQFUC446tOSxwTIQKkI
	ikpd9s/a4vwxpdC8WS+zU8BFuxH35Qhn873cYitf7ibxYAUguZhxC7xl4hzcR6Mjje3C
	z/hdXjN8qIEs+EPpu0lxFuqaVOXelC7rRr9hS2xOWH+h+ig9LI/Iz02LteSZH6c8kfoI
	zIXUprugh5sKn94VQ/UfYFEn3SlBtrn98NrWPbTF6buulpgx1xNkBi1+tcoAF2MGUNQq
	MjvxE8nrf/K6Gv6ubJ6oQ0Hh039Dnh9CCoTpJLZLIQ2819ou5t4ka5o/a/z5peQzL5t1
	0OJQ==
X-Gm-Message-State: AElRT7FdyaC/CWgBy71vswRihjyTn3LIuX7YeBa4layH9C8VO/1Y7JqO
	Ku0Ig6uJ5nim39RgSqMEn5x/6ED/GT/hgFl3QXk=
X-Google-Smtp-Source: AIpwx4+FBOcnpBsPstOEIShRfpXKXPSMRE5ZDO8UMSd/Geov6HCyyjaN1xwM1f0gbIh37qNN22Ry8MnyAH8QcQNDy6w=
X-Received: by 10.98.180.24 with SMTP id h24mr18149399pfn.213.1522955784166;
	Thu, 05 Apr 2018 12:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
	<CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
	<CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
	<CAGfzNigE-s30pWaGmvjgAnqRDgPr=ZiEJknev8NEPn1aLwst_g@mail.gmail.com>
In-Reply-To: <CAGfzNigE-s30pWaGmvjgAnqRDgPr=ZiEJknev8NEPn1aLwst_g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 05 Apr 2018 19:16:12 +0000
Message-ID: <CAMKF1srp1od_yxNdJBp-Gt7U_S4OEzk8vsh+bLkPbsRBg1WwQg@mail.gmail.com>
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
X-List-Received-Date: Thu, 05 Apr 2018 19:16:29 -0000
Content-Type: multipart/alternative; boundary="f4f5e80c49f886243a05691ec6c9"

--f4f5e80c49f886243a05691ec6c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 5, 2018 at 11:53 AM Chris Elledge <celledge@digitallumens.com>
wrote:

> Unfortunately, removing the "+1" doesn't work. That results in a kernel
> which claims to start, but doesn't progress.
>
> Changing it to an "|1" also doesn't work due to this error:
> arch/arm/kernel/entry-common.S:117: Error: invalid operands (.text and
> *ABS* sections) for `|'
>
> Doing this to the badr macro:
>  #ifdef CONFIG_THUMB2_KERNEL
>   adr\c \rd, \sym
>   orr\c \rd, \rd, #1
>  #else
>
> Is giving me a "Bad Linux ARM zImage magic!" error on boot
>
> So, I don't think it's an easy change to the kernel.
>

What hppens if you don=E2=80=99t do any change

>
> -Chris
>
> On Wed, Apr 4, 2018 at 4:04 PM, Andre McCurdy <armccurdy@gmail.com> wrote=
:
>
>> On Wed, Apr 4, 2018 at 9:14 AM, Andre McCurdy <armccurdy@gmail.com>
>> wrote:
>> > On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge
>> > <celledge@digitallumens.com> wrote:
>> >> Thanks for the feedback. I rolled back binutils to 2.28.0 by copying
>> the
>> >> yocto-2.3.3 binutils recipe directory into my custom layer. That has
>> >> resolved the issue.
>> >>
>> >> I can confirm that binutils 2.29.0 also has the problem. I went from
>> >> yocto-2.3 to 2.4.2 so I hadn't tried binutils 2.29.0 previously. Ther=
e
>> are
>> >> also reports that openssl and libavcodec are broken when targeting an
>> ARM
>> >> Thumb2 platform with binutils 2.29.*
>> >
>> > Yes, that makes sense. The binutils change is in both 2.29.0 and
>> > 2.29.1 (and also in 2.30.0).
>> >
>> > The next useful experiment would be to stay with binutils 2.29.1 and
>> > apply a patch to revert the one particular commit which caused the
>> > change in behaviour:
>> >
>> >
>> https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3Dcommitdif=
f;h=3De645cf40b111daef4518a58547de577eb9379ccb
>>
>> The experiment of patching the kernel would also be useful, since I
>> would guess that the final solution from upstream will involve a
>> change to the kernel rather than reverting the change to binutils.
>>
>> Changing "+ 1" to "| 1" in the badr macro would be a universal
>> solution for all versions of binutils, but for a quick test with
>> binutils 2.29.1 you could simply remove the "+ 1" from the
>> CONFIG_THUMB2_KERNEL case (ie make the ARM and Thumb2 versions of the
>> macro identical).
>>
>>
>> https://github.com/torvalds/linux/blob/master/arch/arm/include/asm/assem=
bler.h#L197
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f4f5e80c49f886243a05691ec6c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Thu, Apr 5, 2018 a=
t 11:53 AM Chris Elledge &lt;<a href=3D"mailto:celledge@digitallumens.com">=
celledge@digitallumens.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div>Unfortunately, removing the &quot;+1&quot; doesn&#39;t work. Th=
at results in a kernel which claims to start, but doesn&#39;t progress.<div=
><br><div>Changing it to an &quot;|1&quot; also doesn&#39;t work due to thi=
s error:</div><div>arch/arm/kernel/entry-common.S:117: Error: invalid opera=
nds (.text and *ABS* sections) for `|&#39;<br></div><div><br></div><div>Doi=
ng this to the badr macro:</div></div></div><div><div><div><div>=C2=A0#ifde=
f CONFIG_THUMB2_KERNEL</div><div>=C2=A0 adr\c \rd, \sym</div><div>=C2=A0 or=
r\c \rd, \rd, #1</div><div>=C2=A0#else</div></div><div><br></div></div></di=
v><div><div><div>Is giving me a &quot;Bad Linux ARM zImage magic!&quot; err=
or on boot</div><div><br></div><div>So, I don&#39;t think it&#39;s an easy =
change to the kernel.</div></div></div></blockquote><div dir=3D"auto"><br><=
/div><div dir=3D"auto">What hppens if you don=E2=80=99t do any change=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div><div><div></div></div></div><div>=
<div><div><br></div><div>-Chris</div></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Wed, Apr 4, 2018 at 4:04 PM, Andre McCur=
dy <span>&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armcc=
urdy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 class=3D"m_-6294133974547591877HOEnZb"><div class=3D"m_-629413397454759187=
7h5">On Wed, Apr 4, 2018 at 9:14 AM, Andre McCurdy &lt;<a href=3D"mailto:ar=
mccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt; wrote:<br>
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
</blockquote></div></div>

--f4f5e80c49f886243a05691ec6c9--
