Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75788E00C43; Mon, 19 Nov 2018 13:18:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC3AE00C3C
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:18:54 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id x6so1354262ioa.9
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=xv7l43iEmGvIZJv/xGHPZ1vM8Lkzu5WItQ1XyHgVea8=;
	b=FKUj2y5WyZDwpUihwiFiIrgrrb7bZ0SjpqlI2d1TOIQd6y3KJ8g61v+19Cmq7GynzJ
	Sdri8jWg8cZqbe0B5b0QsTac7MsLhHRqIk1Ot6iM3eFM3eSsMul/j61L8Uzuq0QnbeWe
	tPEi9sSJ0pvUx8CYkZaIGbbD+6mC+OPdVTaMzZiu7eHDm9MYtYA5fxy5TyRobFoLxvXW
	cs+FZoDjGHuTR0LIEb8ZLGlSO2C5p8g8yhpmt3v5V4qfKMsjsaFg0INfsSvx2K78OSEy
	Hpag7R/MjwtD/Vmyd/srmGNfDiqMyOgbWuK+zxFdkdW7chRpv8DXAF9PuBEjpeMbQfoH
	q0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=xv7l43iEmGvIZJv/xGHPZ1vM8Lkzu5WItQ1XyHgVea8=;
	b=X8DNz4YPS8/8XwHbjxhjUVa3nJekY6NOAKlZ/7bkyM3loBGDWxjZaLLCF7LF86XkZC
	ZF/zDaaYQnbY08Clgf8HMYRS76x6dbOHHwKmgpdxB7O8G7zdgiGDrcFeOxwlWsDa8o1J
	Zjai9LW3jB6/I8q1gepDNv5WAuTxTP00ia+M2DaG1ICt6s/m6+Y8QXFrrcisRr5jXvWs
	k8bE6C6mNqrcauhDEos0sN39q1VgcMD8h4a0wRzGMZwLDeSVSJP1uzscRLgdTexsBcqK
	bvG+AiZS8p49A/tvhkfiY3waX4/j1fXdNV8N8D1szCVH2fUV44HytZvTxkEOuMpeXR5o
	OFQg==
X-Gm-Message-State: AA+aEWb5GESGjDXdPrg3UtETIeM5T9rdsg7NkTzeI/xVMPLigNlYnZtN
	H1qglQ5im/bVleMCFOsviDbyv6tyLbk=
X-Google-Smtp-Source: AFSGD/VKIcYbUY3YP6wv19Sf4Nzy00PU2F/hYdEfIs9bZlQdCdh6M6eQjNvWEFfrpxrhR1Ktg8rS5w==
X-Received: by 2002:a5e:c001:: with SMTP id u1mr19965317iol.152.1542662334008; 
	Mon, 19 Nov 2018 13:18:54 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	d199sm1195542itd.31.2018.11.19.13.18.52
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 19 Nov 2018 13:18:52 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2018 15:17:47 -0600
Message-Id: <20181119211752.18963-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20181115192353.24791-1-JPEWhacker@gmail.com>
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH v2 0/5] Add oeqa test cases
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
X-List-Received-Date: Mon, 19 Nov 2018 21:18:55 -0000
Content-Transfer-Encoding: 8bit

Adds the testing framework for tying tests for the MinGW SDK into the
oeqa SDK test framework. 

The SDK tests can be run using the standard SDK test command:

 bitbake -c testsdk <image>

All testing is done using Wine in lieu of having access to an actual
Windows machine. Wine is required to be installed on the host machine.

Joshua Watt (5):
  Add SDK test case framework
  Add .gitignore
  classes/toolchain-scripts-mingw32: Update variables
  classes/toolchain-scripts-mingw32: Ensure exit code is success
  oeqa/sdkmingw: Add test cases

 .gitignore                                  |  3 +
 classes/toolchain-scripts-mingw32.bbclass   | 15 +++-
 conf/machine-sdk/i686-mingw32.conf          |  1 +
 conf/machine-sdk/include/mingw32-common.inc |  7 ++
 conf/machine-sdk/x86_64-mingw32.conf        |  1 +
 lib/oeqa/sdkmingw/__init__.py               |  0
 lib/oeqa/sdkmingw/case.py                   | 87 +++++++++++++++++++++
 lib/oeqa/sdkmingw/cases/__init__.py         |  0
 lib/oeqa/sdkmingw/cases/binutils.py         | 55 +++++++++++++
 lib/oeqa/sdkmingw/cases/gcc.py              | 47 +++++++++++
 lib/oeqa/sdkmingw/cases/gdb.py              | 20 +++++
 lib/oeqa/sdkmingw/cases/pkgconfig.py        | 18 +++++
 lib/oeqa/sdkmingw/context.py                | 69 ++++++++++++++++
 lib/oeqa/sdkmingw/files/testsdkmakefile     |  4 +
 lib/oeqa/sdkmingw/testsdk.py                | 42 ++++++++++
 15 files changed, 368 insertions(+), 1 deletion(-)
 create mode 100644 .gitignore
 create mode 100644 lib/oeqa/sdkmingw/__init__.py
 create mode 100644 lib/oeqa/sdkmingw/case.py
 create mode 100644 lib/oeqa/sdkmingw/cases/__init__.py
 create mode 100644 lib/oeqa/sdkmingw/cases/binutils.py
 create mode 100644 lib/oeqa/sdkmingw/cases/gcc.py
 create mode 100644 lib/oeqa/sdkmingw/cases/gdb.py
 create mode 100644 lib/oeqa/sdkmingw/cases/pkgconfig.py
 create mode 100644 lib/oeqa/sdkmingw/context.py
 create mode 100644 lib/oeqa/sdkmingw/files/testsdkmakefile
 create mode 100644 lib/oeqa/sdkmingw/testsdk.py

-- 
2.19.1


