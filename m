Return-Path: <marek.andrus@wp.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED46E00B68; Wed,  4 Jun 2014 00:54:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.andrus[at]wp.pl)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.77.101.12 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Jun 2014 00:54:12 PDT
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 809B8E00B20
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 00:54:12 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 7540 invoked from network);
	4 Jun 2014 09:47:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1401868050; bh=iBABA3a9zVpUNv0YZyCA9HrM/yZG2HYVUtBL/1EC0Ls=;
	h=From:To:Subject;
	b=wJFoY3UQp/mNEaqVIlTic9Ifocle9p4YpPxKyqTCMjs294XwIDIx/hOpKAPZ2vtbL
	PMvVBnzUfsQpIktuCqJDh9YVpcBefBWnx3pMEb3DjM7qM7FXA3+93BKItBLZX6aYao
	+M/CSgFwDAarwZ417qfsnA5mGOtTaYVJQpyM18lY=
Received: from unknown (HELO [62.159.77.167]) (marek.andrus@[62.159.77.167])
	(envelope-sender <marek.andrus@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with AES128-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 4 Jun 2014 09:47:29 +0200
Message-ID: <538ECF10.1060300@wp.pl>
Date: Wed, 04 Jun 2014 09:47:28 +0200
From: Marek Andrus <marek.andrus@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Icedove/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [UdNH]                               
Subject: creating sdk for my own packages - how?
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
X-List-Received-Date: Wed, 04 Jun 2014 07:54:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm new to Yocto and I've just created a few recipes for my project 
(main application and some needed libraries). Now I'd like to create sdk 
for my application so it should contain toolchain and the needed 
libraries/headers. What should I include in my recipes to get result 
like that? I can't find anything about that in Yocto docs.

I believe I'll be able to create the sdk with command like bitbake 
<my_application> -c populate_sdk. I added "inherit populate_sdk_base" to 
<my_application>.bb. Is that a correct way?

BR,
Marek Andrus

