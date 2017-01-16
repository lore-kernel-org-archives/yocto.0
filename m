Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B851E0082A; Mon, 16 Jan 2017 06:23:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A04FE007A7
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:23:53 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so3506852pfo.3
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:from:to:cc:subject:mime-version
	:content-transfer-encoding;
	bh=Ma8qroRtau0hJoiYvPo25725VKzTXFuBkguuxeyVoGM=;
	b=SFKEdotQcDwqGxr1PAweFBnpj6wUC66bj0RoC949lI2avBAMXEZolornOq3XG2f2Pd
	bZUu85RCabHUTb+iOWjRHwkXl2BnVHjEEJ1LnQ6lb1Fu5JoyZkS930sIXYyy8L+ZRykY
	zPhYurWaCCAs3PClqhKCw9/UOyyJiIhZVRjrEmTx9mP4676fUaj7AecxP31P3DMlARF5
	Qp3LkUIpeGkp7A1TWC4PNxyo6bdLQ0JTI1awYo1GhKgdsA5F0lFMzy5bysnIyrq+i54u
	ImjfF5IE11+lyeQCRA+g8VVhEDUe+5hg8nCiYLm1mDAHvupWAJHN02+P2djftMJGXqYf
	8k+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:from:to:cc:subject:mime-version
	:content-transfer-encoding;
	bh=Ma8qroRtau0hJoiYvPo25725VKzTXFuBkguuxeyVoGM=;
	b=H/iBmVAT/LURYkDVNGurx+ozd0Mf87Tacy/ynhE5Hsa5aRj2uZJzFIZB7Y6ojCsdJY
	Go5bzExRtvTe9hXMvJJve7weY5CsdX2wOpFUWq9e5qWjWl0fzs5q0KbrtJQFKbUO3Uuw
	8Jvb2hsrZF++bGF9+Be5F+EPZFIWfwwZVe+0YHSxDEzx5J8J98H+FZW4FgHZun9FhaEl
	I21zRJuoMOV/jGo9BggDkicyfj7aKF35maPxKW8RNzEhxqLdMkmEzJApkPzthCpT/6R4
	ZqGWgsK9gMn/k65rqG88/2xxSI3g8AcEacdL6NPNGYF2cy6WcRhD+yOJ/izXzeysjkzV
	YP5A==
X-Gm-Message-State: AIkVDXK7jOQ6H8F6JqRbj/ZzUSaNeueKeta7K0bQVr/dgC42AnlMJWWrhap2fTefYvnZrA==
X-Received: by 10.99.56.94 with SMTP id h30mr18280053pgn.23.1484576633543;
	Mon, 16 Jan 2017 06:23:53 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185])
	by smtp.gmail.com with ESMTPSA id a8sm2139723pfa.19.2017.01.16.06.23.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:23:53 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 0/7] Adding support for building QEMU for Windows
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
X-List-Received-Date: Mon, 16 Jan 2017 14:23:56 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

This series is paired with a series that is sent for the oe-core meta
layer. That series depends on changes in this series and vice-versa. The
oe-core meta series can be reviewed via:

  https://patchwork.openembedded.org/series/4800/

Additional information about this work can be read in the cover letter
of the above linked series.

The following series fixes a number of issues with compilation of
certain components that are required to build and distribute QEMU. This
series includes:

 * Enabling 'secure-api' for mingw-w64-headers
 * Allow building of shared libraries for gettext
 * Work around to avoid dependency on bash for glib-2.0, and clean up of
   glib-2.0 appends which are resolved in oe-core meta
 * Better packaging of libgcc for easy use on Windows (deploy dll to
   bindir)
 * Enabling build of libfdt in the dtc the recipe, but skipping dtc
   itself

Additionally this series includes an un-merged patch from Juro which is
required for functional building with master of oe-core.

The goal of these changes is to allow for building of QEMU for mingw32
and generating a deployable archive for use on the target.

For convenience this series is also available in the git repository:

  https://github.com/nathanrossi/meta-mingw nrossi/mingw-qemu-v1


Juro Bystricky (1):
  mingw-64-runtime_3.1.bb: Adapt to SDK_ARCH -> SDK_SYS chanages for
    crosssdk

Nathan Rossi (6):
  mingw-w64-headers: Add 'secure-api' PACKAGECONFIG
  gettext: Enabling building shared libs/dlls
  glib-2.0_%.bbappend: Prevent a bash dependency via bash-completion
  glib-2.0: Clean up unnecessary appends that are resolved in oe-core
  libgcc_%.bbappend: Relocate and package dll's in bindir
  dtc_%.bbappend: Only build libfdt for mingw32

 recipes-core/dtc/dtc_%.bbappend                          | 16 ++++++++++++++++
 recipes-core/gettext/gettext_0.19.%.bbappend             |  2 +-
 recipes-core/glib-2.0/glib-2.0_%.bbappend                |  5 +++--
 recipes-devtools/gcc/libgcc_%.bbappend                   |  8 +++++++-
 .../mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb       |  4 ++++
 .../mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb       |  2 +-
 6 files changed, 32 insertions(+), 5 deletions(-)
 create mode 100644 recipes-core/dtc/dtc_%.bbappend

-- 
2.11.0

