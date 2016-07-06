Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6863DE00E0E; Wed,  6 Jul 2016 14:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
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
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C01E009CA
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 14:56:16 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id d67so3626224vkh.1
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 14:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bV38nYKUbZUIKuxoZB1sMt06SXG2PRvY/qz74thPgPU=;
	b=JHgNvCk9CIIL0w6X28sJcLyKVfcofWKz3ewTnXSoFUYmntgCh2ABqmhI4mgWVZ8zVm
	tY3WlYprXIux63X/XTTdDJSo4kW3BMPXJQjBtNKQsVl7NrLNZCV5cam8hfEH/2AoU2yL
	4Y6gVOdvIqhxafi5UPwH/FVeOKOWRV7OGXg/jDrYWitLeW5uG/YZ/k7lUYReCETX9Blq
	o6O3qGLgwIeRBJVUsSsLXtbH5EGpWvWBtoS2JxEi4a0jRD2/IvBmHkSTpHFx3zsVbsfd
	dcH9vuNm/ES3D8v4EyTlchQISvgLiaTYSk6alB3K5rPMtXxs4tE4mYgBzRMkXmGXW0tL
	EGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bV38nYKUbZUIKuxoZB1sMt06SXG2PRvY/qz74thPgPU=;
	b=F/4Hkk7tFP7E6SFhU6X8V31ksFnbX5IF5AIGjpGV3Mxh3iXlaV5kgHypE7Vi/13jCi
	0OucxripgGHo2kLwkVPCJR0Nf0fxwBoGDr8SV467umegmQ0n19Wer4+JioDC/Kmpxmk2
	M0rvlEf3gTU+j26G7gdoB2Atregmal8PkG8a5l0XdlUKydJAqIu1CRCJ5F+ONFdulFdy
	gQKcZPdnm8MQWBwpLmy6muk/8tJEdSELEdcCTgkEbUcAln2dLlmfn/oiA3vIjB59ytsn
	ebkSs2Or8GF9oXc4fOLElOvurnqQwy4b8pDzJkkqIxK5stQXXjox9GEhTt91pyNhzOfM
	BQuw==
X-Gm-Message-State: ALyK8tKCSrhaALARO4RbuykwGdOE43eF3Clre+oK8RiJ4CKg5GEHnQdx+eiVWmFbMTO9GrgMBk8Ak08VGX1zFw==
X-Received: by 10.31.185.199 with SMTP id j190mr10788543vkf.153.1467842175645; 
	Wed, 06 Jul 2016 14:56:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.106 with HTTP; Wed, 6 Jul 2016 14:56:15 -0700 (PDT)
In-Reply-To: <577D1832.2080002@mlbassoc.com>
References: <577CD922.4000405@mlbassoc.com>
	<CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
	<577D144F.8050208@mlbassoc.com>
	<CAJTo0LaSR8xk2OqRBQKAuoM6VWs3_vJ-YSuZyN9yJJEeMV-dfQ@mail.gmail.com>
	<577D1832.2080002@mlbassoc.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Wed, 6 Jul 2016 23:56:15 +0200
Message-ID: <CAEjjRe+0N8NGp8h4fw6eDAf4Duw2zs=qK5u0ReBSPnAU+u+bVQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What keeps sstate from being used?
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
X-List-Received-Date: Wed, 06 Jul 2016 21:56:20 -0000
Content-Type: multipart/alternative; boundary=001a1143a01e773ef70536fea3bf

--001a1143a01e773ef70536fea3bf
Content-Type: text/plain; charset=UTF-8

Hi,

Gary what poky version you are using ?
It seems that you probably updated somehow local workspace recipe for
binutils from poky master upstream. 5 days ago binutils recipe was updated
with new patch.

http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/binutils/binutils-2.26.inc?id=1b29aff0e0ca00c9125e29f8d229ec22ef0350d8

Do you have some scripts or cron to update recipes and check that they are
building with newer poky ?

On Wed, Jul 6, 2016 at 4:39 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2016-07-06 16:27, Burton, Ross wrote:
>
>>
>> On 6 July 2016 at 15:23, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     Dependency on checksum of file
>> MIPS-GAS-Fix-an-ISA-override-not-lifting-ABI-restrictions.patch was removed
>>
>>
>> As this show binutils changing its SRC_URI this suggests that you did
>> something in between the two runs, or those hashes
>> are not the relevant pair.
>>
>
> I could send the whole trace of how I got there, but basically
> I noticed that 'patch' was being rebuilt for the target, so I
> tracked that back to gcc-cross-arm which led me to binutils-cross-arm
>
> Maybe I've done something wrong or don't totally understand the output
> of the tools, but it's clear that something is a little off here as
> my original build was 99% complete (only a dozen or so tasks remaining)
> and when I reran it from sstate, it more or less started over.
>
> If you have pointers on how I can diagnose this, or at least retrace it,
> I'm all ears as I really want to see this work the way it's advertised
> "on the tin"
>
> Ideas/suggestions more than welcome
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--001a1143a01e773ef70536fea3bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>Gary what poky version you=
 are using ?<br></div>It seems that you probably updated somehow local work=
space recipe for binutils from poky master upstream. 5 days ago binutils re=
cipe was updated with new patch.<br><br><a href=3D"http://git.yoctoproject.=
org/cgit.cgi/poky/commit/meta/recipes-devtools/binutils/binutils-2.26.inc?i=
d=3D1b29aff0e0ca00c9125e29f8d229ec22ef0350d8">http://git.yoctoproject.org/c=
git.cgi/poky/commit/meta/recipes-devtools/binutils/binutils-2.26.inc?id=3D1=
b29aff0e0ca00c9125e29f8d229ec22ef0350d8</a><br><br></div>Do you have some s=
cripts or cron to update recipes and check that they are building with newe=
r poky ?<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Wed, Jul 6, 2016 at 4:39 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">On 2016-07-06 16:27, Burton,=
 Ross wrote:<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
On 6 July 2016 at 15:23, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.co=
m" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gar=
y@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 Dependency on checksum of file MIPS-GAS-Fix-an-ISA-override-n=
ot-lifting-ABI-restrictions.patch was removed<br>
<br>
<br>
As this show binutils changing its SRC_URI this suggests that you did somet=
hing in between the two runs, or those hashes<br>
are not the relevant pair.<br>
</blockquote>
<br></span>
I could send the whole trace of how I got there, but basically<br>
I noticed that &#39;patch&#39; was being rebuilt for the target, so I<br>
tracked that back to gcc-cross-arm which led me to binutils-cross-arm<br>
<br>
Maybe I&#39;ve done something wrong or don&#39;t totally understand the out=
put<br>
of the tools, but it&#39;s clear that something is a little off here as<br>
my original build was 99% complete (only a dozen or so tasks remaining)<br>
and when I reran it from sstate, it more or less started over.<br>
<br>
If you have pointers on how I can diagnose this, or at least retrace it,<br=
>
I&#39;m all ears as I really want to see this work the way it&#39;s adverti=
sed<br>
&quot;on the tin&quot;<br>
<br>
Ideas/suggestions more than welcome<div class=3D"HOEnZb"><div class=3D"h5">=
<br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div>

--001a1143a01e773ef70536fea3bf--
