Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB32AE0030D
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 14:57:03 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so1847932qcs.35
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 14:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=8aBo+ObrPSWVDyVLY3udvek0qhaw7Q3QZAo/LSNCS/M=;
	b=hXNONlEmXGDsa/60IG+AyKHE2IQ+Tr+ATQ2hrhNIl8c8XJYdQleOoeJD+tM/MT4MtY
	HcBmDkJphZwNVspdvVb8iU1TXOxkITVbJf8yvLc6gNkBfzXvG9qvuY1xlEpVPtzPA8Ky
	vLWOoJ32Uu76vhKLzdibMPuyTnIYjC27ZEL7M=
Received: by 10.224.98.8 with SMTP id o8mr8232758qan.79.1323989823255; Thu, 15
	Dec 2011 14:57:03 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.73.200 with HTTP; Thu, 15 Dec 2011 14:56:42 -0800 (PST)
In-Reply-To: <1323983925.4568.69.camel@ted>
References: <4EE7B44D.7000301@linux.intel.com> <1323812170.25491.23.camel@ted>
	<CABcZAN=3b5jgrdydYDrKCjm52PD53EFarNFMfFqQR5mwUMee5g@mail.gmail.com>
	<641FF858-DBD2-479A-BC4A-C2F90C1A8D72@beagleboard.org>
	<CABcZAN=khZc0qsd2BgMBSNop68uMJjhn8Mzi_yPagJnyFKeZ5Q@mail.gmail.com>
	<1323983925.4568.69.camel@ted>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 15 Dec 2011 15:56:42 -0700
X-Google-Sender-Auth: MitoZKXh3gIIsnL1j5tc87uqcBY
Message-ID: <CABcZANncCiBp+V4-W-0NrvwMWc0W1Gk+cAe4GP5xhRKcN8k++A@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, Koen Kooi <koen@beagleboard.org>
Subject: Re: The role of "distro" and "image"
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
X-List-Received-Date: Thu, 15 Dec 2011 22:57:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 15, 2011 at 2:18 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2011-12-15 at 10:54 -0700, Chris Larson wrote:
>> On Thu, Dec 15, 2011 at 10:29 AM, Koen Kooi <koen@beagleboard.org> wrote=
:
>> > Op 13 dec. 2011, om 22:45 heeft Chris Larson het volgende geschreven:
>> >
>> >> On Tue, Dec 13, 2011 at 2:36 PM, Richard Purdie
>> >> <richard.purdie@linuxfoundation.org> wrote:
>> >>> Not all images can be built with a given distro, our base config is
>> >>> rather ride ranging though for obvious reasons. You could "enforce" =
this
>> >>> by adding some anonymous python to the distro which does something l=
ike:
>> >>>
>> >>> if inherits("image") and PN !=3D core-image-minimal:
>> >>> =C2=A0 =C2=A0raise SkipPackage("Image PN not compatible with DISTRO=
=3DXXX")
>> >>
>> >> This is a case where one is best 'controlling' this via policy, not
>> >> mechanism, in my opinion. This sort of arbitrary technical limitation
>> >> tends to be foolish and often bites someone somewhere down the line.
>> >> I'm sure you just wanted to note how it could be done, not recommend
>> >> that it should be done, but I thought it should be made clear. I
>> >> wouldn't recommend that anyone do this unless there is an extremely
>> >> good reason for it.
>> >
>> > We had a similar problem at work, people were sprinkling
>> COMPATIBLE_MACHINE left and right just to mark "I tested recipe X on
>> machine Y". You can guess what happened when new machines needed to
>> get added.
>>
>> Haha, ouch. It's also worth taking a moment to emphasize that the way
>> distro/machine/image is structured is by design, not accidental.
>> Having these pieces be orthogonal buys us a great deal of flexibility
>> and capability, which is why we did it this way. Now, whether a given
>> distro/machine/image combination is *useful* is a different question,
>> and one I think is best addressed via policy / documentation.
>
> I understand the flexibility but I also think we need to consider
> usability a little. We have people using the system to whom it might not
> be immediately obvious why building a sato image with the tiny distro is
> a bad idea.
>
> If you know enough to be able to make that work, the warning is easily
> bypassed and isn't going to bother you.
>
> So I think there is a case for warning the user if the combination
> they're selecting is not one that is likely to work and we can easily
> predict it. There are many combinations we can't predict which is fine.


There's a rather large difference between *warning* the user and
raising SkipPackage, making it not possible to build without modifying
the recipe.
--=20
Christopher Larson

