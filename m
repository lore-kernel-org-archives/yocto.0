Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96B6A4C81206
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 04:35:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8AZFcZ018864;
	Wed, 8 Dec 2010 10:35:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18549-06; Wed,  8 Dec 2010 10:35:11 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8AZ9tt018858
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 10:35:09 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE940254AA53@orsmsx504.amr.corp.intel.com>
References: <9DA5872FEF993D41B7173F58FCF6BE940254AA53@orsmsx504.amr.corp.intel.com>
Date: Wed, 08 Dec 2010 10:35:01 +0000
Message-ID: <1291804501.1554.264.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: strange bitbake error
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
X-List-Received-Date: Wed, 08 Dec 2010 10:35:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Nitin,

On Tue, 2010-12-07 at 19:15 -0800, Kamble, Nitin A wrote:
>   I am getting following bitbake error. I also tried passing –D option
> to bitbake, but I did not find anything useful. Also bellow is the
> change which is causing this error. 
> 
> I don’t see anything oblivious here. As I understand just changing the
> recipe from cvs to git src_uri has caused this issue.

Its probably exactly this change the breaks things. git SRC_URIs have a
dependency on git-native. git-native probably depends on
gnu-config-native indirectly. The end result is a circular dependency.
Bitbake tried to work this out but obviously got lost in the circular
logic.

It did try and warn you with:

"""
> ERROR: Unbuildable tasks were found.
> 
> These are usually caused by circular dependencies and any circular
> dependency chains found will be printed below. Increase the debug
> level to see a list of unbuildable tasks.
"""

Cheers,

Richard




