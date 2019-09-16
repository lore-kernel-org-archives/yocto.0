Return-Path: <ja.kaisrlik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 195A2E00D4A; Mon, 16 Sep 2019 01:55:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ja.kaisrlik[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED49E00CEE
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 01:55:12 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id r9so3587051edl.10
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 01:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=m3B0R02OlC0NjGPNtq9XTIT8jmFvR3lsHFinyvsGTtI=;
	b=KwBLpW3Rsw/jil9OZQQ+XXFZa1m2X0ea8PmCxSdUzoI6j1ZYPgGghOgdfjrOSBnZ2j
	0DN+wM0lFNC1Ugn6HpB6qsYGavkzwm6h7hG7rbWGxahVQiRGIh6d8wyKS768bch+Vt01
	YtL3BKJNZGPBvI0Kf6UvSD5TAbXZId4Dv/1/HOaUyjX6uAdKVYjR4DUQF1G4bXGJu1P0
	ZwgUWz6h6OGVPVvxN0PL8CFVYvO/BjiRH3whABxjTO4V6yQzBPUS3kb2wYXY0/4ukTbz
	nhOuY3MZn7jYI/vk408S7vHTP6H2Xqx62Alsjns1NSziqkzZ8b6UDuf1x8lQY8egu/IQ
	grtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=m3B0R02OlC0NjGPNtq9XTIT8jmFvR3lsHFinyvsGTtI=;
	b=tmIoFhHVw+x7+NEPYEe62zkk93RsAXGCGEs7ix+NpOVr6PWybiSVhUSwJG/WBcCLSj
	7gEycNGEFTMPiv/SKB050xywj3MUTp+06A/MWNOPhTfeFq/XaY0vuATbTzjkQ//MBHs2
	uK5M6+aVkH2/iTRdik/2uSwAOPXpoTj4Ae0K7R0b0Ze1JiuNprO9ijJZpCUM/LyMtOHA
	62ANPVCkVcPJ1UNx9vZFFpYSrJ5+vQh5AoZQFFMFP8l5+7XiWmg3+XeyY5PuOkmfLtFJ
	Cgn/dtqTmEliF8O4YL391YaM2P+jcO8Scfh1LdFrF2bJ9snxBXt+3TBKRc3IU3WgPE51
	5r7A==
X-Gm-Message-State: APjAAAVztn6aqSGPZ4ojfxE0B+pgzuORGsjKWxwk2oBhWZT/A8H4UyeP
	cZLbyuRjFXuUdp4n2DyjBQYXpM3/xom4mu6YCOYgS14Q
X-Google-Smtp-Source: APXvYqwk7Km3YWYCBd6vJuVoaeSg7vDaMtUU3Jw9xrvaekxzir1wBmR3+PDSQ/TYAItKRihj9k4/89xgWrZoe/OA6CU=
X-Received: by 2002:a50:d758:: with SMTP id i24mr60070421edj.246.1568624111389;
	Mon, 16 Sep 2019 01:55:11 -0700 (PDT)
MIME-Version: 1.0
From: Jan Kaisrlik <ja.kaisrlik@gmail.com>
Date: Mon, 16 Sep 2019 10:55:00 +0200
Message-ID: <CAPnxhu4Vy4kgSLnhoOmsVVGT8ovrtPL4UxL_cZtfmX50tEfyuw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Extension of package name by distro version
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
X-List-Received-Date: Mon, 16 Sep 2019 08:55:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to ask if it is possible to extend all package names by
some string f.e. by string corresponding to the version of the
distribution (+fw2.6.1)
* without distro string - kernel-5.3.0-rc3_5.3.0+git0+e21a712a96-2_arm64.de=
b
* with distro string -
kernel-5.3.0-rc3_5.3.0+git0+e21a712a96-2+fw2.6.1_arm64.deb
I've checked manuals and code and I do not see any easy way how to
append some string to the version of the package.

What I've played with it so far I added the mentioned string to PR in
bbclasses' in poky. Honestly, I do not believe this is the best idea
(on other hands it is working xD ) ...

If it is not possible at the moment are you interested in the patch?

Thank you in advance.

Best regards,
Jan Kaisrl=C3=ADk

