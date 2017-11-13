Return-Path: <tobias.olausson@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EAE5E00C45; Mon, 13 Nov 2017 09:14:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Nov 2017 09:14:48 PST
Received: from ORO-EDGE-03.luxoft.com (oro-edge-03.luxoft.com [109.166.244.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E72E00BEA
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 09:14:48 -0800 (PST)
Received: from ORO-HUBT-01.luxoft.com (172.30.115.41) by
	oro-edge-03.luxoft.com (172.30.19.23) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Mon, 13 Nov 2017 19:13:42 +0200
Received: from [172.31.241.70] (172.31.241.70) by ORO-HUBT-01.luxoft.com
	(172.30.115.101) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Mon, 13 Nov 2017 19:13:42 +0200
To: <yocto@yoctoproject.org>
From: Tobias Olausson <tobias.olausson@pelagicore.com>
Organization: Pelagicore
Message-ID: <13e28abd-e0b3-3203-2fbe-e0e3961a7d16@pelagicore.com>
Date: Mon, 13 Nov 2017 18:13:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-Originating-IP: [172.31.241.70]
Subject: rpm/dnf issues when building an SDK
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
X-List-Received-Date: Mon, 13 Nov 2017 17:14:50 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hey,

I have a weird issue when generating an SDK for the image I'm building.
Somehow, I end up with the following errors:

$ bitbake -c populate_sdk core-image-pelux-minimal
ERROR: core-image-pelux-minimal-1.0-r0 do_populate_sdk: unable to place
/home/vagrant/pelux_yocto/build/tmp/work/intel_corei7_64-pelux-linux/core-image-pelux-minimal/1.0-r0/sdk/image/etc/rpmrc
in final SDK location
ERROR: core-image-pelux-minimal-1.0-r0 do_populate_sdk: unable to place
/home/vagrant/pelux_yocto/build/tmp/work/intel_corei7_64-pelux-linux/core-image-pelux-minimal/1.0-r0/sdk/image/etc/dnf/dnf.conf
in final SDK location

I have no idea why, and re-running the populate_sdk step succeeds
without any tasks being run, and even after those errors, an sdk is
produced, but I end up with 2 errors and a non-zero exit code. A quick
check easily reveals that the files it wanted to place in "final SDK
location" are non-existent, so the error as such makes sense.

In my CI system I build this using vagrant with docker as the provider,
and it's only then I notice this issue. When building locally (with
docker or otherwise) there are no such issues. The CI system (and when I
build locally) are ubuntu and debian, respectively. The error is present
in the CI setup regardless of having rpm on the host machine or not.

I couldn't find any info on other people having the same problem, and I
start feeling stuck on this because it only fails in some environments,
it seems.

Cheers,

Tobias Olausson
Software Engineer

PELAGICORE | Experience Change
http://www.pelagicore.com/

Registered Office Gothenburg, Sweden
Registration No. 556780-4199

PELAGICORE a part of LUXOFT

