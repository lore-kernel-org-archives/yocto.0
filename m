Return-Path: <matetuske@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 908C1E00AB3; Sat,  3 Nov 2018 15:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matetuske[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13EB0E008D7
	for <yocto@yoctoproject.org>; Sat,  3 Nov 2018 15:52:12 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id 131so8988874qkd.4
	for <yocto@yoctoproject.org>; Sat, 03 Nov 2018 15:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AgZkFYL2TwIzGfYirAbFzZfknGwj6AgaReLNK0Klvak=;
	b=jlOhZBrwKhHWR5rK7Jhn2hpsIvTgIrK/XARYg6VhhvVM5s0nsYJ2JjNtYXdY2ae005
	ghVJ61UdXcu04u27Lgw/X4JRvCaqt4hCQRSH0HLLL1Oi1RTci7Q/6Ce/n9nTkQA0tbR1
	jw+78OvSFQNRQPJnXRSwyRPPdKc4D/KUt5dEBQyPSTNDi4BwlY+2avyiFFtt2fZrG7BS
	Lwe0dMh3FexSzRP2FKd5bENAYUnGIzbRLwTqbvJDDIXV0bl/aoWzC5ujzDDtq0paGnRz
	f/EuFQInhyVK+xWdkJ3LTqTMmIqL6rnsRGpjoIzCYHM0e/nmDA7Go0eNhppsjiSl6K/j
	CbZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AgZkFYL2TwIzGfYirAbFzZfknGwj6AgaReLNK0Klvak=;
	b=Oj905GdCmtuevmNEBwY75spW5cplDazzDjYAhYnNSjECeG5S+NcImFw9xH47xC9nWs
	ftK54VIBRFH84wV60cny1/l86pZoS8QFQKcF9Jjg07OfhVz3ObL0cEBqtuimyjGoAxW3
	B9MmRDoZjPOw6NBD7WRxOO89f4R/V0zz044pRpB5LLNBTgPZytHqvFFUd4xBLVRAZ9Lq
	ZpPLM1DQh0MHOjOJla18DDaYg6/3MU68Pu1QdCyKWlh0GUMMNePYvCCvXlvO4R8/H6un
	LWjZalyq/YLIEOUjX+CRCPd2FxTXDavIbu+kEfIAACgU9eVVp3zyyqlyG0y06BVXUjF3
	gtQQ==
X-Gm-Message-State: AGRZ1gIwh4ZxPN0YyzDxrm/BaCw8x1GPKiER+qH9ZVfjkLvllhMLBE3/
	vkkrhn4w57qZ+DL8L5QU6+OCWbJG7y7NgHiaxL4NBWy/
X-Google-Smtp-Source: AJdET5fKvafQM7lEyOXqSUddr7QO5tzJO6F7lhnE5vMXBcc3nfooVuOfUR7WzC0i3NJ53Iw3vb2ZqBeN8XZ0znERHuc=
X-Received: by 2002:a37:112a:: with SMTP id b42mr15767925qkh.136.1541285532006;
	Sat, 03 Nov 2018 15:52:12 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOhdMOpIFTDvHNrZQ==?= <matetuske@gmail.com>
Date: Sat, 3 Nov 2018 23:51:43 +0100
Message-ID: <CAMm5SjTr=usidGb34RTK_zbqoazu8vZtSddwXTY3ApU-i9a=mw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: smartpm "already installed" issue
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
X-List-Received-Date: Sat, 03 Nov 2018 22:52:13 -0000
Content-Type: multipart/alternative; boundary="000000000000a1fcb20579ca8086"

--000000000000a1fcb20579ca8086
Content-Type: text/plain; charset="UTF-8"

Hello,

I just created an rpm repo for my morty yocto os. The problem is that every
new package installation is failed because the dependencies "are already
installed". E.g.:

error: package libc6-2.24-r0.arm1176jzfshf_vfp is already installed

In the repo there is the same package that is locally installed. I cannot
reinstall either with the package not found error. I found this error as a
really similar issue:
http://lists.openembedded.org/pipermail/openembedded-core/2017-February/132320.html
but this patch is included in my yocto build system. Now I'm stuck, because
I found no further hint about this problem.
Any idea?

Regards,
Matthew

--000000000000a1fcb20579ca8086
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>I just created =
an rpm repo for my morty yocto os. The problem is that every new package in=
stallation is failed because the dependencies &quot;are already installed&q=
uot;. E.g.:</div><div><pre id=3D"gmail-hterm:copy-to-clipboard-source" styl=
e=3D"color:rgb(0,0,0)">error: package libc6-2.24-r0.arm1176jzfshf_vfp is al=
ready installed</pre></div><div>In the repo there is the same package that =
is locally installed. I cannot reinstall either with the package not found =
error. I found this error as a really similar issue:</div><div><a href=3D"h=
ttp://lists.openembedded.org/pipermail/openembedded-core/2017-February/1323=
20.html">http://lists.openembedded.org/pipermail/openembedded-core/2017-Feb=
ruary/132320.html</a></div><div>but this patch is included in my yocto buil=
d system. Now I&#39;m stuck, because I found no further hint about this pro=
blem.=C2=A0</div><div>Any idea?</div><div><br></div><div>Regards,</div><div=
>Matthew</div></div></div>

--000000000000a1fcb20579ca8086--
