Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web11.538.1616796305724253373
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 15:05:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 12QM53w9012597
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 17:05:04 -0500
To: yocto@lists.yoctoproject.org
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Subject: [meta-openssl102] Updated
Message-ID: <946cbc3a-1626-c8ed-272f-2b8379c5aea1@kernel.crashing.org>
Date: Fri, 26 Mar 2021 17:05:03 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Not sure if anyone is still using this, but I did update OpenSSL 1.0.2 to fix
the latest three CVEs:

CVE-2021-23839
CVE-2021-23840
CVE-2021-23841

All branches updated.

Additionally master has been updated for 'hardknott'.

Note, corresponding meta-openssl102-fips does not build.  If anyone is
interested in this, they will likely need to help update it.

--Mark
