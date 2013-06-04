Return-Path: <nobody@cubic.org>
Received: from roasted.cubic.org (roasted.cubic.org [193.108.181.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29D14E006C2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 09:19:42 -0700 (PDT)
Received: from nobody by roasted.cubic.org with local (Exim 4.69)
	(envelope-from <nobody@cubic.org>) id 1UjtxT-0002EJ-Ic
	for yocto@yoctoproject.org; Tue, 04 Jun 2013 09:19:39 -0700
Received: from 87.139.57.5 (SquirrelMail authenticated user michael)
	by mail.cubic.org with HTTP; Tue, 4 Jun 2013 09:19:39 -0700
Message-ID: <0ec7140a16f60fdaeffd2cd2e691e62b.squirrel@mail.cubic.org>
In-Reply-To: <CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<8731013.X4s1gPWXY4@helios>
	<CAAGt+t100v=mrKE4gbJnGqn5ezJADUFwnxdWQ0xzK8SWqyva6g@mail.gmail.com>
	<62291455.6hREtkkLEB@helios>
	<CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
Date: Tue, 4 Jun 2013 09:19:39 -0700
From: michael@cubic.org
To: yocto@yoctoproject.org
User-Agent: SquirrelMail/1.4.19
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Sender: nobody <nobody@cubic.org>
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 16:19:42 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> I think yes. I usually give just *source oe-init-build-env *command, this
> is how i used earlier and failed. May be that is the reason it has created
> another build directory in /poky.

We have a script for that in our build directory that we source and that
calls oe-init-build-env relatively. With that the chance to do a mistake
is minimized. It uses a relative path to oe-init-build-env.
We also use relative paths to all the layers we use in out bblayers.conf.
As reference we use ${TOPDIR}, which is the build directory.

METADIR_BUILDSYSTEMBASE="${TOPDIR}/../buildsystem_base"
BBLAYERS ?= " \
  ${METADIR_BUILDSYSTEMBASE}/poky-dylan-9.0.0/meta \
  ${METADIR_BUILDSYSTEMBASE}/poky-dylan-9.0.0/meta-yocto \
  ${METADIR_BUILDSYSTEMBASE}/poky-dylan-9.0.0/meta-yocto-bsp \
  ${METADIR_BUILDSYSTEMBASE}/meta-openembedded/meta-oe \
  ${METADIR_BUILDSYSTEMBASE}/meta-ti \
  "

The oeenv script is no rocket science and mostly looks like this:
----------[oeenv]-------------
#!/bin/sh
if [ -z "$ZSH_NAME" ] && [ "x$0" = "x./oeenv" ]; then
   echo "Error: This script needs to be sourced. Please run as '. ./oeenv'"
else
# path to poky relative to build dir
   RELPATHTOOEENV="../buildsystem_base/poky-dylan-9.0.0/oe-init-build-env"

   if [ -n "$BASH_SOURCE" ]; then
      _BUILDROOT="`dirname $BASH_SOURCE`"
   else
      _BUILDROOT="`pwd`"
   fi
   _BUILDROOT=`readlink -f "$_BUILDROOT"`

   source "$_BUILDROOT"/"$RELPATHTOOEENV" "$_BUILDROOT"

   unset _BUILDROOT
   unset RELPATHTOOEENV
fi
--------[end]----------


