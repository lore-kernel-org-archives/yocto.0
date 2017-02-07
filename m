Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9926E0083C; Tue,  7 Feb 2017 03:21:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B6CE0082E
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 03:21:47 -0800 (PST)
Received: by mail-wr0-f194.google.com with SMTP id 89so5354328wrr.1
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 03:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=XOcHotoQ52GFCzUpI8ZOhxSaytFxBxUoLoAGaZZh8os=;
	b=qYRGBgYnvC2lO09sx0G8IvepMtP+HgSG1w9HnFaE/1/b7j1dTT7jPmwp/FvOR1hMVk
	W+HKd5Z3bXJTVKEAwAmma+R2/xF/nR4+fhXv5gXBSUhhckVBVKlMMwxynDrctC5oA0UT
	0tPwEOs7x74PTBwaIpNyZaLRzsdYCDpybO8hrJB3xjsrSEU9//b6Q9sLBA+dvDoU9vs1
	qf0nqHhTsTVa0LMKvChf9PMHIc9gErUh9bRwmSTzWobrPnlAZDLQ/3tuEHhhnhRJF5oe
	GtFSRI7ZWWJPAGUpyFqT1xz/sViFl2oWo0XvlX755ZJN9kL639KZlpbZCkqVt701wb4h
	520Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=XOcHotoQ52GFCzUpI8ZOhxSaytFxBxUoLoAGaZZh8os=;
	b=sSvY8MbltHrB3Hm6enYm+r1X6gcG0CsRcFnuBDC5tVSe38YStTIf8e9BKxmdMbbx1X
	xlrI6sZU7Ef43K6cqFvdCw91t1xNkJIjZChRBSFI7gi1SX8BCCKMfpyKKRU6g6k0v5WX
	3AV8S2O0uF4RHf9VsatPkbaeZ3DvsOYqMiuegnePh70257md/vfLV6R02FuajiTkW1wT
	kFvB//QbbziNTwSxVx9bP7ikeB/9ja1XuwBZtIEyPvkWv0oRtcWAgLGDNO/4jpy3+W8F
	aVW6RYlb4eFtD1j75c3uzpdfD2BmNQPRd6cjvfCU6Qi6lKdX28og0Xf6Xp1vC1q0X94W
	En7A==
X-Gm-Message-State: AIkVDXI8M1NpTtqKTNIb9JBWAxTtLTF393bsd7WCrEK1oDxMjHLFAgp5z0gXCIkxjQnfJw==
X-Received: by 10.223.135.146 with SMTP id b18mr13347279wrb.189.1486466506375; 
	Tue, 07 Feb 2017 03:21:46 -0800 (PST)
Received: from crde-port-20.cahors.local ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id
	e74sm18272749wmd.2.2017.02.07.03.21.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 Feb 2017 03:21:45 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Date: Tue, 07 Feb 2017 12:21:40 +0100
Message-ID: <2822590.mQdJjHCjeH@crde-port-20.cahors.local>
In-Reply-To: <503ef641-856e-a831-d39e-2c33b3b2440d@windriver.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
	<1710687.9RfHKcS4U3@crde-port-20.cahors.local>
	<503ef641-856e-a831-d39e-2c33b3b2440d@windriver.com>
MIME-Version: 1.0
Subject: Re: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Tue, 07 Feb 2017 11:21:51 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On vendredi 3 f=C3=A9vrier 2017 13:51:34 CET Bruce Ashfield wrote:
>=20
> I was able to merge branches with this patch applied to Morty.
>=20
> Cheers,
>=20
> Bruce
>=20
I've just successfully tested it on Morty myself. Works for me too, branche=
s=20
are merged just like they were before !

Thank you
David



