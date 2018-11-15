Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2F2CE0095C; Thu, 15 Nov 2018 11:23:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C4DE008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 11:23:58 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id r12-v6so31108404ita.3
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 11:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ABejv7vaK8SE6aBcQDeR8q7AAohSA4rWmgcVYhiE4W4=;
	b=eBOzDEpP/PfPEEmuzRs1JoJXwAtWvzFngX9qh0dknM85ECSf9ZLlcCVegdrUZ2ylW6
	GdLe/ZKbKDE9KJPgmQSV+ZqW+MfHKtOAg+4Ew5OuwKHtIjufD0kDIAXOU1ZKUS7nzK1a
	O7FLcz2xDwJI42nta+hHbCSdVPzEOJIJ2gG+8iarD8g3Du8Q/8qrgvnGKuh71Ife2nds
	KezmC4fQIIRIK7mabRASY0PooabLVqQjBjjmjRrc1+U1JxL3QObybMSuj+xBPXIqI0HV
	nFZqOKRL8fv3ZiTWO30poBqJMLWedvdpjtSa5oTbXREl+v0cFnr9DylNrzKAtBrlFKjR
	+XQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ABejv7vaK8SE6aBcQDeR8q7AAohSA4rWmgcVYhiE4W4=;
	b=GYFPOo3bEDu98XyZxnqZHyXK49lHg3BH2ObESUCJgIHTv15EZYESVsHz/8ix/nvBhf
	pDbYCYCIpSnV7bdQNHQdvzKDXxE/luKj6kDbNfP4VO9WHmWdaqQmdUjaPzxKdp/A5oY6
	lYMTzbgrcoaKJs9THzkXfABuuzX48bfNijYnSG4QovIlY2au0cLYJAs0WRXv57zX077u
	fy0Kc++9K9PDZGRMoxbNJuUx09Htwk/Wh5oW/peQ7F7WQ9MaS+Y5lj3bjx1zz5uD+nJN
	V0XlRwbdC8EBllD0FvwntZkVN5Zb8TE8TK27iVFIReumpm0+uqt1IlH9tjgxpSI9rakY
	HyyQ==
X-Gm-Message-State: AGRZ1gKOHkAnUon8Ft9QjKMEIDEffyztme/A80Y+cZ6YZFCHTogiag5N
	aowka/A+UnzbN1GpHjvW73YFQAcGJOE=
X-Google-Smtp-Source: AJdET5e3CjyQK4BwgcGmWxseS0e5iVsuPtCp0uJtavO/WM8ZmNBQWoBIHtxNyAH+9bJYrLOsSr7jQA==
X-Received: by 2002:a24:f2c1:: with SMTP id j184mr2017172ith.35.1542309837839; 
	Thu, 15 Nov 2018 11:23:57 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	i135sm2972555iti.34.2018.11.15.11.23.56
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Nov 2018 11:23:57 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Nov 2018 13:23:49 -0600
Message-Id: <20181115192353.24791-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 0/4] Add oeqa test cases
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
X-List-Received-Date: Thu, 15 Nov 2018 19:23:59 -0000
Content-Transfer-Encoding: 8bit

Adds the testing framework for tying tests for the MinGW SDK into the
oeqa SDK test framework. 

The SDK tests can be run using the standard SDK test command:

 bitbake -c testsdk <image>

All testing is done using Wine in lieu of having access to an actual
Windows machine. Wine is required to be installed on the host machine.

Joshua Watt (4):
  Add SDK test case framework
  Add .gitignore
  classes/toolchain-scripts-mingw32: Update variables
  oeqa/sdkmingw: Add test cases

 .gitignore                                  |   3 +
 classes/testsdk-mingw.bbclass               | 101 ++++++++++++++++++++
 classes/toolchain-scripts-mingw32.bbclass   |   4 +-
 conf/machine-sdk/i686-mingw32.conf          |   1 +
 conf/machine-sdk/include/mingw32-common.inc |   6 ++
 conf/machine-sdk/x86_64-mingw32.conf        |   1 +
 lib/oeqa/sdkmingw/__init__.py               |   0
 lib/oeqa/sdkmingw/case.py                   |  52 ++++++++++
 lib/oeqa/sdkmingw/cases/__init__.py         |   0
 lib/oeqa/sdkmingw/cases/binutils.py         |  57 +++++++++++
 lib/oeqa/sdkmingw/cases/gcc.py              |  49 ++++++++++
 lib/oeqa/sdkmingw/cases/gdb.py              |  20 ++++
 lib/oeqa/sdkmingw/context.py                |  66 +++++++++++++
 lib/oeqa/sdkmingw/files/testsdkmakefile     |   4 +
 14 files changed, 363 insertions(+), 1 deletion(-)
 create mode 100644 .gitignore
 create mode 100644 classes/testsdk-mingw.bbclass
 create mode 100644 lib/oeqa/sdkmingw/__init__.py
 create mode 100644 lib/oeqa/sdkmingw/case.py
 create mode 100644 lib/oeqa/sdkmingw/cases/__init__.py
 create mode 100644 lib/oeqa/sdkmingw/cases/binutils.py
 create mode 100644 lib/oeqa/sdkmingw/cases/gcc.py
 create mode 100644 lib/oeqa/sdkmingw/cases/gdb.py
 create mode 100644 lib/oeqa/sdkmingw/context.py
 create mode 100644 lib/oeqa/sdkmingw/files/testsdkmakefile

-- 
2.19.1


