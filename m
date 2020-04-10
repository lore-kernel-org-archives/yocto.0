Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1882.1586556795249920281
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2020 15:13:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=qacqREXg;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: anibal.limon@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5325E019AE; Fri, 10 Apr 2020 15:13:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38EDAE019AE
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 15:13:14 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id m14so2568361oic.0
        for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 15:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=91te9blg225Z9PGMdeLEmKbKsqtcCIFdce6Nxi2UlRk=;
        b=qacqREXgYg8I1KSvD3XNTZw/ID1DdGipR3cnS13uQVpoemSKPOtlSJxXAyt+MrrL6h
         e8g5LRajA/cvdmKGkKIv4+0l4QzussTuJO6J2nKFAAikFWaPORRyCytLASDCvgLe9oPl
         jxN8xNEL0gPkaDrDDqhdwoBgsj9DAKiocg6O9PLxtFe9GSAVHNIewKsh7fBDIJqdybtk
         0AzOnmIE6u5SnFannUqiP9oZNg53nAq5PlDHGNcRNm4fUtmdNavUDSalXbBmkX+RhkmW
         V4plyzGikAZVp41pEaD5Iqscm3VaZFeyRJ//mUilEyoqLVzLGRG3OqK2WGtX2gIqWu1s
         inpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=91te9blg225Z9PGMdeLEmKbKsqtcCIFdce6Nxi2UlRk=;
        b=DWtJph9rPM+Yv27/jH8+XmM+3UEwD3XEeY5UmzJcz6Wd34c557BOhNuO+woSoK1TSM
         xXihWdOMk2cfBq0Q7SKVrl6xyg6ycdsylrgAN0NYH3kS3OkobGqAZAHTViJEsxWN9ng3
         jfzaK/hHWUMTVClXT/krP6iPY80++EJt1l3Hpnv5uUiSTsCvhkakwutjbgZh8Ul9seZ8
         Etn6hL1FBi0i/juylcxRb6GK6MLKFBfsF1ukMUzeqLnMlmcT56yJJG69ZfhYpvfgdBh/
         +Zc0ur9sR9lFlf2Z+q5YHbQ6Xg+bXnyhawqsPgIgv2Yw492nyYshSzSE5ac/73Q3S9rd
         OgWw==
X-Gm-Message-State: AGi0Pua9LJBBHJ+bVX4UBKrclgE3sxruPRZ1GeCyy0Ri/quTHCM2pGcy
	C7EUsgUdYG2EEtCH7pgs/CAf3OyTS8c=
X-Google-Smtp-Source: APiQypIe6lQTYIyRLqnm8YNEi2ecnx9eb4aUUMJG6MmcKLfoAM9E2bdLbTIdxQQsdnjb4SIL2P3+EA==
X-Received: by 2002:aca:cd0e:: with SMTP id d14mr4498267oig.167.1586556793436;
        Fri, 10 Apr 2020 15:13:13 -0700 (PDT)
Received: from blackbox.rga.ip ([2806:109f:4:5e7a:908a:c7ff:fe6a:e9f5])
        by smtp.gmail.com with ESMTPSA id y18sm1832678otj.71.2020.04.10.15.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 15:13:12 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	nicolas.dechesne@linaro.org,
	Randy.MacLeod@windriver.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [PATCHv1][ptest-runner 1/2] Makefile: Fix TEST_LDFLAGS gcc cmdline position
Date: Fri, 10 Apr 2020 17:13:08 -0500
Message-Id: <20200410221309.35676-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Fixes,

...
alimon@blackbox:~/upstream/ptest-runner2$ make CC=3Dgcc check
gcc -std=3Dgnu99 -pedantic -Wall -Werror -I . -g -c tests/main.c -o tests=
/main.o
gcc -std=3Dgnu99 -pedantic -Wall -Werror -I . -g -c tests/ptest_list.c -o=
 tests/ptest_list.o
gcc -std=3Dgnu99 -pedantic -Wall -Werror -I . -g -c tests/utils.c -o test=
s/utils.o
gcc  -lm -lrt -lpthread tests/main.o tests/ptest_list.o tests/utils.o uti=
ls.o ptest_list.o -o ptest-runner-test -lcheck -lsubunit -lutil
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/li=
bcheck.a(check.o): in function `tcase_create':
(.text+0x1b3): undefined reference to `floor'
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/li=
bcheck.a(check.o): in function `tcase_set_timeout':
(.text+0x66b): undefined reference to `floor'
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/li=
bcheck.a(check.o): in function `check_get_clockid':
(.text+0xd03): undefined reference to `timer_create'
/usr/bin/ld: (.text+0xd25): undefined reference to `timer_delete'
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/li=
bcheck.a(check_pack.o): in function `ppack':
(.text+0x4fc): undefined reference to `__pthread_register_cancel'
/usr/bin/ld: (.text+0x546): undefined reference to `__pthread_unregister_=
cancel'
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/li=
bcheck.a(check_run.o): in function `srunner_run_tagged':
(.text+0xbf7): undefined reference to `timer_create'
/usr/bin/ld: (.text+0xc3c): undefined reference to `timer_settime'
/usr/bin/ld: (.text+0xc6c): undefined reference to `timer_delete'
collect2: error: ld returned 1 exit status
make: *** [Makefile:39: ptest-runner-test] Error 1
...

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index c92261b..3cca17b 100644
--- a/Makefile
+++ b/Makefile
@@ -36,7 +36,7 @@ $(EXECUTABLE): $(OBJECTS)
 tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
=20
 $(TEST_EXECUTABLE): $(TEST_OBJECTS)
-	$(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC=
)
+	$(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC) $(TEST_LDFLAGS=
)
=20
 check: $(TEST_EXECUTABLE)
 	./$(TEST_EXECUTABLE) -d $(TEST_DATA)
--=20
2.26.0

