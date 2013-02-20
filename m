Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1A964E0047F
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:46:15 -0800 (PST)
Received: by mail-qe0-f49.google.com with SMTP id q19so214483qeb.8
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=/+8l77i/jfXOL4plit0tiIWD+ODZfWl22F1i6dKx06o=;
	b=N/i7dX5CZIu2PoIiCHL54fNxAwbnSpdvDw2fWATN4TY3iLOkV0MhEXlxdgeisp4/wq
	GG5mJqzPKpBtBc422dvnEwKkv58ER10E2bXRxeFtrNFk3DOJVhfYzl5s15+W7oFWR5CP
	B6stGZ2EloTieW8/bL+aDNIcE/2D/ozPR6IuYHYQKyxkg4SX3K0aOiyV/QhOz8jB/hBJ
	3QaPyOTKvJc7PwDz8SHiK5/QJmPg+TAw4s0mANxsn2DBvsdRvHlmjXKH2ZrTCUZIwR4e
	kVuYVbHtX0AD6ANKqbCI2zHMuvbDqidPwW2csgeE938hHlVewxcwKj17mndw0L7AMUo6
	XNvA==
MIME-Version: 1.0
X-Received: by 10.49.95.166 with SMTP id dl6mr10431369qeb.33.1361382374157;
	Wed, 20 Feb 2013 09:46:14 -0800 (PST)
Received: by 10.49.60.39 with HTTP; Wed, 20 Feb 2013 09:46:14 -0800 (PST)
In-Reply-To: <CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
	<CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
	<CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
Date: Wed, 20 Feb 2013 18:46:14 +0100
Message-ID: <CAFyqS9q3q+Ep2z2Ygk4oN5pS13DHnV0abQ3BvzV3-mq=HqBrJw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Updating uboot to v2013.01
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
X-List-Received-Date: Wed, 20 Feb 2013 17:46:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 20, 2013 at 6:12 PM, Satya Swaroop Damarla
<swaroop.damarla@gmail.com> wrote:
> Hey hans, this is what he meant,
>
> In the machine config file add the following
>
> PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or PREFERRED_VERSION_u-boot ?=
=3D
> "v2013.01.01%"
>
> By the way did you already complete the first part... There is also other
> file called "u-boot-fw-utils_2012.04.01.bb" ... I think we should do the
> same...
>
> Hans bytheway,  are you also working on the same board or diffferent boar=
d
> with same problem?
>

Different board, same core, similar problem ;)
Now I get it. Thanks. But still question remains how in earth I
managed to build the kernel if not also having copied/renamed the
mkimage .bb?
Is the PREFERRED_VERSION_u-boot used to determine what mkimage and fw
utils it picks up?
Then it might be that since I/we build u-boot as a separate package,
but kernel lifts in the mkimage stuff, it works but the wrong package
was used.
In my case obviously compatible, but not recommended I guess. Also, I
agree that the fw utils should probably be in sync similar to mkimage.

Hans

>
>
>
>
>
> On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus <hans.beckerus@gmail.com=
>
> wrote:
>>
>> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
>> <rstreif@linuxfoundation.org> wrote:
>> > Satya,
>> >
>> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot such as
>> > u-boot_2012.04.01.bb. You can simply copy it and name it
>> > u-boot_2013.01.bb
>> > and then modify SRCREV to the revision that corresponds to the tag
>> > 2013.01
>> > or 2013.01.01 in git.denx.de:
>> >
>> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
>> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>> >
>> > Do the same for u-boot-mkimage and include the u-boot version with you=
r
>> > bsp.
>> >
>> > Rudi
>> >
>> >
>> Hi Rudi, sorry to chime in , but I have a similar problem but do not
>> really get the last thing you said.
>> What do you mean by including the u-boot version in the bsp? Also is
>> it a must to also copy the mkimage .bb or will the system find a
>> suitable one automatically?
>> The thing is that I only copied/edited the u-boot .bb but never the
>> mkimage. Still my kernel successfully builds the kernel uImage!?
>> Some magic that I have missed :)
>>
>> Hans
>>
>>
>> > On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
>> > <swaroop.damarla@gmail.com> wrote:
>> >>
>> >> Hi Guys,
>> >>
>> >> I need support for uboot on Tamonten board but the version on it is
>> >> v2012.04 but I came to know that v2012.10 or v2013.01 supports the
>> >> Tamontenboard through some guys here..
>> >>
>> >> It would be great if you can tell me how can I accomplish v2013.01 or
>> >> v2012.10 into the build system and make it available so that I can
>> >> compile
>> >> the and get uImage
>> >>
>> >> (Tamonten board is a derivative of harmony board with some changes an=
d
>> >> has
>> >> arm cortexa9 processor without neon extentions )
>> >>
>> >> I am kind of new to add new .bb files and help is really appreciated =
as
>> >> I
>> >> am not able to figure out how to add
>> >>
>> >> Greetings & Regards,
>> >> Swaroop
>> >>
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >
>> >
>> >
>> > --
>> > --
>> > Rudolf J. Streif
>> > Director of Embedded Solutions
>> > The Linux Foundation
>> >
>> > rudolf.streif@linux.com
>> > Phone: +1.619.631.5383
>> > Skype: rudolfstreif
>> > PGP: RSA 2048/2048 D6E7D28B
>> >
>> > Linux Foundation Events Schedule:  events.linuxfoundation.org
>> > Linux Foundation Training Schedule: training.linuxfoundation.org
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

