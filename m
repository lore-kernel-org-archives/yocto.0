Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FC994C80050
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 16:44:53 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0F08C16601AB; Mon, 27 Dec 2010 15:44:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1C57F1660177;
	Mon, 27 Dec 2010 15:44:51 -0700 (MST)
Message-ID: <4D1916E3.7020703@mlbassoc.com>
Date: Mon, 27 Dec 2010 15:44:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Pedro Sanchez <psanchez@fosstel.com>
References: <4D191170.20103@fosstel.com>
In-Reply-To: <4D191170.20103@fosstel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing to compile Yocto (acl package)
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
X-List-Received-Date: Mon, 27 Dec 2010 22:44:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/27/2010 03:21 PM, Pedro Sanchez wrote:
> Hello,
>
> I'm trying to compile Yocto from sources as described in the quick start documentation but the build fails as follows:
>
> $ wget http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
> $ tar xjf poky-laverne-4.0.tar.bz2
> $ (edited conf/local.conf to select qemuarm)
> $ source poky-laverne-4.0/poky-init-build-env poky-4.0-build
> $ bitbake poky-image-minimal
>
>
> ... (30 minutes of work)
>
> NOTE: package acl-2.2.49-r0: task do_fetch: Succeeded
> NOTE: Running task 582 of 1621 (ID: 1261, /home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb, do_unpack)
> NOTE: package acl-2.2.49-r0: task do_unpack: Started
> NOTE: Unpacking /home/psanchez/Oven/poky-4.0-build/downloads/acl-2.2.49.src.tar.gz to /home/psanchez/Oven/poky-4.0-build/tmp/work/armv5te-poky-linux-gnueabi/acl-2.2.49-r0/
> ERROR: Task failed:
> NOTE: package acl-2.2.49-r0: task do_unpack: Failed
> ERROR: Task 1261 (/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb, do_unpack) failed with 1
> ERROR: '/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb' failed
>
>
> I tried compiling the Laverne branch on a cloned Poky git repo. It also fails when processing the acl package. Any workarounds? Is there any log file I can look at for more details?

You can find log files in the build directory with a relative
path like .../tmp/work/*/acl*/temp

In particular, look at the log.do_unpack file for clues

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

