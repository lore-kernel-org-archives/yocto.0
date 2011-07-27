Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B238B4C800A1
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 03:46:18 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6R8kDwe028614;
	Wed, 27 Jul 2011 09:46:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28368-03; Wed, 27 Jul 2011 09:46:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6R8k6Oj028608
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Jul 2011 09:46:07 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
Date: Wed, 27 Jul 2011 09:45:56 +0100
Message-ID: <1311756356.2344.332.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 08:46:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 00:21 -0500, Kumar Gala wrote:
> Who is the best person to ask about adding new BSPs into yocto.  What
> I mean by this is having a meta layer hosted on git.yoctoproject.org
> like meta-intel and the mechanics associated with this (getting new
> repo on git server, autobuilder support, webpage details, etc.).

This list is as good a place as any! :)

Its relatively easy to arrange for a git repository. The main things we
ask are that it has clearly defined maintainership (a clear maintainer
and submission process) and a clear scope. Do you have any specific BSPs
in mind?

The wiki is available to host information and we can work out links on
the website as the specific needs come up. Autobuilder support is
something we need to figure out since its a finite resource but we can
likely figure something out there once we understand what kind of BSPs
we're talking about.

Beth Flanagan <elizabeth.flanagan@intel.com> is the person who'd handle
the mechanics of setting up the repository, the name is likely the
hardest bit!

Cheers,

Richard


