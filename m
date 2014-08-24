Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F290E006DB; Sun, 24 Aug 2014 16:02:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63EC8E0044A
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 16:02:36 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lf10so19720582pab.15
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 16:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=ZIKb0BsHGzM58kJ+UJr/yg0e7zmWCp1W674heqpHxsk=;
	b=GtE2/vzKnBZePxdQfPGUwpSm0ulGnfpMZFL+hJ463XulaJu6kIxN8kdHxN1lEnUUkC
	zxK/srAUhwVrUNBrPRTCHG/6Y3OFBND8pQ4DBtuDyu+smGIkJmsKtJbKjmOfOKmXPyvm
	4BuyQkqw8LZ4VLPA56LjUTAHECBTkd0MHB2EgZ2uC9byYrbdBFFMQdqBbbLbH8lV0PZi
	QdMjPXXyR/AYph0jCJbzzYltOj0OTwcRmsR2nQ7CbpjXCNMYYWnqjelbhwx1GlWCeR0n
	OMTj4ZQsFD2FLjDkVuJOzFCd5zjXYQDOu6I894vonBUNFSssbHxZMPZXO3JoZx1rYUXz
	I5IQ==
X-Received: by 10.70.19.166 with SMTP id g6mr23259147pde.99.1408921356293;
	Sun, 24 Aug 2014 16:02:36 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:b970:36b8:bdaa:630e?
	([2601:c:9380:601:b970:36b8:bdaa:630e])
	by mx.google.com with ESMTPSA id
	ki7sm35458531pbc.65.2014.08.24.16.02.34 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Aug 2014 16:02:35 -0700 (PDT)
Message-ID: <53FA6F09.6040502@gmail.com>
Date: Sun, 24 Aug 2014 16:02:33 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: New kernel error after syncing
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
X-List-Received-Date: Sun, 24 Aug 2014 23:02:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Hello,

Is anyone else seeing kernel build issue on 3.14 with the resent updates?


I am getting the following errors on ppc64 (standard/qemuppc). x86-64 
built fine (core-image-minimal). building ppc now.

|   LD      init/built-in.o
| mm/built-in.o: In function `.vm_cgroup_css_alloc':
| vm_cgroup.c:(.text+0x7103c): undefined reference to `.res_counter_init'
| vm_cgroup.c:(.text+0x71090): undefined reference to `.res_counter_init'
| mm/built-in.o: In function `.vm_cgroup_read_u64':
| vm_cgroup.c:(.text+0x711c4): undefined reference to 
`.res_counter_read_u64'
| mm/built-in.o: In function `.vm_cgroup_charge_memory_mm':
| (.text+0x71348): undefined reference to `.res_counter_charge'
| mm/built-in.o: In function `.vm_cgroup_uncharge_memory_mm':
| (.text+0x713a0): undefined reference to `.res_counter_uncharge'
| mm/built-in.o: In function `.vm_cgroup_charge_shmem':
| (.text+0x71508): undefined reference to `.res_counter_charge'
| mm/built-in.o: In function `.vm_cgroup_uncharge_shmem':
| (.text+0x71560): undefined reference to `.res_counter_uncharge'
| make[2]: *** [vmlinux] Error 1
| make[1]: *** [sub-make] Error 2
| make: *** [all] Error 2

- armin

