Return-Path: <celledge@digitallumens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC447E008D3; Thu,  5 Apr 2018 11:53:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C50F0E00823
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 11:53:07 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id t67so8349172wmt.0
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 11:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=digitallumens-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8RRTN0qYIFOzlkR7NoIFXg8tXBnuuueCmUat9WpkWA4=;
	b=wfUrmU1/wbK4hQoCvQV4i5MMzubReEhQ/Rr2zU08f8f5N/0Pbog0bcuIaiDTyCy6XZ
	mo9uP+iwXoMDgrgrHoAbrhpSUWnD9+GCCkJO4jkdXFGrfolsgenLi5tEr3K6oiogfERs
	1tr6is+/uZ9fzOFqTEeBq8oNHv6hB1DVV9oULmIxhNsB/DmwNIDM8fET3RrkOl54kuIG
	IQBrPcPPLIYsVMGSsDXRs/RselVP+Vc9MLvJ+2hU5txYwFlUq0xySYjybew6nvOQL/Fr
	G+0fcePStH7gdNeeosn9d9H8k/zwbotJJDJGaQaskxeuY2nXsUAxkNVsvIKfuvXQrXdZ
	+NBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8RRTN0qYIFOzlkR7NoIFXg8tXBnuuueCmUat9WpkWA4=;
	b=S7e5+MPTnjjEVYuoGqvA8uHfpedPEtv3I5GJYV/9yZ/ome4x4cCUw5w53oi/cVkIFZ
	H2ALBhZKoLMJY1GBVyFI3DCw9xL9q3O54rw/9OrCGfv13P6ETbo61PdG5KdQ2w+maXUy
	f4vnaavKZ/Im16f2vKEwv/xFWHa86oeXuUvSWR1M9F5xMUAToqBuYG03Vk6czQbp1k3s
	/mvRWSIxGxklKgjsFuKNpY4baxncX+lDu3r3iYWp9bamX67x/58FIOWD6UVwvoRjeAZE
	QIaV73hcTp2AkOQE/pEuAQhGCD00SrLcTEgTYpsinN/nNQp42cCF7WBZxsPT9l7Qxtbt
	EoeA==
X-Gm-Message-State: ALQs6tCMP0f9YnIF+/Rz8TSdWNSvcwEE8tmxy0NJSpeVMFCsTNPmYNZh
	ErOfgund7LzMR1mnEG25PMp4aNN8h6ccnr6NpuXLtA==
X-Google-Smtp-Source: AIpwx4+5sr+OQnh4CFby9Q1BcOercGvMNT1Exj91jVdMOAFWeHGIR86/gvJ7iJv9X9M+4e+QMoaz8eSwNRtbT5UCe6A=
X-Received: by 10.46.134.89 with SMTP id i25mr11551670ljj.121.1522954386697;
	Thu, 05 Apr 2018 11:53:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.146.85 with HTTP; Thu, 5 Apr 2018 11:53:06 -0700 (PDT)
In-Reply-To: <CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
	<CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
	<CAJ86T=XGYjmRxmGxzY7a99CYNJ0P-9daMwPY0kv+na2Yw15reQ@mail.gmail.com>
From: Chris Elledge <celledge@digitallumens.com>
Date: Thu, 5 Apr 2018 14:53:06 -0400
Message-ID: <CAGfzNigE-s30pWaGmvjgAnqRDgPr=ZiEJknev8NEPn1aLwst_g@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
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
X-List-Received-Date: Thu, 05 Apr 2018 18:53:08 -0000
Content-Type: multipart/alternative; boundary="f4f5e80eea8c3a8b2705691e737a"

--f4f5e80eea8c3a8b2705691e737a
Content-Type: text/plain; charset="UTF-8"

Unfortunately, removing the "+1" doesn't work. That results in a kernel
which claims to start, but doesn't progress.

