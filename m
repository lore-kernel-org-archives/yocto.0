Return-Path: <ron@ron-oakes.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC24E00C09; Fri, 25 Nov 2016 14:35:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AE81E00C09
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 14:35:24 -0800 (PST)
Received: by mail-yw0-f180.google.com with SMTP id a10so72214523ywa.3
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 14:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ron-oakes-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=QZPPrzgxbq1XO9tPfOjOyDOq5KUr2BWbhDT+KcqqM2o=;
	b=E4kCCOQOvCSEWQ9XfLuj9A3+Kl3fSYpEJ2uESDyiQlz7WHQfhI8lPpmoOAdVlMNvO4
	4XkUcAkaS+OjuLC8ISpY4SMe0fDcBPHKLcVT1c7u6v0FvgJsVMovFY+H2AyrxeyvmK0D
	KTtaEfBiTTzYQPJ+GJxW5jn0flfDCoNedq9Rcsb/TTZPWcX1RghFc3p4E8Etf8urmKuY
	B//rH/19gcabz87l20jpmxJdczIcYSREC23v4G8vhGc1JXNFsuH37qgj2esECxT8nO70
	uNQPxnFkalhszz59qJtoYoD5jVQKZnZi74z+U8iTmIvpk5lmg1dwAIuH893Ba6Esve5E
	Z4kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QZPPrzgxbq1XO9tPfOjOyDOq5KUr2BWbhDT+KcqqM2o=;
	b=R4crbmEalnWjPKj5ioYowUvzw1pPtMwvl/hgm9SSss7atC3aJbMU0hwQwYvVWnRa4K
	XpjAqEkwFJIzc+/HjnHL8LiWwzRvKG0gtpZ5VtxG19gdDQzvouhrKDSY9Xt139sAPM3n
	Z+Be1HPQ7H7HfaX1coQnRC6tpuCjVn0oxeogXZwKkg5ronIxV1uxunE7R0plbXoFz454
	8S3OQrG6saYGLRJE1Xw/L1MyZUnd5OPd2D2gZG4YjU4gK/8bDyuybBWu8HSarLnjD14c
	vaJIVoVfnhz1nfkv2GpIf6f7GBJVg6ODjE57gJOGB6fgjIb5kcZeAHD4wmMSRjYe19z3
	6byg==
X-Gm-Message-State: AKaTC00OrT3j3zW1wGveiYt4hw8UjaSpwIkYtje4ts2BzpiIHWuYBUzAmLa3yVfzPk/NY5QVKjCqoWdtIFO98Q==
X-Received: by 10.129.75.2 with SMTP id y2mr14053535ywa.120.1480113323620;
	Fri, 25 Nov 2016 14:35:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.174.35 with HTTP; Fri, 25 Nov 2016 14:35:23 -0800 (PST)
X-Originating-IP: [132.3.45.79]
In-Reply-To: <CADh9ykHD_4GO+n9hpv-bWn-JCnZaxzS5mTdmC1b1iBQGfRVR3g@mail.gmail.com>
References: <CADh9ykHD_4GO+n9hpv-bWn-JCnZaxzS5mTdmC1b1iBQGfRVR3g@mail.gmail.com>
From: Ronald Oakes <ron@ron-oakes.us>
Date: Fri, 25 Nov 2016 15:35:23 -0700
Message-ID: <CADh9ykEWV5YZLDUsGWFB0ktp5QzhqQVdU3wCqEA_G3MPF5NwAw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem imaging a hard drive
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
X-List-Received-Date: Fri, 25 Nov 2016 22:35:28 -0000
Content-Type: text/plain; charset=UTF-8

Well, I partially solved my problem.  It turns out I had a CD in the
computer with an old boot image on it that was loading and causing
great confusion.

Now, grub appears to be loading OK, but doesn't look like it has a
valid configuration to actually boot the image loaded onto the hard
drive.

My commands (based on the link in my first email) were:
- Format the hard drive using mkfs.ex4 -L <name>
- Mount it (usually by just unplugging and replugging the USB to SATA adaptor)
- Copy the data from the mounted image file using cp -aV
- Add grub using "grub2-install --recheck
--boot-directory=/run/media/ron/<label>boot /dev/sdc"

My educated guess is that either I'm missing something in my
grub2-install command, or there is something missing in my build or
build configuration that is causing the grub configuration to not be
picked up when or where needed..

Ron Oakes

On Fri, Nov 25, 2016 at 11:44 AM, Ronald Oakes <ron@ron-oakes.us> wrote:
> I've been trying to use the directions at
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F
> to create a boot drive based on my build.
>
> However, I keep ending up with my root being at /media/ads/, with two big
> issues: my static IP address isn't assigned, and my path is messed up
> leaving my applications not on it by default.
>
> The one main difference from the directions is that I'm using grub2-install
> instead of grub-install. This is because I'm using a current RedHat system
> for development due to a requirement of my client.
>
> I will note that at least one of my added kernel modules is being loaded,
> since I can see related messages in the console/demesg log.
>
> Ron Oakes

