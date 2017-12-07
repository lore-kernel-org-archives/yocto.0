Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C91B8E00D71; Thu,  7 Dec 2017 10:53:14 -0800 (PST)
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
	*      [74.125.82.195 listed in list.dnswl.org]
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47E7FE00D6C
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 10:53:13 -0800 (PST)
Received: by mail-ot0-f195.google.com with SMTP id i1so7217962oth.9
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 10:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YjIfZI7Htcb0LMTgagAjIUdBaq6GUsfQMe5pXE5bhX0=;
	b=i5Sz/FKSWWAH+kvWly1weMkMm1422E6nhygW2RuYXUaNstwVQxfQVu7IpIf25dxeav
	kgH+2XtpqY8Dgk3B2fR3EAlgJuOJaoZm8h3OZ61yUzLr9rv7J6Rg1lKtH2c2zi8oYdob
	beguDHleRtxmSeNq6eX+soYt9IWOd/VnGuaz9bO6fKj6jcbTkDl6+oPfIclt2DEKtYpV
	L536pDxuiDxWjw+1HG05/Ma6Gaf4dWF7BVs0icTlB9sPhZqE4MaOPDwOyNpPjw+02rs0
	EuMbvmyNrCztnf3fPz4wft4fKuDRM0vdeSjMDWqn8QY3zPkImoWfvOV+7vpg+foWStT2
	r9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YjIfZI7Htcb0LMTgagAjIUdBaq6GUsfQMe5pXE5bhX0=;
	b=VFFHtjYjFzjvNWVSNpONYU6UGtRDRjGpOkaMD6gOiuJwZO6Xghg0KxrzYI8s7nhsHF
	H6/jKSFo8PTcogjiIso6dQ5MxyOt3ICBAJeRHzw5DPpXYeI5wltakNE5ERNclAXefy38
	b+d1oqfXARex5ql8GASAVewyeZXpUCsfe7YzlV9NO3l6wzGep7I01WHo+M6Of1hF42As
	C7EGFxwjwahmhgIKfm2roCNfD9DjO1EanU4CFZTal3h8Hoxe27TwAQSh3/ZFeTIc17SH
	hF0yjy3RV7TTnFPi8WwOBt5FBiq65DG9owD6qWJrO6Sfge3H3yskyCsm8RPlKO1sEpto
	NYYA==
X-Gm-Message-State: AJaThX4H0kWr/ArvehIdF2muz7HLTIbXN7Tp7xolgAoHXrAWScZzfOhn
	dPEIT9BB+xPCWUBN56KaWPetCBQU
X-Google-Smtp-Source: AGs4zMY3rBJgu/CU2QhQ8yTIDShjkoilSQek/wZYdSognkn4UDS925g1v7yCd1y3sg1dECMuhNcdGQ==
X-Received: by 10.157.88.141 with SMTP id x13mr24875643otg.175.1512672793001; 
	Thu, 07 Dec 2017 10:53:13 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	u20sm2373982oie.10.2017.12.07.10.53.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 10:53:12 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 12:53:05 -0600
Message-Id: <20171207185307.14609-1-limon.anibal@gmail.com>
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
X-List-Received-Date: Thu, 07 Dec 2017 18:53:14 -0000
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


