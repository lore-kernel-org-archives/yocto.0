Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CACA0E009B8; Sun, 16 Sep 2018 08:57:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE28E00950
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:23 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id y4-v6so6499787pgp.9
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=2lOuc0ikMk5WNj4eaF/FoN29m9wyhS/F904ttuEiA+I=;
	b=mM+xW4wFf79oUAaYb6GTHHeNEJYRXcZEYKeKNIGsCNAKb2f0h5nQsu74T+ablfWbk1
	l6iQEmxGdQpwsVvG7PSTkE3K+9qU9jOPNdlBnGDUGEnSRKxZDaXUsbGMNSbB5xworAjF
	p3/0BQ2Nj6NcRp/qXc4JVDhzBylGioL87IuiJiUhlUQ9yPNz6LQvM8S2CX2uuT+K04fr
	cWrbQEtdrkuTJI+IM8C0buCHS+n6txY1vXdyHhajaQMP/LWWlQ6MEkqv4WYZYoQdtc4L
	t/5bvJwB61RKsTuu1H7RVs2/ctWCATr4jpnTrl3BTrxsNoJ85YPlqnK+7SpNR4UzXsT5
	t6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=2lOuc0ikMk5WNj4eaF/FoN29m9wyhS/F904ttuEiA+I=;
	b=S2wWe08pwRR49GHB9SmOUVdsZljB7W/lzQgQyKcTQ1GYS6Ab1d2Mk7ly9lJmdbqAQq
	nA7cPlbLdkh6OaJxs4fP1S+Hycg/zwLyWtBviDN8blS0fQsCwcpglxHGxvi9ByRM3F3v
	Rct0KeQ37OxLbS0L3F5EGWKoWn1370lmWmXh9sIdc7AcWytsqXVDUg/Nfn84+6/svBau
	HWDOXERBXxq30pTMGyF++cqAjqY8BVeBiMAxSCYI/YDMMIfaMWE4ECVP8zrg10tMIqFg
	+ibP420QPv6rgc70wWepkFZr4j2mKzFG8NGezup1lrl+3G0nru4QL0juMrpcTvXexG2i
	DVbw==
X-Gm-Message-State: APzg51A51JExWyp+zxkahR/J+ZhhQ996GaTaHm0r/UpxVSjNfRMbEzED
	nIHrNVSbuAdYN4+0fqeTIWbsTcYQ
X-Google-Smtp-Source: ANB0VdZP3vSTxSFHK7Lu8jHOIY+JvSmKTsOfBOU36Olo3/jZsWChFMtANSHj6hycdrdhKjXI0fu7YQ==
X-Received: by 2002:a62:f40a:: with SMTP id
	r10-v6mr22142126pff.47.1537113443449; 
	Sun, 16 Sep 2018 08:57:23 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.22
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:56:57 -0700
Message-Id: <20180916155719.9911-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/25] scapy: update to 2.4.0 and covert
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 16 Sep 2018 15:57:24 -0000

convert package to python standard

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scapy/{scapy => files}/run-ptest             |  0
 .../scapy/{scapy_2.3.3.bb => python-scapy.inc}   | 16 ++++++----------
 recipes-security/scapy/python-scapy_2.4.0.bb     |  6 ++++++
 recipes-security/scapy/python3-scapy_2.4.0.bb    |  4 ++++
 4 files changed, 16 insertions(+), 10 deletions(-)
 rename recipes-security/scapy/{scapy => files}/run-ptest (100%)
 rename recipes-security/scapy/{scapy_2.3.3.bb => python-scapy.inc} (66%)
 create mode 100644 recipes-security/scapy/python-scapy_2.4.0.bb
 create mode 100644 recipes-security/scapy/python3-scapy_2.4.0.bb

diff --git a/recipes-security/scapy/scapy/run-ptest b/recipes-security/scapy/files/run-ptest
similarity index 100%
rename from recipes-security/scapy/scapy/run-ptest
rename to recipes-security/scapy/files/run-ptest
diff --git a/recipes-security/scapy/scapy_2.3.3.bb b/recipes-security/scapy/python-scapy.inc
similarity index 66%
rename from recipes-security/scapy/scapy_2.3.3.bb
rename to recipes-security/scapy/python-scapy.inc
index 1c8685b..5abe7db 100644
--- a/recipes-security/scapy/scapy_2.3.3.bb
+++ b/recipes-security/scapy/python-scapy.inc
@@ -5,20 +5,16 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
 
-SRC_URI = "https://github.com/secdev/${BPN}/archive/v${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
-           file://run-ptest \
-"
+SRC_URI[md5sum] = "d7d3c4294f5a718e234775d38dbeb7ec"
+SRC_URI[sha256sum] = "452f714f5c2eac6fd0a6146b1dbddfc24dd5f4103f3ed76227995a488cfb2b73"
 
-SRC_URI[md5sum] = "336d6832110efcf79ad30c9856ef5842"
-SRC_URI[sha256sum] = "67642cf7b806e02daeddd588577588caebddc3426db7904e7999a0b0334a63b5"
-
-inherit setuptools ptest
+inherit pypi ptest
 
 do_install_ptest() {
     install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
     sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
 }
 
-RDEPENDS_${PN} = "tcpdump python-subprocess python-compression python-netclient  \
-                  python-netserver python-pydoc python-pkgutil python-shell \
-                  python-threading python-numbers python-pycrypto"
+RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-netclient  \
+                  ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
+                  ${PYTHON_PN}-threading ${PYTHON_PN}-numbers ${PYTHON_PN}-pycrypto"
diff --git a/recipes-security/scapy/python-scapy_2.4.0.bb b/recipes-security/scapy/python-scapy_2.4.0.bb
new file mode 100644
index 0000000..98db1fd
--- /dev/null
+++ b/recipes-security/scapy/python-scapy_2.4.0.bb
@@ -0,0 +1,6 @@
+inherit setuptools
+require python-scapy.inc
+
+SRC_URI += "file://run-ptest"
+
+RDEPENDS_${PN} += "${PYTHON_PN}-subprocess"
diff --git a/recipes-security/scapy/python3-scapy_2.4.0.bb b/recipes-security/scapy/python3-scapy_2.4.0.bb
new file mode 100644
index 0000000..93ca7be
--- /dev/null
+++ b/recipes-security/scapy/python3-scapy_2.4.0.bb
@@ -0,0 +1,4 @@
+inherit setuptools3
+require python-scapy.inc
+
+SRC_URI += "file://run-ptest"
-- 
2.17.1


