Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E07DE008E5; Thu,  3 Dec 2015 08:24:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C77C7E00888
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 08:24:36 -0800 (PST)
Received: by lbbkw15 with SMTP id kw15so4805555lbb.0
	for <yocto@yoctoproject.org>; Thu, 03 Dec 2015 08:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=l/jZxo4qLkzKeWoDyyIGj3abl01WvKF0ECfTGk0llzY=;
	b=HfNCxW5utTuxnlIUcjDerwd5tZsqcmLIHwivyiRLShuUXffeLVu/WjkQ/0uB1CkiVV
	8OqLQxyd83KnblI1zrUC8e+SA03h2QRVVN5nwegmnNCHEuL38LjjL6sxJ1JjHOHsn6wD
	TaaitEPUOrb6e2rwAvv1k1sOB5MO1cMXcR7JvWB2pBTqHDmW9wHEPFMAMO3tzlL/wJPA
	cJ+5ItPwaHshQZOZASPVKp60Qu5/YyZ5My7EYWAVP9/kSL0FVNcVir7No2hroo2qZb4O
	94nQjGQNCTGiF+Ln0jYXVGWEhqDPvd9VT4wKm5Uv+DhIggvdljTRaWAuKkpI9NmlsCvB
	34dw==
MIME-Version: 1.0
X-Received: by 10.112.199.194 with SMTP id jm2mr5208113lbc.109.1449159874933; 
	Thu, 03 Dec 2015 08:24:34 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Thu, 3 Dec 2015 08:24:34 -0800 (PST)
Date: Thu, 3 Dec 2015 10:24:34 -0600
Message-ID: <CAOsp8o_kjTeXnmQWgR2GM7XiWHtKZPudSPUp3qR+Y5Wdfnye9g@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Pure initramfs image
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
X-List-Received-Date: Thu, 03 Dec 2015 16:24:40 -0000
Content-Type: multipart/alternative; boundary=001a11c33a52917ef3052600d3b3

--001a11c33a52917ef3052600d3b3
Content-Type: text/plain; charset=UTF-8

All,

I have interest in creating an image that runs purely in an initramfs
space. It seems that overall this shouldn't be too difficult - I can set my
IMAGE_FSTYPE to cpio.gz, and as long as it's a reasonable size, it
shouldn't be an issue to point to it as an initrd. The only quirk is that
kernel modules are split out from the rootfs deployment (two separate
archives). Is there a way to combine the modules directly into the rootfs
archive?

Thanks,
Michael

--001a11c33a52917ef3052600d3b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All,<div><br></div><div>I have interest in creating an ima=
ge that runs purely in an initramfs space. It seems that overall this shoul=
dn&#39;t be too difficult - I can set my IMAGE_FSTYPE to cpio.gz, and as lo=
ng as it&#39;s a reasonable size, it shouldn&#39;t be an issue to point to =
it as an initrd. The only quirk is that kernel modules are split out from t=
he rootfs deployment (two separate archives). Is there a way to combine the=
 modules directly into the rootfs archive?</div><div><br></div><div>Thanks,=
</div><div>Michael</div></div>

--001a11c33a52917ef3052600d3b3--
