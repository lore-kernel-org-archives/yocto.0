Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A8AE00D00; Wed, 29 May 2019 00:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.181 listed in list.dnswl.org]
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 714E4E00A7D
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 00:41:24 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id j24so1444518ljg.1
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 00:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JmHkxExoDRnZ7wEjEQZ+YnxQuz5MdrAla30CaIeSU10=;
	b=m23xKx8kRn+83DDTp8Emsd1LfWnU9YHFmMEWydVERZKSZdp7iAb74JLzNVHcHz82V6
	3WKXJZnjxiFxMdtggFtF4battV8AYz1T+8VtZgnd9YY+fSOZEkCW3Ta61PbSAywwuvDG
	lR7OFQzvYhpXmWQrHjgEqqymb+IBqVIfQmx4cWXhKRPiuIKH79VXKhsmq/FaUK/0Kp66
	wpshwVpvXN1dJa2f/rPz3wQcJZd9M3+bIZuGSDmohC4sfHKvfHdXdrfEk6lLymcyMbT2
	hM+T0q3fVeC6tC9TgQpVqs0MEAUX1VeCnHp1CpCiaTzu497C13pGcPfsjAX2KROHp6PN
	LZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JmHkxExoDRnZ7wEjEQZ+YnxQuz5MdrAla30CaIeSU10=;
	b=YYLdZSIk3pPipZ4VmkO8Gd0bbJyUcCMgUucZHtHGBmpCegUFxjXNrC3aJtopWMjBoo
	Bax329Ux1Yv8xggbXTa43RjgleT+sMT3werJWbxrIn+WomKymbADbCXeVTAPMgc5KKdk
	zi2c7+LhmVOFNDfD3Uy7WwCrqc2I2KPMuUunZ49pl8uzndC8fiXEPyevKJwUjPaadBTR
	WhYcyPTwTL7Hc6q40xV3CgrweNFxzeyVB3/WlJ6wG9OZ+Mp0aiCPE+O9r9ZnZXmV0ayt
	bzsa+x0h0ZhQ4XF0X9HZ8GbAdhUyKCMlApsXBjXUmBWzRJg5ekopqjnS1uGXO2UJlUcT
	Bunw==
X-Gm-Message-State: APjAAAVCaPS4LrqT/jq0d+sihqqoawTwRJbOAkvqcKW2+dV/Lkz4fxqV
	8dWnkb5eDtnPK94GPjiqyqVN5hcVFZZfNCiuisxN4Pr6
X-Google-Smtp-Source: APXvYqwKU486EKgo0kooTq59OvwKoSJT9n3B63FtXnu3D6YsGl7mgc5ixZC8dZJ2tAjndBtdr8/CGctwb2tYc7dY4lg=
X-Received: by 2002:a2e:90d1:: with SMTP id o17mr54118831ljg.187.1559115683244;
	Wed, 29 May 2019 00:41:23 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 29 May 2019 09:41:12 +0200
Message-ID: <CAAx3WaAH5J06DOjnZzmfa_BCMCc5cCoWNQxZj=B_qivqUfG32A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Static gcc library in SDK
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
X-List-Received-Date: Wed, 29 May 2019 07:41:25 -0000
Content-Type: multipart/alternative; boundary="00000000000076aff2058a01e8e1"

--00000000000076aff2058a01e8e1
Content-Type: text/plain; charset="UTF-8"

Hi all,

I need to link some applications with "--static" flag. To do so I need to
add some static libraries in the SDK, that I've added with
SDKIMAGE_FEATURES_append = " staticdev-pkgs"

However, I still miss "libgcc_s.a" and I cannot find a way to add it. Any
suggestions?

Thanks,
Gabriele

--00000000000076aff2058a01e8e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I need to link some =
applications with &quot;--static&quot; flag. To do so I need to add some st=
atic libraries in the SDK, that I&#39;ve added with SDKIMAGE_FEATURES_appen=
d =3D &quot; staticdev-pkgs&quot;</div><div><br></div><div>However, I still=
 miss &quot;libgcc_s.a&quot; and I cannot find a way to add it. Any suggest=
ions?</div><div><br></div><div>Thanks, <br></div><div>Gabriele<br></div></d=
iv>

--00000000000076aff2058a01e8e1--
