Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58400E009D7; Sun,  3 May 2015 14:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C49F1E00954
	for <yocto@yoctoproject.org>; Sun,  3 May 2015 14:25:01 -0700 (PDT)
Received: by pdbnk13 with SMTP id nk13so146067596pdb.0
	for <yocto@yoctoproject.org>; Sun, 03 May 2015 14:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=qRIu1RWWufJ7240waOGob9qdBKYYsu+urVm9w65nQpg=;
	b=WL2NsBkk1eqCeN4umE7o0LQEwg1tiNDr+Wxnnzq26n5o73xR8bpymCexeJtxsMAVIO
	Xz8ThuOaX1ZAgsU+DsqcdYWGxb/lCkL8qTNoiuRbJldjkE9oH52v920mW8kSihIsjdw0
	dkpWhfUlSqblEiWRqugU1X1oU8Js6GdvIZeruvXsiwVHM1azh84zf3rOxQzsJ2AgF3vc
	SA5kSkWBNOvVPuIboTuixDdXAcrpFXpQCFbQbbj2E/Gw1DerWnD4jyGkRftZf9t+7yrB
	kSQDodXRDt3QHvqQBpv3/HllxgIq3vILeCt/O30FCnBTGX5eyNIQGq+UdT5Ny6YqPBW8
	riYw==
X-Received: by 10.70.42.139 with SMTP id o11mr37185486pdl.66.1430688301598;
	Sun, 03 May 2015 14:25:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.134.227 with HTTP; Sun, 3 May 2015 14:24:31 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Sun, 3 May 2015 17:24:31 -0400
Message-ID: <CAF_dkJBEt-p6_JOvvO7f28ybgPNGNq28qja+EeP2f1yysqH18A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: QEMU support for SD/MMC card
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
X-List-Received-Date: Sun, 03 May 2015 21:25:04 -0000
Content-Type: text/plain; charset=UTF-8

Can anybody point me in the direction of running an arm based QEMU
with a (simulated) SD/MMC card?

From the documentation for QEMU, I see that I can pass a -drive
parameter to QEMU with an if=sd option, which sounds (reads?) an awful
lot like I can simulate an SD/MMC card.

But looking through the Yocto supplied runqemu script, (actually,
runqemu-internal) it appears that only supports -hda or -virtio disks.

--wpd

