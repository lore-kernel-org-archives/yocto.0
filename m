Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C076F4C800BB
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 17:50:46 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5SMoiZs029918;
	Tue, 28 Jun 2011 23:50:44 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29718-03; Tue, 28 Jun 2011 23:50:40 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5SMoc3p029912
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 28 Jun 2011 23:50:39 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
In-Reply-To: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
References: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
Date: Tue, 28 Jun 2011 23:50:23 +0100
Message-ID: <1309301423.20015.325.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting pseudo from yocto/poky toolchain working with my build
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
X-List-Received-Date: Tue, 28 Jun 2011 22:50:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-06-28 at 18:29 +0100, O'donoghue, Bryan wrote:
> ASSUME_PROVIDED += "m4-native tcl-native gettext-native libtool-native
> quilt-native autoconf-native automake-native perl-native
> sqlite3-native tar-replacement-native pseudo-native"

I don't know about the pseudo issue, the system really wasn't designed
to allow for a system provided pseudo since few systems would actually
have that.

I'm almost certain you're going to hit issues with the line above from
perl-native, libtool-native and autoconf-native and automake-native
though as you won't have key patches applied.

Cheers,

Richard


