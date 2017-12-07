Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D077E00D74; Thu,  7 Dec 2017 15:42:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12CD1E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 15:42:52 -0800 (PST)
Received: by mail-oi0-f67.google.com with SMTP id 184so6136627oii.2
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 15:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YjIfZI7Htcb0LMTgagAjIUdBaq6GUsfQMe5pXE5bhX0=;
	b=PMtfrhw5RCFk74a+fFChx4xGXjBP5ByhSeZcVxIlDcPKCEUIkwBhcdRUiT19GpnJo+
	vOZg4fmpyIpoA+aWdyz60C91eORhIuhImLHeEXRmay0h89lIOsY2RSUcIINCWn4yQGcN
	foBzfzS2dKUHlSvnTjHhedURB+UGFsZdKmNgwb266PGLyftEMnpEyjZ3fhNLu/9xIWV8
	htyLepZ1E7QwiJZp1nLuz0Ij5zHv7Y28v/LQUrkSVcDJQfGtdvLcJBsdCFejAXZwdIgQ
	wFRYue/7Wovyz4y7/phIO9n8eHLv/dXjMQ1k5sNl8BeiEwVwdjduPDOQ83JsEPzM6hNP
	AATg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YjIfZI7Htcb0LMTgagAjIUdBaq6GUsfQMe5pXE5bhX0=;
	b=Ycfa0+hffK6NENr6zDvA7FnKRRLxmg9O8JyCm/MtFG3FE0t9QRE7oyvbYCWb2BD0sY
	YdKP7tpKt2zftojykoCNxQeftGlBVtHePssAIoBVo0R9oEl+QRgKnSVU+uuaY9KN+3zY
	I/erUNTwJN7dqiB4ARs2llwuyRitx5BdRdw3TEVWuVcP2TMnPTvxCj+NcUFBAVFaUEn/
	Bu36XwXcN6FrO6FydsTw/tT0wYqGdpiKHFuJ7Ta0ZfoiN5/dROxVHyA/aCiTb5chNLo6
	zD75n5YRKmjXvYrP4Re8d0oCNlXDbS/YprHaF6zHTXuJ56Aol26MWqwQIaIG3cXzQQBs
	Kv+Q==
X-Gm-Message-State: AJaThX7FUixBTthxfiYjf3mdBDIppXVNOS4KXWvk/YlKSQ6NMaxwUuAC
	vWXXz+Vtovkppu2T5TfDYksmpEeV
X-Google-Smtp-Source: AGs4zMZcvc/uqKsbX7SZEjRDqa28SNFRx9Tumd1BDfYC40zewsn+rpr3bBnyf7zYG/0AJALr4QckUw==
X-Received: by 10.202.83.195 with SMTP id h186mr24122532oib.62.1512690171682; 
	Thu, 07 Dec 2017 15:42:51 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id 68sm2780011oik.1.2017.12.07.15.42.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 15:42:50 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 17:42:44 -0600
Message-Id: <20171207234246.6364-1-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCHv2 1/3] Makefile: libcheck now requires to link subunit
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
X-List-Received-Date: Thu, 07 Dec 2017 23:42:53 -0000
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


