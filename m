Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 397ABE00B0B; Wed, 24 May 2017 05:20:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AB87E00AF0
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 05:20:18 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8E85F68A01C; Wed, 24 May 2017 13:20:17 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1FAD968A019;
	Wed, 24 May 2017 13:20:17 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B40DC67404DC;
	Wed, 24 May 2017 14:20:16 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <201bc784-23ea-c40d-beb4-511901b59157@mlbassoc.com>
Date: Wed, 24 May 2017 14:20:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: How to include libraries?
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
X-List-Received-Date: Wed, 24 May 2017 12:20:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I have an image which needs to include the libcups2 package from
the cups recipe.  If I try adding this to my image recipe
   CORE_IMAGE_EXTRA_INSTALL_append = " libcups2"
I get this error:
   ERROR: Required build target 'my-demo-image' has no buildable providers.
   Missing or unbuildable dependency chain was: ['my-demo-image', 'libcups2']

However, I can get it to build with this
   MACHINE_EXTRA_RRECOMMENDS_append = " libcups2"

What's the difference between these two approaches and why doesn't the first
one work at all?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

