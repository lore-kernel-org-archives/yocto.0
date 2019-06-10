Return-Path: <zangrc.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91C04E00951; Mon, 10 Jun 2019 00:23:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DADBAE00951
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 00:23:19 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.63,572,1557158400"; d="scan'208";a="66720349"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 10 Jun 2019 15:23:12 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 4F2F04CDD47A
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 15:23:10 +0800 (CST)
Received: from localhost.localdomain (10.167.226.46) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Mon, 10 Jun 2019 15:23:11 +0800
From: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Jun 2019 15:24:21 +0800
Message-ID: <20190610072424.14779-1-zangrc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.46]
X-yoursite-MailScanner-ID: 4F2F04CDD47A.A89C6
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zangrc.fnst@cn.fujitsu.com
Subject: [meta-security][master][warrior][PATCH 0/3] python-scapy:solved the conflict with python3-scapy
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
X-List-Received-Date: Mon, 10 Jun 2019 07:23:21 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

-Remove redundant sed operations.

-Rename conflicting files to resolve conflicts.


Zang Ruochen (3):
  [yocto][meta-security][master][warrior][PATCH 1/3] python-scapy: Remove
    redundant sed operations
  [yocto][meta-security][master][warrior][PATCH 2/3] python-scapy: solved
    the conflict with python3-scapy
  [yocto][meta-security][master][warrior][PATCH 3/3] python3-scapy: solved
    the conflict with python-scapy

 recipes-security/scapy/python-scapy.inc       | 7 -------
 recipes-security/scapy/python-scapy_2.4.2.bb  | 5 +++++
 recipes-security/scapy/python3-scapy_2.4.2.bb | 4 ++++
 3 files changed, 9 insertions(+), 7 deletions(-)

-- 
2.20.1




