Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D3F7E009A0; Fri,  2 Jun 2017 16:51:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_05,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0439]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E70F8E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 16:51:21 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dGwLZ-0001Ir-KJ
	for yocto@yoctoproject.org; Sat, 03 Jun 2017 01:51:13 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@exalondelft.nl>
Date: Fri, 2 Jun 2017 23:51:02 +0000 (UTC)
Message-ID: <ogstl6$5tv$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: libpam-systemd not built, but enabled in systemd PACKAGECONFIG
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
X-List-Received-Date: Fri, 02 Jun 2017 23:51:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

That is when building systemd with morty.

I have DISTRO_FEATURES pam set, but I find --disable-pam in the configure 
log. 

In fact only --enable-split-usr  --enable-xz and --enable-nls are set 
according to the log. None of these are set through PACKAGECONFIG. 

And everything that is set through PACKAGECONFIG is --disabled...

It looks inverted..
 
What am I doing wrong?


