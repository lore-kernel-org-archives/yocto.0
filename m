Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 326A7E007AA; Thu, 12 Jan 2017 02:19:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3B32E0049F
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 02:19:20 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id BF75C68A01C; Thu, 12 Jan 2017 10:19:16 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 6DE2C68A019;
	Thu, 12 Jan 2017 10:19:16 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id CC13D6740352;
	Thu, 12 Jan 2017 11:19:15 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <2501fca2-307d-1c74-0c52-76818e1c7a96@mlbassoc.com>
Date: Thu, 12 Jan 2017 11:19:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: Confusing error
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
X-List-Received-Date: Thu, 12 Jan 2017 10:19:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Lately I've been seeing errors like these:

ERROR: When reparsing /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install, the 
basehash value changed from 9505eae6877992fa6b9e3148cf3752eb to f19b1f7c30c515ab9ef905f96b6eaa5e. The metadata is not 
deterministic and this needs to be fixed.
ERROR: When reparsing /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install, the 
basehash value changed from 9505eae6877992fa6b9e3148cf3752eb to f19b1f7c30c515ab9ef905f96b6eaa5e. The metadata is not 
deterministic and this needs to be fixed.
ERROR: When reparsing /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install, the 
basehash value changed from 9505eae6877992fa6b9e3148cf3752eb to f19b1f7c30c515ab9ef905f96b6eaa5e. The metadata is not 
deterministic and this needs to be fixed.
WARNING: u-boot-fw-utils-2011.06-r1 do_package_qa: QA Issue: No GNU_HASH in the elf binary: 
'/build/p7619_2016-02-23/tmp/work/teton_p7620-amltd-linux-gnueabi/u-boot-fw-utils/2011.06-r1/packages-split/u-boot-fw-utils/sbin/fw_printenv'
No GNU_HASH in the elf binary: 
'/build/p7619_2016-02-23/tmp/work/teton_p7620-amltd-linux-gnueabi/u-boot-fw-utils/2011.06-r1/packages-split/u-boot-fw-utils/sbin/fw_setenv' 
[ldflags]
ERROR: When reparsing /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install, the 
basehash value changed from 9505eae6877992fa6b9e3148cf3752eb to f19b1f7c30c515ab9ef905f96b6eaa5e. The metadata is not 
deterministic and this needs to be fixed.

I'm not sure what triggers these errors - I do have more than
one bitbake build running (separate directories).  I have a local
copy of the metadata and it was not touched during these builds.

I'm using Poky/Yocto rev 840e221ea7c35177fda37af618c4727fa7754789
but I've seen them for a couple of months now.

Ideas?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

