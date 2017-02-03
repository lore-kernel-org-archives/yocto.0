Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C49E009CE; Fri,  3 Feb 2017 00:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43209E009BA
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:25 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id j13so12693218iod.3
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=b6xMSmYWBRn1z1NIQujpjmQ3KK2CXsknJ0ez//5fhvk=;
	b=yzhm2J6IpnVx0vRoGewUX5O8h+o7q9EKhuvdoFkX0AvYtBn/HXLoLjFlbfNC+cZA9g
	tmT5K3qg/aCP3XPFdA9ayvOiZ6Gs2FP+DGV9k95MZGpDZtEKyZml4P40/PBnWmXaheZx
	ssa0uG58ekqBa5prx7DdHGNvhpw+NLuHRV/pszYimOVOUnjhVMDa1kzy61TztW2/mCkW
	zpW8JCnRJ0uUE9w0XXipSxO/o1BZvEGwHnJXhen+BQxIVu5TtMRJ6fa1l2xYZQt8huMA
	v39miMMtiht/uaFECDPo+PxkacF+aRE5avXEnXtVO6XaaNEdhicLtwSfPMHkCq3J5Evq
	E2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=b6xMSmYWBRn1z1NIQujpjmQ3KK2CXsknJ0ez//5fhvk=;
	b=EZS8XZsky12oLlJ1EGyN1LTUNIDyjf7RHDiudaCkVMfOEL2zMJRwcn5uq3dXKrxgJE
	RkqV6kvU2uQ4vfYpauQWUwEWMCYgfUaq9RrFl1Vczcf1syMubWR4L0VJRga+CxjQlyhC
	sRKR/2mM+f7ptT9geD37q8dFxcu0iRW2+LtiQCWjpzV+gmRm8C74A0e2JLxR7FRgBUbM
	VgJ/jY/PPdV8LByxf1J2CKVeqdgm49MHa1Se81fu4mbAZY9d7P4hemNUOI4A2cIMXdyx
	XYF/TcQXWA4MTEw/demCcxiyNIdW6rwndh/wbKUlNZG3RC5h5Kefxo4WnVL2YZhn+3fC
	kTEw==
X-Gm-Message-State: AIkVDXIMMQaK6g2Ph/1N/CLGTQagkiEgQAbit/3MRMpYd4WT2Y2wDUASfHBR+3R1f2JIglRP
X-Received: by 10.107.185.65 with SMTP id j62mr8820079iof.3.1486111585479;
	Fri, 03 Feb 2017 00:46:25 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:24 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:07 +0100
Message-Id: <9f34e7185d1e2efbae7073c5c3a71048dd34ef3d.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 2/9] trousers: recommend tcsd
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:29 -0000

Installing tpm-tools for tools like tpm_takeown pull in the libtspi
package, but the resulting system is not functional unless the tcsd
(from the main "trousers" package) also gets installed. A RRECOMMENDS
entry for that takes care of that automatically.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/trousers/trousers_git.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 0a7e5b6..5737de3 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -56,6 +56,10 @@ PACKAGES = " \
 	trousers-doc \
 	"
 
+# libtspi needs tcsd for most (all?) operations, so suggest to
+# install that.
+RRECOMMENDS_libtspi = "${PN}"
+
 FILES_libtspi = " \
 	${libdir}/*.so.1 \
 	${libdir}/*.so.1.2.0 \
-- 
git-series 0.9.1