Changing it to an "|1" also doesn't work due to this error:
arch/arm/kernel/entry-common.S:117: Error: invalid operands (.text and
*ABS* sections) for `|'

Doing this to the badr macro:
 #ifdef CONFIG_THUMB2_KERNEL
  adr\c \rd, \sym
  orr\c \rd, \rd, #1
 #else

Is giving me a "Bad Linux ARM zImage magic!" error on boot

So, I don't think it's an easy change to the kernel.

-Chris

On Wed, Apr 4, 2018 at 4:04 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Wed, Apr 4, 2018 at 9:14 AM, Andre McCurdy <armccurdy@gmail.com> wrote:
> > On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge
> > <celledge@digitallumens.com> wrote:
> >> Thanks for the feedback. I rolled back binutils to 2.28.0 by copying the
> >> yocto-2.3.3 binutils recipe directory into my custom layer. That has
> >> resolved the issue.
> >>
> >> I can confirm that binutils 2.29.0 also has the problem. I went from
> >> yocto-2.3 to 2.4.2 so I hadn't tried binutils 2.29.0 previously. There
> are
> >> also reports that openssl and libavcodec are broken when targeting an
> ARM
> >> Thumb2 platform with binutils 2.29.*
> >
> > Yes, that makes sense. The binutils change is in both 2.29.0 and
> > 2.29.1 (and also in 2.30.0).
> >
> > The next useful experiment would be to stay with binutils 2.29.1 and
> > apply a patch to revert the one particular commit which caused the
> > change in behaviour:
> >
> >   https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;
> a=commitdiff;h=e645cf40b111daef4518a58547de577eb9379ccb
>
> The experiment of patching the kernel would also be useful, since I
> would guess that the final solution from upstream will involve a
> change to the kernel rather than reverting the change to binutils.
>
> Changing "+ 1" to "| 1" in the badr macro would be a universal
> solution for all versions of binutils, but for a quick test with
> binutils 2.29.1 you could simply remove the "+ 1" from the
> CONFIG_THUMB2_KERNEL case (ie make the ARM and Thumb2 versions of the
> macro identical).
>
>   https://github.com/torvalds/linux/blob/master/arch/arm/
> include/asm/assembler.h#L197
>

--f4f5e80eea8c3a8b2705691e737a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unfortunately, removing the &quot;+1&quot; doesn&#39;t wor=
k. That results in a kernel which claims to start, but doesn&#39;t progress=
.<div><br><div>Changing it to an &quot;|1&quot; also doesn&#39;t work due t=
o this error:</div><div>arch/arm/kernel/entry-common.S:117: Error: invalid =
operands (.text and *ABS* sections) for `|&#39;<br></div><div><br></div><di=
v>Doing this to the badr macro:</div><div><div>=C2=A0#ifdef CONFIG_THUMB2_K=
ERNEL</div><div>=C2=A0 adr\c \rd, \sym</div><div>=C2=A0 orr\c \rd, \rd, #1<=
/div><div>=C2=A0#else</div></div><div><br></div><div>Is giving me a &quot;B=
ad Linux ARM zImage magic!&quot; error on boot</div><div><br></div><div>So,=
 I don&#39;t think it&#39;s an easy change to the kernel.</div><div><br></d=
iv><div>-Chris</div></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Apr 4, 2018 at 4:04 PM, Andre McCurdy <span dir=3D=
"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurd=
y@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cl=
ass=3D"HOEnZb"><div class=3D"h5">On Wed, Apr 4, 2018 at 9:14 AM, Andre McCu=
rdy &lt;<a href=3D"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt; =
wrote:<br>
&gt; On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge<br>
&gt; &lt;<a href=3D"mailto:celledge@digitallumens.com">celledge@digitallume=
ns.com</a>&gt; wrote:<br>
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
l=3D"noreferrer" target=3D"_blank">https://sourceware.org/git/<wbr>gitweb.c=
gi?p=3Dbinutils-gdb.git;<wbr>a=3Dcommitdiff;h=3D<wbr>e645cf40b111daef4518a5=
8547de57<wbr>7eb9379ccb</a><br>
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
thub.com/torvalds/<wbr>linux/blob/master/arch/arm/<wbr>include/asm/assemble=
r.h#L197</a><br>
</blockquote></div><br></div>

--f4f5e80eea8c3a8b2705691e737a--
