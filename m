Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A074E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:32:13 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id kl13so1142317pab.20
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=LFzSEWg8gO6YfA4K6iZXDWoioClGQONXqpQyHG9bc1o=;
	b=i/C3mpn3sRLBOBzjL5NoFZlfKTRTjacxE9HxMd6v55SXu6goxAWTBaKvGGTUuVJcML
	4uptzTpUiIwEmztV9upI95aidXkVZaNXdDVfkULai594R6tjH2KNgZpdxyeiU+ZJUw5y
	C+5ZQStmKyRyBTQjfZNM5HygtaOKNRIMxgjZLP8SoiZqAaEBZYlFmBzRPqUqyjTseppF
	Szh8URErb3UuuX3IFejlaa/Q1SI18oQw4JKy29ScdWQ62rg40j2mLi93nRMnRVUtxv8x
	jiZJ/5GCTSj1Os3wHZ63JxQsPZVXT8dcqtTwWXQh4CLeS5mSqe4vIClbA5hCqCDc8D7q
	qZ/Q==
MIME-Version: 1.0
X-Received: by 10.66.155.102 with SMTP id vv6mr9994861pab.89.1374701533614;
	Wed, 24 Jul 2013 14:32:13 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 14:32:13 -0700 (PDT)
In-Reply-To: <CAOMwXhOMqt9AWxi7pceZ=KqacxXC81CmxFm3FkC1AgS-hoRBJQ@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
	<CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
	<CAOMwXhOMqt9AWxi7pceZ=KqacxXC81CmxFm3FkC1AgS-hoRBJQ@mail.gmail.com>
Date: Wed, 24 Jul 2013 22:32:13 +0100
X-Google-Sender-Auth: SFi1f7M5405cpXwbeyhFWaPtjIw
Message-ID: <CAOMwXhOVVQcdExysOk_MfXmgE1w=OKpznLfbNyMZqf8bDMU3cA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQmEHsPtcgN5vnWL6qS2ZuMdmzRAjkgl+5H9o09U/svTmRWFUKyfhf3QjicxqE5LMyRwKRaN
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchain (sourcery)
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
X-List-Received-Date: Wed, 24 Jul 2013 21:32:15 -0000
Content-Type: multipart/alternative; boundary=047d7b86e3a8956c2204e248a450

--047d7b86e3a8956c2204e248a450
Content-Type: text/plain; charset=ISO-8859-1

Also, it seems to be a bit less lightweight than what we have in oe-core. I
would not like to pull unnecessary recipes in. Is it possible to work the
oe-core stuff around?


On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <lpapp@kde.org> wrote:

> I believe the developer story would be simpler with oe-core as opposed to
> meta-sourcery. Besides, some documentation would be nice to have how to use
> it, how it will work alongside the oe-core "example", and so forth.
>
> You know, something similar to what the Linaro people seem to have.
>
>
> On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <clarson@kergoth.com> wrote:
>
>> On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <b.hutchman@gmail.com>wrote:
>>
>>> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>>>
>>>> is this officially supported by the Yocto project? I would not like to
>>>> use Yocto for my own purposes if it is something unsupported, and I would
>>>> need to put a significant investment into to it to make the releases
>>>> buildable, et cetera.
>>>>
>>>
>> I'm not certain as to the official Yocto support stance on
>> external-sourcery as it exists in or-core at this time, but if you do want
>> to use the Sourcery G++ toolchain rather than one of the alternatives
>> suggested by others in this thread, you can use the meta-sourcery layer,
>> which while it isn't officially supported by Yocto, is officially supported
>> by Mentor Graphics, the company which provides the aforementioned toolchain.
>>  --
>> Christopher Larson
>> clarson at kergoth dot com
>> Founder - BitBake, OpenEmbedded, OpenZaurus
>> Maintainer - Tslib
>> Senior Software Engineer, Mentor Graphics
>>
>
>

--047d7b86e3a8956c2204e248a450
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, it seems to be a bit less lightweight than what we h=
ave in oe-core. I would not like to pull unnecessary recipes in. Is it poss=
ible to work the oe-core stuff around?</div><div class=3D"gmail_extra"><br>=
<br>
<div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpap=
p@kde.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">I believe the developer story would be simpler with oe-cor=
e as opposed to meta-sourcery. Besides, some documentation would be nice to=
 have how to use it, how it will work alongside the oe-core &quot;example&q=
uot;, and so forth.<div>

<br></div><div>You know, something similar to what the Linaro people seem t=
o have.</div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gm=
ail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 9:59 =
PM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.co=
m" target=3D"_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div>On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <span dir=3D"ltr">&l=
t;<a href=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmai=
l.com</a>&gt;</span> wrote:<br>

</div><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div><div>On Wed, Jul 24, 2013 at 10:49=
 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" tar=
get=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br>



</div></div></div><div><div class=3D"gmail_quote"><div><div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<div dir=3D"ltr"><div>is this officially supported by the Yocto project? I =
would not like to use Yocto for my own purposes if it is something unsuppor=
ted, and I would need to put a significant investment into to it to make th=
e releases buildable, et cetera.</div>



</div></blockquote></div></div></div></div></blockquote><div><br></div><div=
>I&#39;m not certain as to the official Yocto support stance on external-so=
urcery as it exists in or-core at this time, but if you do want to use the =
Sourcery G++ toolchain rather than one of the alternatives suggested by oth=
ers in this thread, you can use the meta-sourcery layer, which while it isn=
&#39;t officially supported by Yocto, is officially supported by Mentor Gra=
phics, the company which provides the aforementioned toolchain.</div>

<span><font color=3D"#888888">

</font></span></div><span><font color=3D"#888888">-- <br>Christopher Larson=
<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaur=
us<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</font></span></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b86e3a8956c2204e248a450--
