Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.2026.1626860812293941587
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:46:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=NH3ufzYl;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 4A86A829F9;
	Wed, 21 Jul 2021 11:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626860809;
	bh=9FSX9bxl16T1Lio5wya1+n+cE6E7ABbPoSQohlbisRM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NH3ufzYljFxCv/lSPgaGo5GCl1ao32w9+4vc3HSvGQosa5aVJLGFFkGJ4LkIR9xYD
	 w3vD218eWKI03rUbg/j3HxTF4/ZbDUgzCIGalKV9ico0AhhkuijlZLEnkrNW/J8cwm
	 d4MhQYguv/wV6jQaPBlXLAMYiJ8mdWyIfGaVBuYrHN3Ej7mu0jrX/7Hmopu1aYQr8z
	 TRg43zt9mcAlgpd3W1Ef7J7hP88HOTQYWZFtvNPdSr2TyDBnY/kaICfPl1WqY8dGj3
	 8XrEzxqTHJdV5mNTSVe5AaKJMU+B0Zc1vlP79kPbvB0EM/aNPZtS3HanGCRSg+Pzbx
	 jPcK/yFfOPPtg==
From: "?ukasz Majewski" <lukma@denx.de>
To: yocto@lists.yoctoproject.org
Cc: Lukasz Majewski <lukma@denx.de>
Subject: [ptest-runner 5/5] main: Do not return number of failed tests when calling ptest-runner
Date: Wed, 21 Jul 2021 11:46:27 +0200
Message-Id: <20210721094627.29833-6-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210721094627.29833-1-lukma@denx.de>
References: <20210721094627.29833-1-lukma@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

Up till now ptest-runner2 returns number of failed tests with its
exit status code. Such use case is not recommended [1] and may cause
issues when there are more than 256 tests to be executed.

To alleviate this issue the number of total tests with number of failed
ones is printed before exit. To be more specific - failure of a single
test doesn't indicate that the ptest-runner itself encounter any issue
during its execution.

One can test this change with executing:
./ptest-runner -d tests/data fail

Links:
[1] - https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html

Signed-off-by: Lukasz Majewski <lukma@denx.de>
---
 main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/main.c b/main.c
index efa21b2..9f03857 100644
--- a/main.c
+++ b/main.c
@@ -219,6 +219,9 @@ main(int argc, char *argv[])
 		ptest_list_remove(run, opts.exclude[i], 1);
=20
 	rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
+	fprintf(stdout, "TOTAL: %d FAIL: %d\n", ptest_list_length(run), rc);
+	if (rc > 0)
+		rc =3D 0;
=20
 	ptest_list_free_all(&run);
=20
--=20
2.20.1

