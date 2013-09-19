Return-Path: <xertz.yocto@gmail.com>
Received: from mail-vc0-f195.google.com (mail-vc0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5696E01587
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 13:45:59 -0700 (PDT)
Received: by mail-vc0-f195.google.com with SMTP id gd11so1321594vcb.10
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 13:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cSTJDBqmdzTmJtMNrwxXObr4oYRrFNcxyJ51afyqQpU=;
	b=zdRaxLAgP2g3+VcI3NNrsJWgx8vCMILjc1Y87N+ufj6ZuyfY5tMfdhECSdcvAcbH/g
	GeZtHPRb7S0Q+sPCZY05T4YBiXUJgzyiE8vU4kk/f/bAWJ1Ml1/Vz3wfZ/DsK5rP4kpp
	RcPzF9hF9EyIcTpmeg9nnC6AVqKnigTlkE3xeftt2R/vb4FBMk59u74b0Hj9FveHbbl6
	hveWNgD9jEe/zZQhB0AmWDmBsye/9nRP3xEW9Afa2VZoI7VogcTTSeqaPGcMsy94jMht
	P4DZdViwV/dSkGqji19mEAyQSjGbkWixEkEYMoMyAgrMbrQ/y4KpeaU06QKpClTZGm7A
	5lCQ==
MIME-Version: 1.0
X-Received: by 10.52.170.232 with SMTP id ap8mr5208vdc.40.1379623559184; Thu,
	19 Sep 2013 13:45:59 -0700 (PDT)
Received: by 10.220.251.82 with HTTP; Thu, 19 Sep 2013 13:45:59 -0700 (PDT)
Date: Thu, 19 Sep 2013 21:45:59 +0100
Message-ID: <CAEo3mJVoEW6kUSkD53jptvSx5+3cA94xt7jtJXwOC_pPkmJOLQ@mail.gmail.com>
From: John Doe <xertz.yocto@gmail.com>
To: yocto@yoctoproject.org
Subject: Building a linux module into modules.tgz
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
X-List-Received-Date: Thu, 19 Sep 2013 20:46:01 -0000
Content-Type: multipart/alternative; boundary=047d7b6d7aae2b4b9d04e6c2a47b

--047d7b6d7aae2b4b9d04e6c2a47b
Content-Type: text/plain; charset=ISO-8859-1

Hello,

Hopefully this is the right forum to post this message. I would like to
build a linux module for example drivers/net/wireless/rtl8187:

http://wireless.kernel.org/en/users/Drivers/rtl8187

using yocto. Do I have to setup a standalone toolchain with ADT in eclipse
OR is there a simpler way to get rtl8187 to build with core-image-minimal?

I am using poky 1.4. 9.0.0 "dylan".

Regards,
J

--047d7b6d7aae2b4b9d04e6c2a47b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Hopefully this is the right foru=
m to post this message. I would like to build a linux module for example dr=
ivers/net/wireless/rtl8187:</div><div><br></div><div><a href=3D"http://wire=
less.kernel.org/en/users/Drivers/rtl8187">http://wireless.kernel.org/en/use=
rs/Drivers/rtl8187</a></div>
<div>=A0</div><div>using yocto. Do I have to setup a standalone toolchain w=
ith ADT in eclipse OR is there a simpler way to get rtl8187 to build with c=
ore-image-minimal?</div><div><br></div><div>I am using poky 1.4. 9.0.0 &quo=
t;dylan&quot;.</div>
<div><br></div><div>Regards,</div><div>J</div></div>

--047d7b6d7aae2b4b9d04e6c2a47b--
