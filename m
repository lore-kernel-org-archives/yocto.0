Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8513E0084D; Thu, 23 Oct 2014 19:46:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42158E0080C
	for <yocto@yoctoproject.org>; Thu, 23 Oct 2014 19:46:39 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id cs9so361507qab.23
	for <yocto@yoctoproject.org>; Thu, 23 Oct 2014 19:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=W2o9Zzbd7KSNBvXrEUcmafaVUekTt88AAADQ0/aRn74=;
	b=MP//Et39/k2VI+bUUqd6dt0V/8bEJz66PrTBpkHZBt/nLywRaZmpKpHnDaxOvBaKQ9
	81o3wz0JK7NAGYYbLMcriX5NoJ/FLOKg/2efwSHBb8eHi1DKpBoLhsrrEpDOz8CbVKWo
	r73kIbvOKX4JCaB/yb6mXjUZohMX0tWz4emvoP2g89e6sxxnHUgRfTogdgjnar9sw61W
	Ic39rUWjmlIgPV8H4q+lbpkamR4GBTyV7A0qeLSgaxmQR4CLxsygLOr6GxwlAnal+PIq
	XV+4addR0DbJYfuPGBGA7kINjr3PTZJ6JGBfw2brBco8QsqcDt4v6TbipVA+VANWEDyj
	+MSw==
X-Received: by 10.170.129.201 with SMTP id v192mr1855151ykb.8.1414118798964;
	Thu, 23 Oct 2014 19:46:38 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7]) by mx.google.com with ESMTPSA id
	v133sm1737163ioe.18.2014.10.23.19.46.37 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Oct 2014 19:46:38 -0700 (PDT)
