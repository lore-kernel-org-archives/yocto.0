Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57E6BE0093A; Sun, 30 Nov 2014 22:00:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53529E0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 22:00:33 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 30E5226EA522
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 06:00:33 +0000 (UTC)
Message-ID: <547C0400.3010706@mindchasers.com>
Date: Mon, 01 Dec 2014 01:00:32 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Questioning FILESOVERRIDES implied precedence in setting FILESPATH...
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
X-List-Received-Date: Mon, 01 Dec 2014 06:00:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

In poky master, FILESOVERRIDES is constructed as follows:

"${TRANSLATED_TARGET_ARCH}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}"

For my current build, I get:

FILESOVERRIDES="powerpc:custom-machine:e500v2:qoriq-ppc:poky"

FILESPATH is built by calling base_set_filespath(), which is in 
utils.bbclass

This function constructs FILESPATH in such a way that the distro folder 
("poky") comes before the other overrides ( precedence is applied right 
to left using FILESOVERRIDES )

I see that there was a patch to reverse the ordering back in Oct of 2013 
(0bd63125c3b44) to make sure MACHINE overrides had precedence over 
platform specific overrides.  However, I'm wondering if the intent was 
to have the distro override both.  This doesn't make sense to me, so 
please clarify whether this is correct.  If it is, please explain why 
distro gets a higher precedence over machine.

Thanks,

Bob



