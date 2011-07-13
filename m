Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 953084C800A9
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 21:08:20 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jul 2011 19:08:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,523,1304319600"; d="scan'208";a="25183683"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga002.jf.intel.com with ESMTP; 12 Jul 2011 19:08:19 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jul 2011 19:08:14 -0700
In-Reply-To: <1310519752.2527.20.camel@localhost.localdomain>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310522900.2162.26.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Wed, 13 Jul 2011 02:08:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-13 at 09:15 +0800, NiQingliang wrote:
> I think Archlinux is the preferred choice.-_-
> Just joke.
> 
> I doubt why the bitbake need python2.x but just use /bin/env python. I
> think If it need a specific version python, it should write it in the
> shebang. e.g. /bin/env python2.6

I looked at this but not enough of the distributions we care to support
have a python2.6 binary:

joshual@scimitar:~
$ /usr/bin/env python2
Python 2.7.1 (r271:86832, Apr 12 2011, 16:16:18) 
[GCC 4.6.0 20110331 (Red Hat 4.6.0-2)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> 
joshual@scimitar:~
$ /usr/bin/env python2.6
/usr/bin/env: python2.6: No such file or directory

I'd love to support Arch more thoroughly but they aren't making it easy
for us ;-)

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


