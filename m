Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D6C2E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 09:08:36 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so2917622laa.35
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 09:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=TOuvy+N9MCSUoQh+BtbmjT/Ex2haOFfKYrEvZP4Fu7g=;
	b=IwtzK8lWK8/v9Ii7P78jX2iWnqA+8lLX3Q93yzr8jR5B/797tDr0nLTumHAbrb9AZy
	2Amidb8f4C15hobo4JnS4twgAtQozyqCozFRq9uXTaj89VrWnewFQkiHUwvwPZ8IQa2s
	MyO9tvryM7oZG/K0qzGdIeWITl7ohvgOtxYKQ=
Received: by 10.152.123.75 with SMTP id ly11mr9200508lab.32.1326215315482;
	Tue, 10 Jan 2012 09:08:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.115.1 with HTTP; Tue, 10 Jan 2012 09:08:04 -0800 (PST)
In-Reply-To: <loom.20120110T143526-690@post.gmane.org>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D8373@POCITMSEXMB03.LntUniverse.com>
	<20120104050442.GE31275@sakrah.homelinux.org>
	<loom.20120110T143526-690@post.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Jan 2012 09:08:04 -0800
Message-ID: <CAMKF1sp=fWMUz65nB0FBTb_gF7__jks5=C3=KETGSqwksOV7rQ@mail.gmail.com>
To: Navani <navani.srivastava@lnties.com>
Cc: yocto@yoctoproject.org
Subject: Re: Related to eglibc
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
X-List-Received-Date: Tue, 10 Jan 2012 17:08:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 10, 2012 at 5:38 AM, Navani <navani.srivastava@lnties.com> wrot=
e:
> Hello Khem,
>
> Thanks for your reply.
>
>> can you try it with eglibc-2.13 or eglibc-2.14 ?
> =C2=A0I tried using eglibc-2.13 and eglibc-2.14 but they didn't worked. S=
till Qt
> application are refreshing at every touch.

then you have to find differences how eglibc 2.11 is compiled the one
which works.

