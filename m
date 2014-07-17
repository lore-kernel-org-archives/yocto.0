Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 500DCE00788; Wed, 16 Jul 2014 21:42:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.47 listed in list.dnswl.org]
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EBC5E00777
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 21:42:34 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id i13so1499893qae.34
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 21:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gVtRYP8DzJMNa4UpfpJzkyG3DTNrKHWa0Jpr4dnyCGQ=;
	b=zZDoQ3q4+kh2GTAr1hetPgYD6QrQkmlMbsKEHvV2biBZO3H0jjGMCOi8TRAGAgvF3T
	DpzsNCtDgsvIZn0k7XRf0TA4HsNSo9o+mjNufEBQCmgCYLIVlEz8n9Pv31PCYNyvz4FK
	1BVQHCshT2nZNtO0w5/29KRBcihEm4ShYKJp8KYqxr7dAIJ2YJi0tvEy3zrq4gxJABFT
	VbWvzXz4ErYwN1X3U4lhqiGnE7andy/yCxxM/9m7PeCTarzBtRSOGH0hsu7SwJV3gm6q
	ZkIVfHj+KgwFv2UY4T2lym21KF9w+iuOs+FaAze+nnFXq+h7rxmRVXhPfhOXLXRGApQF
	UMvA==
MIME-Version: 1.0
X-Received: by 10.140.41.202 with SMTP id z68mr50944120qgz.37.1405572153474;
	Wed, 16 Jul 2014 21:42:33 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Wed, 16 Jul 2014 21:42:33 -0700 (PDT)
Date: Thu, 17 Jul 2014 10:12:33 +0530
Message-ID: <CAP3RZogMaiH3xBB3gto+xxR6X5ry=wHxq0t9XLFxLty82i1TgQ@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Compiler on board
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
X-List-Received-Date: Thu, 17 Jul 2014 04:42:43 -0000
Content-Type: text/plain; charset=UTF-8

Hi All,

Is it possible to have compiler in the yocto image?
I want to compile some code on board itself instead of cross compiling
it on host system?

