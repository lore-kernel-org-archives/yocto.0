Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F61D4C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 15:28:29 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JKSQW1004282;
	Tue, 19 Oct 2010 21:28:26 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03964-06; Tue, 19 Oct 2010 21:28:21 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JKSH9B004276
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 21:28:18 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: ke.yu@intel.com
In-Reply-To: <1287498409-12928-1-git-send-email-ke.yu@intel.com>
References: <1287498409-12928-1-git-send-email-ke.yu@intel.com>
Date: Tue, 19 Oct 2010 21:28:11 +0100
Message-ID: <1287520091.16386.3.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PULL] sklogd: correct the syslog link and conf file (bug 482)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 20:28:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-10-19 at 22:26 +0800, ke.yu@intel.com wrote:
> meta/recipes-core/busybox/busybox.inc            |   13 +++-
>  meta/recipes-core/busybox/busybox_1.16.2.bb      |    2
>  meta/recipes-extended/sysklogd/files/syslog.conf |   70 +++++++++++++++++++++++
>  meta/recipes-extended/sysklogd/sysklogd.inc      |    3
>  meta/recipes-extended/sysklogd/sysklogd_1.5.bb   |    2
>  5 files changed, 86 insertions(+), 4 deletions(-)
> 
> Yu Ke (1):
>       sysklogd: correct the syslog link and conf file
> 
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug482

Merged into master, thanks.

Richard



