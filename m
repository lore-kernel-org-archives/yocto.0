Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDC88E00E47; Tue, 23 Aug 2016 03:59:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71162E00CEF
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 03:59:48 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 85BF668A01D; Tue, 23 Aug 2016 11:59:46 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0816F68A019;
	Tue, 23 Aug 2016 11:59:45 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 5BDF167400AC;
	Tue, 23 Aug 2016 12:59:45 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c798c57e-9a04-61a3-534f-d25b14ad7c11@mlbassoc.com>
Date: Tue, 23 Aug 2016 12:59:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: PyPi packages
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
X-List-Received-Date: Tue, 23 Aug 2016 10:59:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Can someone guide me how to specify the source package for a
PyPi package?  The webpage lists this as the download:
 
https://pypi.python.org/packages/f3/58/d74a46a3ab5927834d70841bc29bd6e1d5f20a27789ec7d819335e0bdfff/python-can-1.5.0.tar.gz#md5=593af7aa53bf6810742eae0415a95a4b
but based on other examples, I think I should be using something
else, possibly on pythonhosted.org, but I'm not sure how to figure
out what the [long-term] path might be.

Pointers?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

