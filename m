Return-Path: <linux.mrjimorg@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E09E0070B
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 11:58:04 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so4614570ghb.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 11:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FZBdxEtIMkRLDG1LVWMk0HnyodTWUy6CIzFYJA+JbbY=;
	b=kAwzBLE7eMvAHqqJVKKfNWQPkDvcYfszyK7x5qkpKV9sIVP74ey/tDhDzgyf0sKABd
	dEJf4lkYBjJj6H3sfdPTQNQ7a2UNwQf264pJswK4kEIP+ecWca+cWCa65r6LcJJGgvSc
	Di6/gF7OyUD1vOf3AbI8cS8MjyEbM6oHqL85B9AT0o+sa9bqkjYAkk9bHQBsPHz9UXYD
	S8flsD9XtvKastnT5vk1IwBDcCVOXImHSEXh+gnVYo/UJjGt7U94JD2XqioFroZQKUwd
	wt6QusrNOgptpwrLfCBMTQ4Tmwu/ussH8HF9lrJPF/nmOKzTX8ObdzkdO328TkGqchO7
	WyNw==
MIME-Version: 1.0
Received: by 10.50.220.136 with SMTP id pw8mr9690560igc.1.1340045883331; Mon,
	18 Jun 2012 11:58:03 -0700 (PDT)
Received: by 10.50.170.100 with HTTP; Mon, 18 Jun 2012 11:58:03 -0700 (PDT)
Date: Mon, 18 Jun 2012 13:58:03 -0500
Message-ID: <CAH6UwN2LBTKk97jCgq1Z07RWhY0ko3oNVGjHg9tfGW7CkoD=HQ@mail.gmail.com>
From: Jim Rucker <linux.mrjimorg@gmail.com>
To: yocto@yoctoproject.org
Subject: Dependency Tree
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
X-List-Received-Date: Mon, 18 Jun 2012 18:58:04 -0000
Content-Type: multipart/alternative; boundary=bcaec554dec0dbd42904c2c3bedb

--bcaec554dec0dbd42904c2c3bedb
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to build using the code sourcery external compiler and I noticed
that it's pulling in qemu. This brings up 2 questions-
1. Why? Qemu is not a prerequisite for building with GCC and shouldn't be a
prerequisite for building with CS.
2. How can I easily generate a dependency tree so I can 'fix' this?

--bcaec554dec0dbd42904c2c3bedb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m trying to build using the code sourcery external compiler and I not=
iced that it&#39;s pulling in qemu. This brings up 2 questions-=A0<div>1. W=
hy? Qemu is not a prerequisite for building with GCC and shouldn&#39;t be a=
 prerequisite for building with CS.=A0</div>
<div>2. How can I easily generate a dependency tree so I can &#39;fix&#39; =
this?</div>

--bcaec554dec0dbd42904c2c3bedb--
