Return-Path: <Jian.Liu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11CCBE00860; Thu, 30 Oct 2014 18:25:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC406E007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 18:25:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s9V1PQBn008128
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 Oct 2014 18:25:26 -0700 (PDT)
Received: from [128.224.163.134] (128.224.163.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 30 Oct 2014 18:25:25 -0700
Message-ID: <5452E48D.50505@windriver.com>
Date: Fri, 31 Oct 2014 09:23:25 +0800
From: Liu Jian <jian.liu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: opkg-devel <opkg-devel@googlegroups.com>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <5451CF50.9060501@windriver.com>
In-Reply-To: <5451CF50.9060501@windriver.com>
Subject: Re: [opkg-utils PATCH] update-alternatives: Installing fails for "["
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
X-List-Received-Date: Fri, 31 Oct 2014 01:25:35 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

Insalling packages using update-alternatives will give the following
error lines:
sed: -e expression #1, char 41: unterminated address regex
sed: -e expression #1, char 42: unterminated address regex
This is caused by the script update-alternatives.
"[" can not be used directly in sed expression, which should be escaped
in sed expression.

Signed-off-by: Jian Liu <jian.liu@windriver.com>
---
update-alternatives | 6 +++++-
1 files changed, 5 insertions(+), 1 deletions(-)


----- I add the head of this patch -----




于 2014年10月30日 13:40, Liu Jian 写道:

-- 
Jian Liu
Email: jian.liu@windriver.com
Office Phone: 86-10-84778539


