Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E1A4E0140F
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 14:39:46 -0700 (PDT)
Received: from [109.224.129.17] (port=59132 helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SSEbp-0005Yc-6S
	for yocto@yoctoproject.org; Wed, 09 May 2012 22:39:45 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 9 May 2012 22:39:41 +0100
Message-Id: <2BC681BE-E7C5-4CDD-8E03-7E567D5A8288@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: gettext.bb question
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 May 2012 21:39:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Looking at gettext_0.18.1.1.bb in 7.0.0 I see:

PROVIDES = "virtual/libintl virtual/gettext"
PROVIDES_virtclass-native = "virtual/gettext-native"

makes sense so far. However, I also see:

DEPENDS = "libxml2-native gettext-native virtual/libiconv ncurses expat"
DEPENDS_virtclass-native = "libxml2-native gettext-minimal-native"

What does -native in the DEPENDS= 'do' here?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




