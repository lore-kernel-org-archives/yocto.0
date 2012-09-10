Return-Path: <kevstras@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33881E0147F
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 14:49:38 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so3950940pbb.35
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 14:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=WVht2+EwqzRufht4V/qnHaCk2rH8caopJ5IoV0L/Lfs=;
	b=zo8/g71CIGOLHPp/aTsfC9Ub2sqYF1H2putDMq1oK77/rJ04Y/uTTNULRRKuE3tkOY
	nQlmyOVYxLm/NgAwhruqjbYcjiiCSYKTsfVXPtbKVMJkwqBVnS6CN2rBXwNDVimF5olE
	VlWEFuEBv6nctCpKyyekVIbMg8rfIqLK5aePavRovAW3CdpqhMdaNCiNqArCoIv0NhTB
	mL5XgDcHz1Zv0sdalUhbwen8HKEY1ilo97HP7Lx5Q4FvaQ+ve93xGSEgGRMTu8ta4b8v
	aXqFCyQkMiYP1PBfjS4cempZlLezIXKnX9bXQZ0OHUL/xDHYxFUxcgXBe9lTSgvDMu4H
	6VgA==
Received: by 10.68.213.138 with SMTP id ns10mr7679625pbc.157.1347313773169;
	Mon, 10 Sep 2012 14:49:33 -0700 (PDT)
Received: from satellite.hsd1.or.comcast.net
	(c-71-237-182-115.hsd1.or.comcast.net. [71.237.182.115])
	by mx.google.com with ESMTPS id vf8sm8701439pbc.27.2012.09.10.14.49.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 10 Sep 2012 14:49:31 -0700 (PDT)
From: Kevin Strasser <kevstras@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Sep 2012 14:49:24 -0700
Message-Id: <cover.1347312790.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Mailman-Approved-At: Mon, 10 Sep 2012 14:53:55 -0700
Subject: [meta-baryon][PATCH 0/2] update webmin and proftpd
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
X-List-Received-Date: Mon, 10 Sep 2012 21:49:38 -0000

The following changes since commit d1559674ad3364dbee6b7850803c738feb9f4a93:

  Fix up python function whitespacing (2012-08-06 19:01:49 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-updates
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-updates

Kevin Strasser (2):
  webmin: update package to 1.590
  proftpd: update package to 1.3.4b

 recipes-extended/proftpd/files/contrib.patch       |   38 ++++++++++++++++++++
 .../{proftpd_1.3.3c.bb => proftpd_1.3.4b.bb}       |    7 ++--
 .../webmin/files/fdisk-partprobe-fix.patch         |   16 ---------
 .../webmin/{webmin_1.570.bb => webmin_1.590.bb}    |    7 ++--
 4 files changed, 45 insertions(+), 23 deletions(-)
 create mode 100644 recipes-extended/proftpd/files/contrib.patch
 rename recipes-extended/proftpd/{proftpd_1.3.3c.bb => proftpd_1.3.4b.bb} (82%)
 delete mode 100644 recipes-extended/webmin/files/fdisk-partprobe-fix.patch
 rename recipes-extended/webmin/{webmin_1.570.bb => webmin_1.590.bb} (96%)

-- 
1.7.9.5


