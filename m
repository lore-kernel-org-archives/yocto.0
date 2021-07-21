Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web12.2006.1626860810506620264
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:46:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=yAOBdY23;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E5AD7829E7;
	Wed, 21 Jul 2021 11:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626860809;
	bh=ag/qLXNn6mcs3omJhCFhpoIZExAPu670nOvpxLcwaVU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=yAOBdY23s5N8xCc09c/AdIBDA23LZNhkdx889fjd9Mq04sDvj7fV6slokwgP4H8pc
	 DILmKjCfom1spaDE1u/5oFkv44iUKvzmAArJ2ZaG6Rz8QyIoOWCm12gxiT96oemZAX
	 1MsZvkAEbNCqZfxIgA2Mc6VgqNNxZ6P7RJ4sMJZI9DnIZK6iCpiLpNs3FSKAk3qsQt
	 +Zgiua/Hgxxf78+T6vRypNXVte0aK5XfskbsXxj85JrH2GknIX8cs2E2T2ZcN/mLFH
	 H5OahfdoiR4N4HHjTrZaoTfFk3fbAxtEpgTAVP3wZrbWB5fOlOA0zjoXX4jTG25ANC
	 ve4bDEfJ7sQEg==
From: "?ukasz Majewski" <lukma@denx.de>
To: yocto@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [ptest-runner 3/5] mem: Simplify memory management
Date: Wed, 21 Jul 2021 11:46:25 +0200
Message-Id: <20210721094627.29833-4-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210721094627.29833-1-lukma@denx.de>
References: <20210721094627.29833-1-lukma@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

From: Adrian Freihofer <adrian.freihofer@siemens.com>

Removes the following warnings thrown by
make && valgrind -s --leak-check=3Dfull ./ptest-runner -d tests/data2

=3D=3D4154390=3D=3D Invalid write of size 8
=3D=3D4154390=3D=3D    at 0x40360D: run_child (utils.c:357)
=3D=3D4154390=3D=3D    by 0x403C5B: run_ptests (utils.c:534)
=3D=3D4154390=3D=3D    by 0x402C4D: main (main.c:223)
=3D=3D4154390=3D=3D  Address 0x4a66440 is 0 bytes inside a block of size =
2 alloc'd
=3D=3D4154390=3D=3D    at 0x4839809: malloc (vg_replace_malloc.c:307)
=3D=3D4154390=3D=3D    by 0x4035E4: run_child (utils.c:354)
=3D=3D4154390=3D=3D    by 0x403C5B: run_ptests (utils.c:534)
=3D=3D4154390=3D=3D    by 0x402C4D: main (main.c:223)
=3D=3D4154390=3D=3D
=3D=3D4154390=3D=3D Invalid write of size 8
=3D=3D4154390=3D=3D    at 0x403618: run_child (utils.c:358)
=3D=3D4154390=3D=3D    by 0x403C5B: run_ptests (utils.c:534)
=3D=3D4154390=3D=3D    by 0x402C4D: main (main.c:223)
=3D=3D4154390=3D=3D  Address 0x4a66448 is 6 bytes after a block of size 2=
 alloc'd
=3D=3D4154390=3D=3D    at 0x4839809: malloc (vg_replace_malloc.c:307)
=3D=3D4154390=3D=3D    by 0x4035E4: run_child (utils.c:354)
=3D=3D4154390=3D=3D    by 0x403C5B: run_ptests (utils.c:534)
=3D=3D4154390=3D=3D    by 0x402C4D: main (main.c:223)
=3D=3D4154390=3D=3D
=3D=3D4154390=3D=3D Syscall param execve(argv) points to unaddressable by=
te(s)
=3D=3D4154390=3D=3D    at 0x4955C2B: execve (in /usr/lib64/libc-2.32.so)
=3D=3D4154390=3D=3D    by 0x40365E: run_child (utils.c:368)
=3D=3D4154390=3D=3D    by 0x403C5B: run_ptests (utils.c:534)
=3D=3D4154390=3D=3D    by 0x402C4D: main (main.c:223)
=3D=3D4154390=3D=3D  Address 0x4a66442 is 0 bytes after a block of size 2=
 alloc'd
=3D=3D4154390=3D=3D    at 0x4839809: malloc (vg_replace_malloc.c:307)
=3D=3D4154390=3D=3D    by 0x4035E4: run_child (utils.c:354)
=3D=3D4154390=3D=3D    by 0x403C5B: run_ptests (utils.c:534)
=3D=3D4154390=3D=3D    by 0x402C4D: main (main.c:223)

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 utils.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/utils.c b/utils.c
index bce9808..a23679a 100644
--- a/utils.c
+++ b/utils.c
@@ -351,12 +351,9 @@ read_child(void *arg)
 static inline void
 run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 {
-	char **argv =3D malloc(sizeof(char) * 2);
+	char *const argv[2] =3D {run_ptest, NULL};
 	chdir(dirname(strdup(run_ptest)));
=20
-	argv[0] =3D run_ptest;
-	argv[1] =3D NULL;
-
 	dup2(fd_stdout, STDOUT_FILENO);
 	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
 	dup2(fd_stdout, STDERR_FILENO);
--=20
2.20.1

