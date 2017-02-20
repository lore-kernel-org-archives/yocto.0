Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E507E00480; Mon, 20 Feb 2017 10:09:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7E98E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 10:09:35 -0800 (PST)
Received: by mail-lf0-f66.google.com with SMTP id z127so7224014lfa.2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 10:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DQ7V7MUYZqqKDCnwM8DamJEICrx4g0LLKhytbpZsmQY=;
	b=D+MTcfzBC0rmyfFwtzkPKlzYI2tGm6PpHGHDWCycqCA7I4LMlPbvtXU+229jwlwjGs
	IvF1TLPzpWGYkT/wMR6+JiUDgPBC5tUWAjw+zISklVRo7TlCvBVDmwAyxWsIaA/sAvP0
	B3aVvNvO8mwdSttCWvRd+6g56SuyEi8Wv3V9MAXYt5wRtsUG1AWDSHQ4qGqJ1w6bSiRE
	uOSwbQMifr5vBms2QBxkDBoAQFWaVeA7caqbEMciCRSoj9R0iuTIek+/rJSx1QhUqjhr
	Z8ut0DrxJ0CUGw1o1vd2MpanfZfYb1ywW2D+S2I8wIdF8c04FrV3KwRcnWanEKz4Hz7w
	yIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DQ7V7MUYZqqKDCnwM8DamJEICrx4g0LLKhytbpZsmQY=;
	b=YZtGR/S9boD97vfSQPiQIWTM3fgJodvzm6sKg+e8XKnqdgpztIhfIHqLJetGxWeRqR
	YeOD4OhNNLWDxU1heSCZxRrksGDGi+z7DzPWqtXuxK8z4aaj6zr1f/ImgtLgyf/Pt4+3
	7dr9yNGlDnkwo/d2+Hi3lEGSIHSXS7kwUo92R2lE49HEPhddXTnM1v7XPfWe0g4asz05
	HuzR/fKjhTVWaiZt/hEKjsCroX3PwOaJOXtYOPVi2PTOv9UBwoU1RlqoSC4XvFnmQ/f5
	WtWcBPEiJvAaL5ocrE1dv8xBuyzKFiuLxM463LWtcfqJ9NXtvOJFv4fxE7jL7wnTryC1
	7YBw==
X-Gm-Message-State: AMke39mABFOaK80StAFuFAhqI0w0CiPSRWD12EWf+GzSU1rNCaN+2GhTOVKG2iQm26PcIxs4amjR33rTn8oPZA==
X-Received: by 10.25.181.73 with SMTP id e70mr2601545lff.98.1487614174562;
	Mon, 20 Feb 2017 10:09:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.155.8 with HTTP; Mon, 20 Feb 2017 10:09:34 -0800 (PST)
In-Reply-To: <CAF1M0z4VWhHuzFXhRgpoDYbD00P+1R8W-9qyw_X_V2RrSFa8hA@mail.gmail.com>
References: <CAF1M0z72cFVW61EkLqdSwPrRKO1AptMsntfxxEzo8Qy=ak79oQ@mail.gmail.com>
	<CAJTo0Lau5AyY33Y+cROUMR38uR_Msr5YSiGQtnd-Nscu-oe0nA@mail.gmail.com>
	<CAF1M0z4VWhHuzFXhRgpoDYbD00P+1R8W-9qyw_X_V2RrSFa8hA@mail.gmail.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 20 Feb 2017 23:39:34 +0530
Message-ID: <CAF1M0z4W54uXfGOKowCpsW6YAeTFqKAB1zT-F=A5Po5wTT1uwQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem: Installation
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
X-List-Received-Date: Mon, 20 Feb 2017 18:09:37 -0000
Content-Type: multipart/alternative; boundary=001a113c4414700e760548fa2a43

--001a113c4414700e760548fa2a43
Content-Type: text/plain; charset=UTF-8

Problem Solved, I did not mention the path properly in the S variable,

I changed, S = "${WORKDIR}/${PN}-${PV}", which works fine.

