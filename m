Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D5C0E0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:29:52 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so1303329pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 13:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=EqUpydPQhwr6x5d1ZR7uZkppXj8E7huPLV6XZUdp2Zw=;
	b=aoKUvswwDV6atJ/M9e6ZuqsIiuwTzGiARQ6FgAaEf+5q9tEcqeh0O3RnLH1EKC+ULo
	/pbBUKRf1uSFVTC4NcqwuWuB2IHy0aUJekepS9Bf+nCU3xYsfPcalU2tPUFQcgW4jh8w
	xk9tmATyNLtApqAFNgeOvMYciSI+Wn9E3Qqrz1+R3H7k3ZfXiup2sEHE4oykvFddXHpw
	0+OxGb2KiHdouAu44qWNfd4yeLPomTDoNtiPW2+ttJUqO6l8xm9LeGDbgBeCF0xw3+VD
	sbgoFk3ud0synLlH7/JlzG2fEqUXsjyfIjE0Od81l6GkpooF2qTBZnl7zfqqmtmDvjQk
	6xqQ==
MIME-Version: 1.0
Received: by 10.68.125.135 with SMTP id mq7mr14154660pbb.155.1332361792314;
	Wed, 21 Mar 2012 13:29:52 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Wed, 21 Mar 2012 13:29:52 -0700 (PDT)
In-Reply-To: <1332361435.2322.209.camel@elmorro>
References: <CADzUK1L1JEveHaVgdXRUGh5a=GtfDnu6hFtcUt1vSmGkAyOVjg@mail.gmail.com>
	<1332361435.2322.209.camel@elmorro>
Date: Wed, 21 Mar 2012 16:29:52 -0400
Message-ID: <CADzUK1LbmYVNKsBGMBCaJs4GqPMh+8D-51D8tEvHV29rsEiWJg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Graphics Acceleration on crownbay - 1.2M3 + meta-intel tip
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
X-List-Received-Date: Wed, 21 Mar 2012 20:29:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 21, 2012 at 4:23 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Wed, 2012-03-21 at 16:15 -0400, Autif Khan wrote:
>> Minor correction to the subject - I am using 1.2M3, not 1.2M2
>>
>> On Wed, Mar 21, 2012 at 4:14 PM, Autif Khan <autif.mlist@gmail.com> wrot=
e:
>> > I am trying to get hardware accelerated graphics (video in particular)
>> > to work on my crownbay based hardware. I have EMGD 1.10 driver
>> > integrated and working. The evidence for this is that when I use
>> > glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.
>> >
>> > This is good, however, when I go over to the web2 browser (enabled by
>> > defining WEB =3D "web-webkit" for recipe task-core-apps-x11-pimlico) -=
 I
>> > do not get graphics acceleration for javascript graphics. I also do
>> > not get graphics acceleration when I watch an MP4 movie. I get 2-3 fps
>> > instead of the standard 25 or 29 fps.
>> >
>> > This was not the case when Yocto used EMGD 1.8 driver - video worked
>> > fine - I am not sure about accelerated javascript based graphics in
>> > browser as I was not as far ahead in the project.
>> >
>> > Is this a known issue?
>> >
>
> When I tested video using gst-launch, I saw the same thing, which was
> due to a missing libva-tpi. =A0The latest commit in meta-intel added that
> and fixed the problem for me.
>
> commit 162f3d1d3c538d7582a5e81205a9cdab74125b2b
> Author: Tom Zanussi <tom.zanussi@intel.com>
> Date: =A0 Mon Mar 12 19:57:29 2012 -0500
>
> =A0 =A0ia32-base: add libva display dependencies to emgd xserver
>

I did a build today with tip - I have confirmed that I have this in the sou=
rce.

What files should have been added to the root filesystem image as a
reult of adding libva-tpi, libva-glx and libva-egl?

Thanks

Autif

