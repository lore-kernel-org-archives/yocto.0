Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C664E0086B; Wed, 16 Mar 2016 12:40:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00, RCVD_IN_BRBL_LASTEXT,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.4 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [198.144.209.5 listed in bb.barracudacentral.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from sendai.noir.com (m209-5.dsl.rawbw.com [198.144.209.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1918DE007D2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 12:40:30 -0700 (PDT)
Received: from ono.local (50-197-177-177-static.hfc.comcastbusiness.net
	[50.197.177.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id EA8CFE0DBD;
	Wed, 16 Mar 2016 12:40:26 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: K Richard Pixley <rich@noir.com>
Message-ID: <50f8e13e-bf3e-96b9-221b-3f6a92f948ee@noir.com>
Date: Wed, 16 Mar 2016 12:40:19 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
Subject: hddimg vs hdddirect?
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
X-List-Received-Date: Wed, 16 Mar 2016 19:40:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

What's the intended difference between hddimg and hdddirect?

I'm confused about the intent here. The data flow in previous releases,
even jethro, seems to be somewhat confused/broken so looking at the
source code isn't really helping here.

Is one intended to be a simple syslinux bootable image while the other
is a "live" image with multiple boot choices?

In master... How does one go about requesting either a vmdk of a live
image or a directly bootable vmdk?

--rich

