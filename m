Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6B764C80205
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 08:23:42 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6FDNd69021517;
	Fri, 15 Jul 2011 14:23:39 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21159-04; Fri, 15 Jul 2011 14:23:35 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6FDNWTj021511
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Jul 2011 14:23:33 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: tom.zanussi@intel.com
In-Reply-To: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
References: <cover.1310689271.git.tom.zanussi@intel.com>
	<f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
Date: Fri, 15 Jul 2011 14:23:30 +0100
Message-ID: <1310736210.20015.1225.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/6] meta-intel: add a couple common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 13:23:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Tom,

On Thu, 2011-07-14 at 19:55 -0500, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The meta-intel BSPs currently have a number of machine settings common
> to all - factor these out into a couple common include files.

For reference common include files are usually placed in
conf/machine/include/. If that happens they also need non-generic
suitably namespaced names, likely including "x86" or "ia32" in this
case.

The benefit is you can then refer to one of these includes from another
layer.

It also means you can refer to them as:

include conf/machine/includes/xxx

in other conf files removing some of the potential path issues.

I do like the cleanup this gives though, this is just a detail! :)

Cheers,

Richard


