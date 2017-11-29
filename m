Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E77B7E00CFF; Wed, 29 Nov 2017 11:52:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2725 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Nov 2017 11:52:16 PST
Received: from smtp-out-2.mxes.net (smtp-out-2.mxes.net [67.222.241.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF4BE00C97
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 11:52:16 -0800 (PST)
Received: from [192.168.0.43] (unknown [172.76.103.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 21C632754D
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:52:15 -0500 (EST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: Brian Smucker <bds@bsmucker.eu.org>
Message-ID: <d12bb827-2c89-3ed4-84f2-a63cf3e12147@bsmucker.eu.org>
Date: Wed, 29 Nov 2017 11:52:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: Security upgrade stategy
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
X-List-Received-Date: Wed, 29 Nov 2017 19:52:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

I have an older yocto-based image built with Danny.

We have a need to update two components, php and dropbear, to the most 
modern versions for security purposes.

What is the preferred way to do this without moving the whole image to 
the latest version of poky/yocto? That would be a big job, which would 
necessitate migrating my linux dev environment to something newer, in 
addition to other things.

Or is there  a preferred way? How do people handle this?

Thanks,

Brian


