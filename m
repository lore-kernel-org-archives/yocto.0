Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767A4E006C7
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 08:05:48 -0700 (PDT)
Received: from mail-vb0-f52.google.com ([209.85.212.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 15 May 2012 08:05:22 -0700
Received: by vbzb23 with SMTP id b23so6161426vbz.25
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 08:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=mtkX0ZSExhNFTAq69wi49t+y+FJUDwsjVhquxFgD9WI=;
	b=LSXhv9V51n2K29H4vNi1nVarakZDRLh1ybUVxQ39XHh6qIeOJTHoDIQCD0FE8uBwBg
	4kzK589/Y1TgStTvz/tEZFVxQuQxNz5+mFXl2XzeIRhjMNbsZAZ+Ahf2RrC8GCoVV1LC
	/hOnEwPX0jCNEqQa5YafSmi4baif8P1GIe250P5k870HmBTWm/bOWHy6r362MejYA2go
	SXHXw+MHRFu1BDfBW3uxqP5N25eOFWRPwieCorpNUx0UxpMgIH5Qk4ZEjjTJqmJXg9bJ
	vwu75TGIHvoiRwYvKscwkixitRHVLlBjwtohV5DDLjwNxF7ZrvZ3ygYWHfGu37X+DfKA
	zQ0g==
MIME-Version: 1.0
Received: by 10.52.180.232 with SMTP id dr8mr5918008vdc.111.1337094321006;
	Tue, 15 May 2012 08:05:21 -0700 (PDT)
Received: by 10.52.31.74 with HTTP; Tue, 15 May 2012 08:05:20 -0700 (PDT)
In-Reply-To: <025701cd32aa$31600d60$94202820$@Distant-earth.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com>
	<025701cd32aa$31600d60$94202820$@Distant-earth.com>
Date: Tue, 15 May 2012 08:05:20 -0700
Message-ID: <CALZ2gZVaAg2sFHuEa-=5tfGxh1+Wh4KmhiWc+QnH6oKz_68FFw@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: John Willis <John.Willis@distant-earth.com>
X-Gm-Message-State: ALoCoQn8Zw2gjtbU69AkCYOu/1dhJPZdKJxtBqSBfso+tSK9FOGduDR7cQ9KywKTFeqwYfPT/qgQ
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi [was Re: Kernel modules fail to compile for ARM]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 May 2012 15:05:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

There do seem to be multiple efforts. The Qt on Pi folks are also
putting together a BSP. I'd like to find a way to put everyone
together to make sure effort is not being duplicated. Is there
interest in a meeting of interested parties, perhaps on Thursday?

On Tue, May 15, 2012 at 7:51 AM, John Willis
<John.Willis@distant-earth.com> wrote:
> Hi Tomas,
>
>> On 14/05/12 19:52, Chris Tapp wrote:
>> > I'm trying to put a BSP together for an ARM system (Raspberry Pi,
>> ARM1176JZF-S CPU).
>>
>> I got the feeling that there might be multiple OE/RPI efforts going on a=
t the
>> same time unaware of each other, e.g., I noticed this meta-raspberrypi l=
ayer
>> on github that seems to be well on the way,
>> https://github.com/djwillis/meta-raspberrypi ... perhaps getting various
>> folk interested in this together would be beneficial.
>
> If anyone wants to pitch in with patches that would be great. There is al=
so a little more information on the layer from a post of mine a few weeks b=
ack - http://blogs.distant-earth.com/wp/?p=3D377.
>
> I tend to build my layers using Angstrom as the distro (in fact it is now=
 referenced in the Angstrom setup scripts) or straight OE-core and no distr=
o so I can't claim this layer is well tested on Yocto but there are very fe=
w, if any, reasons it will not work well. Pull requests are great ;).
>
> There are a few things missing at the moment, mainly the binary GPU libs =
but as the proprietary licence has now been sorted for the blobs I'll push =
the recipe in the next few days.
>
> Other than that it works pretty well on both variants of the hardware but=
 there is always room for improvement.
>
> Regards,
>
> John
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Jeff Osier-Mixon=A0http://jefro.net/blog
Yocto Project Community Manager @Intel=A0http://yoctoproject.org

