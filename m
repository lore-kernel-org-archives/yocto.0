Return-Path: <eha@dev.doredevelopment.dk>
Received: from public.doredevelopment.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id F31B74C811C5
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 04:39:47 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by public.doredevelopment.dk (Postfix) with ESMTP id E24067BBA;
	Thu, 23 Dec 2010 11:39:46 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at dev.doredevelopment.dk
Received: from public.doredevelopment.dk ([127.0.0.1])
	by localhost (public.doredevelopment.dk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id kWicuowZDg-c; Thu, 23 Dec 2010 11:39:40 +0100 (CET)
Received: from [192.168.18.32] (eha.doredevelopment.dk [192.168.18.32])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by public.doredevelopment.dk (Postfix) with ESMTPS id 2165531B;
	Thu, 23 Dec 2010 11:39:40 +0100 (CET)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Cliff Brake <cliff.brake@gmail.com>
In-Reply-To: <AANLkTik3-5x2W+DRTJ9bC0YnUQB9HbvSWEYLSMWLTPjZ@mail.gmail.com>
References: <AANLkTik3-5x2W+DRTJ9bC0YnUQB9HbvSWEYLSMWLTPjZ@mail.gmail.com>
Organization: =?ISO-8859-1?Q?Dor=E9Development?= ApS
Date: Thu, 23 Dec 2010 07:11:46 +0100
Message-ID: <1293084706.2594.5.camel@eha>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: yocto@yoctoproject.org,
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: Multiple Repository support
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
X-List-Received-Date: Thu, 23 Dec 2010 10:39:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 11:09 -0500, Cliff Brake wrote:
> Hello,
> 
> I've started collecting ideas from various emails on multiple
> repository support.
> 
> http://wiki.openembedded.org/index.php/MultipleRepositoryMethods
> 
> Please feel free to update the above page.
> 
> In my mind, this is a key problem we need to solve, not just for
> Yocto/OE, but also for anyone doing product development.
> 
> I've personally been using git submodules for most projects, and repo
> for Android based projects.
> 
> Appreciate any ideas, experiences, or insights into how we solve this problem.

We are using git submodules for just this task in OE-lite.
It works pretty well, but I fear that this will not be the case if a
push model is used for the top repository.

We have partly wrapped the git submodule configuration into a bitbake
parsed configuration file, looking something like:

# OE-lite/core metadata
OE_MODULES                      += "core"
OE_MODULE_PATH_core              = "meta/core"
OE_MODULE_URL_core               =
"git://git.doredevelopment.dk/oe-lite/core.git"
OE_MODULE_PUSHURL_core           =
"ssh://dev.doredevelopment.dk/srv/public/git/oe-lite/core.git"
OE_MODULE_BRANCH_core            = "master"
OE_MODULE_REMOTES_core          += "gitorious"
OE_MODULE_REMOTE_core_gitorious  = "git@gitorious.org:oe-lite/core.git"

So developers get a more complete and consistent submodule setup.

We considered repo, but the KISS principle ruled in favor of git
submodules.  I believe the learning curve is steep enough for any
newcomers to OE, so having to figure out how to master something like
repo also does not seem so attractive.

/Esben

/Esben


