Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7474E016CA
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 05:23:40 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[10.79.148.145])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VTsni-0007za-6A; Wed, 09 Oct 2013 12:23:38 +0000
Message-ID: <52554ABF.1040308@twobit.us>
Date: Wed, 09 Oct 2013 08:23:27 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux][PATCH 0/5] Remove python dependency from refpol.
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
X-List-Received-Date: Wed, 09 Oct 2013 12:23:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The reference policy package currently pulls in a lot of python stuff
that isn't strictly necessary to boot an SELinux system and load a
policy. AFAIK this is caused by the mix of python and C utilities in
policycoreutils.

This patch set breaks the policycoreutils recipe up into multiple
packages, one for each utility. In this way we can have the refpol etc
pull in only the utilities necessary for normal operation. This happens
to be only the utilities written in C and thus we can remove python
completely in a minimal image.

I've attempted to localize these changes as much as possible so this
patch set should have minimal impact on recipes outside of the
policycoreutils. An example image reicpe is added to demonstrate a
minimal image with only the utilities required to load a policy and
manipulate the policy store (add / remove policy modules) at runtime.

Regards,
- Philip

