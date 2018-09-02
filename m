Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC9B5E00754; Sun,  2 Sep 2018 10:42:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nishantpoorswani[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A78F0E006AF
	for <yocto@yoctoproject.org>; Sun,  2 Sep 2018 10:42:35 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id l202-v6so29901420oig.7
	for <yocto@yoctoproject.org>; Sun, 02 Sep 2018 10:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=cQgpj9oGOVpphqhffuEordU6JiDvnsHlgCp7d6BP0EU=;
	b=VftzKtmnMUn9erVQOQDzLm6NI2u63FU6GyQQQ/aoBm/F4YgfJV4Cb/d4h94C24Ru6i
	SVtSX8LKZMdgK/stXfv+ByV2myq53H0/rQHdJxAsKH8KTcXzFraWY2y/NjCmyFZT/VJG
	QMyEX+UqoaKSi3f8DAc2zjiRBGPlasriargg+TtFwlOUKvN05EvTnB8aOdwlwTlIfCJk
	EfkdaTkluv4FhpDgqOeKN+i2SRiw8F0YgKC0QytFuSvxHranjE/XU+Tae1X9D5/t8X9I
	2AB2Ss+7AS1VT7qICoTHOpdXxJ0Ffho415itVYVlSc5fiTnfQQfukCDsBfb4l5++LVm9
	4uew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cQgpj9oGOVpphqhffuEordU6JiDvnsHlgCp7d6BP0EU=;
	b=erpE2z0u8dSJZlJIrvga84cthwEhNOqUijRst7ggNSTSiVRJKsStUuml64wfkVxmKO
	u9A81GYC6tqvsqqfC5K79B+aujz9xj8CNTyu7bZ/ZXI8/HTfT0IHTXeB4Ud/Bu6KNiKm
	WU3iJ3OqbG+gkGb/maitPAbsMrnWMYmxypD6W2SbxCHKFl3JiHe6LbRlQNshGjGUhlx4
	sqQy94vphGgKtBlTC8fybrn1N0O7eRitgHw82SYMI5y/SNnAlZSdcvQV74JSzUm5pmiN
	OVH1nrrjgYoR+PPeyjiAhyna0orQn2MDneVz4/dtYHSbVs/i2oWXCi+HvQQolt7zgZ0/
	wz5g==
X-Gm-Message-State: APzg51C+iVqgYV/M7mT8su6EkD9B1u7QkKUY5I3DIzLh6WxEcZlkHFzi
	l8KTfAf7T81tQW94fmWi3/Qz0AyxD4/EME0GLggaNg==
X-Google-Smtp-Source: ANB0VdbjcIzQMfGr/9N+2buimdgQZSnMx/2DJg2yWwEXukB/krkmFkTmdfKZ3gzYUE1h5xu5Tk21SNRrmne40MGEtBk=
X-Received: by 2002:aca:68d8:: with SMTP id
	o85-v6mr15317669oik.96.1535910154691; 
	Sun, 02 Sep 2018 10:42:34 -0700 (PDT)
MIME-Version: 1.0
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Sun, 2 Sep 2018 23:12:22 +0530
Message-ID: <CAN70yQUgvFcu6vwm41Yk0+zs1MbVZLfe3wUwVFjw8wf=1tpe=Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Sun, 02 Sep 2018 17:42:36 -0000
Content-Type: multipart/alternative; boundary="0000000000002d69e30574e6f32b"

--0000000000002d69e30574e6f32b
Content-Type: text/plain; charset="UTF-8"

Hi. I'm looking to write a recipe which installs the wheel file directly.
Any idea how to go about it.

--0000000000002d69e30574e6f32b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi. I&#39;m looking to write a recipe which installs the =
wheel file directly. Any idea how to go about it.=C2=A0</div>

--0000000000002d69e30574e6f32b--
