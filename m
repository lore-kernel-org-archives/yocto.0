Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C366E00AC8; Sun, 29 Jul 2018 23:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5B4DE008CA
	for <yocto@yoctoproject.org>; Sun, 29 Jul 2018 23:40:13 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id a5-v6so10996725qtp.2
	for <yocto@yoctoproject.org>; Sun, 29 Jul 2018 23:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wqjucrdpNCewajfE+GUudZXnmJ7NMrjbkaCmCsuXt0A=;
	b=iedgR/nPpkGGUwOKAjxgwzwDVMjI+bJZdqpetAQWrwWlufNea0U8N+/tPeWlpnBx7C
	Xx+ysS0MwFqYYJeINO/KgVxX7001b2tpwB6P2pFi13vUx//e9l6D2JXxxQeufeCbGCO+
	pwrFYlNbOTp7xqyOQE6654ouONyYlu5wb4W/ADbXsyuMHQq4UfD5ZZoHv+genE2ItW+S
	pgF9+ln7YpD+RbMfRPNXzU62ZOcWIuZQ+ZbTCMmyD4gFFk8hCOEO9YJd9Wdw1LWhNKnZ
	oHj2ze8ZIXAjUQypbQYFjBfT+4hGt2wQZ4HFKGDvFXorfv4K0Sny+BTyRIjunOKNdHhV
	fobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wqjucrdpNCewajfE+GUudZXnmJ7NMrjbkaCmCsuXt0A=;
	b=jSKWsYCwnJJFiuM4Was5fmpr3JfCPk4HD+eKsiQH8Q2pE4MUQ6C01VZNaecbI06uMa
	2svQLQmV79j01TP75pnLIYMSd2cW54qQQ8i9MYA7c/u3SfPr2BtIsYMiQxkQ5AMvUASZ
	dXDrhPcBEWGxKp3faJWlbi44ntAhd3TXwnXUcUvCGZh86PqHjInt6wcRT8EahiOsTaHB
	0CFkjBjoEJH4IGIZv3kram2yNuq9ghBxvh+tAfsaFiIZtL3GKjJMeFIq2CHE5GpTfQV7
	Fz5VFlnT4gUqzaijBtSr/gnYQBfk4+U+pkyJQ2XS/sB/OMLByPvYs6QW45NYp74ErX3b
	47Aw==
X-Gm-Message-State: AOUpUlGO1ewPgnPUvSpbehFFbyTWZ81czNp4GeMPhHqKvHS90LDuQofn
	9trlGeddm1lmUzbxQXQiCl44bYvB3ongxsI7NF8zSBDzcC4=
X-Google-Smtp-Source: AAOMgpdggNrL0tI8Na/F7HG5BoKpauxmbZU8Ui2zrUHkbHpDEjUzE3CHJ7zAkqmyVoapk1aJy6tRk39Ap1ztyJkGLN4=
X-Received: by 2002:aed:2457:: with SMTP id
	s23-v6mr15315794qtc.366.1532932812544; 
	Sun, 29 Jul 2018 23:40:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad5d:0:0:0:0:0 with HTTP; Sun, 29 Jul 2018 23:40:12
	-0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 30 Jul 2018 08:40:12 +0200
Message-ID: <CAGAf8LyOWR90ZL8o3H=MNJR3Mwt_Ycpdfx-N+fVcG_O2cwZWDQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: do_configure for socketcand package failed
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
X-List-Received-Date: Mon, 30 Jul 2018 06:40:14 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I am writing the recipe for the socketcand package. It looks so far very simple:

PR = "r0"

RDEPENDS_${PN}-dev += "${PN}-staticdev"

SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"

SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"

S = "${WORKDIR}/git"

inherit autotools
_______

I did install the following:
sudo apt-get install autoconf
sudo apt-get install libconfig-dev

The error is in do_config():

| checking for config_init in -lconfig... no
| configure: error: in
`/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/socketcand/1.0-r0/build':
| configure: error: config test failed (--without-config to disable)

What should I include in the recipe to make it work (the both autoconf
 and ./configure work normally for the normal installation)???

Thank you,
Zoran

