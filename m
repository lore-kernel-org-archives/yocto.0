Return-Path: <i.gnatenko.brain@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFE80E00A08; Mon, 29 Aug 2016 23:55:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (i.gnatenko.brain[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55FFAE009B4
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 23:55:54 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id i138so1739910wmf.3
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 23:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=x7vFN2qh9SjalQXASeNA4Alzd/HlBO0yLoDLhnkcL48=;
	b=gYQ+fI7HKchbUv9XOaQj8EpIsKJImMd2AehyGcoU+1Q+c3JkHEXRUKEMeODNV0kStp
	dwdvAQVPI/sNqZ4TgAS1Cxdlf5BctFC0xWLZghwGuaEw3IUgRD+U/JVADb+U64rcTHJI
	MN8C2aXrxIVk/vAmdBVEAQAjVSvepZRxTqV52iEQWCmwekK49mZYVNAg4hB1TCDJ+Gn3
	2BnRlVx9rWFumu7IZXA+kk9O07bae0PWm6sDSKg/QYpHRlIhJDwxjRWpiz1mrG/LUGtI
	oj3J5VuWN3b1ASqlywzC9p8d8J4JH3PNho9dpWGhpT3BnfThNCzCdrcpjXK4mq820vbO
	MhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=x7vFN2qh9SjalQXASeNA4Alzd/HlBO0yLoDLhnkcL48=;
	b=KGXpvn9Sd5NFkNESow7WLcAMTeUVeIDFvzjDbQqtSrwn5CK/m3bEwBsv2tDiHSJkdQ
	5aslOBTcLZoV50+rwNBFITWbt339mJyvKA5U9Cu8G/OSaadLASF0s0H3Rmm0wotH3zQA
	bgfSFcJ4nuETs37cJNcj20hst0LX9/G5N/hizBK7BRgxOtxrb2kWuvRqEuhdjUTzGSg1
	Q1JUcp5IncinKQBT7w0BGycl1VkrOijCk9K4X1ufmQdSEh3bOISUkSu1Cq3lMDD10y2g
	i0w+ryTHziOvfibLKCh+vHJANK7cSF436l0JdwhsoGqlH3oR7t1Gm3Qyn1e4K7i8qE1N
	rTWQ==
X-Gm-Message-State: AE9vXwMGqTQi0GSoyoV+zhC9ArTr4XWnjbDr09ScJKN+jeMfB8PCLTC763q4nkYUyG+PKA==
X-Received: by 10.28.175.16 with SMTP id y16mr14444413wme.64.1472540153823;
	Mon, 29 Aug 2016 23:55:53 -0700 (PDT)
Received: from x1carbon.localdomain.com (ip-78-45-38-22.net.upcbroadband.cz.
	[78.45.38.22]) by smtp.gmail.com with ESMTPSA id
	ce6sm20099838wjc.27.2016.08.29.23.55.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Aug 2016 23:55:52 -0700 (PDT)
From: Igor Gnatenko <i.gnatenko.brain@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Aug 2016 08:55:45 +0200
Message-Id: <20160830065545.5856-1-i.gnatenko.brain@gmail.com>
X-Mailer: git-send-email 2.9.3
X-Mailman-Approved-At: Wed, 31 Aug 2016 07:58:39 -0700
Cc: seebs@seebs.net, Igor Gnatenko <i.gnatenko.brain@gmail.com>,
	Andrew Shadura <andrewsh@debian.org>
Subject: [PATCH] man: Add NAME section
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
X-List-Received-Date: Tue, 30 Aug 2016 06:55:59 -0000

From: Andrew Shadura <andrewsh@debian.org>

Each manual page should start with a "NAME" section, which lists the
name and a brief description of the page separated by "\-".

Signed-off-by: Igor Gnatenko <i.gnatenko.brain@gmail.com>
---
 pseudo.1    | 2 ++
 pseudolog.1 | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/pseudo.1 b/pseudo.1
index 13f6bbe..63a6782 100644
--- a/pseudo.1
+++ b/pseudo.1
@@ -16,6 +16,8 @@
 .\" version 2.1 along with this program; if not, write to the Free Software
 .\" Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA 
 .TH pseudo 1 "pseudo - pretending to be root"
+.SH NAME
+pseudo \- run a command in a virtual root environment
 .SH SYNOPSIS
 .B pseudo
 .RB [ \-dflv ]
diff --git a/pseudolog.1 b/pseudolog.1
index b6e76f9..ebf8443 100644
--- a/pseudolog.1
+++ b/pseudolog.1
@@ -16,6 +16,8 @@
 .\" version 2.1 along with this program; if not, write to the Free Software
 .\" Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA 
 .TH pseudolog 1 "pseudo - pretending to be root"
+.SH NAME
+pseudolog \- pseudo log parser
 .SH SYNOPSIS
 .B pseudolog \-l
 .RB [ \-Pv ]
-- 
2.9.3


