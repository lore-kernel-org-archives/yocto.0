Return-Path: <santantonioswap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46811E00CE5; Mon, 28 Jan 2019 11:38:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (santantonioswap[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B167E006F1
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:38:24 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id k19-v6so15308377lji.11
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mevTlk33ajqcjTkdr96W+MwLhEhaAc/Tco1gTiDDGXo=;
	b=C76bmh2MFT5OUx+S21H/aogsJlJjp16asjb3LaAAp6QrpU0pUNi9B+PV3Hb+X6IjII
	aUdiE0udgbNSSVrn3v2n2bOt2Eu4ZeU74qDuUTlDuhPXCTa2hQgGP+76XU1RKuDkoDDd
	CzInwMXsFJaVWlIlEkr3xopxzUn+sLm9xOA3t7dP/PEdAg9mZUioiWf0snDSJ8WkWJfj
	REkIRVBuAiWv+Y+dcOzlNBxUNoeiC2B2qJzhECNx6dnLrI1dvYF4UZehj7JF/OSY5ET2
	s72v3FUGHO3HNHinZyuxGc/QNbP8B+KdPFMnLfa0TEEqRFYWvFavQVw3M1k4dRJp9C2M
	h2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mevTlk33ajqcjTkdr96W+MwLhEhaAc/Tco1gTiDDGXo=;
	b=WtOIa/dfYRiRM28oFacmlAQlG6Mp87V8e3rbQ2ZtZymvsWForavA3jkbKeOASfengY
	0kVX2Id/7OzF0ciVZta46jmnbTarutXVcWVeg9V6iLFGYe3Ab2I34zeAiesVlfJt1lE2
	ZWTNcJy+E5yEYMZ4gE4sq+3R0tALioEX8Xz71EEvh24ZheTbBus8rFyK2yjifSG61x8W
	rh0Fgt1nPbX/OpG0ltJK7Xp2GazYzcBiKA3mERoSYkOokFVqojueb/okaj0C6HmS0V1t
	/WW2X5CbqGmJVJvedmUQr8IVr09qRa1cFbzwWlwUm1fRqNouB5e+njE83+VxzIg1e3Lt
	vYXQ==
X-Gm-Message-State: AJcUukdYK7A8aLKdnBHy/ZLVglrQU+BcEbgtDmR3PQckf3wAONl9xDkW
	S7mSYXnEJGJFYn3Ruhr0YrU+TL3Sc4EN01pCJQolnlxC
X-Google-Smtp-Source: ALg8bN6uJhhsPhoo6ju+/gdVev2M+GFTumYZbkySq6npkfRbCzczTJtLJQaJ8qwpXvcs7gSHzKYVzOw9HhF0UtLag7A=
X-Received: by 2002:a2e:5cc8:: with SMTP id
	q191-v6mr18216837ljb.192.1548704303265; 
	Mon, 28 Jan 2019 11:38:23 -0800 (PST)
MIME-Version: 1.0
From: Antonio Santagiuliana <santantonioswap@gmail.com>
Date: Mon, 28 Jan 2019 19:38:14 +0000
Message-ID: <CACsVzKiGweFn7edUQtuEHNN0pS2kdOe=BqL0++SMon3PqSMoHA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] change kernel version from recipe
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
X-List-Received-Date: Mon, 28 Jan 2019 19:38:25 -0000
Content-Type: multipart/alternative; boundary="000000000000dbb9ce058089d19f"

--000000000000dbb9ce058089d19f
Content-Type: text/plain; charset="UTF-8"

Hi,
which is the right way to change the Kernel version to build  when using
meta-raspberrypi ?
For example I want to change from 4.14.39 to 4.14.52, without changing
anything else in the meta-raspberrypi layer. is it possible ?
Is it just  to define "LINUX_VERSION" in the local.conf file ?
Should I change anything else regarding u-boot related recipes or device
tree or other ?


thank you

--000000000000dbb9ce058089d19f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>which is the right way to change the Kernel ve=
rsion to build=C2=A0=C2=A0when using meta-raspberrypi=C2=A0?</div><div><div=
>For example I want to change from 4.14.39 to 4.14.52, without changing any=
thing else in the meta-raspberrypi layer. is it possible ?<br><div>Is it ju=
st=C2=A0 to define &quot;LINUX_VERSION&quot; in the local.conf file ?</div>=
<div>Should I change anything else regarding u-boot related recipes or devi=
ce tree or other ?</div><div><br></div><div><br></div><div>thank you</div><=
/div></div></div>

--000000000000dbb9ce058089d19f--
