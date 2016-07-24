Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FE8EE0107D; Sat, 23 Jul 2016 22:49:11 -0700 (PDT)
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
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50B58E0107A
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 22:49:06 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id x25so82182955qtx.2
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 22:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=BrJEXrMRAZODHgDivG/Yve++LQaWkuwtQ55Ecy5O9KY=;
	b=hAJ9Dp5GUInbVH/60XxM8yHOUygBe/jbONEXQGO7pm/fZrMG/bHO4YiXpzQjzZp1y5
	J0awnkCR5TXYQvxl8chVUg+EwqgBgL1YYxz6Pggb7xbHttAzaI1yOXiIVD4yvCGnglFa
	/PtLkKRKRDhSG7s2s05fZIqaOvWAbt3ePGd3vIwxXod8GJNL3fJv96QWAJqBCp3Jkljd
	UZNHFRLSAztxKNU2aCwApiL7v+rsFvQNiPWV4onj9VLMkbYWqBvQ/MvMv4E02hQclQeu
	9m5XUnS6jJha+u0Jn7vaTnH8iXU+bnFQl3RvDsOS8yebcl+lzt/Hgn3CIZ8VJXL9OcaZ
	vF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BrJEXrMRAZODHgDivG/Yve++LQaWkuwtQ55Ecy5O9KY=;
	b=C/PNeq29hlaygfgrSbE628DWJnuikFFe5HwCNr63h6uQgHoECWV9nKxk1FKItrk65c
	5L5NxpwZC9IM8sCd32tnjE/J5/IedmWB9G9dIO4wqyh8fDJg0t0dANEy77UnQE00GVX/
	I1zt20fQF6tqkKOVJ4kolXhBfJ8PAeu4uyRhEvRyC3EPPivv9d0H6HhslILsSVqv2ANR
	eIWjGSu8/Qg3Izf2bbw4S77VLI7K3umD7fvE6wdec+LYJ3zc9K023OAvukmDHw2QTUoc
	v4UO1OLZ6Wo9EJH5797McirY8KmkkpUOEfN8NZTmv2RdqRLDxqBql4J1yrc4w5T0fVec
	RIFA==
X-Gm-Message-State: AEkoouucbntMyIJXD5xeU2kh6dY9JrbJsvSHcri4PkDeD8cjWAOAmLSbqjHZqP2tuH11+kiM74bS0N6AkHdA4Q==
X-Received: by 10.237.36.38 with SMTP id r35mr19939671qtc.3.1469339345612;
	Sat, 23 Jul 2016 22:49:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.99 with HTTP; Sat, 23 Jul 2016 22:49:05 -0700 (PDT)
From: Edward Wingate <edwingate8@gmail.com>
Date: Sat, 23 Jul 2016 22:49:05 -0700
Message-ID: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Help with DISTRO settings
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
X-List-Received-Date: Sun, 24 Jul 2016 05:49:11 -0000
Content-Type: text/plain; charset=UTF-8

This is in my layer's conf/distro/mydistro.conf file:

    require conf/distro/poky.conf
    DISTRO = "mydistro"
    DISTRO_NAME = "MyDistro"

These variables took effect before, but now bitbake is reverting back
to DISTRO="poky" and DISTRO_NAME = "Poky (Yocto Project Reference
Distro)" (used for /etc/issue) for some reason.

How can I determine what is reverting it?  I don't know what I might
have changed to make it do this. Thank you.

