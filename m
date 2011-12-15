Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02BC3E00748
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 09:54:48 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so1637600qcs.35
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 09:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=4LijHAm1V0JIiltMIuk4fX7WejZhlry09ztwpl/eUvI=;
	b=OdEKEXubCxGk6ETqSjnAaGs6eW683Ig6HmQqk6t/0oS9tvOhXOZDoczoWqtqPZnkzj
	lDVW7luAhm663O7IGQDq84yrZMTcBnZJHbxNuzWXhszzRtkB2+eYLiEhmeBpIq7aaTUM
	3SOd3Crwrr04dZPOJyACQMetAX4fm/lVQE1y8=
Received: by 10.229.75.215 with SMTP id z23mr95783qcj.85.1323971688262; Thu,
	15 Dec 2011 09:54:48 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.73.200 with HTTP; Thu, 15 Dec 2011 09:54:27 -0800 (PST)
In-Reply-To: <641FF858-DBD2-479A-BC4A-C2F90C1A8D72@beagleboard.org>
References: <4EE7B44D.7000301@linux.intel.com> <1323812170.25491.23.camel@ted>
	<CABcZAN=3b5jgrdydYDrKCjm52PD53EFarNFMfFqQR5mwUMee5g@mail.gmail.com>
	<641FF858-DBD2-479A-BC4A-C2F90C1A8D72@beagleboard.org>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 15 Dec 2011 10:54:27 -0700
X-Google-Sender-Auth: kFWiekdsHXukouTjt1pQTU2w5nM
Message-ID: <CABcZAN=khZc0qsd2BgMBSNop68uMJjhn8Mzi_yPagJnyFKeZ5Q@mail.gmail.com>
To: Koen Kooi <koen@beagleboard.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Thu, 15 Dec 2011 17:54:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 15, 2011 at 10:29 AM, Koen Kooi <koen@beagleboard.org> wrote:
> Op 13 dec. 2011, om 22:45 heeft Chris Larson het volgende geschreven:
>
>> On Tue, Dec 13, 2011 at 2:36 PM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> Not all images can be built with a given distro, our base config is
>>> rather ride ranging though for obvious reasons. You could "enforce" thi=
s
>>> by adding some anonymous python to the distro which does something like=
:
>>>
>>> if inherits("image") and PN !=3D core-image-minimal:
>>> =C2=A0 =C2=A0raise SkipPackage("Image PN not compatible with DISTRO=3DX=
XX")
>>
>> This is a case where one is best 'controlling' this via policy, not
>> mechanism, in my opinion. This sort of arbitrary technical limitation
>> tends to be foolish and often bites someone somewhere down the line.
>> I'm sure you just wanted to note how it could be done, not recommend
>> that it should be done, but I thought it should be made clear. I
>> wouldn't recommend that anyone do this unless there is an extremely
>> good reason for it.
>
> We had a similar problem at work, people were sprinkling COMPATIBLE_MACHI=
NE left and right just to mark "I tested recipe X on machine Y". You can gu=
ess what happened when new machines needed to get added.

Haha, ouch. It's also worth taking a moment to emphasize that the way
distro/machine/image is structured is by design, not accidental.
Having these pieces be orthogonal buys us a great deal of flexibility
and capability, which is why we did it this way. Now, whether a given
distro/machine/image combination is *useful* is a different question,
and one I think is best addressed via policy / documentation.
--=20
Christopher Larson

