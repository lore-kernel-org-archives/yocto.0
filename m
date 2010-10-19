Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 481384C803A5
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 07:02:51 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JC2mPm030563;
	Tue, 19 Oct 2010 13:02:48 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29988-09; Tue, 19 Oct 2010 13:02:44 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JC2dkF030557
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 13:02:40 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Mei, Lei" <lei.mei@intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
Date: Tue, 19 Oct 2010 13:02:35 +0100
Message-ID: <1287489755.1720.1284.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] at: Non root install patch is not necessary (Bug 246)
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
X-List-Received-Date: Tue, 19 Oct 2010 12:02:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-10-19 at 17:07 +0800, Mei, Lei wrote:
> meta/recipes-extended/at/at_3.1.12.bb               |    1
>  meta/recipes-extended/at/files/nonrootinstall.patch |   75 --------------------
>  2 files changed, 76 deletions(-)
> 
> Mei Lei (1):
>       at: Non root install patch is not necessary (Bug 246) Pull URL: 
> 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distro
> 
> commit 22a1491482bdd0b8fe1bac3f89a2b4dad0a94a8c
> Author: Mei Lei <lei.mei@intel.com>
> Date:   Tue Oct 19 14:23:51 2010 +0800
> 
>    at: Non root install patch is not necessary (Bug 246)
> 
>    Removed nonrootinstall patch and modified the file which used this patch
> 
>    Fix [BUGID #246]
> 
>    Signed-off-by: Mei Lei <lei.mei@intel.com>

This change illustrates a problem we need to be very careful to watch
for when doing this. The patch you've removed not only handles root
install but also handles stripping of the binaries.

Note this bit:

-+ifeq ($(IROOT),)
- chown $(DAEMON_USERNAME):$(DAEMON_GROUPNAME) $(IROOT)$(LFILE)
-- test -f $(IROOT)$(etcdir)/at.allow || test -f $(IROOT)$(etcdir)/at.deny || $(INSTALL) -o root -g $(DAEMON_GROUPNAME) -m 640 at.deny $(IROOT)$(etcdir)/
-- $(INSTALL) -g $(DAEMON_GROUPNAME) -o $(DAEMON_USERNAME) -m 6755 -s at $(IROOT)$(bindir)
-+endif
-+ test -f $(IROOT)$(etcdir)/at.allow || test -f $(IROOT)$(etcdir)/at.deny || $(INSTALL) $(INSTALLOWN) -m 600 at.deny $(IROOT)$(etcdir)/
-+ $(INSTALL) $(INSTALLOWN) -m 4755 at $(IROOT)$(bindir)

The -s option is removed from the install command.

Whilst we can remove the user ownership part of the patch, the -s option
needs to remain present as we expect unstripped binaries to be
installed.

Regards,

Richard



