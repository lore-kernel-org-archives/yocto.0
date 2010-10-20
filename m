Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 09AA14C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 08:07:35 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9KD7a7v016797
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 14:07:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 16752-01 for <yocto@yoctoproject.org>;
	Wed, 20 Oct 2010 14:07:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9KD7TGA016791
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 14:07:29 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: yocto <yocto@yoctoproject.org>
Date: Wed, 20 Oct 2010 14:07:21 +0100
Message-ID: <1287580041.16386.145.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Release checklist
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 13:07:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Coming up to launch there are going to be some technical things that
need to be done, I'm aiming to write these down and assign owners so we
remember them all and that they all happen:

* Remove password protection from yoctoproject.org (sub)domains [RP]
* Swap default site redirection and name for lists.* and wiki.* [RP]
* Make meta-demo public [RP]
* Remove password protection from autobuilder [ScottG]
* Upload final version of the eclipse plugin [Jessica]
* Upload final Yocto release images and tarballs [???]

What date and time are we going to actually do these things?

Cheers,

Richard




