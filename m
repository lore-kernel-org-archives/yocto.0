Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21EABE01429
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 03:56:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 May 2012 03:56:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148907707"
Received: from unknown (HELO helios.localnet) ([10.252.120.40])
	by azsmga001.ch.intel.com with ESMTP; 29 May 2012 03:56:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: marco.monguzzi@exorint.it
Date: Tue, 29 May 2012 11:56:46 +0100
Message-ID: <1825014.hTMMLqSJaD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <OFEE166903.804CCB84-ONC1257A0D.0035DA8C-C1257A0D.00394872@Sitek.it>
References: <OFEE166903.804CCB84-ONC1257A0D.0035DA8C-C1257A0D.00394872@Sitek.it>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Help in building an ad-hoc qte image
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
X-List-Received-Date: Tue, 29 May 2012 10:56:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 29 May 2012 12:25:27 marco.monguzzi@exorint.it wrote:
> let me rephrase for the sake of clearness. 
> This part of recipe: 
> 
> RDEPENDS_${PN}-base_ANOTHERBOARD  = " \
>         libqt-embeddedphonon4 \
>         qt4-embedded-plugin-phonon-backend-gstreamer \
>         "
> 
> has the ultimate goal of adding phonon + gstreamer backend
> for ANOTHERBOARD only to the rootfs.
> It appears ok. We normally do not get indeed phonon + gstreamer backend.
> 
> The issue is that we get contents of 
> meta\recipes-multimedia\gstreamer\gstreamer_0.10.36.bb
> (see original post for listing) in the rootfs and do not get what pull 
> them in.

Ah, right, now I understand the question. So you've asked for task-qt4e-xyz-
base to be installed, and task-qt4e-xyz-base for ANOTHERBOARD RDEPENDS upon
qt4-embedded-plugin-phonon-backend-gstreamer. The "missing link" is that in 
do_package we have some code to analyse shared libraries (.so) that are going 
into a package in order to detect which other shared libraries they need, and 
if any are found we look to see which package provides them and automatically 
add that package to RDEPENDS. Thus we look at the .so files in qt4-embedded-
plugin-phonon-backend-gstreamer and determine from them that gstreamer is 
required, thus gstreamer (along with libgstaudio and libgstvideo) is added to 
RDEPENDS. See classes/package.bbclass if you want to see the code for this 
(look for shlibdeps).

Note that sometimes this highlights problems with package granularity - I 
don't know enough about gstreamer to know if any of the files currently in the 
"gstreamer" package could actually be separated out if they aren't desired in 
some installations. Occasionally as a result we do split packages further to 
avoid unnecessary files being installed for all situations.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

