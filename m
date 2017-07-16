Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2965FE00BDA; Sun, 16 Jul 2017 16:28:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CABCE00B9E
	for <yocto@yoctoproject.org>; Sun, 16 Jul 2017 16:28:12 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id t70so1092206wmt.1
	for <yocto@yoctoproject.org>; Sun, 16 Jul 2017 16:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=3KTdZyb4DS8k6ZrrXIjnUkN+NN4UqU+FVMw8tgoJXks=;
	b=Khx9ZZen/vLj8zCMP540qBuTyx3oe/IETN2uu3bA6Urx/2EeiT1VWtjYqRXNbjltUF
	Y5MwbZFwjrCHbunXY0NhIkNXTeczixOcGzE8YKOPETyqe/09SRDJl25IWswGPy5UaVWS
	6rgWYZeiiA+/rl4iqEA7X30uPA1ls4oWUWiRqtfaqFx623gkiBin6DxI3tY+1Vb88B+9
	Wg6xO3XQT4VvYeG4/QTCWo9sfWgbXQj7DMzoEkNPOrYP+3L5dYLPmuhuhMaue1LY8IZo
	NibQQMLDL0i5seVJtQLLwrafB8hyFuert7SyuchybtcYe+acgFwthYkqmFP21oKYz3M2
	gsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3KTdZyb4DS8k6ZrrXIjnUkN+NN4UqU+FVMw8tgoJXks=;
	b=c5EFVtMlljbbGFNCjka4d3IX4YswegRv5l0gD9bjnSUuzPJH3qOsPYRSHoMSfAkWGB
	I6D8QNX4j4MfoDv1w/Y3oYgtw93AlP8VDzlegj5qglwqK0Fzy0y8VeZk4TB8m6Q5cIgn
	D8oF58q5C0RT7dTo9K7eiCXuZTqaTe/ho3gyjx13ISK28Y8+EKH5Gfm0JfDnSXsETCjm
	RKwOd3W1olYx0v2/oay8dadkMNvvbq4Y3wtoGjVotzygvuTcM0crFrqarBh6SgMZ4Des
	d5H8MssiMnAO5ZhgXLc2ZazGyxvqdphb/TwBRuGA3RolS0hXeWG2Rsrz2ErA5izT3sq6
	EpkQ==
X-Gm-Message-State: AIVw111zbLcgx3RNGEzpsdU885THfq/AeyqKAeMNPzSG+5457oex+sH5
	WNdSaIMyY+lgeZN3eC8=
X-Received: by 10.28.51.11 with SMTP id z11mr2656294wmz.115.1500247690680;
	Sun, 16 Jul 2017 16:28:10 -0700 (PDT)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id 62sm1628551wrj.6.2017.07.16.16.28.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Jul 2017 16:28:09 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 00:28:06 +0100
Message-Id: <20170716232806.3134-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] libgcrypt: generalise bbappend
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
X-List-Received-Date: Sun, 16 Jul 2017 23:28:15 -0000

---
 .../libgcrypt/{libgcrypt_1.7.6.bbappend => libgcrypt_1.7.%.bbappend}      | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-support/libgcrypt/{libgcrypt_1.7.6.bbappend => libgcrypt_1.7.%.bbappend} (100%)

diff --git a/recipes-support/libgcrypt/libgcrypt_1.7.6.bbappend b/recipes-support/libgcrypt/libgcrypt_1.7.%.bbappend
similarity index 100%
rename from recipes-support/libgcrypt/libgcrypt_1.7.6.bbappend
rename to recipes-support/libgcrypt/libgcrypt_1.7.%.bbappend
-- 
2.11.0


