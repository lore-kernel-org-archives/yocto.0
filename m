Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.40670.1629213002826653134
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:10:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vJlPR/16;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1240261075;
	Tue, 17 Aug 2021 15:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629213002;
	bh=QjxVZS72rrToGGNREmqGm66wvDKoWyQ1uiL4dXI40CI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vJlPR/164gjhR6wMTUGiv/NSRyzehjnxuQvZnCHGvNLVrANKQ3z7RGHAJzoLHW7Jw
	 HRXzn6vW6Dj0kfNFUjjG+JPeVzdo5+gqHPKokSgV4dENSYqJD8tdkdU7oE9fLracGj
	 hODdmipO7Yd+oQy1MvuGdiKhT/BsPcPJK7qmmSTAjpOrigOMPX7UALscr93/MuZpV1
	 SU7XZCookwdwXfIXwa3HjDf5pK9ILgTiYgjCYWJ8KFHzpO0qDQ6WSn+7H++M8w5LdZ
	 76wNZqbTR2rKde/+Jkml0w0TdLpAqZVnkAxmfskJkjvJHdNkR3sov+CJwhEuloYaNk
	 9Iv80C7mnVm2w==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v3 2/5] protobuf-c: static link when generating sdk
Date: Tue, 17 Aug 2021 15:09:54 +0000
Message-Id: <20210817150957.18246-2-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210817150957.18246-1-okaya@kernel.org>
References: <20210817150957.18246-1-okaya@kernel.org>

[libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
File already exists in database: google/protobuf/descriptor.proto
[libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
GeneratedDatabase()->Add(encoded_file_descriptor, size):

Switch to static linkage per upstream recommendation.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 recipes-devtools/protobuf-c/protobuf-c_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/protobuf-c/protobuf-c_%.bbappend

diff --git a/recipes-devtools/protobuf-c/protobuf-c_%.bbappend b/recipes-devtools/protobuf-c/protobuf-c_%.bbappend
new file mode 100644
index 0000000..b53b22d
--- /dev/null
+++ b/recipes-devtools/protobuf-c/protobuf-c_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"
-- 
2.17.1

