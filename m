Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8091DE007C0; Wed, 19 Nov 2014 16:06:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5F14E0071C
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 16:06:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAK0626R006152
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 19 Nov 2014 16:06:02 -0800 (PST)
Received: from server.local (128.224.20.50) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 19 Nov 2014 16:06:02 -0800
Message-ID: <546D3069.80907@windriver.com>
Date: Wed, 19 Nov 2014 19:06:01 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Lin Shen (lshen)" <lshen@cisco.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <D0926E5F.29211%lshen@cisco.com>
In-Reply-To: <D0926E5F.29211%lshen@cisco.com>
Subject: Re: How to adjust patching striplevel while using SCC
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
X-List-Received-Date: Thu, 20 Nov 2014 00:06:11 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-11-19, 6:54 PM, Lin Shen (lshen) wrote:
> I’m using SCC file to list all my kernel patches, and like to adjust the
> patching striplevel much the way how the “striplevel” option works for
> SRC_URI.

It's not possible. scc uses git and git porcelean patches to apply
changes to the kernel .. which means that they need to be properly formatted
patches acceptable to git.

If you are trying to mess around with strip level .. you have to
ask yourself "why", and you are better off fixing up the patches
to the expected format.

Bruce

>