Thanks to Ross, for triggering.

Regards,
satya

On Mon, Feb 20, 2017 at 11:14 PM, SatyaNarayana Sampangi <
satya.2891@gmail.com> wrote:

> Hi Ross,
>
> Thanks for your reply, by the way the tgz contains,
>
> hello.c  helloprint.c  helloprint.h, and moreover I could see in the ${S},
> which is suppose to be
> ~/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-
> linux-gnueabi/hellosatya/1.0-r0/hellosatya-1.0
>
> tree hellosatya-1.0/
> hellosatya-1.0/
> |-- hello.c
> |-- helloprint.c
> `-- helloprint.h
>
> 0 directories, 3 files
>
> So, this clearly states that it is unpacked into the WOKDIR.
>
> Any other variables need to be taken care?
>
> Thanks,
> satya
>
>
>
> On Mon, Feb 20, 2017 at 10:03 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>>
>> On 20 February 2017 at 16:30, SatyaNarayana Sampangi <
>> satya.2891@gmail.com> wrote:
>>
>>>  14 SRC_URI = "file://hellosatya-1.0.tgz"
>>>  15
>>>  16 S = "${WORKDIR}"
>>>
>>
>> What files are in the tgz, and where do they expand to?  The error says
>> no such file or directory, so presumably it didn't unpack helloprint.c into
>> the work directory.
>>
>> Ross
>>
>
>

--001a113c4414700e760548fa2a43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Problem Solved, I did not mention the path properly in the=
 S variable,<div><br></div><div>I changed, S =3D &quot;${WORKDIR}/${PN}-${P=
V}&quot;, which works fine.</div><div><br></div><div>Thanks to Ross, for tr=
iggering.</div><div><br></div><div>Regards,</div><div>satya</div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Feb 20, 2017 =
at 11:14 PM, SatyaNarayana Sampangi <span dir=3D"ltr">&lt;<a href=3D"mailto=
:satya.2891@gmail.com" target=3D"_blank">satya.2891@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Ross,<div><b=
r></div><div>Thanks for your reply, by the way the tgz contains,</div><div>=
<br></div><div>hello.c =C2=A0helloprint.c =C2=A0helloprint.h, and moreover =
I could see in the ${S}, which is suppose to be<br></div><div>~/yocto/poky/=
build/tmp/work/<wbr>cortexa8hf-vfp-neon-poky-<wbr>linux-gnueabi/hellosatya/=
1.0-<wbr>r0/hellosatya-1.0<br></div><div><br></div><div><div>tree hellosaty=
a-1.0/</div><div>hellosatya-1.0/</div><span class=3D""><div>|-- hello.c</di=
v><div>|-- helloprint.c</div><div>`-- helloprint.h</div><div><br></div></sp=
an><div>0 directories, 3 files</div></div><div><br></div><div>So, this clea=
rly states that it is unpacked into the WOKDIR.</div><div><br></div><div>An=
y other variables need to be taken care?</div><div><br></div><div>Thanks,</=
div><div>satya</div><div><br></div><div><br></div></div><div class=3D"HOEnZ=
b"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Feb 20, 2017 at 10:03 PM, Burton, Ross <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_extra"><span><br><div class=3D"gmail_quote">On 20 Feb=
ruary 2017 at 16:30, SatyaNarayana Sampangi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:satya.2891@gmail.com" target=3D"_blank">satya.2891@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=C2=A014 SRC_URI =
=3D &quot;file://hellosatya-1.0.tgz&quot;<br>=C2=A015 <br>=C2=A016 S =3D &q=
uot;${WORKDIR}&quot;</div></blockquote></div><br></span>What files are in t=
he tgz, and where do they expand to?=C2=A0 The error says no such file or d=
irectory, so presumably it didn&#39;t unpack helloprint.c into the work dir=
ectory.</div><span class=3D"m_-8275226981153137097HOEnZb"><font color=3D"#8=
88888"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113c4414700e760548fa2a43--
