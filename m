Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5557E00C1C; Mon, 19 Nov 2018 07:46:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
	[209.85.208.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D8FE00A85
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 07:46:15 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id z80-v6so26537786ljb.8
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 07:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZKNvjW1kRSUM8LGR3uCrO16XCZWgwSgykFhBds5ezlM=;
	b=Oc94F/SYVY8VMlYhoo0UyuewT7X93QEpelVvAkZpqqXtlKXbu9pwn/4d7OdbJaDxKR
	vxQSAUWWZKwUoay/2qkovmUJXE6e8nSAgvNFeugeIUsTG9CieqzhLrEF6f/29mx7xaBY
	8bxE1mLxKpxB5IzVrnD2/+GL/2HMDQX2Re0UOLvDeC1Pror9HDe+1fAW7q9sgpySWnkW
	qtq3qqs2C4HWVlGZ70Mr4Zw7bP83D0s0fNPf6O07UliYHHoeONpg+pFtmGGgxcTjYpYe
	i0uxtxoHVH5B6FRYBHKV/WWDtCz3uD5L4MoEogQqxdWhV+Sk65qYO17BsibcYtOM0g0z
	7sKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZKNvjW1kRSUM8LGR3uCrO16XCZWgwSgykFhBds5ezlM=;
	b=GABkKSKYBQ1EZxMPOaVqgSeQTxGU/QIhQyZY4t49ryMYMLSHaQVa8HGgW3004c1ZvR
	ytTkhWJT2uaobSs2PXeHCd7oWyflElEja6rbH4OIN/Fp0KbQZHZ5JmTdnB2enVoC7sFT
	9QyryNywQBadJYAFIzChNtpL+OqgFdtk+YJPgbrgi2qyyGFYOnRWd5KvNy4R307SJbp5
	E4BkSNNzlAUvFuLVrXV+z8mCq07xwdQMD4EzpJfIdHgGUb8/r3r0HN8jf8QXQbkQZxLW
	dAuR1b+g6eWyOsostkWVhEzZ74LZClUAFs00a1y6COR2qemeUPZy6MZq/WVF2/mgZPdH
	BOtA==
X-Gm-Message-State: AGRZ1gKPf2pcK2rsKvNmp1H8I4IWPUx1rw7VmOOG/KFzBAYKl0B5ItFn
	iYEo5fH2/+HAfzAk53MGDRULDUIB0DOjsGJEe/XGwA==
X-Google-Smtp-Source: AFSGD/V5wztD6qWJpMy6TiQmDn+88sgPwDMOTdukHqtCLk21lW8BlSfSxHi/hQ+uACSpR97O/J/Xp0kUsROgNAY2Sgc=
X-Received: by 2002:a2e:2d01:: with SMTP id
	t1-v6mr5377137ljt.159.1542642373862; 
	Mon, 19 Nov 2018 07:46:13 -0800 (PST)
MIME-Version: 1.0
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Mon, 19 Nov 2018 15:46:02 +0000
Message-ID: <CABj1EzGjuBYnp=_+U-Fu3Py+=64HAFcP4EZnyb3TyaRc-t5nvA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Modify login prompt with script output
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
X-List-Received-Date: Mon, 19 Nov 2018 15:46:16 -0000
Content-Type: multipart/alternative; boundary="000000000000b5d307057b066a82"

--000000000000b5d307057b066a82
Content-Type: text/plain; charset="UTF-8"

Hi There,
Is it possible to modify the login prompt so that it includes the output of
a script?
I know I can modify the /etc/issue file as part of the build to include
custom text, but I would like to have a script which is executed to
generate some text to be displayed as part of the prompt.
Cheers,
Donal

--000000000000b5d307057b066a82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi There,<div>Is it possible to modify the login prompt so=
 that it includes the output of a script?</div><div>I know I can modify the=
 /etc/issue file as part of the build to include custom text, but I would l=
ike to have a script which is executed to generate some text to be displaye=
d as part of the prompt.</div><div>Cheers,</div><div>Donal</div></div>

--000000000000b5d307057b066a82--
