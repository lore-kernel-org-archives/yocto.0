Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web12.38578.1629203916053495809
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 05:38:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=yb/7U/r9;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 56435829E7;
	Tue, 17 Aug 2021 14:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1629203913;
	bh=2F3L92GTne8FpRUKoBU0Bbr27QJJHffc9bjMzGsiVeI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=yb/7U/r9sj89LSgqv915gnhjUxF4/9nufScOFQqNplDuQenUm0HEHOyakL7x6HieZ
	 WS7lyH7ytrmysVZ/pW4h1lEhBQJSrVzQa7tQqx2A2gR7n8KwQ7xwgI6NVmMb/fOzKa
	 rixWBQB8fA0qy3f10S7b2qb6vli/uZ/QfNg2iiVioX8sS4wdCVGv/KUOVTqOlxbmj4
	 gGIPkRju5xw1C+48ZPQK9h4IwfJAn5Vjo+qwrZ6Q0juIZdsMaBnrmcoHv7u1exMEXF
	 DNYmv7mmUq/2qRn/UMRskNlnwvo0gWwj7mZOcmJkxzHnXBcST6Q5ckVMY7hEOEe8Vq
	 i30BmZuserv2Q==
From: "?ukasz Majewski" <lukma@denx.de>
To: Anibal Limon <anibal.limon@linaro.org>
Cc: yocto@lists.yoctoproject.org,
	Adrian Freihofer <adrian.freihofer@siemens.com>,
	Lukasz Majewski <lukma@denx.de>
Subject: [PATCH v2 ptest-runner 2/2] main: Do not return number of failed tests when calling ptest-runner
Date: Tue, 17 Aug 2021 14:38:12 +0200
Message-Id: <20210817123812.18075-2-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210817123812.18075-1-lukma@denx.de>
References: <20210817123812.18075-1-lukma@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

Up till now ptest-runner2 returns number of failed tests with its
exit status code. Such use case is not recommended [1] and may cause
issues when there are more than 256 tests to be executed.

To alleviate this issue the number of total tests with number of failed
ones is printed before exit. To be more specific - failure of tests (one
or more) causes ptest-runner to provide exit code of 1.

One can test this change with executing:
./ptest-runner -d tests/data fail

Links:
[1] - https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html

Signed-off-by: Lukasz Majewski <lukma@denx.de>
---
Changes for v2:
- When number of failed tests is N, the ptest-runner returns value of 1
  to indicate error in the execution
---
 main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/main.c b/main.c
index 890bc6a..bcec844 100644
--- a/main.c
+++ b/main.c
@@ -220,6 +220,9 @@ main(int argc, char *argv[])
 		ptest_list_remove(run, opts.exclude[i], 1);
=20
 	rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
+	fprintf(stdout, "TOTAL: %d FAIL: %d\n", ptest_list_length(run), rc);
+	if (rc > 0)
+		rc =3D 1;
=20
 	ptest_list_free_all(&run);
=20
--=20
2.20.1

