Return-Path: <Meng.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 567C1E00CD6; Mon, 28 Jan 2019 02:18:57 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7B95E00CB9;
	Mon, 28 Jan 2019 02:18:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0SAIts7025863
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Jan 2019 02:18:55 -0800 (PST)
Received: from pek-mli1-d1.wrs.com (128.224.162.136) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.435.0; Mon, 28 Jan 2019 02:18:54 -0800
From: <Meng.Li@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 28 Jan 2019 18:20:02 +0800
Message-ID: <1548670803-27762-1-git-send-email-Meng.Li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: : [meta]: [recipes-bsp]: u-boot: update commit id to the latest one of u-boot upstream
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
X-List-Received-Date: Mon, 28 Jan 2019 10:18:57 -0000
Content-Type: text/plain

From: Limeng <Meng.Li@windriver.com>

Hi Richard,

Could you please help to merge this patch into meta/recipes-bsp/u-boot, branch is master?

There are 2 CVE issues fixing in latest u-boot upstream, so
update commit id to involve these fixing patches.


thanks,
Limeng



