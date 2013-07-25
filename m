Return-Path: <djszapi@archlinux.us>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62242E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 21:53:55 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id mc8so268224pbc.32
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 21:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=KZ9YfjxLHixtd5jgc7pvGQpKyZ8tEF0iYT29sV6st38=;
	b=ARtvZyIwq7o0LPMmy2fHJ9sXToQaEFvkWvvAEXe2B7uWzyXr74f9oWwjePf0Q6anlD
	cuEcgOPpHRnTFNwC8pP+LXJ863d3OCfBD/PKkA3bZPlJyjTBpLA0TiQ3lbzV5WSV36VN
	+E82zE3omxHBxuyw52Vaq08qUteVsXQCRT64R9rxSlIM3ce+Kyv6asCJ0MRzhPwMlxxD
	OZsGqv3HGalMau5CfMQ8NJEbURYKmA1REBptRj30TcFrgVcygU6xkBX9Qt9Gm0gdmSp2
	YlQ5ufSqsRP5qb/8jhjV3XsMX5ybXEgGGnzhc3PLHpTQ8+c1oVc70pXKviTFwM5XAtvF
	QMIg==
MIME-Version: 1.0
X-Received: by 10.66.192.132 with SMTP id hg4mr12886340pac.84.1374728034401;
	Wed, 24 Jul 2013 21:53:54 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 21:53:54 -0700 (PDT)
In-Reply-To: <CAOMwXhOVVQcdExysOk_MfXmgE1w=OKpznLfbNyMZqf8bDMU3cA@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
	<CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
	<CAOMwXhOMqt9AWxi7pceZ=KqacxXC81CmxFm3FkC1AgS-hoRBJQ@mail.gmail.com>
	<CAOMwXhOVVQcdExysOk_MfXmgE1w=OKpznLfbNyMZqf8bDMU3cA@mail.gmail.com>
Date: Thu, 25 Jul 2013 05:53:54 +0100
X-Google-Sender-Auth: Hbrv70lB-zy6LzBy287ClAiPs9k
Message-ID: <CAOMwXhPARqDrYYxRw8Ay1GbxRX-8cXcnyAy+KWK4fh+npZ3CeA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQlKPVMqNU+TnGT1VB1ChDx2vuNFRzAJGXBfwswkazCokYxMziUMtg5TRrP091QySqg6CQJP
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
X-List-Received-Date: Thu, 25 Jul 2013 04:53:56 -0000
Content-Type: multipart/alternative; boundary=047d7bdc93ca2755f604e24ed090

--047d7bdc93ca2755f604e24ed090
Content-Type: text/plain; charset=ISO-8859-1

So, is there any workaround in any way to get unblocked or I should just
switch away from Yocto for now? Unfortunately, if no workaround comes, I do
not have any other option because then it just does not work. :(

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4899

Note, I have no clue how to use the meta-sourcery layer, and it has no any
proper documentation about that, nor example, like the Linaro guys nicely
made one for their solution.


On Wed, Jul 24, 2013 at 10:32 PM, Laszlo Papp <lpapp@kde.org> wrote:

> Also, it seems to be a bit less lightweight than what we have in oe-core.
> I would not like to pull unnecessary recipes in. Is it possible to work the
> oe-core stuff around?
>
>
> On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <lpapp@kde.org> wrote:
>
>> I believe the developer story would be simpler with oe-core as opposed to
>> meta-sourcery. Besides, some documentation would be nice to have how to use
>> it, how it will work alongside the oe-core "example", and so forth.
>>
>> You know, something similar to what the Linaro people seem to have.
>>
>>
>> On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <clarson@kergoth.com>wrote:
>>
>>> On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <b.hutchman@gmail.com>wrote:
>>>
>>>> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>>>>
>>>>> is this officially supported by the Yocto project? I would not like to
>>>>> use Yocto for my own purposes if it is something unsupported, and I would
>>>>> need to put a significant investment into to it to make the releases
>>>>> buildable, et cetera.
>>>>>
>>>>
>>> I'm not certain as to the official Yocto support stance on
>>> external-sourcery as it exists in or-core at this time, but if you do want
>>> to use the Sourcery G++ toolchain rather than one of the alternatives
>>> suggested by others in this thread, you can use the meta-sourcery layer,
>>> which while it isn't officially supported by Yocto, is officially supported
>>> by Mentor Graphics, the company which provides the aforementioned toolchain.
>>>  --
>>> Christopher Larson
>>> clarson at kergoth dot com
>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>> Maintainer - Tslib
>>> Senior Software Engineer, Mentor Graphics
>>>
>>
>>
>

--047d7bdc93ca2755f604e24ed090
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So, is there any workaround in any way to get unblocked or=
 I should just switch away from Yocto for now? Unfortunately, if no workaro=
und comes, I do not have any other option because then it just does not wor=
k. :(<div>
<br></div><div><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4899">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4899</a><br></=
div><div><br></div><div>Note, I have no clue how to use the meta-sourcery l=
ayer, and it has no any proper documentation about that, nor example, like =
the Linaro guys nicely made one for their solution.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jul 24, 2013 at 10:32 PM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">Also, it seems to be a bit less lightweight than what we h=
ave in oe-core. I would not like to pull unnecessary recipes in. Is it poss=
ible to work the oe-core stuff around?</div><div class=3D"HOEnZb"><div clas=
s=3D"h5">
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

--047d7bdc93ca2755f604e24ed090--
