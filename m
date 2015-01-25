Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D2F8E00827; Sun, 25 Jan 2015 14:28:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 289E3E003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:28:15 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id k14so6152413wgh.8
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:28:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=a52eTS7TMHXxKffjvkrb8I9BgIERjh4z7yykaMFMbrU=;
	b=bZM23ehhqVhRs/7aV2iPS8zGRq+OPFm1F75vDDl0eKvQ+lFbtVK3l1rdQeyT0iY1CR
	9AKZ1vVcqLrFucrga1Zi/GhM3EQ64qvKNvLS+Ez55VRjar1dSQTl5c8qgS0EsZaX8v2S
	CiJM+Na8CqDhX5gmfEcsB+eQxpDZ8zh4RHNfIMKn1W75ceNJbl3V5ermRwHiFSJBe7Hq
	5SYXh6fZqzUoJUOuQgRPsWpicouJ9zNxSll6sZUdV+1goNYMxCkvClkFz/jdSLzk0n/N
	9cEvsWZcluVbudANCNTiW+E5A8PTYed/D5a0tRflqeBLsrkY4sw0kFmDhPXluZc66uz5
	zsWA==
X-Gm-Message-State: ALoCoQkzrO79aClKw6F3kUJUpPArGOkJwQvgaS43GHgwRqlvnXy+TD+04gXbfduIP0qa4f6atmM4
X-Received: by 10.180.37.197 with SMTP id a5mr25959953wik.2.1422224894174;
	Sun, 25 Jan 2015 14:28:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 14:27:53 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <CAK18fxE91QTiCotpwsq03bozy8KjAsSQxgtt-hTHh6VrPAMmYg@mail.gmail.com>
References: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>
	<20150114203610.GB4735@gmail.com>
	<B16CA82B-7834-419F-9E84-669E8F9B6779@jtang.org>
	<54B782FA.9040109@topic.nl>
	<6C0F4B49-EDA6-4059-9BE7-6BD47A918073@jtang.org>
	<CAK18fxE91QTiCotpwsq03bozy8KjAsSQxgtt-hTHh6VrPAMmYg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jan 2015 00:27:53 +0200
Message-ID: <CAK18fxFs1-+Lb=vyi0CxpvHWQ7OxSEcyGDqB2JuqLNqJtqbGig@mail.gmail.com>
To: "J. Tang" <tang@jtang.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Why not enable hard floating point?
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
X-List-Received-Date: Sun, 25 Jan 2015 22:28:22 -0000
Content-Type: multipart/alternative; boundary=e89a8f50309c9bc0cf050d818901

--e89a8f50309c9bc0cf050d818901
Content-Type: text/plain; charset=UTF-8

On Sun, Jan 18, 2015 at 2:29 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hello,
>
> On Fri, Jan 16, 2015 at 3:05 AM, J. Tang <tang@jtang.org> wrote:
>
>>
>> On 2015-01-15, at 04:06, Mike Looijmans <mike.looijmans@topic.nl> wrote:
>>
>> > -2- The CPU doesn't actually have floating point support and the kernel
>> is emulating it for you. This allows the platform to run "hf" binaries, at
>> a minor performance cost compared to completely doing the emulation in user
>> space (libc).
>>
>> From my understanding, the Raspberry Pi (at least the model B, which is
>> what I have) has an FPU.
>>
>> Would it hurt to at least mention in the top-level README of the
>> meta-raspberrypi layer that a user could enable hard FP by setting the
>> DEFAULTTUNE?
>>
>>
> Definitely it wouldn't. But right now we have two options:
> We can just throw a README line and that's it.
> Or we can  investigate a little to see if in our current setup we actually
> use FPU instructions or not. Following Mike's answer I would definitely
> think that we are in case 1 where the compile based on the CPU
> configuration figures out that we can use FPU instruction on this CPU
> architecture. Right now, as being on vacation, I can really test on
> binaries by dissembling code and check it by hand. Anybody who can do it
> and provide some feedback? As well, some bench-marking would really make
> sense here.
>

It was confirmed on another thread (
https://lists.yoctoproject.org/pipermail/yocto/2015-January/023201.html)
that there is no performance improvements while switching to HFP. This
basically proves what Mike Looijmans described in (1). So, we are on the
safe side with our current setup.


-- 
*Andrei Gherzan*

--e89a8f50309c9bc0cf050d818901
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Jan 18, 2015 at 2:29 AM, Andrei Gherzan <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex"><div dir=3D"ltr">Hello,<br><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"">On Fri, Jan 1=
6, 2015 at 3:05 AM, J. Tang <span dir=3D"ltr">&lt;<a href=3D"mailto:tang@jt=
ang.org" target=3D"_blank">tang@jtang.org</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-l=
eft:1ex"><span><br>
On 2015-01-15, at 04:06, Mike Looijmans &lt;<a href=3D"mailto:mike.looijman=
s@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a>&gt; wrote:<br>
<br>
&gt; -2- The CPU doesn&#39;t actually have floating point support and the k=
ernel is emulating it for you. This allows the platform to run &quot;hf&quo=
t; binaries, at a minor performance cost compared to completely doing the e=
mulation in user space (libc).<br>
<br>
</span>From my understanding, the Raspberry Pi (at least the model B, which=
 is what I have) has an FPU.<br>
<br>
Would it hurt to at least mention in the top-level README of the meta-raspb=
errypi layer that a user could enable hard FP by setting the DEFAULTTUNE?<b=
r>
<span><br></span></blockquote><div><br></div></span><div>Definitely it woul=
dn&#39;t. But right now we have two options:</div><div>We can just throw a =
README line and that&#39;s it.</div><div>Or we can =C2=A0investigate a litt=
le to see if in our current setup we actually use FPU instructions or not. =
Following Mike&#39;s answer I would definitely think that we are in case 1 =
where the compile based on the CPU configuration figures out that we can us=
e FPU instruction on this CPU architecture. Right now, as being on vacation=
, I can really test on binaries by dissembling code and check it by hand. A=
nybody who can do it and provide some feedback? As well, some bench-marking=
 would really make sense here.</div></div></div></div></blockquote><div><br=
></div><div>It was confirmed on another thread (<a href=3D"https://lists.yo=
ctoproject.org/pipermail/yocto/2015-January/023201.html">https://lists.yoct=
oproject.org/pipermail/yocto/2015-January/023201.html</a>) that there is no=
 performance improvements while switching to HFP. This basically proves wha=
t=C2=A0Mike Looijmans described in (1). So, we are on the safe side with ou=
r current setup.</div></div><br clear=3D"all"><div><br></div>-- <br><div cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:center"><=
/div><div style=3D"text-align:center"><div align=3D"left"><b style=3D"font-=
family:Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei =
Gherzan</b><br></div></div></div></div>
</div></div>

--e89a8f50309c9bc0cf050d818901--
