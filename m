Return-Path: <bhuvaneswarik1991@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 896E1E00C1C; Mon, 19 Nov 2018 04:20:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bhuvaneswarik1991[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27B0EE0050E
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 04:20:54 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id f12-v6so22085323iog.0
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 04:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wo2wCePGExDkjt9MYxDyAIXTbqNiw/n0zpQ3dTY1Xt4=;
	b=L/Z/ZiLXT+IppXcNATRJHLZqZKqT87hLcPY9EHvoyPblUEcjOVw+7z19MYDiQMXgMF
	7l2ZcyQ0RowOVBtzv5mYkrzT0P8bF1sp/8fCeC+u1dZB9d6dSGk5iiYiRgDrqC9gmf9e
	65FOjYcRopDbTIn2BeyI+01ZLbk62ENYWZDy50VHFEVvtO8CheiuTWnzIuWUWeJIA10K
	0TqHpjlYFT1QCrcVZCUueX3Lvu2KUyobeMed+kddMJN58HpxDyU7mVFbeY7vjW+JVWZn
	C96nybsp5JJiLf51b87PVld3oznkl1JWvpmXnf8FEHjGymBj+G647Kz8b0X/b/yKiYR0
	xbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wo2wCePGExDkjt9MYxDyAIXTbqNiw/n0zpQ3dTY1Xt4=;
	b=DdhmcbL1mz0NbsA8uYYTmMRH8FNlT6nwChgjjk4UVqiHYL9RnA2iMf3b2CcBcwN1LS
	QxSncKSmVkPgJYPU6WgIkUXM10KEgvOVaLlILV/Pu+nw2gAQ2w7b2fOeVAqPigZI6Ppz
	xw1kSwKb2V/nvzczhL/2lPDXdhzdUJQ9OJmDqgvqXkQ+SvWIEtfr8b2kgjiAAQcIfPy0
	fo2V7s+kJXolOZ1MsU+TQrnMpPbxQHII6bdzmTcB5SM6GnbBXQm+NeUS2sDuxVqZpEcD
	8GAltRPhhoECOqZi//WT1MjlVq6vAISSU9nGQssW4SzUmdm1Y4x5R+romjc80p0w13zA
	LR8A==
X-Gm-Message-State: AA+aEWYzhFvviZlQzvzbIJBL9lW5Lf5tI9c0MPG2AySmEA4hl2J1kzUd
	WQzd8aSl5WCi1uJiZR6C535lD5ecLA0UPTUhroRS6w==
X-Google-Smtp-Source: AFSGD/WJC3FpgXgTrBgy61l/h9kdYhEwEHM/1pHyZB0Evpscer3Lda1WgVNTz3S7qFFP4Ljqv/H6hAw/K/rp8NLrE3k=
X-Received: by 2002:a5e:c24a:: with SMTP id w10mr601859iop.178.1542630053214; 
	Mon, 19 Nov 2018 04:20:53 -0800 (PST)
MIME-Version: 1.0
From: bhuvana easwari <bhuvaneswarik1991@gmail.com>
Date: Mon, 19 Nov 2018 17:50:42 +0530
Message-ID: <CAKYRCLS7ty16S1V2=TxnB-zsRMpxmXKMmf4iZJc-p2oWbDm6mA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Need Support- Variable exporting
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
X-List-Received-Date: Mon, 19 Nov 2018 12:20:54 -0000
Content-Type: multipart/alternative; boundary="000000000000577e0c057b038c84"

--000000000000577e0c057b038c84
Content-Type: text/plain; charset="UTF-8"

Hi,

I need support on the below issue.

1) Actually we are trying to build two machine from one meta-layer based on
some choice.
2) Both devices having different configuration files.
3) Now we have to export a variable from machine configuration conf file to
layer.conf
4) Based on the exported variable value,we are choosing device specific
conf file.

Can you please give some input on this

Regards,
Bhuvaneswari K

--000000000000577e0c057b038c84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">H=
i,</span><div dir=3D"auto" style=3D"font-family:sans-serif;font-size:12.8px=
"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif;font-size:12.=
8px">I need support on the below issue.</div><div dir=3D"auto" style=3D"fon=
t-family:sans-serif;font-size:12.8px"><br></div><div dir=3D"auto" style=3D"=
font-family:sans-serif;font-size:12.8px"><div dir=3D"auto">1) Actually we a=
re trying to build two machine from one meta-layer based on some choice.</d=
iv><div dir=3D"auto">2) Both devices having different configuration files.<=
/div><div dir=3D"auto">3) Now we have to export a variable from machine con=
figuration conf file to layer.conf</div><div dir=3D"auto">4) Based on the e=
xported variable value,we are choosing device specific conf file.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Can you please give some input on=
 this</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div=
 dir=3D"auto">Bhuvaneswari K</div></div></div>

--000000000000577e0c057b038c84--
