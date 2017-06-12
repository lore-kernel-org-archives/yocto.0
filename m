Return-Path: <michael.calve@vectare.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBE26E00B63; Mon, 12 Jun 2017 07:34:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 783B6E00B58
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 07:34:46 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id y77so56009338ioe.3
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 07:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=vectare-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Fkn3HrdhtseTR5muKE6FP/YpBPSm4MX2NlqYDlaBwWI=;
	b=jlFaZN2UIKFF4AffwNWs9m1P7shRwNhBgEwZB+5ZqHNgE6u+cTCwz1jrQ5a76MOdEq
	TQaf3g6vfA1CIuwwygEU3BYsWgaetXBRSq+g1CEPHTlqgjADAti+tTUfJKczLGJEwKA+
	Hso9EqN9ntdaSTeKbCtCQjRL0MsbF7ap34DhPexxe/ZxPXOW+F3x5RmCCkI+46duVOo5
	D2yQS+3+SrmiFqWfSUq5/20LxSLF77X6TS9yiSI2NjhUcom8JItyFziWsDZb5ddq0QX4
	NL9acJV6FQqg0sBNo05zgr37w5oNSLxyRKIVcMJZPiGXI2/SFOFxEJ34aOhvbXTh5WuP
	YcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Fkn3HrdhtseTR5muKE6FP/YpBPSm4MX2NlqYDlaBwWI=;
	b=E3DJjHXueiggM4aeo2t6TpPbj1oVe5bLXSADQGJLUiek96FNgWzv+4pq5rcE3bcnjs
	VpuqKDHhR9KlrncN/7YzhoJnkzINM+deURARe4PEtPPV90ukmynULys6SRLv6TWrN52G
	f9ku7S64iopKKNUwluhqRSQawJhn70mi4qjyyNTLE5ltwNo6+I2qNV8VNvLnj3Okq/mo
	roRNEOi0EovfPOwz/pPaJJgqmND977fbABO4Z+/wu6B9mfNT/yBlRU8/Kj4A2UEZORMT
	qJavuGqGEJEpRul2+se9Cy95o2NjTQrstMXvccwti9MgeXLFM381SdJf3bd3LYpC8UU8
	yrVQ==
X-Gm-Message-State: AKS2vOwApGCPmLPwdF5K5ksi2FAlGy16j52gAhVpQzWwgK8Odf3BFoih
	7bgsFD3ofvAlMPJ9G50OpnE7p4OuhQXX
X-Received: by 10.107.205.130 with SMTP id d124mr524633iog.27.1497278086441;
	Mon, 12 Jun 2017 07:34:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.148.219 with HTTP; Mon, 12 Jun 2017 07:34:45 -0700 (PDT)
In-Reply-To: <CAHiDW_EM+xpcp9NpQAdWBDc1MN0YsseehKCumgZNJKmc83ny1Q@mail.gmail.com>
References: <CAML1SccnQCtK0WQ8uauHLXhZO9Sc9e+sFYnmjoHoc_S0PbsczA@mail.gmail.com>
	<CAHiDW_EM+xpcp9NpQAdWBDc1MN0YsseehKCumgZNJKmc83ny1Q@mail.gmail.com>
From: Michael Calve <michael.calve@vectare.com>
Date: Mon, 12 Jun 2017 10:34:45 -0400
Message-ID: <CAML1SccOh9k83Cq3njB3_qE9r0oiMFgY=PPer+KcBnGjHJyZQw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Wireshark but no Tshark?
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
X-List-Received-Date: Mon, 12 Jun 2017 14:34:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c1889f4790f760551c438b9"

--94eb2c1889f4790f760551c438b9
Content-Type: text/plain; charset="UTF-8"

Okay thank you very much for the clarification.

Is there a set password for the root username?  I'm attempting to send
files across and run scripts abord the joule from my host system!

On Mon, Jun 12, 2017 at 3:50 AM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> On 7 June 2017 at 20:59, Michael Calve <michael.calve@vectare.com> wrote:
>
>> Hi, I've seen that Wireshark is portable to Yocto, however Tshark is
>> not?  Is there other/better software for reading pcaps and getting field
>> data???
>>
>
> Hi,
>
> tshark is part of wireshark: it should be built by the wireshark recipe in
> meta-networking.
>
> If you want a smaller footprint tool, try tcpdump (also in
> meta-networking). It's not as featureful as tshark but uses the same
> sniffing library and wireshark can display tcpdump results just fine.
>
> Jussi
>

--94eb2c1889f4790f760551c438b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Okay thank you very much for the clarification.<div><br></=
div><div>Is there a set password for the root username?=C2=A0 I&#39;m attem=
pting to send files across and run scripts abord the joule from my host sys=
tem!</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Mon, Jun 12, 2017 at 3:50 AM, Jussi Kukkonen <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D"">=
On 7 June 2017 at 20:59, Michael Calve <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:michael.calve@vectare.com" target=3D"_blank">michael.calve@vectare.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi=
, I&#39;ve seen that Wireshark is portable to Yocto, however Tshark is not?=
=C2=A0 Is there other/better software for reading pcaps and getting field d=
ata???</div></blockquote><div><br></div></span><div>Hi,</div><div><br></div=
><div>tshark is part of wireshark: it should be built by the wireshark reci=
pe in meta-networking.</div><div><br></div><div>If you want a smaller footp=
rint tool, try tcpdump (also in meta-networking). It&#39;s not as featurefu=
l as tshark but uses the same sniffing library and wireshark can display tc=
pdump results just fine.</div><span class=3D"HOEnZb"><font color=3D"#888888=
"><div><br></div><div>Jussi</div></font></span></div></div></div>
</blockquote></div><br></div>

--94eb2c1889f4790f760551c438b9--
