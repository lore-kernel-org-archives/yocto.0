Received: from wp115.webpack.hosteurope.de (wp115.webpack.hosteurope.de [80.237.132.122])
 by mx.groups.io with SMTP id smtpd.web08.31422.1605031440314749152
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 10:04:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: domaigne.com, ip: 80.237.132.122, mailfrom: tech@domaigne.com)
Received: from app18-neu.ox.hosteurope.de ([92.51.170.152]); authenticated
	by wp115.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	id 1kcXzp-0003Gi-Dl; Tue, 10 Nov 2020 19:03:57 +0100
Date: Tue, 10 Nov 2020 19:03:57 +0100 (CET)
From: "Loic Domaigne" <tech@domaigne.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <14212713.119725.1605031437350@ox.hosteurope.de>
Subject: Missing vardeps in meta/classes/roofs_rpm.bbclass?
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.4-Rev11
X-Originating-IP: 91.56.151.210
X-Originating-Client: open-xchange-appsuite
X-Originating-Sender: tech@domaigne.com
X-bounce-key: webpack.hosteurope.de;tech@domaigne.com;1605031440;da5ce2b9;
X-HE-SMSGID: 1kcXzp-0003Gi-Dl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Salut,

We were playing with rpm package management lately.

To configure the yum repos in the image, we're setting the following variables in conf/local.conf:
FEED_PACKAGE_URIS 
FEED_PACKAGE_BASE_PATHS

We made a typo, and forgot the S at the end of FEED_PACKAGE_BASE_PATHS
Not surprising, the repo file generated didn't have the right url:

$ cat oe-remote-repo-user1.repo 
[oe-remote-repo-user1]
name=OE Remote Repo: user1
baseurl=http://192.168.7.1/user1
gpgcheck=0


After fixing the typo and bitbaking the image again, still no avail.
The repo file remains unchanged. 

In fact, changing FEED_PACKAGE_BASE_PATHS did not re-trigger a new image build. We found this behavior surprising. 

AFAICS: 
1) As per oe/lib/meta/lib/oe/rootfs.py and lib/oe/package_manager.py, the URL is defined as the join paths of FEED_PACKAGE_URIS and FEED_PACKAGE_BASE_PATHS. 
2) However, in meta/classes/rootfs_rpm.bbclass, do_rootfs only specifies a build dependency to FEED_PACKAGE_URIS:
do_rootfs[vardeps] += "PACKAGE_FEED_URIS"

Shouldn't the rootfs task depend on both PACKAGE_FEEDS_URIS and PACKAGE_FEED_BASE_PATHS, ie.
do_rootfs[vardeps] += "PACKAGE_FEED_URIS PACKAGE_FEED_BASE_PATHS"

After fixing this dependency, the repo file got updated as expected:
cat oe-remote-repo-user1-rpm.repo 
[oe-remote-repo-user1-rpm]
name=OE Remote Repo: user1 rpm
baseurl=http://192.168.7.1/user1/rpm
gpgcheck=0

Does that make sense?

I have conducted this analysis on Zeus. The problem isn't fixed with Dunfell AFAICS. Also, the other package classes (deb,ipk) are impacted as well.

Hope this helps!
Loic
