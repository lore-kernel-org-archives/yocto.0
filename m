Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F8EDE013A6
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 06:35:57 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so1762889pbb.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 06:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=1mMVa53h/hldOebevV3AuTnMv/DRX6X7TRkhQDcMM+I=;
	b=WyxQWocXmjEW1sMBHlodRqa9rNSXHrBNaqzBwqzDLdeLfp6K+VapnUQy5m5UVD217/
	YcXKieoqQPSrFDumcUiCwlQVW/vHigD7mRdutcRRz30WEvdbEl2mS7XDz0CiZjO+TDd8
	ukG9C0erqFKXWxV84ISSKDB8s0uzQAR0VQzIP0ntDFwnT3zDs/B6uSBhhzqnCou4ZLmD
	OM5GjrPe8W0ounSDMalblrvasnfjslzW4Wh3fL08I5Coz5ZAtcjOCrONkDvlbaVLNYrw
	U//gS4i3hy+06L3uEjcm+kqmXkspk3fKK/kG7cDBp8g7tgCooXrEMACGJzvW6JEQ3fen
	fhIw==
Received: by 10.68.230.194 with SMTP id ta2mr52690514pbc.30.1345642557241;
	Wed, 22 Aug 2012 06:35:57 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qb6sm3751853pbb.18.2012.08.22.06.35.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Aug 2012 06:35:55 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 22 Aug 2012 17:35:51 +0400
Message-Id: <08D11B01-3A70-4F71-9025-0F91D328AFE3@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: libgcc_s.so & libstdc++.so on the target
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Aug 2012 13:35:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     I notice that core-image-minimal doesn't ship libgcc_s.so and =
libstdc++.so shared libraries on the target. Some of the executables =
that I manually cross compile on the host, and copy over to the target, =
require these libraries at a minimum.

Which package or task should I append, to core-image-minimal, to get =
these two shared libraries file to get copied over to the rootfilesystem =
image tarball?

Best regards,

Elvis Dowson=

