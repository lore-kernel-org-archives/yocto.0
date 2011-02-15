Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71BCE4C8007E
	for <yocto@yoctoproject.org>; Tue, 15 Feb 2011 03:13:47 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1F9DhKq023276;
	Tue, 15 Feb 2011 09:13:43 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23191-02; Tue, 15 Feb 2011 09:13:39 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1F9DaQl023270
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Feb 2011 09:13:36 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D5950FB.9020809@windriver.com>
References: <1865303E0DED764181A9D882DEF65FB68630C8DA71@shsmsx502.ccr.corp.intel.com>
	<4D5950FB.9020809@windriver.com>
Date: Tue, 15 Feb 2011 09:13:33 +0000
Message-ID: <1297761213.4945.166.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some nightly build failures on autobuilder (on commit b9a97e07, namely, "Revert part of the unpack change...")
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
X-List-Received-Date: Tue, 15 Feb 2011 09:13:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-14 at 09:57 -0600, Mark Hatle wrote:
> On 2/14/11 12:52 AM, Cui, Dexuan wrote:
> > 1)	Building qemumips meta-toolchain-sdk failed: 
> > http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/35/steps/shell_26/logs/stdio
> > eglibc's do_package failed: 
> > ERROR: Error executing a python function in /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-core/eglibc/eglibc_2.12.bb:
> > CopyFailed: Command tar -cf - -C /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/sstate-install-package///package -ps . | tar -xf - -C /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mips-poky-linux/eglibc-2.12-r13/package failed with return value 2
> > 
> > Looks it's related to Mark's recent commit 3e6d91ec, but what's odd is: qemumips failed here while qemux86 and qemuarm are ok... BTW: MACHINE routerstationpro and atom-pc also have the same failure as qemumips.
> 
> I've not seen this error.  The code in question would be located in
> meta/classes/package.bbclass.  There are only a couple of locations in there
> that we switched to the 'tar' method of copying.
> 
> Is there any other error messages in the logs besides the one above?
> 
> If it truly was error "2", then it means "No such file or directory".
> 
> If someone is able to reproduce this, we can figure out if the source or
> destination are missing and how that occurred.

The error is not from package.bbclass, its from a oe.utils.copytree call
in sstate.bbclass and hence from a commit I made in the same spirit as
Mark's changes. What's going wrong I don't know though.

Cheers,

Richard



