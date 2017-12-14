Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8897DE00D71; Thu, 14 Dec 2017 00:17:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E460FE00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:17:54 -0800 (PST)
Received: by mail-pg0-f53.google.com with SMTP id k134so2958559pga.3
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aVtG9hwCub97GUgdjRALdBghfuHtmoMq/RB7Nvpjv2Y=;
	b=U7yzqKMBC/JWZJ/2LMIPrcNjl8D7n3H3DbfUmX5lCgOgEU5Ce33fVBa38IWO7GTE6M
	LGtUmJb1XChl1DYOcet8kAPMltdff3HWmsmG4V4kx6SztbaHcbGhht9gK3Tb5WQlDba0
	EpAYS5UVvcrQTa9/svYG9XuBV5FQEZpGQq6uGGcrRrODjZZAXlgpuSOBvC6ACmKLtqMI
	poB4F3bg9FK97R67N1Mykoxour4PqsnD16EPT/5EH2BBMejZKDBVc1jcYNu6Oj0AIRS6
	7b5xS7umV8AOfKK/KmZXEF3qHOZkEgn9LDZTg3ds6VrKC3AdB2laRAzJCcjSjojbhKq/
	3I6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aVtG9hwCub97GUgdjRALdBghfuHtmoMq/RB7Nvpjv2Y=;
	b=H6lUPm0cMf3JOH7JTmmEYCFbH8Plysagl1YCjfpyFFgku0V6khx5xZ0IhuSX6ERquP
	gA9t+zh1NL0GpTQYcFRFSL8SSTDtqfEo6cWZMynUMBJh5YbjhJCTxlNpjZZ3Ll5DujQP
	AkfQtcg3OFMqD1GPlIyzWuA9xDkANzPSI9+Hc6u8xvchjpUUE5PDyr/5FV0ccZn5degD
	ePXPJFIOoJNNQYa+ujqf5khZwIthkDVkM+pxR/+vHMSHdw0EVuhShvjdLbpAjFDk3Z6u
	xGxt7Ah9ls3/kKSrUUFfCDKhwCaBm1Gp20W/D6kgOd/X/ekkHCv9MxPFlAle2p5nfBec
	/MKQ==
X-Gm-Message-State: AKGB3mJRZlzuoRmKsqWSJHIHNUJEJlj2c0l4ld04dY+/lJabIAxFI7ra
	rJaqT3HWH6ullSZyG3cK3vfEQUN6YtK4W+5FBXg=
X-Google-Smtp-Source: ACJfBovxxRiBkmMZhTFmNbDUJcQM3nRhxVIRZvWw9kykcGzM2TJJvC0YMI1jZ3ZBvdmvMkmFcdPGchXV5xdv6ZhXeEA=
X-Received: by 10.99.124.23 with SMTP id x23mr7821784pgc.189.1513239474065;
	Thu, 14 Dec 2017 00:17:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Thu, 14 Dec 2017 00:17:53 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 14 Dec 2017 09:17:53 +0100
Message-ID: <CAPb0b+PDjLvr22oYuNFnhw_hzQz0J0fU0f5k2T6tdTcP5wRySQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] bluetooth device not available with rpi0w
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
X-List-Received-Date: Thu, 14 Dec 2017 08:17:55 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b50a24fd6af05604885ab"

--94eb2c1b50a24fd6af05604885ab
Content-Type: text/plain; charset="UTF-8"

guys,
i tried to get the bluetooth to work but i get no default controller
available
hciconfig hci0 -> does not find the device
i installed it with rpi-basic-image

do i need to flash the bluetooth intell firmware?

could you please help !

--94eb2c1b50a24fd6af05604885ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>guys, <br></div>i tried to get th=
e bluetooth to work but i get no default controller available<br></div>hcic=
onfig hci0 -&gt; does not find the device<br></div>i installed it with rpi-=
basic-image<br></div><br>do i need to flash the bluetooth intell firmware?<=
br><br></div>could you please help !<br><br><br><div><br></div></div>

--94eb2c1b50a24fd6af05604885ab--
