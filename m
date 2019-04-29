Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F9F8E00C93; Mon, 29 Apr 2019 05:35:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCF8E0096F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 05:35:12 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id h26so8786536ioj.1
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 05:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6G1nSky4hVngmggMEZK9PZQrqt9LTPxDwXJNIoe6oDU=;
	b=LbLRk2c5EDj88NU2EdXya1UxgTgJQqwkR3zw44VJdrlP6awGdHhtiIyYNh67Je9L33
	B1HvpITcPsZgV+Xo84K2Hd2EriVK1vFQdrUyVkBodwihWo9OqwrUJ7EG7Cb2fiTVwRAG
	TTSTac6ESiBhniPRMKiRsA3dFCRhdLICvVUuXZJtXxVktS1va0gzrRqZGKUFn2c/TWj0
	KMUp0PCUqofqB7pBHJ1eog7X65OBJzNN+FxsO0GEUDpgGtej+i6A7XhMX6PF3XXN5BpG
	4Br5WDpTYj5ktJgJSzT9RyyA1BJg76/4c8u18jywQhY9h3l3adsUHO+/jlcbSeCPNrl+
	cKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6G1nSky4hVngmggMEZK9PZQrqt9LTPxDwXJNIoe6oDU=;
	b=ggJDE0//YRiJW6q1Cxtqhv6BPuOyHGsh7Z8KDSY5O4ymOoXaOtm1Jl3PtvwDYhXlHt
	LoRw46N29TGZHQP/PXMw8egHhx1eR/jkjuJLVtV4y9hkCFSeSJ1P7AnPihMdAq3CS50x
	L3zJD4AyJMPRvhg2Oc/TPq/gSOG9YmaB/PlxXksilE0fdS6iCewhAYsDL1SbxroXz8Xn
	2TF55USFhPuqZM64V60LKJ6jalgFvWJaQtN9PBNwmr7vYSDJPVQe8JRuHxHmkrmLD3vB
	uhCbIBAUIhZMl+M93a1p6FljH3PX6ZqE2rQ/RCB+s02jrGhDqHGpr5irnDqhW5NKtVtL
	59Vg==
X-Gm-Message-State: APjAAAUV+5ztDyvmRbS+Kb3xnsEiyPpjqgxE1Wxo3d6f7wBaGQ1d3HMY
	ZYTJ8NWV+zaFKKpGu1rPWmKhrcC0MWlpIOKxh07h
X-Google-Smtp-Source: APXvYqwP/xKAgiCw0LmNAfiO+3aYy5hI4DN7NtG9h4QrDURyRAo1e8GMPa17TYZrpfc1+c43JLattV3CVXRtONsNh0E=
X-Received: by 2002:a05:6602:2109:: with SMTP id
	x9mr936238iox.94.1556541311975; 
	Mon, 29 Apr 2019 05:35:11 -0700 (PDT)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Mon, 29 Apr 2019 15:35:01 +0300
Message-ID: <CA+FhBv_yDZEAU0YPyZ+0kjtvB30VbCWk9mYnD-TEe4Jy=hF2ZQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Replacing a configuration file from another recipe
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
X-List-Received-Date: Mon, 29 Apr 2019 12:35:17 -0000
Content-Type: multipart/alternative; boundary="000000000000fa85da0587aa83ae"

--000000000000fa85da0587aa83ae
Content-Type: text/plain; charset="UTF-8"

Hi,

In our base image we use nginx. I created a nginx.bbappend to add our PHP
configuration in a separated layer.

For a specific variant of the image I need to add an extra bit of nginx
configuration.

I though I could create a new recipe to overwrite nginx.conf and include
that recipe in the variant image definition, but bitbake shouts at me that
I cannot modify a file from another recipe.

If that's the case, is it possible to create image name based bbappend
files? Or do I need to create a separate nginx overwrite layer with higher
priority than the base image nginx.bbappend for that image variant? (I
wouldn't like that)

Thanks,
-Damien

--000000000000fa85da0587aa83ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>In our base image we use nginx. I c=
reated a nginx.bbappend to add our PHP configuration in a separated layer.<=
/div><div><br></div><div>For a specific variant of the image I need to add =
an extra bit of nginx configuration.</div><div><br></div><div>I though I co=
uld create a new recipe to overwrite nginx.conf and include that recipe in =
the variant image definition, but bitbake shouts at me that I cannot modify=
 a file from another recipe.</div><div><br></div><div>If that&#39;s the cas=
e, is it possible to create image name based bbappend files? Or do I need t=
o create a separate nginx overwrite layer with higher priority than the bas=
e image nginx.bbappend for that image variant? (I wouldn&#39;t like that)=
=C2=A0</div><div><br></div><div>Thanks,</div><div>-Damien</div></div>

--000000000000fa85da0587aa83ae--
