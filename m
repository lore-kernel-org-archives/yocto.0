Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E453E00D6C; Thu,  7 Dec 2017 10:51:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC85E008CE
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 10:51:41 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id y75so5616591oie.4
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 10:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YjIfZI7Htcb0LMTgagAjIUdBaq6GUsfQMe5pXE5bhX0=;
	b=XjV7JZdWQ7Ki/TYF1gZruLoMLDn7DPhds1BUygI7eHrYbSxbuq5vmSErcJwl+jKBS+
	DrZ3qiFQj6lWpUDNWxnsuXfqiQm5WrypvwvKHnKjdoksRYAvxiV2Sd5RKJhS0Zubo0cy
	Ntr6qTVfNdIz2enu51fRsskEKrTCdMmzpQaaPMYsVlSjpdr8+VvHi/VObLTyz/1+jUIn
	+3bzzI43Mu2PPenTiMLW0j/fBykufp7PE3MGj05/AttdrcJ+3ySWhVwqbnPASYemAtfi
	99QacfXm590yi7jsjrdtoI8y72sw4SL9XhZwG5Ebr32QaI8vrxz7grtCjRH7vN+wy5JU
	5yoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YjIfZI7Htcb0LMTgagAjIUdBaq6GUsfQMe5pXE5bhX0=;
	b=tKwzaj50kah2z7eID4j/BSMB0wNZVSZjj4z84CKeVt/vmppC1WA9lq6YUNu2ITScKV
	g7u9dPvbwvBSn8ah0beRLYYT6fCgl5ciHFL6UhsYAgFD9YtI3/X4ljM6qOhnP4CCmaer
	mDwjVqijbJD/QUgSMGt7i9tSEEVTiuix1OjlETAj9sK9nZc7F/tBg7w3wUDy9r/oKQrH
	KQAy02q+bKbULgtfUaKCPZ3VF36vcTFojKKlKcSkcWpnXjiKTs+oJFUOBLIvNMQnwXm1
	a5d7cGV8CCPgUbIUOlt2qrvhmuxBCDOuZPLD2EW0uOUte/on86lDtcuDiws0F2sQiYeh
	lUGQ==
X-Gm-Message-State: AJaThX6qKpcrTT7WfIvXiP3J0dYlEgSVVbV/Tdl5P2+aoMMKTzBGJmse
	uYizxmWY9sxzLMIKDsWde8wH9jSF
X-Google-Smtp-Source: AGs4zMadvC+L+GlQvHXjzTLSfBLofxw8rbnLMOEGcwj7nwvxvtpwepmUAsQrD+OJ4G4I04z7FXMv0A==
X-Received: by 10.202.197.83 with SMTP id v80mr22002485oif.314.1512672700731; 
	Thu, 07 Dec 2017 10:51:40 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	n74sm2592453ota.72.2017.12.07.10.51.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 10:51:39 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 12:51:09 -0600
Message-Id: <20171207185111.14402-1-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner 1/3] Makefile: libcheck now requires to link subunit
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
X-List-Received-Date: Thu, 07 Dec 2017 18:51:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linaro.org>

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 434b89f..1bde7be 100644
--- a/Makefile
+++ b/Makefile
@@ -22,7 +22,7 @@ TEST_SOURCES=tests/main.c tests/ptest_list.c tests/utils.c $(BASE_SOURCES)
 TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
 TEST_EXECUTABLE=ptest-runner-test
 TEST_LDFLAGS=-lm -lrt -lpthread
-TEST_LIBSTATIC=-lcheck
+TEST_LIBSTATIC=-lcheck -lsubunit
 
 TEST_DATA=$(shell echo `pwd`/tests/data)
 
-- 
2.11.0


