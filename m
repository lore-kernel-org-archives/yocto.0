Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web09.2066.1626860810285920093
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:46:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=gYPoEdZW;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B538C829C7;
	Wed, 21 Jul 2021 11:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626860808;
	bh=VGspDP1ZymfjdCJcfaYHylEcXQRZ2LlYqyJ2mLXrkmY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gYPoEdZWSWCUbGU4CKYax3PvnJY4PEWIOj2kbPFZl1yh5WZb2WN6nbWrdqeIsDP6l
	 VpDKbJLtjhC6fxmP370CLd0/EDqWjFEQx3017vi0Kaz/lD05A12r8KggQuhVBFvkBA
	 xtak3Yb9fPI8sQ2Q7Y+VcmV4dE3W6yBgtI1keU4mG1zeh4ysihfR2iSRPEzBcgqPhC
	 +tlR/zHVZ9IHslLjpYUSNiQnHe1CLfoy7oQN16v6h+tN2v+gGccSAwZEfcQxyspCEP
	 S23it8sSrsilEy34U3EPypLWutC1bROwQJrdkl2Bql+YINV8OvazgGK4nMPYX6x+lO
	 cZ6a9LRBCQMbA==
From: "?ukasz Majewski" <lukma@denx.de>
To: yocto@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [ptest-runner 2/5] mem: Fix memleak for ptest_opts
Date: Wed, 21 Jul 2021 11:46:24 +0200
Message-Id: <20210721094627.29833-3-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210721094627.29833-1-lukma@denx.de>
References: <20210721094627.29833-1-lukma@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

From: Adrian Freihofer <adrian.freihofer@siemens.com>

make && valgrind -s --leak-check=3Dfull ./ptest-runner -d tests/data2

=3D=3D4154029=3D=3D HEAP SUMMARY:
=3D=3D4154029=3D=3D     in use at exit: 20 bytes in 2 blocks
=3D=3D4154029=3D=3D   total heap usage: 45 allocs, 43 frees, 42,909 bytes=
 allocated
=3D=3D4154029=3D=3D
=3D=3D4154029=3D=3D 20 (8 direct, 12 indirect) bytes in 1 blocks are defi=
nitely lost in loss record 2 of 2
=3D=3D4154029=3D=3D    at 0x4839809: malloc (vg_replace_malloc.c:307)
=3D=3D4154029=3D=3D    by 0x40252D: str2array (main.c:70)
=3D=3D4154029=3D=3D    by 0x402768: main (main.c:119)
=3D=3D4154029=3D=3D
=3D=3D4154029=3D=3D LEAK SUMMARY:
=3D=3D4154029=3D=3D    definitely lost: 8 bytes in 1 blocks
=3D=3D4154029=3D=3D    indirectly lost: 12 bytes in 1 blocks
=3D=3D4154029=3D=3D      possibly lost: 0 bytes in 0 blocks
=3D=3D4154029=3D=3D    still reachable: 0 bytes in 0 blocks
=3D=3D4154029=3D=3D         suppressed: 0 bytes in 0 blocks
=3D=3D4154029=3D=3D
=3D=3D4154029=3D=3D ERROR SUMMARY: 1 errors from 1 contexts (suppressed: =
0 from 0)

With this patch valgrind reports 0 errors.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 main.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/main.c b/main.c
index 467548e..e73626c 100644
--- a/main.c
+++ b/main.c
@@ -84,6 +84,25 @@ str2array(char *str, const char *delim, int *num)
 	return array;
 }
=20
+void cleanup_ptest_opts(struct ptest_options *opts)
+{
+	for (int i=3D0; i < opts->dirs_no; i++)
+		free(opts->dirs[i]);
+
+	free(opts->dirs);
+	opts->dirs =3D NULL;
+
+	if (opts->ptests) {
+		free(opts->ptests);
+		opts->ptests =3D NULL;
+	}
+
+	if (opts->xml_filename) {
+		free(opts->xml_filename);
+		opts->xml_filename =3D NULL;
+	}
+}
+
 int
 main(int argc, char *argv[])
 {
@@ -98,7 +117,7 @@ main(int argc, char *argv[])
 #endif
=20
 	struct ptest_list *head, *run;
-	struct ptest_options opts;
+	__attribute__ ((__cleanup__(cleanup_ptest_opts))) struct ptest_options =
opts;
=20
 	opts.dirs =3D malloc(sizeof(char **) * 1);
 	CHECK_ALLOCATION(opts.dirs, 1, 1);
--=20
2.20.1

