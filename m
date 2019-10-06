Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7241E008C8; Sun,  6 Oct 2019 08:40:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB278E007C2
	for <yocto@yoctoproject.org>; Sun,  6 Oct 2019 08:40:40 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id q7so6630642pgi.12
	for <yocto@yoctoproject.org>; Sun, 06 Oct 2019 08:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=MDslOHypgC+Y5K39xnHf0vq6mOeKxUVZvu1ekScu7qI=;
	b=O55+ZVo3MI6clzBYZSBPIgOL0C2nox5gQMZKpXzlpDfzUCe9cDmKQ3y7gJDri//8yy
	0OTMEhuVjZKEITC4PCG1t245ADf/T8Gwa1YwENaCfsEpipEHG2LyJr35MiDC8EVo99Zo
	8G/vp2XMjOnUnAJSOSVnDSbzSJZSJdfm+19nLPNmcKh0R0pUW8ErzmntPX2lWHn+vyH5
	zklhOLYfN6jzKyL6qFau3tqJkDPmWECSj5D0Ltb9RTyqGJHho84Vblm3+XPT9+iwdYRT
	e+24VTqMG709qaWByVyRZEA9DZwVrBmxCtlZqsNF9DGHT/OfQlhirjpCnLvRH5EylPIz
	PpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=MDslOHypgC+Y5K39xnHf0vq6mOeKxUVZvu1ekScu7qI=;
	b=b09taAttRO2jaCTT+kEwD4YQt++lOBgKvqvucd+TXGiEekbhruvyOXO0pFnRNtY/Gq
	v2nur+uRg8X3FERVFdfiEdSntrcFqER3U6Hw+iF5+L+f+Dhv2q9wcCFCtdPuDihqCuy3
	/Ub9Cjd3MP7+jZTJ0DJcy4PAzpNlG9osmxs0rCeL6PUNR8DdxkRUgnSMCbPgTBT0QqsS
	GDb5oRcHxcSG9OklxsOiKlFwLuzT1Fjjte0XNpUWcgNfku13XAqz/NTMHQsfjHnCNbm9
	WDeJMknKXEuaDbvIZhnpO8L6xk6sGAP2rfEjw72sDzQSQoiM2vwBZuxi40kM9JF6Tvye
	dEIA==
X-Gm-Message-State: APjAAAXmhgobWgqbv7uhAeT3AFNQGfGj6L2hffWD/8dy/CFPvWNRK9g/
	aWXWxQ2TZBmHeoA3ou8llgAeHLVFxwE=
X-Google-Smtp-Source: APXvYqyWsHK1Xj0MXmMmHPZhmSU/pknfsMo94ksLO56PidC6vLNwNvgCbVSeMYC4UMR80cbxGpy3uA==
X-Received: by 2002:a65:50c2:: with SMTP id s2mr25554119pgp.65.1570376440148; 
	Sun, 06 Oct 2019 08:40:40 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:a5c0:65e8:7322:d189:1d85])
	by smtp.gmail.com with ESMTPSA id
	e4sm12226543pff.22.2019.10.06.08.40.39 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 06 Oct 2019 08:40:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  6 Oct 2019 08:40:34 -0700
Message-Id: <cover.1570376186.git.akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [warrior 0/3] Pull request
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
X-List-Received-Date: Sun, 06 Oct 2019 15:40:42 -0000

Please merge these changes to meta-yocto warrior

The following changes since commit c16082ffa61f485e120670fbdf075f3fa8597494:

  poky.conf: Bump version for 2.7.1 warrior release (2019-06-30 22:41:39 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib meta-yocto/stable/warrior-next
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=meta-yocto/stable/warrior-next

Kevin Hao (1):
  meta-yocto-bsp: Bump to the latest stable kernel for all the BSP

Ross Burton (2):
  conf/poky: add debian-10 to the supported distribution list
  conf/poky: add Fedora 30 and Opensuse Leap 15.1 to supported
    distributions

 meta-poky/conf/distro/poky.conf                      |  3 +++
 .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20 ++++++++++----------
 .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20 ++++++++++----------
 3 files changed, 23 insertions(+), 20 deletions(-)

-- 
2.7.4


