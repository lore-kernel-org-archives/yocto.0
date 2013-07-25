Return-Path: <djszapi@archlinux.us>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6677AE013A2
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 05:48:23 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id y14so1646194pdi.2
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 05:48:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=+tbdvbyuHQGXfzfbcX6oblSXAa6kzk3yFfOmJa9UJfw=;
	b=bemficKQlkSfLJNtEhSc4ppKG/Ntyl15Bw++9qnSej4Cp7BUdG07QXHVkJ4ax6eI3y
	Gv3zq9kb15oHRV7ETFNS8EVlSCVwfoZe+8ke+FCUQuxKP9Uskc/sL2aMM2Suc//YDtHy
	FH+aSRO3Ha0Z8DvnHCxF2p19EAgUXYTGw4T2uSdH2H0rVTUjazoPUOyXvj2D9v3jdPIC
	/PiQEymf0S0dmgHFR/COBr3WbTGMzREvX7Wp1qrBy3kvWVFdAxvga8I8ul+0/aOrjUBI
	YAIg5huHZpYPeaW/qv39rBkbqgZ58crYFB4ceUots779caNaSDHB+9Yp1t9VD9ylmBoP
	QwMQ==
MIME-Version: 1.0
X-Received: by 10.68.224.161 with SMTP id rd1mr48145681pbc.121.1374756503743; 
	Thu, 25 Jul 2013 05:48:23 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Thu, 25 Jul 2013 05:48:23 -0700 (PDT)
In-Reply-To: <CAOMwXhPARqDrYYxRw8Ay1GbxRX-8cXcnyAy+KWK4fh+npZ3CeA@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
	<CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
	<CAOMwXhOMqt9AWxi7pceZ=KqacxXC81CmxFm3FkC1AgS-hoRBJQ@mail.gmail.com>
	<CAOMwXhOVVQcdExysOk_MfXmgE1w=OKpznLfbNyMZqf8bDMU3cA@mail.gmail.com>
	<CAOMwXhPARqDrYYxRw8Ay1GbxRX-8cXcnyAy+KWK4fh+npZ3CeA@mail.gmail.com>
Date: Thu, 25 Jul 2013 13:48:23 +0100
X-Google-Sender-Auth: Mv_8x80iWNLvLLmY1m_RLsy4AFM
Message-ID: <CAOMwXhOGXysXdHDfvYHmytspcigaKy7PUbRbxVhJpHpX96zqvA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQnx6eMem6FKDthFmG32Dv69Y6u5TFg9+ebvJxZDVtwjiqMEMnAS5KCsFzooNgoqS1+8MtXh
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
X-List-Received-Date: Thu, 25 Jul 2013 12:48:24 -0000
Content-Type: multipart/alternative; boundary=e89a8ff24ff60f039a04e255715c

--e89a8ff24ff60f039a04e255715c
Content-Type: text/plain; charset=ISO-8859-1

I filed a bugreport against meta-sourcery:
https://github.com/MentorEmbedded/meta-sourcery/issues/9

It is very surprising to see a project without an actual documentation.
Perhaps, it has been mostly used for internal purposes where the developers
of the stuff were also the end users. That has to be fixed.


On Thu, Jul 25, 2013 at 5:53 AM, Laszlo Papp <lpapp@kde.org> wrote:

> So, is there any workaround in any way to get unblocked or I should just
> switch away from Yocto for now? Unfortunately, if no workaround comes, I do
> not have any other option because then it just does not work. :(
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4899
>
> Note, I have no clue how to use the meta-sourcery layer, and it has no any
> proper documentation about that, nor example, like the Linaro guys nicely
> made one for their solution.
>
>
> On Wed, Jul 24, 2013 at 10:32 PM, Laszlo Papp <lpapp@kde.org> wrote:
>
>> Also, it seems to be a bit less lightweight than what we have in oe-core.
>> I would not like to pull unnecessary recipes in. Is it possible to work the
>> oe-core stuff around?
>>
>>
>> On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <lpapp@kde.org> wrote:
>>
>>> I believe the developer story would be simpler with oe-core as opposed
>>> to meta-sourcery. Besides, some documentation would be nice to have how to
>>> use it, how it will work alongside the oe-core "example", and so forth.
>>>
>>> You know, something similar to what the Linaro people seem to have.
>>>
>>>
>>> On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <clarson@kergoth.com>wrote:
>>>
>>>> On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <b.hutchman@gmail.com
>>>> > wrote:
>>>>
>>>>> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>>>>>
>>>>>> is this officially supported by the Yocto project? I would not like
>>>>>> to use Yocto for my own purposes if it is something unsupported, and I
>>>>>> would need to put a significant investment into to it to make the releases
>>>>>> buildable, et cetera.
>>>>>>
>>>>>
>>>> I'm not certain as to the official Yocto support stance on
>>>> external-sourcery as it exists in or-core at this time, but if you do want
>>>> to use the Sourcery G++ toolchain rather than one of the alternatives
>>>> suggested by others in this thread, you can use the meta-sourcery layer,
>>>> which while it isn't officially supported by Yocto, is officially supported
>>>> by Mentor Graphics, the company which provides the aforementioned toolchain.
>>>>  --
>>>> Christopher Larson
>>>> clarson at kergoth dot com
>>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>>> Maintainer - Tslib
>>>> Senior Software Engineer, Mentor Graphics
>>>>
>>>
>>>
>>
>

--e89a8ff24ff60f039a04e255715c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I filed a bugreport against meta-sourcery:=A0<a href=3D"ht=
tps://github.com/MentorEmbedded/meta-sourcery/issues/9">https://github.com/=
MentorEmbedded/meta-sourcery/issues/9</a><div><br></div><div>It is very sur=
prising to see a project without an actual documentation. Perhaps, it has b=
een mostly used for internal purposes where the developers of the stuff wer=
e also the end users. That has to be fixed.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu,=
 Jul 25, 2013 at 5:53 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mail=
to:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">So, is there any workaround in any way to get unblocked or=
 I should just switch away from Yocto for now? Unfortunately, if no workaro=
und comes, I do not have any other option because then it just does not wor=
k. :(<div>

<br></div><div><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4899" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D4899</a><br></div><div><br></div><div>Note, I have no clue how to use t=
he meta-sourcery layer, and it has no any proper documentation about that, =
nor example, like the Linaro guys nicely made one for their solution.</div>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 10:32 PM, Laszlo P=
app <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank=
">lpapp@kde.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">Also, it seems to be a bit less lightweight than what we h=
ave in oe-core. I would not like to pull unnecessary recipes in. Is it poss=
ible to work the oe-core stuff around?</div><div><div>
<div class=3D"gmail_extra"><br><br>
<div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpap=
p@kde.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


<div dir=3D"ltr">I believe the developer story would be simpler with oe-cor=
e as opposed to meta-sourcery. Besides, some documentation would be nice to=
 have how to use it, how it will work alongside the oe-core &quot;example&q=
uot;, and so forth.<div>



<br></div><div>You know, something similar to what the Linaro people seem t=
o have.</div></div><div><div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <span dir=3D=
"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@=
kergoth.com</a>&gt;</span> wrote:<br>



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
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--e89a8ff24ff60f039a04e255715c--
