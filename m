Return-Path: <torres.soldado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1068CE00D1B; Sat, 30 Mar 2019 10:34:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (torres.soldado[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2F01E00B5C
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 10:34:06 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id u2so3501718lfd.4
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 10:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4KtWpxfHD3BJvoG4HtXdPkxa3LZhQRuqs11Ho2ocmPo=;
	b=R2fV6Y8d6w7/+KUQ83ZNnIrVTvZZZLEhjLeZYup7oRw7MvH92IjZZX0jJlOZ+OXieF
	irIfpjk9PwAHUNCLlRsvo5LcnTVMkTkCUrK2jYXo/Yji/1Nw8O1bR+stpSLr6z4ccjAq
	M0K4yzv5Zgw81ditEaDopGkx8ar/5ovjvRsaRDx7v9TXql8hAjOUjcoqkGIHYunq+bfJ
	YL/LT3LxBQbsXNoHOdJ/3EuaEbt3S/WC6Nvs7a49y+MqbWkn50JodHmbUYpk6EJtcdjW
	lbCvprK0ruhq5o23T70wTOLP5zCxpnoXtBbzC2Ae5ESR6i8aB2/69Rv02jnKMNE0BKw+
	K2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4KtWpxfHD3BJvoG4HtXdPkxa3LZhQRuqs11Ho2ocmPo=;
	b=CK5S/AYBYG/WwNZ+zbM6fYCdcY7yHBcjUGzotEyZTWuTfgqjaTxdZlRIf/4qMCI1U+
	k/i1ltWSWzL0jd3uiyLrAP3Ud1sDcM4Kg6DcdAPNUAWKTJGigEgjtCNhlr0QaoAA5h1b
	1izKnWzhh4Byw2/es6VR2kVc0Tf/1YfvvLh1USg4U8Q928K0VPWXOA8+UX2BxZvkiqkU
	sqkaP/cd9o2aIuBXpied7n4uxO3CAmUflAtzICtGLqVH4qX/6ya1a7JfL6ThYnedCfjW
	2eH+FZ9qAP4OlDTdSUFSDYOC0tRf/+a9hGv3VcJywfvmRc7GO1inJc8JV3S8ZIjjcEBm
	VxHw==
X-Gm-Message-State: APjAAAUhnjdF/yW+k58onsM3lqgQSz/IyOdjxjEJd5X0n+t6oI1YpxAB
	RGCsuD7kIV9OAF5aFXS50Uw/DTkqjmpy3ZABBoE5mA==
X-Google-Smtp-Source: APXvYqxaov717KoXZvdkHXkffdixDcTZvfvvaB2y5/fVZhheNAs5x9MpfT0nJim/Ypk8mrsVik1aJO08G7EwXkkc1tQ=
X-Received: by 2002:a05:6512:248:: with SMTP id
	b8mr19992557lfo.140.1553967245505; 
	Sat, 30 Mar 2019 10:34:05 -0700 (PDT)
MIME-Version: 1.0
From: Sergio Torres Soldado <torres.soldado@gmail.com>
Date: Sat, 30 Mar 2019 17:33:59 +0000
Message-ID: <CAFuHCCBnm9uGqeiyFrpzuGtahYQUUK=ap1gp3NOuy_eA1TooCA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: customising a bsp
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
X-List-Received-Date: Sat, 30 Mar 2019 17:34:08 -0000
Content-Type: multipart/alternative; boundary="000000000000a939b505855331f0"

--000000000000a939b505855331f0
Content-Type: text/plain; charset="UTF-8"

Hi,

 What is the best alternative to setting variables in local.conf? The
specific use-case is customising a meta-raspberrypi build, which has a
bunch of variables that are picked up by the MACHINE code to influence
build configurations. I want to version these customisations hence removing
them from local.conf.

 I have tried adding a machine definition in a separate layer that includes
the same files as those from the machines in meta-raspberry pi but there is
logic that depends on the machine name and building an image fails.

Many thanks,
Serj.

--000000000000a939b505855331f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>=C2=A0What is the best alternative =
to setting variables in local.conf? The specific use-case is customising a =
meta-raspberrypi build, which has a bunch of variables that are picked up b=
y the MACHINE code to influence build configurations. I want to version the=
se customisations hence removing them from local.conf.=C2=A0</div><div><br>=
</div><div>=C2=A0I have tried adding a machine definition in a separate lay=
er that includes the same files as those from the machines in meta-raspberr=
y pi but there is logic that depends on the machine name and building an im=
age fails.</div><div><br></div><div>Many thanks,</div><div>Serj.</div></div=
>

--000000000000a939b505855331f0--
