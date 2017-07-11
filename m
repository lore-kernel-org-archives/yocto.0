Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DCE9E00C4B; Mon, 10 Jul 2017 23:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50CA5E00B31
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 23:46:29 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id AF73426BB85
From: Romain Perier <romain.perier@collabora.com>
To: liezhi.yang@windriver.com
Date: Tue, 11 Jul 2017 08:46:04 +0200
Message-Id: <20170711064606.8941-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH v2 0/2] logrotate: systemd support
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
X-List-Received-Date: Tue, 11 Jul 2017 06:46:33 -0000

systemd is now supported by upstream logrotate. This set of patches first
bumps the recipe to the last upstream version, that is 3.11.0. Then it
adds support for systemd.

This series is the continuety of the following patches:

1. https://lists.yoctoproject.org/pipermail/yocto/2017-March/035277.html
2. https://lists.yoctoproject.org/pipermail/yocto/2017-April/035497.html 

Changes in v2:
- Bumped logrotate to 3.12.3
- Refreshed patches (did not apply)
- Fixed systemd support in the recipe: don't break sysvinit integration,
  keep systemd service enabled by default

Romain Perier (2):
  logrotate: Bump to 3.12.3
  logrotate: Add systemd support

 ...upport-system-dates-back-to-the-year-1970.patch | 27 -------
 .../logrotate/act-as-mv-when-rotate.patch          | 32 ++++----
 .../logrotate/logrotate/update-the-manual.patch    | 16 ++--
 .../recipes-extended/logrotate/logrotate_3.12.3.bb | 85 ++++++++++++++++++++++
 meta/recipes-extended/logrotate/logrotate_3.9.1.bb | 71 ------------------
 5 files changed, 111 insertions(+), 120 deletions(-)
 delete mode 100644 meta/recipes-extended/logrotate/logrotate/0001-Support-system-dates-back-to-the-year-1970.patch
 create mode 100644 meta/recipes-extended/logrotate/logrotate_3.12.3.bb
 delete mode 100644 meta/recipes-extended/logrotate/logrotate_3.9.1.bb

-- 
1.8.3.1


