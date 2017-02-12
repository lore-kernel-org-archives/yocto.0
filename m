Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D310E009F8; Sat, 11 Feb 2017 18:59:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 800ADE009F0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 18:59:37 -0800 (PST)
Received: by mail-qt0-f179.google.com with SMTP id w20so62718956qtb.1
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 18:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=r7nu8gCcDVFIZCqdbYwvr1Dm2+qEuF7QAF89Gs3JOoQ=;
	b=vdFUCQ3hBhWRiKhuK1b8v6mbf0EfqdLXchbwuBDVp5B4fwF5vu1YMfBr6fMKDrckHM
	1AxBx3m3AbSCHyzp2Mcak3YGzrKvplXHCwxX3M+p+/Jlt0KWl1d72P3VsxWx3td/W7ms
	6qj/7ToTmJbmYOUVnx8pmbWNtlsjjsg7/BY6sjO4r5WoIyeKIJGk2dpPdM0HEz4YbN7l
	YRJ/O3XQvf7sTlwMG5RLlXiRbOWSACJ9yU9U6RYo2vasLNZXdv6RYt4beBbxvtvbOuFm
	bJ5T9gb6h2y4zt1Nj/RXfJOhPMAMgmbVZ5kFxuJ+lLtt50k+DXprp/49pWumw7jn/5i/
	+MGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=r7nu8gCcDVFIZCqdbYwvr1Dm2+qEuF7QAF89Gs3JOoQ=;
	b=Nt4HaWb3iszC0dPBKDmVNbeXUsXIcQgGucdYbOgrQWyOW/PMg3/EQEUcaCwohtrGwE
	4FYnDoMP69ror1G2dqEWUwEVYkIPxM9iDGSlV0SvWN4m9ddkdBhgQJE7sxCSdYqw6X1O
	TO1e5crB7SNm5V4nqwjpthQg3xE24+JMB1LtZGLpy4ETWTzNqiFQ9Y6BskljDotF2L0F
	ivYFg+QQHoYPkXoNa4osvVk0HzhqHLq0XNAD2SDaIDe4CEGol1LSs5KdWAkMNyrHIPfd
	PPQlDv6mJqKS4x/4H/r8jqnyQTJA6XPW7mlFeUCauwd4DhE3a5H7/01s8JiLJUYjmsaw
	vqhw==
X-Gm-Message-State: AMke39lCe4kd25ke+SsHX3BBwmDHYXeGdBNuwLNOzBXhcmSGkpoIyBgzI3M9DA77cUKbj3aQ/aTi4FXkb2sGNA==
X-Received: by 10.200.33.210 with SMTP id 18mr14449075qtz.165.1486868376975;
	Sat, 11 Feb 2017 18:59:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Sat, 11 Feb 2017 18:59:36 -0800 (PST)
In-Reply-To: <CABcZANkuZSjY2cPJieu0wKkiLJmopNjK3L6dZ-0fxe1VwZKZPw@mail.gmail.com>
References: <CAF3SDA7qoMq=ejqR9QCx7xCFk9kFg9MkJ6Lph4JUGQ0rrNj0WA@mail.gmail.com>
	<CABcZANkuZSjY2cPJieu0wKkiLJmopNjK3L6dZ-0fxe1VwZKZPw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Sun, 12 Feb 2017 00:59:36 -0200
Message-ID: <CAF3SDA4Y5V_kF9x_1jmWBcEg9t=+wYUVA_RkawSZ8Hm+7-NDMA@mail.gmail.com>
To: Christopher Larson <kergoth@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to make a recipe MACHINE specific?
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
X-List-Received-Date: Sun, 12 Feb 2017 02:59:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you so much man!

2017-02-11 23:56 GMT-02:00 Christopher Larson <kergoth@gmail.com>:
>
> On Sat, Feb 11, 2017 at 6:47 PM, Daniel. <danielhilst@gmail.com> wrote:
>>
>> I have two machines and a recipe that uses MACHINE value to decide, at
>> compilation time, proper code to be used. The package (.rpm in my
>> case) ends up at tmp/deploy/rpm/cortex-arm-v6-hf-... folder.
>>
>> I see at my tmp/deploy/rpm/ folder both of my machines folders aside
>> of cortex-arm-v6-hf-... folder. How can I make the package goes to the
>> specific machine that was used in build instead of the cortex-arm-...
>> one?
>
>
> PACKAGE_ARCH =3D =E2=80=9C${MACHINE_ARCH}=E2=80=9D
> --
> Christopher Larson
> kergoth at gmail dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Senior Software Engineer, Mentor Graphics



--=20
"Do or do not. There is no try"
  Yoda Master

