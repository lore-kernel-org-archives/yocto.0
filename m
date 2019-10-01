Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A9CFE00D72; Tue,  1 Oct 2019 10:59:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B5CE00D33
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 10:59:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x91HxBTd032168
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 1 Oct 2019 10:59:11 -0700
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 1 Oct 2019 10:59:10 -0700
To: <yocto@yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <33ca2fa2-9503-580a-5e93-d786fb06e42b@windriver.com>
Date: Tue, 1 Oct 2019 13:59:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
X-Originating-IP: [172.25.44.5]
Subject: FYI: [RFC][PATCH 0/3] Move Rust support from meta-rust to oe-core
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
X-List-Received-Date: Tue, 01 Oct 2019 17:59:15 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit


I'd like to make people aware of a discussion on the oe-core email list
about adding Rust support to the oe-core layer.

If you are interested in helping to define requirements and
better still to work on adapting the meta-rust code so that it's
suitable for inclusion in oe-core, reply of this thread:
 
http://lists.openembedded.org/pipermail/openembedded-core/2019-September/287185.html

If you don't subscribe to oe-core, we can discuss issues on this
list since most people who subscribe to oe-core also subscribe to
this list.

-- 
# Randy MacLeod
# Wind River Linux

