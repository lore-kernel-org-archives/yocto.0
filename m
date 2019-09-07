Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B291E00BFF; Sat,  7 Sep 2019 05:06:18 -0700 (PDT)
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
	*      [209.85.166.50 listed in list.dnswl.org]
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2D06E00A93
	for <yocto@yoctoproject.org>; Sat,  7 Sep 2019 05:06:16 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id r26so18795234ioh.8
	for <yocto@yoctoproject.org>; Sat, 07 Sep 2019 05:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0W2DVoPMI1Kh7KGw4AC6oQ5s+iFP4roMx6uFZb6wlqE=;
	b=o43jEQAA+ZQbO242bweRw6goChrX1gWH2KcmYJl5LCcth/J8xzbeHULJl4G49ulP2w
	kJANwdCC2m/zBwFooOZPOCXG2IpMrvZdEx8rIW1vw2Osktn0/yRe65WqQJ6pzIsh1Ooq
	GCn8VjbJDNWawM/fys2DFqo2Lv7u1jUn33OXRTxSxIs/4N1h39DLpNTNMNbLyg6C2INm
	ur/ISeAquyk+5HY5K1h6tijv0nIECRcBMU27grF+OngpZY2FudSV22TEP7QKMjzLAyCx
	pxLX9hPZJWP6Sme+3ul7QMzPFrbHISF/G5rx3xFvzcVYdj88ehIJI8PjhNLm1GQz4DHX
	flmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0W2DVoPMI1Kh7KGw4AC6oQ5s+iFP4roMx6uFZb6wlqE=;
	b=HYtswb1LJSJqX50kVkdaGMb74csTGC0KC4AmAnZmPqKth+O1uNlo+dFJslUH/Q8xjg
	+DdTGeLpgBZqvS3Pxj1BXgeGeaaClbhgtGIUTA90/55vvCgXoLSAdBfG5y+POYSStxx1
	oPxTCt/j1PzSeD4ZkfVICmmES4JKtHB/EUFnt3l4n4RrI6qRl9oxvp9gH1KUYAcjWXOt
	d8bPRrquoBE4Tgf9PEp9/iNDiG+vwUk0ybQ5Nv6yUGvNrgmnY6Tpn9W/VQtYM+LPElcJ
	jQIN0tllNlPbIuYKzRwdul6eLcATfQvAOHTnxmzZySm0xX1d+bKqvDvIz9uKBw22MdOr
	D8qQ==
X-Gm-Message-State: APjAAAW6/fJRi/cmsk7yDejzJi8I8D4EB4DJWHme72Ie6ntwPzHtKx4k
	f8Uc+48pphFKB5tNgvy7zuokpSwg8nmWzvkhWBiqqTyj
X-Google-Smtp-Source: APXvYqwQEkww+VOUcrPEFlF9STAV+lSnERG6RLn+Ay7GnnbTOdhbkylZr4NLAZTSusc++SRsModRExprrUU3j2ftkbg=
X-Received: by 2002:a5d:9c0b:: with SMTP id 11mr11370774ioe.192.1567857976343; 
	Sat, 07 Sep 2019 05:06:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
	Sat, 7 Sep 2019 05:06:15 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sat, 7 Sep 2019 22:06:15 +1000
Message-ID: <CAA=hcWSVaxfwFvA5BYNoCS-6q80N0A__NyE5zLsVfCT3U+ugFA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Kenel 5.1.0 SRCREV
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
X-List-Received-Date: Sat, 07 Sep 2019 12:06:18 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Anyone know what is the kernel 5.1.0 SRCREV?

Thank you

