Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACEB7E01351
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 09:37:28 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-69-176.range86-170.btcentralplus.com
	[86.170.69.176]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 0C29E9C07
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 17:37:27 +0100 (BST)
Message-ID: <4FDCB647.9080301@r-finger.com>
Date: Sat, 16 Jun 2012 17:37:27 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAEUf8Fv2Xi-wpgXQhc=JRZ1F+9MHDLFacx3PGMp_aAikCNayyg@mail.gmail.com>
In-Reply-To: <CAEUf8Fv2Xi-wpgXQhc=JRZ1F+9MHDLFacx3PGMp_aAikCNayyg@mail.gmail.com>
Subject: Re: how do I prevent a specific package from being built/installed (e.g., bash)?
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
X-List-Received-Date: Sat, 16 Jun 2012 16:37:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 16/06/12 17:24, Anders Roxell wrote:
> See subject.
> Is there some config-file for package-masks (like portage's
> /etc/portage/package.mask)?

Packages are getting installed because something depends on them, so if
you want an image that has different contents than one of the default
images, you will need to create your own custom recipe for it.

You can examine the package dependencies with 'bitbake -g -u depexp <the
image name>'; this does not give you any runtime dependencies that are
automatically calculated from shared library deps, but for something
like bash it will give you enough info to know what is pulling it in.

Tomas

