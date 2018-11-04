Return-Path: <patrick.boettcher@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C6FE008E3; Sun,  4 Nov 2018 09:03:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [185.67.36.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 459 seconds by postgrey-1.32 at yocto-www;
	Sun, 04 Nov 2018 09:03:11 PST
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E019E00872
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 09:03:11 -0800 (PST)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 408132400E5
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 17:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1541350531; bh=4cU+i0FmcrrOYfb1pvUSDoyhxzTMmQaHUuNda0K+L4A=;
	h=Date:From:To:Subject:From;
	b=DiqsFe5U+5Ao3oVvZUp53UBtQ8Ye82ZVS9oVOL5kpeemmOqxo7epoUef5isiHe935
	p2Y+nBY2u2cwVoQAz3WNz96VMepMDXkTXFu9NYstDkISr/KglOjwbnrBnXpqqfLQmf
	A+MsredMV57S3FiEOxQhaLJkEoYQ8VST5tMOPOkH91FwBA/Gmq9TxZ2WeylINCpBui
	KFV0w/Dr9YC665OCubEyFjviH9Ts4dAOQ6Qle11Pnj/tWuz5aWXqxT+5YoiSyN7JUN
	HeWjMKN5Rll/P/UY5iWAP54R9nzLvKjiIDW0QHNyX2UGhwKEyHdjL0jnwlOL1+9rt0
	8n1ZQ23OeheEw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 42p24L4Q4rz9rxD
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 17:55:30 +0100 (CET)
Date: Sun, 4 Nov 2018 17:55:30 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: yocto@yoctoproject.org
Message-ID: <20181104175530.3ca8ed50@yaise-pc1>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 04 Nov 2018 14:29:40 -0800
Subject: How to request a certain version of a recipes for an image?
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
X-List-Received-Date: Sun, 04 Nov 2018 17:03:12 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi list,

I'm using the morty-release for my device.

My sources consists of different layers. Some application
specific-layers (which contains a image-recipe), our
BSP-provider and tooling-layers.

It now happens that in there is package (dt-utils) which has recipes in
two different layers, with different versions. 

In my image-file I request the package via 

    IMAGE_INSTALL += "dt-utils"

How do I force the version of dt-utils for this image? By default it
selects the wrong one.

Here's what I tried, by adding to the image-recipe:

    DEPENDS += "dt-utils (>= 2017.03.0)"

and 

    RDEPENDS += "dt-utils (>= 2017.03.0)"

seems to have no effect. Adding the version-logic to the
IMAGE_INSTALL-line fails to build.

What works is to add PREFERRED_VERSION to local.conf. But this is not
committable, so I'd like to avoid it.

Thanks.

best regards,
--
Patrick.




