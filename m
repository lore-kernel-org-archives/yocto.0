Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50071E00C01; Thu, 24 Sep 2015 15:32:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99FB2E006EA
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 15:32:38 -0700 (PDT)
Received: by lacrr8 with SMTP id rr8so756603lac.2
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 15:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IB1snIjhAeLtZhoOB9Z6U58sfRHbPpqPxM771/2ygcc=;
	b=mjclrw4IsLIQtkCK5q0BOk2YiJUpHtNdttHeXafgcJbwGj+FI02I0gO6IdUfLIjpFZ
	JiqG4BrBMmzkJfyeu3yMwBqrzIP5Dw4hFLgg4eXnboA0YTdM4GRSBmnwgHPGnjpdI5pE
	IZrzvUMI+WGrJgwSKa9RLzhRtqdl6GDxPJCBrLr3+XdCkDqTl6MNzCfFcgTVskeOIJEF
	j8f4oBYmV5tc45FWC8OjHFt4d/jmRu1wjAVOzGcNCcWwHJI49XEDDOuga9sMZoBE1Oht
	McMrMPV7lUGmji22K0p5sSlZ/XW9XJHCexOzhTiNbB7GbUtQVD7EBS/WonCDyJBxs6xx
	5UzA==
MIME-Version: 1.0
X-Received: by 10.112.53.231 with SMTP id e7mr609893lbp.103.1443133956760;
	Thu, 24 Sep 2015 15:32:36 -0700 (PDT)
Received: by 10.114.245.38 with HTTP; Thu, 24 Sep 2015 15:32:36 -0700 (PDT)
Date: Thu, 24 Sep 2015 15:32:36 -0700
Message-ID: <CAGMdoFnzV3P2PLhKtSOyJByF7REqDCCSk8=n0LXfAFUtJ5ofGw@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Create empty directory in RFS
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
X-List-Received-Date: Thu, 24 Sep 2015 22:32:43 -0000
Content-Type: text/plain; charset=UTF-8

How can I create an empty directory in my root FS?  I want to create
/mnt/sd to use as a mount point.  I put "install -d ${D}/mnt/sd" in
do_install() of one of my recipes, but I get:

ERROR: QA Issue: my-recipe: Files/directories were installed but not shipped
  /mnt
  /mnt/sd [installed-vs-shipped]

Thanks for any help.

