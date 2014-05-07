Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C1E3E00724; Wed,  7 May 2014 12:49:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28C77E006EF
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 12:49:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s47JnXDN005921
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 May 2014 12:49:33 -0700 (PDT)
Received: from yow-asskicker.wrs.com (128.224.56.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 7 May 2014 12:49:33 -0700
From: Joe MacDonald <joe@deserted.net>
To: <yocto@yoctoproject.org>, <hongxu.jia@windriver.com>
Date: Wed, 7 May 2014 15:49:19 -0400
Message-ID: <1399492168-13096-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [v2][meta-selinux][PATCH 0/8] fix PRINC QA Warning
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
X-List-Received-Date: Wed, 07 May 2014 19:49:37 -0000
Content-Type: text/plain

An updated version of the series sent out by Hongxu Jia a few weeks back.
Integrating the original series caused grief on some of my builders, so this is
a modified approach, hopefully preserving the original credit and making it
clear where I'm to blame.

FWIW, there's been several stable releases of the selinux tools, so they're due
for an update, which'll make most of these changes simply go away, but I won't
have time to look at that for at least a couple of weeks yet.

-- 
-Joe MacDonald.
:wq


