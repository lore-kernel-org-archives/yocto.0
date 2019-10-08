Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A68FFE00D99; Tue,  8 Oct 2019 15:59:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 380CEE00D8A
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 15:59:38 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x98MxaqK012644
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Tue, 8 Oct 2019 17:59:38 -0500
To: Yocto Project <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <e767d0c7-30ec-8dff-6367-d8720af294e5@kernel.crashing.org>
Date: Tue, 8 Oct 2019 17:59:35 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
Subject: [layerindex-web] Having problems instantiating a docker image
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
X-List-Received-Date: Tue, 08 Oct 2019 22:59:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I've setup the layerindex in the past (without docker).. but I'm attempting to
follow the current instructions w/o much success.

I'm trying to use:

./dockersetup.py -m 8080:80 --no-https

It asks me for my email address and then builds the docker images...

then I get a failure connecting to https://google.com, connectivity check.
Since my layerindex will never leave my network I don't care about google.. so I
re-run it with:

./dockersetup.py -m 8080:80 --no-https --no-connectivity -r

re-enter my email address, it rebuilds the docker images...

it then sits and spins with what looks like a help message for 'exec' as well as:

Database server may not be ready; will try again.


If I try to connect to that machine port 8080 with my browser, I get back a "Bad
Request (400)"

So something is running, but it's broken.

Any suggestions on getting this fixed?  Also what will the admin login be once
it DOES come alive?  I know in the past it had asked me for admin login
information and such, is the admin login documented somewhere for this docker
container?

Thanks!
--Mark

