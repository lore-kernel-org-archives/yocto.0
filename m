Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F021E00D63; Thu, 13 Jun 2019 07:31:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [198.47.19.141 listed in list.dnswl.org]
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A1CE00CD2
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 07:31:32 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5DEVWlh047074
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 09:31:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1560436292;
	bh=fZ/dQDcJanEtbHkgoxiuWJhLOldIiHvzbpLclBOl6VI=;
	h=From:To:Subject:Date;
	b=neeUFY2XHpl6BKofwvS6M70lm6sUK56HVJdUzbX4c6Hzj24c/JZdl8VwB7R+QJeGE
	Tzg3R0etKvAmnqWJ4vSSuAd6Iw5jMl7ArGMlZ3eoR8mCrM5mlug0OcPHsO5dpxBb53
	oi2E9xdImq/EJPMKapf4hABq5HQdg5cgSYYcYkzo=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5DEVWCc092678
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 09:31:32 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE108.ent.ti.com
	(157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5;
	Thu, 13 Jun 2019 09:31:31 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
	(157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
	Frontend Transport; Thu, 13 Jun 2019 09:31:31 -0500
Received: from [158.218.117.100] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5DEVVEt062843
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 09:31:31 -0500
From: William Mills <wmills@ti.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <8f5ed5e0-c695-4db9-40dc-2075daa1210d@ti.com>
Date: Thu, 13 Jun 2019 10:31:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: YP sstate example conf file
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
X-List-Received-Date: Thu, 13 Jun 2019 14:31:33 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello,

From poky warrior tip, file meta-poky/conf/local.conf.sample
"""
#
#SSTATE_MIRRORS ?= "file://.*
http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
"""

Should that be 2.7??  Or are you relying on the intelligence of the user
to fix this up?

If the former then it needs to go on a checklist.
If the later then perhaps it would be better to use X.Y or something
that does not appear to work.  Some verbage to suggest the edit would
probably be good as well.

(and no, I did not run it like that. I'm slightly smarted than that.)

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/local.conf.sample?h=warrior#n235

Thanks,
Bill

----------------
William A. Mills
Chief Technologist, Open Solutions, SDO
Texas Instruments, Inc.
20450 Century Blvd
Germantown MD 20878
240-643-0836

