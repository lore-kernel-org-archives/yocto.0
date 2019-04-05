Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7FBCE00D15; Fri,  5 Apr 2019 01:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9381EE00D07
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 01:19:34 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44bCQr4Kh4z24;
	Fri,  5 Apr 2019 10:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554452372;
	bh=89BjGHk6Yzt6yYPwh0lwi6cjqoNgdkS5NF7X6ZbyOFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c6Y4Kpq3FjYDQ/tWfFJva6pUHmR7TPMzcke2UmTJB4UjgZlj50Wn2ECOXGOqUU/W0
	jb09HfVUgPKq9nSnUq7lxkdPzFhM9qyZUsx+4BrUfCOJlbo596LRAOSFI9d5GuIS1n
	Ge6WD5D5rhMRgls21yBLpLvNdmLAGY7rVk/kJrobtl3+IyscBKb/vOs6ENziOVwvik
	L4eIpdLfwiPhfw8m38SUOeX1rWVjY5ND4y1SgY7E5dPVgg037CNqkwc9YuPFljyh8t
	VflrFEBzjKWe74yWXqMz667NlGHlIpW0U5uAvkZ9vwCFl8EsEHfk4hekZDRB6qwILv
	usetDfQeUyjDWqbYKwMERY98EHkt1QAR7dlxoDhpbut68k+XuTsKXAj8vfY/FZ/wMY
	rgMmIrm61wXQplT7xOYksmPr5KOCSrbXflgD/iy8rATscqIHzK7apO/kwvl7F0li/s
	c4NDzIOCJb6QvaxktXMi3UU+ViLj22wycwq08y8xcdptq52uwHjX1te+AmbnOLD6+q
	CGbrm7zxiSKEl3h9a5X1e87k+5aQ0u7/r+aVxoDXH20lnoI1VDfPKqOT/LPjoSSHmO
	W7VXE/hcC2r0sGUPv7dsseWhki/hRn45DhdEIgZit+KIOCNkJItc5WzTQFdD59+iww
	cEBkc/MR4FUHaWSydrkz2ptc=
Date: Fri, 5 Apr 2019 11:19:30 +0300
From: Adrian Bunk <bunk@stusta.de>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20190405081930.GA22318@localhost>
References: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
	<1554416266-28620-2-git-send-email-akuster808@gmail.com>
	<20190405045951.GA28935@localhost>
	<623dd471-1e89-fdcb-fcc6-deab840731ab@gmail.com>
MIME-Version: 1.0
In-Reply-To: <623dd471-1e89-fdcb-fcc6-deab840731ab@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: add DISTRO_FEATURE sssd
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
X-List-Received-Date: Fri, 05 Apr 2019 08:19:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri, Apr 05, 2019 at 11:05:17AM +0530, akuster808 wrote:
> 
> 
> On 4/5/19 10:29 AM, Adrian Bunk wrote:
> > On Fri, Apr 05, 2019 at 03:47:46AM +0530, Armin Kuster wrote:
> >> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >> ---
> >>  recipes-security/sssd/sssd_1.16.4.bb | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> >> index 34bc8c8..d6a308c 100644
> >> --- a/recipes-security/sssd/sssd_1.16.4.bb
> >> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> >> @@ -16,7 +16,7 @@ SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f
> >>  
> >>  inherit autotools pkgconfig gettext python-dir distro_features_check
> >>  
> >> -REQUIRED_DISTRO_FEATURES = "pam"
> >> +REQUIRED_DISTRO_FEATURES = "pam sssd"
> >> ...
> > Adding a distro feature for a leaf package is wrong.
> Is it a naming issue or something else? I would like to understand so I
> may avoid making the same mistake.

This has nothing to do with naming.
It is about getting rid of workarounds by fixing the root cause,
instead of adding more and more layers of workarounds.

A DISTRO_FEATURE is for cases where PACKAGECONFIG in many recipes should 
be toggled with one setting, or the setting has to be the same in several
recipes.

DISTRO_FEATURES is not appropriate to guard a quick hack workaround for
breakage caused by another workaround.

The problem at hand is that libldb in meta-openembedded was upgraded to 
a version not compatible with the version of samba in meta-openembedded.

As workaroud the libldb shipped in samba was used and installed by 
the samba recipe.

The proper fix would be to upgrade samba to 4.9 or 4.10,
and use the external libldb again.
This would make all problems caused by having two different versions
of libldb disappear.

If this is not possible, it is likely samba that should stop just 
shipping the (older versions of) the conflicting binaries for now.

In a semi-related note, the current samba is a pretty outdated even for
the 4.8 branch and misses several CVE fixes.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


