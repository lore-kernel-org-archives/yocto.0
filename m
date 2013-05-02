Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30679E014E0
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 09:35:50 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id t9so615118wey.38
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 09:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=VwZQWkMLJdg8GKcuKDIEDPnW9AJ8JR/zRzFI4C2L8Q4=;
	b=ujkxCZ8/YYkWTwygGvFK28cU7TRv+OTa9x2Xw/Qv7bT4osbFnB4R8GyCTGPyZeWoHD
	8Ck5twHCw3T77TqON9qfDEn7aCmqel57+hShBefwRj5R11t5zWQKkdSSwYrTYoPPTYpK
	vW8rVavZhPXvpW4hyxilUPkT1GRvX+uBjqZUbz+4soM1aWjeHYkMHmOcHH6co40cTg/y
	9eBDgGA65toC+n6TON0oHWMxwUPocvp1/6O+yOiYhr5oF3pUUqYHpk1s3glr7b01iTfo
	hwUPddztSYqB7ubXxkJbeQumr+gAEUMKmZYUPeo1Mo7FE2NhLpMRmh8cZjf/bjSyCjaQ
	nmDA==
MIME-Version: 1.0
X-Received: by 10.194.10.129 with SMTP id i1mr9254198wjb.21.1367512549242;
	Thu, 02 May 2013 09:35:49 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Thu, 2 May 2013 09:35:49 -0700 (PDT)
In-Reply-To: <518292E5.9030101@mlbassoc.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
	<518292E5.9030101@mlbassoc.com>
Date: Thu, 2 May 2013 12:35:49 -0400
Message-ID: <CAHUNapTv=e3_zcKrR34=_v4Wtq6pp_WznA2gLKPBxTZ=FFo6KA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 16:35:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 12:23 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-05-02 09:52, Paul Barker wrote:
>> Sounds great though it may take a long time to copy files to an SD
>> card (I noticed a similar opinion at
>> http://www.raspbian.org/RaspbianInstaller). May be quicker to generate
>> an image file with the correct size first then dd that to the card.
>
>
> The problem with this approach is that the generated image will typically
> be many gigabytes in size (typical SD cards are 4GB on up).  The time to
> copy such an image to the physical card can be very large indeed.

Which is how the bmaptool steps in and helps. It analyzes the image
for holes (and/or blocks of zeros?) and only copies over the relevant,
non hole/zero parts. Substantially improving the transfer time,
especially for the larger images.

If I knew the best way to integrate it with Yocto, I'd submit patches
to include it. But for the time-being I'll just mention it :-)

