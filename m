Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E325EE013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:00:20 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id ev20so730634lab.32
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=9ViT9JN9lQWRvLFp18QeYo0royrLaPQJpvtypWj0THs=;
	b=g5b1WKbSPnyI80p3ZlW7ZqbAwouroW1c2TVw4TkRj4avGTdHx0MdhTYNSX7bjdiiks
	hw48bWDkA7Jb8NQSVxxVAhJIiAdcBERN2jSMdHXMMLOM/jm5YOtCaG9RwO6Jmo3a6uc/
	IFkRJn53XXIXM9f4jPChO+owGCASd1y3U+X4DzpfUY+ufBxXxkffZ8+tn4614oYJgzZa
	pY6fwutBfXY56MxkI4tHIQppZUMnswLobiaPJiF/JHJ0ICtv8UrnvG4NDvGMx2H24tw9
	1p/r+/L/Uc2WC9fSb8/AYDJjIq1bSHezhnpLzcN0qfUebrkMp4/DI94MVALPkOlg2CkE
	+cYw==
X-Received: by 10.152.18.129 with SMTP id w1mr17724658lad.10.1374699618445;
	Wed, 24 Jul 2013 14:00:18 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.17.67 with HTTP; Wed, 24 Jul 2013 13:59:58 -0700 (PDT)
In-Reply-To: <CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 24 Jul 2013 13:59:58 -0700
X-Google-Sender-Auth: gkGQ-m_ZInWT2MJ-IVhltlDMgjk
Message-ID: <CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
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
X-List-Received-Date: Wed, 24 Jul 2013 21:00:23 -0000
Content-Type: multipart/alternative; boundary=089e014939686e31b904e24832d3

--089e014939686e31b904e24832d3
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <b.hutchman@gmail.com>wrote:

> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>
>> is this officially supported by the Yocto project? I would not like to
>> use Yocto for my own purposes if it is something unsupported, and I would
>> need to put a significant investment into to it to make the releases
>> buildable, et cetera.
>>
>
I'm not certain as to the official Yocto support stance on
external-sourcery as it exists in or-core at this time, but if you do want
to use the Sourcery G++ toolchain rather than one of the alternatives
suggested by others in this thread, you can use the meta-sourcery layer,
which while it isn't officially supported by Yocto, is officially supported
by Mentor Graphics, the company which provides the aforementioned toolchain.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e014939686e31b904e24832d3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Wed, Jul 24, 2013 at 1:55 PM=
, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=3D"mailto:b.hutchman@gmail=
.com" target=3D"_blank">b.hutchman@gmail.com</a>&gt;</span> wrote:<br><div =
class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"=
mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:=
<br>

</div></div><div class=3D"gmail_quote"><div><div class=3D"h5"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
<div dir=3D"ltr"><div>is this officially supported by the Yocto project? I =
would not like to use Yocto for my own purposes if it is something unsuppor=
ted, and I would need to put a significant investment into to it to make th=
e releases buildable, et cetera.</div>

</div></blockquote></div></div></div></blockquote><div><br></div><div style=
>I&#39;m not certain as to the official Yocto support stance on external-so=
urcery as it exists in or-core at this time, but if you do want to use the =
Sourcery G++ toolchain rather than one of the alternatives suggested by oth=
ers in this thread, you can use the meta-sourcery layer, which while it isn=
&#39;t officially supported by Yocto, is officially supported by Mentor Gra=
phics, the company which provides the aforementioned toolchain.</div>

</div>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - =
BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software =
Engineer, Mentor Graphics
</div></div>

--089e014939686e31b904e24832d3--
