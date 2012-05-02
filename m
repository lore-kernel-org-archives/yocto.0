Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1680BE0030B
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:50:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q42Fot3A023863;
	Wed, 2 May 2012 16:50:55 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23194-05; Wed,  2 May 2012 16:50:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q42Foj0m023857
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 2 May 2012 16:50:46 +0100
Message-ID: <1335973847.30113.22.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Date: Wed, 02 May 2012 16:50:47 +0100
In-Reply-To: <CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
References: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
	<CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:51:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-05-02 at 08:18 -0700, Osier-mixon, Jeffrey wrote:
> Good catch. I'm still installing 12.04 and can't check at the moment,
> but there is an easy way to tell:
> 
> file /bin/sh
> 
> If it points to bash you should be fine, if it points to dash then
> you'll need to reconfigure. Please let me know the results and I'll
> make sure it gets documented either way.

Just to be very clear on this, you do not need to use bash as /bin/sh
with this release, dash should work fine. The instruction was removed
from the documentation since it is no longer necessary.

Cheers,

Richard


