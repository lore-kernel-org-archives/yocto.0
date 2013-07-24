Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E486DE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:23:09 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj3so1157955pad.28
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=JHUO/Q2TwZyssvYsBBUy2Csn4BtDzGGxbB/HFDVg4FU=;
	b=Ur94hxkArEEVQwjsujcx3sPs38EGPu8l9ns3PMz9U5k6hw+W6ojIkMZeVJZWQpzfqK
	XBzn3HqMiT4MW4bTb0LgGMJLHjdMQbJl//+OhuA1/6S+C4QIlTL2ARACZuQUjukX9hmp
	Dks/RfEITA4v7l9lb6w0toe+jXhsif1SrliY336AEn3bjpVP34yVKdZciwhU/yssmO8t
	Pwz9cwdMUayBQ/XRycuwtVa9qOe+WxGGYfzr+BrMJgMyvoFJcc7Q6S2Zd+SlW1Ln1FYB
	26aVjb/+kDmJ/AOWqGCnhHsyXAlo/r0iqTtSxcPcyR7Tt1Db9UiljEhzyquIsNWfwcZ0
	5Qqw==
MIME-Version: 1.0
X-Received: by 10.66.216.129 with SMTP id oq1mr2606149pac.75.1374700989163;
	Wed, 24 Jul 2013 14:23:09 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 14:23:09 -0700 (PDT)
In-Reply-To: <CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
	<CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
Date: Wed, 24 Jul 2013 22:23:09 +0100
X-Google-Sender-Auth: XEbwIuZTgqVe8HR7ouAWreIChK8
Message-ID: <CAOMwXhOMqt9AWxi7pceZ=KqacxXC81CmxFm3FkC1AgS-hoRBJQ@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQkOsAkO3TrmeUdaQ7O92Lk4tTNxAC2Lz/9MBRug/FvCsneXOG0Fwva3TjRWfQ1Aj71umMYc
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
X-List-Received-Date: Wed, 24 Jul 2013 21:23:11 -0000
Content-Type: multipart/alternative; boundary=047d7b5d954921bd6b04e24884fc

--047d7b5d954921bd6b04e24884fc
Content-Type: text/plain; charset=ISO-8859-1

I believe the developer story would be simpler with oe-core as opposed to
meta-sourcery. Besides, some documentation would be nice to have how to use
it, how it will work alongside the oe-core "example", and so forth.

You know, something similar to what the Linaro people seem to have.


On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <clarson@kergoth.com> wrote:

> On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <b.hutchman@gmail.com>wrote:
>
>> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>>
>>> is this officially supported by the Yocto project? I would not like to
>>> use Yocto for my own purposes if it is something unsupported, and I would
>>> need to put a significant investment into to it to make the releases
>>> buildable, et cetera.
>>>
>>
> I'm not certain as to the official Yocto support stance on
> external-sourcery as it exists in or-core at this time, but if you do want
> to use the Sourcery G++ toolchain rather than one of the alternatives
> suggested by others in this thread, you can use the meta-sourcery layer,
> which while it isn't officially supported by Yocto, is officially supported
> by Mentor Graphics, the company which provides the aforementioned toolchain.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>

--047d7b5d954921bd6b04e24884fc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I believe the developer story would be simpler with oe-cor=
e as opposed to meta-sourcery. Besides, some documentation would be nice to=
 have how to use it, how it will work alongside the oe-core &quot;example&q=
uot;, and so forth.<div>
<br></div><div>You know, something similar to what the Linaro people seem t=
o have.</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_q=
uote">On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <span dir=3D"ltr">&lt;<=
a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com=
</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div class=3D"im">On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.=
hutchman@gmail.com</a>&gt;</span> wrote:<br>
</div><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><div><div>On Wed, Jul 24, =
2013 at 10:49 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp=
@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br>


</div></div></div><div class=3D"im"><div class=3D"gmail_quote"><div><div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
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
<span class=3D"HOEnZb"><font color=3D"#888888">

</font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">-- <br>C=
hristopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenE=
mbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Ment=
or Graphics
</font></span></div></div>
</blockquote></div><br></div>

--047d7b5d954921bd6b04e24884fc--
