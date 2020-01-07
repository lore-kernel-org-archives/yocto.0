Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4601.1578398225910499768
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2020 03:57:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@skidata.com header.s=selector1 header.b=SK3R6Krv;
 spf=permerror, err=parse error for token &{10 18 servers.mcsv.net}: limit exceeded (domain: skidata.com, ip: 140.211.169.56, mailfrom: prvs=268147e20=richard.leitner@skidata.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75217E013CC; Tue,  7 Jan 2020 03:57:05 -0800 (PST)
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
	*      [91.230.2.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www; Tue, 07 Jan 2020 03:57:00 PST
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 107F3E00571
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2020 03:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=skidata.com; i=@skidata.com; q=dns/txt; s=selector1;
  t=1578398220; x=1609934220;
  h=to:from:cc:subject:message-id:date:mime-version:
   content-transfer-encoding;
  bh=ufyqwjsnsK+Vt2JhmP3gv0bF0vAq3aEnnw/aqJjmDHI=;
  b=SK3R6KrvxPw9sd0hcT5WyMssVUOpimueGRXFSIGEgOVRxNJG31xmmgNr
   Up3tvQKohmOYK7tlWSEApxUeABDoceLowrxjCmjI3dM8jdLHQ9uUJQsh+
   HS6jW/Fz/w/x2oFjPFgbg3xAcK8XrHEA0bIrr63pdDHpWuJfpCFGG8dSg
   ymnQjdre+BMgSbL0KdpTjkRe3t4JS9X3YRQUIrg+pd9Df6ya3Vf9hxDvc
   hXWG8PhHL9TG0bsmrxF8vym6i+eLdOHJGGBzoEXn1OQGNzNIqNHnNyTXO
   tXh+PYbCncdVj4Sv0HgG23V7AosXQgAjul8Zm1AMXZTt887z0Um/ZOrEu
   Q==;
IronPort-SDR: M8uXUCk2OCbfgpF33Kmt3Yc4Aj+Pa7wVQWF6QwQgzeIOLKpTSyDQX6/xUoVQbEFMrLrjZ5B3W7
 npb9CTiZ8AdGs0UMV3zlPRLlRTvBA8LMGTpgeGGSV3hGrsGnH9MqKHPj4rBqbDUuKfwmhb3t92
 lcD0ziwsx2oNU3It12SDV+dOt0mbEAi87qZK0XrxSYGKKC8Ifca6CaKjRRJY0zunkg6mM9yvSm
 NiidINrUfRUqvRv8GzVrkPdZXChRXmptfm+iOb/b+QCFTL8BpnK3YllfvZrg8MOPUtE5SBR9SE
 9GU=
X-IronPort-AV: E=Sophos;i="5.69,406,1571695200"; 
   d="scan'208";a="21874849"
To: Scott Rifenbark <srifenbark@gmail.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
From: "Richard Leitner" <richard.leitner@skidata.com>
CC: <yocto@yoctoproject.org>
Subject: poky: no submodule mapping found in .gitmodules for path 'documentation/bitbake'
Message-ID: <d6f4ea64-27ba-4884-859c-1c7c18a6774a@skidata.com>
Date: Tue, 7 Jan 2020 12:55:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
X-Originating-IP: [192.168.111.252]
X-ClientProxiedBy: sdex6srv.skidata.net (192.168.111.84) To
 sdex5srv.skidata.net (192.168.111.83)
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Scott, Richard,
I'm experiencing weird git submodule behaviour on poky master since
commit 7e7b066085 ("YP 3.1 Docs: Updated Manual revision tables.")

Was this intended?

$ git submodule status
fatal: no submodule mapping found in .gitmodules for path 'documentation/bitbake'

$ git log --pretty=oneline -- documentation/bitbake/
7e7b066085c2496a259b356c59acda32d444a261 YP 3.1 Docs: Updated Manual revision tables.

$ git show 7e7b066085c2496a259b356c59acda32d444a261 -- documentation/bitbake/
commit 7e7b066085c2496a259b356c59acda32d444a261
Author: Scott Rifenbark <srifenbark@gmail.com>
Date:   Wed Dec 11 13:03:04 2019 -0800

    YP 3.1 Docs: Updated Manual revision tables.

    Scrubbed so subsequent releases are relevant to the
    initial release only.

    (From yocto-docs rev: 7bb2c4f851aa968eb05b11c5471b81962f268eba)

    Signed-off-by: Scott Rifenbark <srifenbark@gmail.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/documentation/bitbake b/documentation/bitbake
new file mode 160000
index 0000000000..0fb4b51532
--- /dev/null
+++ b/documentation/bitbake
@@ -0,0 +1 @@
+Subproject commit 0fb4b5153237af4a13b2c65711ab798b0de06c2f


regards;rl
