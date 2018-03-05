Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C6C9E00DF3; Mon,  5 Mar 2018 13:18:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
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
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E56DEE00A9C
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 13:18:37 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id 30so19608542iog.2
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 13:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Jb0zaS761ehGP8a3/wgcwYoB+0NKCETXBenIVEMgbCA=;
	b=kDvvHCbltM5OB51X1ULBRkB198KOXK+88WwHLJBtioNQAcyROTRAwBDW4+7Jer6XEo
	EGR/0syWtPpn1z5zdvPsiwg5DFHmnCQLVaR4Rr/xwiCQYhk0Bz5NQ0k5DpgkCXpkySGy
	C2VoNvjyFmd4V7gEe1F1javf8eg/bCJmvBMSecO6HOeaSkI4a1eLoAG37jdmX2PcbwCK
	vu2/BxkkScYZHOoWaKwCgKbJyv1gWYwWUXk1ORnnh6z8U1HIVgdIcJq/4A89Prtm2Xqb
	KifF83XQVqREOyCZCRMscOO80GrlPj3G3C0e/Z9QZsSlz/xfkB8buHuHu6Al7okUgRih
	sbYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Jb0zaS761ehGP8a3/wgcwYoB+0NKCETXBenIVEMgbCA=;
	b=kLKgaDJT0PwZDojKq4kdvc1oekKgZC0jU8JBrLvsdfvChNbP8t/tXdXfkPw4FYKVGb
	6v+CKl3sUaZUMUzAjaBHqDjv3/1kJdGI6DWqVYdPk1QdLUKL15eVreyYm3FKvhoWctGR
	NgGzSzS1xVEFsbnFwbOCs7JPW9g6AyX8o5CCWOWEw5E7/rQCwLNF9P6TrNmTQ2H6ZIpP
	l6CCAFmDm7t3Rmq2SgmveE+p44gx/inV1G63QSVECm/BHo9GqUE2i7AnW6GzsT6S1eJ2
	0w5xFViqYlKzn0rPJR2xh4EqZsr9Kj7xSp/3PFloKlrofL2DfvoApoyGSPKf36ewO4HZ
	ntgA==
X-Gm-Message-State: APf1xPA0PN2nlID8U3/OgTl2B4JbkfP9NuRNINccHuz6UYmb3JUgd4E3
	QDpK1gP1X018UisuJJkSHSVZAQUKTZW347gcLddJRg==
X-Google-Smtp-Source: AG47ELuHOjEgLLqaZSpLmudZ4Vpvz6RzNvxnD/23gxFYP93CtTDmbUm7MqDvEy+6CSd6RIGv1sEs/jj6i3qjHFd+Q/U=
X-Received: by 10.107.133.42 with SMTP id h42mr18682321iod.227.1520284716794; 
	Mon, 05 Mar 2018 13:18:36 -0800 (PST)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Mon, 05 Mar 2018 21:18:26 +0000
Message-ID: <CAFzUWG=DKYcnaNTWHu-pcAiLgzaNpxfjm9+8pZsO0LY4ib+BpQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Adding custom scripts to home directory and /etc/init.d/*
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
X-List-Received-Date: Mon, 05 Mar 2018 21:18:39 -0000
Content-Type: multipart/alternative; boundary="001a113ffde080a0f40566b0dea4"

--001a113ffde080a0f40566b0dea4
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am wondering if there's a nice pattern or workflow within Yocto where I
can add a custom shell script to /etc/init.d for the purposes of running it
on OS boot (which also requires running update.rc I believe) as well as
prepopulating the home directory with some files of my choosing.

If someone could point me in the right direction, that would be great!

Giordon
-- 
Giordon Stark

--001a113ffde080a0f40566b0dea4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am wondering if there&#39;s a=
 nice pattern or workflow within Yocto where I can add a custom shell scrip=
t to /etc/init.d for the purposes of running it on OS boot (which also requ=
ires running update.rc I believe) as well as prepopulating the home directo=
ry with some files of my choosing.</div><div><br></div><div>If someone coul=
d point me in the right direction, that would be great!</div><div><br></div=
><div>Giordon</div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></di=
v>

--001a113ffde080a0f40566b0dea4--
