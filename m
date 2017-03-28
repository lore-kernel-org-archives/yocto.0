Return-Path: <2233arunkumar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF92FE00B01; Tue, 28 Mar 2017 02:14:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_STARTS_WITH_NUMS,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.7 FROM_STARTS_WITH_NUMS From: starts with several
	numbers
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (2233arunkumar[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA9B9E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:14:13 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id i203so49027563ywc.3
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=pVVxTmzqS+stIDEjo39DgQLw+gtJl3vJ8HpNaQxEDrI=;
	b=eOFlwCk8F7VIQ1QXz+f8ThZSwRXVM9qvs6x4Pi8bFDhJz0FHOku9XI8sPUAONZdEF2
	iZ1JOmvecL5n75HpHeiRH29YWLT9IMAcGCl2ETQBd20b7I+qiqWvVhgbfbkubzrrmCQb
	V0ahBxQ3HkbzhwyEub//XFhSqEWkJL15s/NPIgfiz2kwXtlVyahGRe1Fw6rgzTmVEJOI
	abn+uTNBJzEvBHjSJqEzMI0oB1yRMrOiz0KjMgT/Tgx4ICMn2NVtr3SziLmK11gK0C3i
	o80Qn3WDto46hBhGHteDXA4uQFCrbOmK4iEAgWo/lK9uF/CJQ/b0HW2sbu7jKqpOWMz7
	vT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=pVVxTmzqS+stIDEjo39DgQLw+gtJl3vJ8HpNaQxEDrI=;
	b=D1ITo12Qr3zQfctqUjK6QpNThUpjWETialCab5ttqgGJ7iSlsUzOAJA/AHgoEfDrJr
	SP72AE4hUJ7aivTRQmgU2ZuQHYC/qjJt+4DD3tzS8DUKEiHecK4aWznaWbGMMv0p+ELQ
	c2QeVGrqqtlhbbzCt+oaxuUEenlsKidy/B1mVFNRSyQxGfqcpupkO+dMq772F+jOyrX1
	sNzX/U5rNwS6WJOe4otK942Sp9WMdg6q859fALpfyYkSdvJc1BluvgrONzaSbQzLCFlN
	UQrcXwVgj725BzWIPsrqAO3wxDHkA9hCiKoGnr0h3c2dW/2MaB7pIaBa/UvSXIpHBtbl
	pERg==
X-Gm-Message-State: AFeK/H2dID3e/Cpf+4x4CcyVPHnbsnhNcztw6vcK1sxKpX9qAz2sscoA5dr+DfwhwYomGFqoubcTxV0xC3+Z2A==
X-Received: by 10.129.169.202 with SMTP id g193mr20832954ywh.15.1490692452330; 
	Tue, 28 Mar 2017 02:14:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.13.78 with HTTP; Tue, 28 Mar 2017 02:14:11 -0700 (PDT)
Received: by 10.37.13.78 with HTTP; Tue, 28 Mar 2017 02:14:11 -0700 (PDT)
In-Reply-To: <CALHF=T0JT4iBQVeXq_p-JGOwppr7K1pPGHV3+70P2Xbwnu99rQ@mail.gmail.com>
References: <CALHF=T2fyuX=m5bfNG097VxioZKWQ=c0Zj3FwtO7P5+coYx6hQ@mail.gmail.com>
	<CALHF=T3V=3stmsJmp0KCEiEycJKrScQF_y+UcsuLEAk=EGA3dA@mail.gmail.com>
	<CALHF=T0JT4iBQVeXq_p-JGOwppr7K1pPGHV3+70P2Xbwnu99rQ@mail.gmail.com>
From: Arun Maha <2233arunkumar@gmail.com>
Date: Tue, 28 Mar 2017 14:44:11 +0530
Message-ID: <CALHF=T3rs8-vYKXjCbZZscgn1EfhXvui5TKJumA9ijCSt-FANg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Questions
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
X-List-Received-Date: Tue, 28 Mar 2017 09:14:14 -0000
Content-Type: multipart/alternative; boundary=94eb2c0029421735bb054bc6e2d0

--94eb2c0029421735bb054bc6e2d0
Content-Type: text/plain; charset=UTF-8

Hi,
How to install a command (pmount) in poky distribution. What are the steps
to follow?

Thanks,
ARUNKUMAR K

--94eb2c0029421735bb054bc6e2d0
Content-Type: text/html; charset=UTF-8

<div dir="auto">Hi,<div dir="auto">How to install a command (pmount) in poky distribution. What are the steps to follow?</div><div dir="auto"><br></div><div dir="auto">Thanks,</div><div dir="auto">ARUNKUMAR K</div></div>

--94eb2c0029421735bb054bc6e2d0--
