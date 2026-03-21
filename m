Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20A75109447C
	for <webhook@archiver.kernel.org>; Sat, 21 Mar 2026 13:39:37 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.11064.1774100369654442453
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Mar 2026 06:39:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=dI1uhXJX;
 spf=pass (domain: smile.fr, ip: 209.85.128.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso22396995e9.1
        for <yocto@lists.yoctoproject.org>; Sat, 21 Mar 2026 06:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1774100368; x=1774705168; darn=lists.yoctoproject.org;
        h=from:subject:to:message-id:date:content-transfer-encoding
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yXuNJBDDvnm/44/RUrQKlHt/Rhlumh/nULrg/Jhqfvg=;
        b=dI1uhXJXDFD1fgJhV7BoUTtdBkbwFKd9dQx71b14/CTt7Zgq8/YvQuplCZ0QdQpALP
         7N6Jqmpu23Tw7a4uTgNedxYO/MBK4biZANTNY1zubWoBF/mEyabfcDnqkjeQCXWI/7Dv
         QVrjjZlt+4iTfzC/T0zyX+KjbVBMw69cwA9ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774100368; x=1774705168;
        h=from:subject:to:message-id:date:content-transfer-encoding
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXuNJBDDvnm/44/RUrQKlHt/Rhlumh/nULrg/Jhqfvg=;
        b=rHbzgtJ6DdOJ3hOZ3nkMz8E7Vatzuo8XlZJ18HL2HF8mxe1FxwZpRMQ/eIZxvKVgtt
         s1OY/2/hExBzhlOtcsnO6lPyUEnQYFx5MYe7e4NzNyba9aG8BDN+yE34khmlfn0mPTrH
         z1dhRyPY+sDAuuNXM4AARyU5sEfVgHHpmOPS7qyOWDxZlXWJiKOYXhfB0N11ijBEsTI/
         7i0jfaGAtO943Cn6ZnnXzEUT65u+e2kqiIOJqHfT1h0kRDbgRS84UXnabWqyuq2MPetG
         XG4I5+i/7KqiJ5cvd8tvHQhWCBNdXlKDGwgZJH8rT6W17aBP8QvLIRJvOkl/ANcjo1YC
         1vXw==
X-Gm-Message-State: AOJu0YxfsLRFH42E03M97x5RzuuQqW6Z6zNpe72lbz2v53RjohTBhNSc
	OM2jjtzb4Y04FOTkKyr27n3RpUpzoMDu4nMTq3e8trrYX/D46hXPuypI+xH9xMQLJ/VAhMUXZ1Z
	2JSWC
X-Gm-Gg: ATEYQzxYC7TJaVC5wGOiFFA/bbh75O6p5UVXc7wPHlXSK/8vanpWUb25Gwd/vEoi5ul
	R0dO4XoBI0IMiS+iBfHE+D6rh8J0ebbE4sTcbnvQCmM/2ZtcKCfrUq+Rq5DGk1N2mqxbSJQyAVo
	TVgVEtkjzJGYLhvQhsH9n6lzd2vxH8O4rZazEPHQmpRn6idQWHoDLzgmTKOw0NqbWCHorPsYSQ2
	kmlBfxg+C0UU2CRXQ3gCuG47SJ6Af7voSqpLnP4jVM5H2JLGnyzFDxQaizmsL95Ozd9bTwLjTka
	yw2Z9BmL/sNILNSS4yf0jd5H0feTeF1c0s0WtCDCw/F2k/M2qR20GIUaEeb7yRhiQMEtg1Fx86n
	JnRkn+ny4ecclt2B9OEfADldQFw0aLae76CL1b8wHoVOEyaxocv9uWoRY2zujW38+KphobVWU12
	PjVY0Qoko2XX34CjeJ7A3uGi0lpKvOZ+uc3LDWCz9fgps5UHBq3+5VlclyBg2GVt2N2JvDXyj4k
	QrbzcqIPTTXcg==
X-Received: by 2002:a05:600c:c083:b0:485:35d3:ce59 with SMTP id 5b1f17b1804b1-486fedf9be6mr70648075e9.10.1774100367635;
        Sat, 21 Mar 2026 06:39:27 -0700 (PDT)
Received: from localhost (2a02-8440-250c-8030-6c94-8350-19c4-1d82.rev.sfr.net. [2a02:8440:250c:8030:6c94:8350:19c4:1d82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4870504f2e4sm10470155e9.18.2026.03.21.06.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2026 06:39:26 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 21 Mar 2026 14:39:24 +0100
Message-Id: <DH8I3C005I7I.EAFAABGT2FJL@smile.fr>
To: "Yocto ML" <yocto@lists.yoctoproject.org>, "OE-core ML"
 <openembedded-core@lists.openembedded.org>, "bitbake ML"
 <bitbake-devel@lists.openembedded.org>
Subject: End of kirkstone LTS support
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 Mar 2026 13:39:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66345

Hello everyone,

As you may have noticed, the end-of-life date of kirkstone (2.0 for
bitbake) is near.
The last release of kirkstone will be the 4.0.35 and will be built in
the week of the 6th of april 2026 for a release on the 22nd (the date
shifted a bit).

If you have patches that you want to see merged in this last version,
please send them before the end of march so we get enough time for
review and testing.

Best regards,
--=20
Yoann Congal
Smile ECS

