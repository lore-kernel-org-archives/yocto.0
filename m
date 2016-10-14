Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CA0BE00EF1; Thu, 13 Oct 2016 23:34:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4632FE00CCA
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 23:34:34 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id 2so4608605vkb.1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 23:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=H9PTl1one8uzQgMvq1GSlKEMOQ/qCi4s+xXNkfDOePw=;
	b=cCjBEnIqXRlTbr5alo4LjtkYHsmCTgwIwGGvmJsTP+afzCEE2uTd+Fbf+3ZlpYTKgK
	pOgrmlxRFv5VgjCUUi6nf621Qi2IxzQ/j1PGnoo75/r5eACs/xpnRLvFNajCKZsHV1Dd
	b4QeFZ2uA+9459RHfcheFs6/R2rlRdXEeHF+nCcWCF8HeBoaBDsmN0JcTK2ZsqLCgIv9
	nZNhQ9jhj0mBLrtbBp4JYkutItop6QWYRodwHfZ+zZD6hNLnZbNZzWxcck+bPaXfIgzR
	e0QK34duCcpSzKXnfLeCqIiCDMegNOn9pMro2HxYKmx7Sph249ubep0yTt50DxQbASur
	hGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=H9PTl1one8uzQgMvq1GSlKEMOQ/qCi4s+xXNkfDOePw=;
	b=CkIbNpewfMx+bljaSPVJaNPixOyk60oVwUooES5CcA5ZnkccThgH7Jvr2NtrbeyrYZ
	ul24wTO9Q6eJt/Rt41nAeA8EtGmdt4loPsl2MA98A+v1J/z2hnTRqr8CH6O/otNFtvK2
	eOzCl/cJsG0SX1/h3JQrN1ohBANdeMP3FEwcRJ7iOYuV569jKR9eo39zCHNI3btl8XBF
	HZhmKdch3t8pzGOGYq5dTI8bLxD9Qux5WS0/Kj6Do+7uQcY+m7GzvHIK62hCKxXbV+/r
	N8WKHJZgoteWBKk4WFoV6QGIf6OvAM0f3SD+jEWJ5WwRzSum9lBx+MUPCf6i0LobXU92
	CeVg==
X-Gm-Message-State: AA6/9RnXiO8crluqC66yfgSlfJyNZ/TPF7Gxm6j5dUaNswNiCNd1g6oL3zd7tsBT7v4zcpXgaxScnB/6JaDXPQ==
X-Received: by 10.31.196.131 with SMTP id u125mr7759351vkf.83.1476426874064;
	Thu, 13 Oct 2016 23:34:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Thu, 13 Oct 2016 23:34:33 -0700 (PDT)
In-Reply-To: <8ab5758c-c2e2-db35-c5fa-abc107c3ef1b@topic.nl>
References: <CALbNGRRHQJGxcNCLNN+q4YGeV=VwfPbtO_XrcoMj-ngQkjSiqw@mail.gmail.com>
	<8ab5758c-c2e2-db35-c5fa-abc107c3ef1b@topic.nl>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Fri, 14 Oct 2016 08:34:33 +0200
Message-ID: <CALbNGRSwRnvQUy=NzRR04-8J1YLcXWP5S9NtQrRPkJn3Czxeiw@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Big endian ARM machine with NEON wanted
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
X-List-Received-Date: Fri, 14 Oct 2016 06:34:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2016 at 7:41 AM, Mike Looijmans <mike.looijmans@topic.nl> w=
rote:
> On 13-10-16 19:20, Andreas M=C3=BCller wrote:
>>
>>
>> Does anybody know a big endian and common machine supporting NEON? I
>> would need one for testing my port of portaudio.
>
>
>
> Most ARM systems can run in both big-endian and little-endian modes.
> Somewhere early during boot this choice is being made.
>
> Having said that, since big-endian machines are getting rare, there's ver=
y
> little support for big-endian ARM systems. Most (if not all) boards can r=
un
> big-endian, but software support is usually lacking, in particular in the
> bootloader parts where this matters.
>
> If it's just for testing some software, maybe you can use a QEMU machine?

Does QEMU support NEON?

Andreas

