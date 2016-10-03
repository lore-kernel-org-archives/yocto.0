Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A41E7E00C17; Mon,  3 Oct 2016 05:02:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26059E00BE1
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 05:02:10 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp5-g21.free.fr (Postfix) with ESMTP id B94045FF96
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 14:02:08 +0200 (CEST)
Date: Mon, 3 Oct 2016 14:02:08 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <957653759.75997381.1475496128451.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <27911148.75947347.1475495383943.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: [pseudo-native] No real function for mknod
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
X-List-Received-Date: Mon, 03 Oct 2016 12:02:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Dear all,

Since the end of last week, I try to produce any kind of images, with no success :-(

Note that even though I'm not a seasoned Yocto user, in more than a year I managed many times to produce images & SDKs. And this time, I tried several configs, erased everything and restarted from scratch, etc., but with always the same problem.

I have the following logs (in grey, so I guess not a warning nor an error) when running bitbake:
No real function for mknod: /mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined symbol: mknod
No real function for mknodat: /mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined symbol: mknodat

And at the end, this crashes with:
ERROR: core-image-minimal-initramfs-1.0-r0 do_rootfs: Unable to install packages. Command '/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/smart --log-level=warning --data-dir=/mnt/Yocto/Fabric-x64/build/tmp/work/genericx86_64-poky-linux/core-image-minimal-initramfs/1.0-r0/rootfs/var/lib/smart install --attempt -y ' returned 1:


I tried the poky git repo with krogoth (HEAD & mid-september) and master; with recipes core-image-minima & core-image-sato.

I know that I always have a warning from bitbake about "Debian-unstable" not being validated, but so far, it worked.


So if any of you has an idea, I'd be most grateful!
Michel

