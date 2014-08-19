Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA6AE00655; Tue, 19 Aug 2014 14:26:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C381E004F5
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 14:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=T9ywKatHHNTyOv78/IyXst+7XEPJkEn3MY7CDIalpJ4=; 
	b=P/V4kB7E4J/uHSH2Fh/r1h3SF9goF2zCtTt9trOFp1gHZC2uTxt5WlC4ri9aOFaCK+dIpJW3pyrsd66m94wGNpEFYky7JnzzeWY706EsSq48UKfH39exHSIRLhCb0XwQ36n1zN8QX4Ci44haZRCdOsyDZUNmZ+soUXMJw9N7M5w=;
Received: from [109.224.171.0] (port=27512
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XJqvG-002I20-5C
	for yocto@yoctoproject.org; Tue, 19 Aug 2014 22:26:32 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>
Date: Tue, 19 Aug 2014 22:26:31 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Tue, 19 Aug 2014 21:26:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I need to include the kernel driver for the Turbosight TBS6285 DVB card =
in an image.

The official bundle at =
http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.z=
ip includes the drivers and a load of other "stuff" (e.g. a full V4L =
build).

LinuxTV.org have the drivers extracted into a .tar.bz2 at (e.g.) =
http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, so I =
plan to use this as the download source.

So far I have a recipe which downloads from this URL and extracts the =
files into the work area and ${WORKAREA}/drivers/media includes a =
Makefile and Kconfig.

I've looked at the Yocto documentation, but this doesn't seem to be a =
good match for the "Out of tree" kernel module case.

How should I proceed from here? Is there another driver I can use as a =
starting point?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





