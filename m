Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9567AE00C29; Thu,  3 Jan 2019 14:02:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CF00E007B3
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 14:02:09 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id u47so33919900qtj.6
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 14:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=UKC7/hVLoLid7jbPTHjVBXuZIAPTIr5FMrfog+UcSt8=;
	b=m0aAN0pVeNQpKfkwLaqTGHhw+GvYvnswtlBvCrMvjK/ldcNuwvmSYp8lPkJ4CHAEOQ
	dkrHNulTTMLr15scyH7BlUdoIyYeNEBp350gw2GTrM8Zkvn/K8ZGnGYxaZTL1B32HBoj
	UcWo2DbNEoRKZRV+6bEWvCPVxwBr8IR/W3sN+8iJpc55bKJkqVKw9zp+OEnSE9FlhxlE
	op5nyR973KUSTDnbVVJN9mVMpFzujVJurOcWVNA43XebQ6rrg5OptLF0EDsnfAHPSTNr
	onnBgV5CIkrOJ9djtbosHEQsqQuXMlVGxyAxdDgEQsS5+95K931PUaHrPLA5RC9NZ2ks
	6ikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=UKC7/hVLoLid7jbPTHjVBXuZIAPTIr5FMrfog+UcSt8=;
	b=EKJgrrX9oP21G+o/RR3WdPC4VonkUS2Bk+1v2UNO6Z7dddW723PYHlNKrmg0MopHwt
	1IrYkjD7kvHqBoQ4k8BqdnqiaccMju7bqxoX+ihjAl+dE0s1euMDj4MrnQC99R5DkJ2P
	OXTZ60+nWnksIDgnqXR8FAXZqavObBNR142L0jk7HmADmEgM92+RFl1xjfVOa/qDxt5o
	Tmmm5DkB4kzBePo7gkiyVEFx9aCP7+LGMmLzup2/nCYPdrMSA2h0Os+O04KNonxGq/Xo
	m1XksOukWUhDlSU3A658bRIpBGt9KfxQiBjoAKnp0WDGAQH+/fOYO8Lp1+XfnS/fQhkI
	d6dg==
X-Gm-Message-State: AJcUukeXiKZ4xrzudCj05nUFYK4AL/Dw2VJlZsqFpRsYYRsj/B62b37a
	GixrHZkDparQ6x3JjnmrvZ5mmOKuGmi3dJmoBWAMJk8OmeY=
X-Google-Smtp-Source: AFSGD/XSBMxKhwDeUeDNgwCmpwRfiNfdccDGwTQ4a3InB+3dktQE5vFCJvcNZpRMPirGW3gZwsvmJCsxDk6Y6XF5i+w=
X-Received: by 2002:aed:3eac:: with SMTP id n41mr47642289qtf.196.1546552928200;
	Thu, 03 Jan 2019 14:02:08 -0800 (PST)
MIME-Version: 1.0
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 3 Jan 2019 14:01:42 -0800
Message-ID: <CAMKF1sooPOtN-Y=0_cZ=Qv2viS5mwJAsm+yVsHpOJ5gpN65eZw@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, 
	Yocto Project <yocto@yoctoproject.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Dropping armv5 and armv5e tunes in 2.7
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
X-List-Received-Date: Thu, 03 Jan 2019 22:02:10 -0000
Content-Type: text/plain; charset="UTF-8"

Hello All

You might have noticed a recent commit in gcc trunk

https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=b232e6b58e3766bc66fe08fdb7bcba1bdadda8a2

Which removed support for deprecated -march=armv5 and armv5e, this
will be released along with gcc-9 release which is upcoming and we
might be able to add gcc9 to 2.7 release or 2.8 release for sure.

We still have non-thumb tunes for armv5 and armv4 in our tune pack, I
would like to propose a patch to remove them.

Secondly, I would also like to drop armv4t, and keep armv5te as lowest
supported tune, I know some of us do have machines using armv4t, if
you still maintain them and have need to keep armv4t going, please
chime into this thread.

I have also already posted a related patch here

https://patchwork.openembedded.org/patch/157529/

which uses 't' variants for -mtune explicitly for armv4 and armv5 tunes.

I will prepare patches if there is agreement here, and a no reply is
deemed to be 'yes' :)

Thanks
-Khem

