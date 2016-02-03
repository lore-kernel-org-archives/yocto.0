Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 269C5E00C2A; Wed,  3 Feb 2016 02:20:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 426 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Feb 2016 02:20:47 PST
Received: from demumfd001.nsn-inter.net (demumfd001.nsn-inter.net
	[93.183.12.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E1DE00B3D
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 02:20:46 -0800 (PST)
Received: from demuprx016.emea.nsn-intra.net ([10.150.129.55])
	by demumfd001.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u13ADdj9021160
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 3 Feb 2016 10:13:39 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx016.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u13ADcEt006293
	for <yocto@yoctoproject.org>; Wed, 3 Feb 2016 11:13:39 +0100
To: yocto@yoctoproject.org
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56B1D2D1.5010508@nokia.com>
Date: Wed, 3 Feb 2016 11:13:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 685
X-purgate-ID: 151667::1454494419-00001C0B-B96E7680/0/0
Subject: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Wed, 03 Feb 2016 10:20:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Let's say I have my package at

     host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/

I would like to have symlink created

     host-64/tmp/work/x86_64-poky-linux/mypackage/latest -> 1.2.3-r4/

each time the new version is fetched and unpacked. How can I achieve 
that ? Which class, task should I append, extend ?

Optionally, I would like to have that for all packages or at least 
packages in my meta.


P.S. I asked the same question here: 
http://stackoverflow.com/questions/35158764/where-should-i-append-yocto-bitbake-task-to-create-work-folder-symlink

-- 
Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw


