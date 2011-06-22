Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E68A4C800FB
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 16:14:50 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5MLEjCX009267;
	Wed, 22 Jun 2011 22:14:45 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09034-04; Wed, 22 Jun 2011 22:14:41 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5MLEdkR009261
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 22 Jun 2011 22:14:39 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1308285199.git.bruce.ashfield@windriver.com>
References: <cover.1308285199.git.bruce.ashfield@windriver.com>
Date: Wed, 22 Jun 2011 22:14:21 +0100
Message-ID: <1308777261.20015.99.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto/meta-yocto: bump SRCREVs for utrace
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
X-List-Received-Date: Wed, 22 Jun 2011 21:14:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-06-17 at 00:41 -0400, Bruce Ashfield wrote:
> Richard/Saul,
> 
> Updating the SRCREVs to take into acccount the utrace update from
> Tom. With this, the stage is set for systemtap support.
> 
> The following changes since commit 2163461ec94528ecf046a04edc5db3d2dd3a6b8b:
>   Tom Zanussi (1):
>         systemtap: remove non-core COMPATIBLE_MACHINES
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/poky-contrib zedd/kernel
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
> 
> Bruce Ashfield (1):
>   linux-yocto/meta-yocto: update SRCREVs for utrace merge

Merged to master, thanks.

Richard


