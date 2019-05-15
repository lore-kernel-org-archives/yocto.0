Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D80DE00D73; Wed, 15 May 2019 04:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E659E00D5F
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 04:47:28 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id c66so4511406wme.0
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 04:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=l+4CXJ1EuPifWyQ6aSL9cPvcAjS0xmY+MUoroZOVuAw=;
	b=mrO4Cm4Q/Wp8X5icC+3zavIj0wHe64pgcGIu1D75v7F+OzW/HaIR41f/ZxcwFK0FHA
	FvS90smHEmkqzImgQNP/+tKlWa4csnLU3Xr/NP8FsNnrVD/A7HuKDRBgwsHayMQGXLYZ
	fiZMc1Z8wP9BUDsBcAJ8GAhegnucot+ZT2zTU+wN6QOmo7bkYrD58tPtGaeb0iyuScPZ
	Yx7nUIpsBGVF+MNZ/hq0M3GrwA/DipgvzVARNa9xVImFpABUcrx1LqdmtHRrzqA+vguw
	9QYGvAfxd0WWyYusQ96huacc9v5QeXW8d7s6sf7eJPAdr7nPN6sK3VWAbD20HxuguW0c
	3OoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=l+4CXJ1EuPifWyQ6aSL9cPvcAjS0xmY+MUoroZOVuAw=;
	b=FYrE5iF/154cZO8sO2Ut/Iz2D2EJ2wzyE24ISVdv3akUnlB0irl8KLJDbrqCyV1mFM
	SvxtDAKN/pdzE4lPXfD48tr9I/cM560QicuqcydAcr9ojM8WQQpTLKCgL3rBlXXZ3Fyv
	y9xRKT2u547mgDcwDfYApaLbGloebpHrz2CeabPpOwpRCI/AjwbXr2fwTvMZh25Ai4lX
	sSrlnpzs9mLdebn+4twlRUJpXx1qINCfgJEFPSP3PBeEORgTXzuXLgWi306bAWBi3uN1
	pTvbn9IvrS0/01qkOLzzKXOvre2YstNJykcdnW3OhO8hvhqZhh9SFjIX5xeQnS1pckyf
	U3PA==
X-Gm-Message-State: APjAAAVEzk6HlO2lOV8Ip7Jxk8q0wpheA4dzzjmcGj+CfE10wpVJolbi
	MTJvT3GkwzYXWMp+2UzGj+Poc5ZN7DM9DNokeHkxBvWu
X-Google-Smtp-Source: APXvYqzUxOeXFYhKfIr9+0Ihp4p2nu6LdNq36onkkklSM17QwKaSJEY3xB4AfzSwjgtHHjX2u9h34jlpET/W9LO7uDE=
X-Received: by 2002:a7b:cb48:: with SMTP id v8mr5246932wmj.108.1557920847206; 
	Wed, 15 May 2019 04:47:27 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 15 May 2019 13:47:15 +0200
Message-ID: <CAAfyv34DwUXivWqyxayzfRJwXHiBqJj5z1xhXkw-ns9_5aGWUg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: wic cp doesn't work with ext4 partition
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
X-List-Received-Date: Wed, 15 May 2019 11:47:31 -0000
Content-Type: multipart/alternative; boundary="000000000000af9ff80588ebb60b"

--000000000000af9ff80588ebb60b
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to update some artifact after image is build using wic tool.
I've tried wic rm image.wic:2/boot/uImage and this works fine (verified
with wic ls). While when I want to copy something to ext4 partition (I've
tried to copy to vfat boot partition and it works fine) like:
wic cp uImage_modified image.wic:2/boot and verify with wic ls file is not
copied. Anything I'm missing here? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000af9ff80588ebb60b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to update some artif=
act after image is build using wic tool. I&#39;ve tried wic rm image.wic:2/=
boot/uImage and this works fine (verified with wic ls). While when I want t=
o copy something to ext4 partition (I&#39;ve tried to copy to vfat boot par=
tition and it works fine) like:</div><div>wic cp uImage_modified image.wic:=
2/boot and verify with wic ls file is not copied. Anything I&#39;m missing =
here? Thanks.</div><div><br></div><div>BR,</div><div><br></div><div>marek<b=
r clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature">as simple and primitive as possibl=
e<br>-------------------------------------------------<br>Marek Belisko - O=
PEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005=
 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: =
#opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">ht=
tp://open-nandra.com</a></div></div></div>

--000000000000af9ff80588ebb60b--