Message-ID: <5449BD8D.3070907@gmail.com>
Date: Thu, 23 Oct 2014 22:46:37 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Failing Build
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
X-List-Received-Date: Fri, 24 Oct 2014 02:46:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Greetings Fellow Yocto Developers and Users,
I am getting a failing build with bitbake core-image-rt-sdk on qemux86 or qemux86_64 machine builds.
Further more I am posting my failing build messages below, I am assuming it's a misconfiguration  or
a bug related to qemux86 or Intel platforms.
Cheers and Thanks for the Help,
Nick 
  /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/cordic.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/cpu-notifier-error-inject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/cpu_rmap.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/cpumask.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc-ccitt.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc-itu-t.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc-t10dif.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc16.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc32.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc32defs.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc7.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/crc8.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ctype.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/debug_locks.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/dec_and_lock.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress_bunzip2.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress_inflate.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress_unlz4.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress_unlzma.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress_unlzo.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/decompress_unxz.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/devres.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/digsig.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/div64.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/dma-debug.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/dump_stack.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/dynamic_debug.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/dynamic_queue_limits.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/earlycpio.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/extable.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fault-inject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fdt.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fdt_ro.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fdt_rw.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fdt_strerror.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fdt_sw.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fdt_wip.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/find_last_bit.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/find_next_bit.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/flex_array.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/flex_proportions.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/gcd.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/gen_crc32table.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/genalloc.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/halfmd4.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/hash.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/hexdump.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/hweight.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/inflate.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/int_sqrt.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/interval_tree.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/interval_tree_test_main.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/iomap.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/iomap_copy.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/iommu-helper.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ioremap.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/iovec.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/irq_regs.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/is_single_threaded.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/jedec_ddr_data.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/kasprintf.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/kfifo.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/klist.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/kobject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/kobject_uevent.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/kstrtox.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/kstrtox.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lcm.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/libcrc32c.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/list_debug.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/list_sort.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/llist.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-hardirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-mutex.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-rlock-hardirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-rlock-softirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-rlock.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-rsem.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-softirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-spin-hardirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-spin-softirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-spin.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-wlock-hardirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-wlock-softirq.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-wlock.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest-wsem.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lockref.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lru_cache.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/md5.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/memory-notifier-error-inject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/memweight.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/net_utils.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/nlattr.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/notifier-error-inject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/notifier-error-inject.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/of-reconfig-notifier-error-inject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/oid_registry.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/parser.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/pci_iomap.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/percpu-refcount.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/percpu_counter.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/percpu_test.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/plist.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/pm-notifier-error-inject.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/prio_heap.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/proportions.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/random32.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ratelimit.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/rational.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/rbtree.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/rbtree_test.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/reciprocal_div.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/sha1.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/show_mem.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/sort.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/stmp_device.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/string.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/string_helpers.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/strncpy_from_user.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/strnlen_user.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/swiotlb.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/syscall.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/test-kstrtox.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/test-string_helpers.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/test_module.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/test_user_copy.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/textsearch.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/timerqueue.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ts_bm.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ts_fsm.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ts_kmp.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/ucs2_string.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/usercopy.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/uuid.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/vsprintf.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/Kconfig
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/Kconfig.debug
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/debugobjects.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/idr.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/locking-selftest.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/percpu_ida.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/radix-tree.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/scatterlist.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/smp_processor_id.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inffast.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inffast.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inffixed.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inflate.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inflate.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inflate_syms.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inftrees.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/inftrees.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/infutil.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_inflate/infutil.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_deflate/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_deflate/deflate.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_deflate/deflate_syms.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_deflate/deftree.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/zlib_deflate/defutil.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lzo/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lzo/lzo1x_compress.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lzo/lzo1x_decompress_safe.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lzo/lzodefs.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/.gitignore
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/algos.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/altivec.uc
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/avx2.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/int.uc
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/mktables.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/mmx.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/neon.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/neon.uc
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/recov.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/recov_avx2.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/recov_ssse3.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/sse1.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/sse2.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/tilegx.uc
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/unroll.awk
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/x86.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/test/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/raid6/test/test.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/Kconfig
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_10x18.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_6x11.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_7x14.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_8x16.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_8x8.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_acorn_8x8.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_mini_4x6.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_pearl_8x8.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_sun12x22.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/font_sun8x16.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/fonts/fonts.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lz4/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lz4/lz4_compress.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lz4/lz4_decompress.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lz4/lz4defs.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/lz4/lz4hc_compress.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-add1.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-lshift.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-mul1.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-mul2.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-mul3.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-rshift.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/generic_mpih-sub1.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/longlong.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpi-bit.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpi-cmp.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpi-inline.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpi-internal.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpi-pow.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpicoder.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpih-cmp.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpih-div.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpih-mul.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/mpi/mpiutil.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/reed_solomon/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/reed_solomon/decode_rs.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/reed_solomon/encode_rs.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/reed_solomon/reed_solomon.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/Kconfig
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/Makefile
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_crc32.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_dec_bcj.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_dec_lzma2.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_dec_stream.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_dec_syms.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_dec_test.c
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_lzma2.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_private.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/usr/src/kernel/lib/xz/xz_stream.h
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
 /media/nick/Build_Drive/poky/build/tmp/sysroots/qemux86/sysroot-providers/virtual_kernel
 Matched in manifest-qemux86-linux-yocto.populate_sysroot
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, if not now, possibly in the future (we've seen builds fail several months later). If the system knew how to recover from this automatically it would however there are several different scenarios which can result in this and we don't know which one this is. It may be you have switched providers of something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in that case you need to execute the clean task for both recipes and it will resolve this error. It may be you changed DISTRO_FEATURES from systemd to udev or vice versa. Cleaning those recipes should again resolve this error however switching DISTRO_FEATURES on an existing build directory is not supported, you should really clean out tmp and rebuild (reusing sstate should be safe). It could be the overlapping files detected are harmless in which case adding them to SSTATE_DUPWHITELIST may be the correct solution. It could also be your build is incl
uding two different conflicting versions of things (e.g. bluez 4 and bluez 5 and the correct solution for that would be to resolve the conflict. If in doubt, please ask on the mailing list, sharing the error and filelist above.
ERROR: If the above message is too much, the simpler version is you're advised to wipe out tmp and rebuild (reusing sstate is fine). That will likely fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: /media/nick/Build_Drive/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-rt/3.14.19+gitAUTOINC+fb6271a942_0a875ce52a-r0/temp/log.do_populate_sysroot.11864
ERROR: Task 98 (/media/nick/Build_Drive/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb, do_populate_sysroot) failed with exit code '1'

