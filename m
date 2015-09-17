Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BB09E00BF6; Thu, 17 Sep 2015 00:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.17.115.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from atl4mhob14.myregisteredsite.com
	(atl4mhob14.myregisteredsite.com [209.17.115.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B1FCE00D25
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 00:17:00 -0700 (PDT)
Received: from mailpod.hostingplatform.com ([10.30.71.204])
	by atl4mhob14.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
	t8H7Gxor007647
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 03:16:59 -0400
Received: (qmail 6717 invoked by uid 0); 17 Sep 2015 07:16:59 -0000
X-TCPREMOTEIP: 88.159.208.100
X-Authenticated-UID: mike@milosoftware.com
Received: from unknown (HELO ?192.168.80.121?)
	(mike@milosoftware.com@88.159.208.100)
	by 0 with ESMTPA; 17 Sep 2015 07:16:58 -0000
To: yocto@yoctoproject.org
References: <55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
	<55F846D8.4020808@gmail.com>
	<CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
	<55f9358a.44f2440a.38b16.7e0cSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0LZr4TZ48ctS7U8EwUreSz7GZ8JuB_Y0Kody3LKGp2o9cw@mail.gmail.com>
	<010b01d0f089$e87a7670$b96f6350$@pont@sdcsystems.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <55FA68E9.9090904@topic.nl>
Date: Thu, 17 Sep 2015 09:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <010b01d0f089$e87a7670$b96f6350$@pont@sdcsystems.com>
Subject: Re: Dumping sysvinit
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
X-List-Received-Date: Thu, 17 Sep 2015 07:17:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 16-09-15 16:13, Andy Pont wrote:
> Ross wrote...
>
>>> Now to figure out why the tar.gz file for the root file system has grown
>>> from just under 3MiB to almost 15MiB!
>>
>> That would be systemd... it pulls in a lot of libraries that are fairly common
>> on complex systems but on a minimal image less so.
>
> Back to plan A then, trying to figure out how to get Busybox init and mdev as the defaults in the image.

Create your own distro, here's an example that uses mdev:

https://github.com/topic-embedded-products/meta-topic/blob/master/conf/distro/tiny.conf



