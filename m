Return-Path: <lshen@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ADE9E007C0; Wed, 19 Nov 2014 15:56:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.1 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.74 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0189]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Nov 2014 15:56:01 PST
Received: from rcdn-iport-3.cisco.com (rcdn-iport-3.cisco.com [173.37.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3651E0071C
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 15:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=226; q=dns/txt; s=iport;
	t=1416441362; x=1417650962;
	h=from:to:subject:date:message-id:content-id:
	content-transfer-encoding:mime-version;
	bh=eb8zdKRAFeXgB0coPh9ByKK/dcPCaw2U2cNZdfwOjxY=;
	b=Tr3Y4abCWf9sY27ZBH1OUw4apvS+jNYaVpx8koPqOYvD7bJJ9m8NNgFM
	JWoP6rQxNCPYDSX5alhs820syt8D4/vEAuyJ8cmQIVuTcNH630JLe40ph
	05VNcvhpI2f5zan226kKc+QKUcu7AjQkFKELWXLNvT/LKmFmSyciBzEYG A=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ao8NAO8sbVStJV2T/2dsb2JhbABagw6BMoMCiWHHLWwWAQEBAQFyC4QJIxFXASICJgIEMBUSBIhUrgyPS5ZkAQEIAgEfgS2SWYFUBZJXjAqWe4N7gjWBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.07,420,1413244800"; d="scan'208";a="373700390"
Received: from rcdn-core-11.cisco.com ([173.37.93.147])
	by rcdn-iport-3.cisco.com with ESMTP; 19 Nov 2014 23:54:57 +0000
Received: from xhc-aln-x14.cisco.com (xhc-aln-x14.cisco.com [173.36.12.88])
	by rcdn-core-11.cisco.com (8.14.5/8.14.5) with ESMTP id sAJNsupQ030711
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 23:54:57 GMT
Received: from xmb-aln-x07.cisco.com ([169.254.2.43]) by xhc-aln-x14.cisco.com
	([173.36.12.88]) with mapi id 14.03.0195.001;
	Wed, 19 Nov 2014 17:54:56 -0600
From: "Lin Shen (lshen)" <lshen@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to adjust patching striplevel while using SCC
Thread-Index: AQHQBFQ4fSezSEwdLkWCQ9maH6EfDQ==
Date: Wed, 19 Nov 2014 23:54:56 +0000
Message-ID: <D0926E5F.29211%lshen@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.154.204.105]
MIME-Version: 1.0
Subject: How to adjust patching striplevel while using SCC
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
X-List-Received-Date: Wed, 19 Nov 2014 23:56:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <00B5E0B371FD124C877CE9FD1CC8BE23@emea.cisco.com>
Content-Transfer-Encoding: base64

SeKAmW0gdXNpbmcgU0NDIGZpbGUgdG8gbGlzdCBhbGwgbXkga2VybmVsIHBhdGNoZXMsIGFuZCBs
aWtlIHRvIGFkanVzdCB0aGUNCnBhdGNoaW5nIHN0cmlwbGV2ZWwgbXVjaCB0aGUgd2F5IGhvdyB0
aGUg4oCcc3RyaXBsZXZlbOKAnSBvcHRpb24gd29ya3MgZm9yDQpTUkNfVVJJLg0KDQo=

