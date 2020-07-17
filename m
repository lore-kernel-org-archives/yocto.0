Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.6829.1594971741558779062
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jul 2020 00:42:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 06H7gKox000744
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 17 Jul 2020 00:42:20 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Jul 2020 00:42:01 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-cgl][PATCH] ucarp: force to use TLS1.2 during do_fetch
Date: Fri, 17 Jul 2020 15:38:42 +0800
Message-ID: <20200717073842.1688632-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

There comes below error when use buildtools [1]:
$ bitbake -cfetch ucarp
[snip]
--2020-07-17 06:39:31--  https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
Resolving download.pureftpd.org... 37.59.238.213
Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
GnuTLS: A TLS fatal alert has been received.
GnuTLS: received alert [70]: Error in protocol version
Unable to establish SSL connection.

And can simply use below step to reproduce the above error.
$ wget https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
--2020-07-17 06:43:36--  https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
Resolving download.pureftpd.org... 37.59.238.213
Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
GnuTLS: A TLS fatal alert has been received.
GnuTLS: received alert [70]: Error in protocol version
Unable to establish SSL connection.

$ wget --version
GNU Wget 1.20.3 built on linux-gnu.

Currently wget uses gnutls as the ssl backend as the below logic
in layers/openembedded-core/meta/recipes-extended/wget/wget.inc
PACKAGECONFIG[gnutls] = "--with-ssl=gnutls,,gnutls"

Check the link https://download.pureftpd.org/pub/ucarp/ and found
the file https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
already 10 years ago.
ucarp-1.5.2.tar.gz                                 31-Jan-2010 22:06              429089

Meanwhile we can use gnutls-cli-debug to diagnose the download.pureftpd.org
which hosts ucarp and it doesn't support TLS 1.3 but supports TLS 1.2 instead
as below.
$ gnutls-cli-debug 37.59.238.213
GnuTLS debug client 3.6.4
Checking 37.59.238.213:443
                        whether we need to disable TLS 1.2... no
                        whether we need to disable TLS 1.1... no
                        whether we need to disable TLS 1.0... no
                        whether %NO_EXTENSIONS is required... no
                               whether %COMPAT is required... yes
                             for TLS 1.0 (RFC2246) support... no
 for TLS 1.0 (RFC2246) support with TLS 1.0 record version... no
                             for TLS 1.1 (RFC4346) support... no
                                  fallback from TLS 1.1 to... failed
                             for TLS 1.2 (RFC5246) support... yes
                             for TLS 1.3 (RFC8446) support... no
[snip]

$ wget --secure-protocol=TLSv1_2 https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
--2020-07-17 07:07:08--  https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
Resolving download.pureftpd.org... 37.59.238.213
Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 429089 (419K) [text/plain]
Saving to: 'ucarp-1.5.2.tar.gz'

ucarp-1.5.2.tar.gz  100%[===================>] 419.03K   432KB/s    in 1.0s

2020-07-17 07:07:16 (432 KB/s) - 'ucarp-1.5.2.tar.gz' saved [429089/429089]

Considering gnutls doesn't fallback to TLS 1.2 automatically, so force ucarp
to use TLS1.2 to fix the above do_fetch error.

[1] https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#building-your-own-buildtools-tarball

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
index 6f30bf7..d17baa0 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
@@ -34,7 +34,7 @@ DEPENDS = "libpcap"
 
 SYSTEMD_SERVICE_${PN} = "ucarp.service"
 SYSTEMD_AUTO_ENABLE = "disable"
-
+export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2 -t 2 -T 30 --passive-ftp --no-check-certificate"
 EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
 
 # fix the perms for config.rpath
-- 
2.26.2

