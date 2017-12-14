Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8BE3E00D7C; Thu, 14 Dec 2017 03:23:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Dec 2017 03:23:03 PST
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEEEEE00D79
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 03:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1513250584; x=1544786584;
	h=to:from:subject:message-id:date:mime-version:
	content-transfer-encoding;
	bh=JnqOraDiyf6smSYkcF86wjzpzJ57hJ9Egzu6G7LQp2U=;
	b=NZ1ErF4n70M0gvn1E6Ad0xG77oUtIEmlu2z0TW9NHwidSQwfIzw0eZoV
	nyxcm6KZYxX5f7TNUBtwEtdbXsgDyD9jgy4J0mDqCcgGxhSZ7MwY95NUZ
	jN1xsEZoRHpyLr+sL8tVuIHYNvZ6e9bGaUeaUm+YOSiojzjaIQkYnWUSk 4=;
X-IronPort-AV: E=Sophos;i="5.45,400,1508796000"; 
   d="scan'208";a="952252"
Received: from nvc2354.nedap.local (HELO [10.2.16.204]) ([10.2.16.204])
	by smtp4.nedap.com with ESMTP; 14 Dec 2017 12:21:59 +0100
To: Yocto discussion list <yocto@yoctoproject.org>
From: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <e04717a8-e142-73f9-ebe2-5e7ffa5bc1fb@nedap.com>
Date: Thu, 14 Dec 2017 12:21:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: Kernel size above KERNEL_IMAGE_MAXSIZE
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
X-List-Received-Date: Thu, 14 Dec 2017 11:23:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi All,
not sure if I should put this here.
If I define KERNEL_IMAGE_MAXSIZE below my actual kernel size I get this 
ugly error:

ERROR: linux-at91-4.9.28-r0.4 do_sizecheck: Function failed: 
do_sizecheck (log file is located at 
xxx/linux-at91/4.9.28-r0.4/temp/log.do_sizecheck.1370)
ERROR: Logfile of failure stored in: 
xxx/linux-at91/4.9.28-r0.4/temp/log.do_sizecheck.1370
Log data follows:
| DEBUG: Executing shell function do_sizecheck
| xxx/linux-at91/4.9.28-r0.4/temp/run.do_sizecheck.1370: line 117: warn: 
command not found
| WARNING: xxx/linux-at91/4.9.28-r0.4/temp/run.do_sizecheck.1370:1 exit 
127 from 'warn "This kernel $type (size=$size(K) > 2100(K)) is too big 
for your device. Please reduce the size of the kernel by making more of 
it modular."'
| ERROR: Function failed: do_sizecheck (log file is located at 
xxx/linux-at91/4.9.28-r0.4/temp/log.do_sizecheck.1370)
ERROR: Task 
(xxx/meta-atmel/recipes-kernel/linux/linux-at91_4.9.bb:do_sizecheck) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1646 tasks of which 1638 didn't need to 
be rerun and 1 failed.

Summary: 1 task failed:
   xxx/meta-atmel/recipes-kernel/linux/linux-at91_4.9.bb:do_sizecheck
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Either poky/meta/classes/kernel.bbclass should be changed to run 'die' 
instead of 'warn' or in poky/meta/classes/base.bbclass a function 'warn' 
should be added. Not sure which. I tend to the first option: if the 
kernel image is too large then this is an error.

Regards,
Jaap

