Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEADAE00D8F; Wed, 31 Jul 2019 04:06:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64825E00D85
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 04:06:13 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id o9so31710459iom.3
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 04:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=B/t90gyjqMXWTmLG/QyZmPQmsmh8i9vIEM1nMvybn8Y=;
	b=lfASb8n618toEGEtMUOCPQUsV5QWp6ghkRL/D5u+xdacXPzKx+j02fIOh2R6QDB3it
	NoTqzlK5/LskhA7gZAhBIBCnkz2bsE9dNqI3vRcyq5UMZKmXkpsZ5g86Mp2A41xgeoY/
	EjQV1o0ovzDlq80VJvhK3dZ7/RN8qZH6/TsIiAyp6xc2SUmSFUDzvaEKtqsP0nwMutS+
	ddGQFFGP8+y8xHCubzs+1gVXIkf3LciKj0E0VD93a4WxlWWEtYzIr1n3vkWhvoj9LGTy
	F9m6DM0xpOXxu5juXmQvM1c0wOFEtm4KQgZ7d+YliD9lsQk3GSNgtcwcE/YfU6EdRbjf
	9b0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B/t90gyjqMXWTmLG/QyZmPQmsmh8i9vIEM1nMvybn8Y=;
	b=I9mrkTiT3ga93OPJv2ormZ266xvpPZ7evFTY92A65lejyzKBaMtHgvywCxvByxWEyp
	NkmSbQB2FsxNhmOjq6JBWQCPSDX2rZVDklxRYyxmqa7lpTeaIKFqew0KpHi7SnE5aLhX
	94+VA3AuRTQwA26pghGwfnHklmi/BI6VFK5FrGFfZO1v/bkuPoB0EjP4NQEjWjtZzjJp
	9fwrFmofwynaMW4S4mKfg1vi41hYWbEtgkAoxS8jMF0av7gmdPFM68th5z0UbXK6Kqjd
	rKQExUg4M3BnzN/Z41+lPj5D1T+p/3QOOc7YM3fcA7VyW4YaHVEGrFYGybm0pJhIw3bk
	iWnQ==
X-Gm-Message-State: APjAAAWHjpUIo3J8z6yqQfEvhpBMxhxbJowu8FXsAAwTJvj5/vK/isd2
	BLiqWNr0aUBfwXgym8ctt85s6r/KjySC38ECUM9HWnqV
X-Google-Smtp-Source: APXvYqzFmY0gblIoPS5mZ70hckJC8ANHnScwx6Q9giGjHgvNcXxqoV+Sj6muHH8fEz9LXO4voue+dlNkEgLg9mVKr/Y=
X-Received: by 2002:a02:54c1:: with SMTP id t184mr95555415jaa.10.1564571172616;
	Wed, 31 Jul 2019 04:06:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Wed, 31 Jul 2019 04:06:12
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Wed, 31 Jul 2019 21:06:12 +1000
Message-ID: <CAA=hcWT8zsyukcEBT=C9XAYLMt2tCaRqZT6Z_5ijQKnSdrAQRw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Anyone tried to build and to use QUIC?
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
X-List-Received-Date: Wed, 31 Jul 2019 11:06:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I searched recipes for supporting QUIC, but could not find it. Has
anyone tried to build and to use QUIC?

Thank you.

Kind regards,

- JH

