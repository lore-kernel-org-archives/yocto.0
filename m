Return-Path: <k.carli@overkiz.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1B76E00B30; Wed, 25 Apr 2018 01:54:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,RCVD_IN_SBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.1 RCVD_IN_SBL RBL: Received via a relay in Spamhaus SBL
	*      [213.186.35.215 listed in zen.spamhaus.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 505 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Apr 2018 01:54:21 PDT
Received: from mail2.overkiz.com (mail2.overkiz.com [80.245.18.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A71CEE00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:54:21 -0700 (PDT)
Received: from web-bm.overkiz.com (web-bm.overkiz.com [213.186.35.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail2.overkiz.com (Postfix) with ESMTPS id 9CEDE208C9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:46:11 +0200 (CEST)
Received: from [192.168.2.95] (unknown [80.245.18.66])
	(Authenticated sender: k.carli@overkiz.com)
	by web-bm.overkiz.com (Postfix) with ESMTPSA id 8857A900055
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:46:40 +0200 (CEST)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?K=c3=a9vin_Carli?= <k.carli@overkiz.com>
Message-ID: <4577325c-6b93-469e-81b3-148c83c55b76@overkiz.com>
Date: Wed, 25 Apr 2018 10:46:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: typo in tzdata_2018c.bb
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
X-List-Received-Date: Wed, 25 Apr 2018 08:54:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

I would like to signal a typo in the 
meta/recipes-extended/tzdata/tzdata/tzdata_2018c.bb 
(https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/tzdata/tzdata_2018c.bb?h=morty) 
file.

At this line: "${datadir}/zoneinfo/Asia/Bankok          \"

I think that Bankok should be written Bangkok instead.

Regards,

Carli


