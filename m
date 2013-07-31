Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7AFDE003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 02:51:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jul 2013 02:49:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,786,1367996400"; d="scan'208";a="379387023"
Received: from unknown (HELO helios.localnet) ([10.252.122.226])
	by orsmga002.jf.intel.com with ESMTP; 31 Jul 2013 02:51:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Wed, 31 Jul 2013 10:51:50 +0100
Message-ID: <1549593.BXXGrf3Qbm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <0a4bf31ea87549a1bf22c3d6e740804a@HERMES.RUSSOUND.com>
References: <0a4bf31ea87549a1bf22c3d6e740804a@HERMES.RUSSOUND.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: recipe dependency on externally built binaries?
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
X-List-Received-Date: Wed, 31 Jul 2013 09:51:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

On Monday 29 July 2013 19:05:04 Brian Karcz wrote:
> I'm curious if there is a way to tell a package recipe that its resulting
> package output is dependent on the pieces it's assembling. The scenario I
> have is as follows. I created a series of recipes that assemble an
> externally built executable, and some configurations files that are local
> to the recipe:
> 
> xyz-app.bb
> 
>     SRC_URI = "file://<path to xyz-app executable> \
>                File://xyz-app.config<File:///\\xyz-app.config>"
> 
>     do_install () {
>         <make the required directories>
>         <put the files in their places>
>     }
> 
> abc-image.bb
> 
>     POKY_EXTRA_INSTALL += "xyz-app"
> 
> This setup works for assembling all the pieces I need, but unless the app
> recipe revision gets bumped, it's not able to tell when the xyz-app
> executable or xyz-app.config get changed and create a new xyz-app package
> file. Is there a way to tell the recipe that there is a dependency for its
> output package on the contents of the SRC_URI line without having to bump
> the revision?

It depends on which version of the build system you are using. In danny (1.3) 
and later a checksum is performed on every local file referred to in SRC_URI 
(and the checksum will be refreshed if the file's mtime changes); if the 
checksum is different then do_fetch for the recipe and all tasks that depend 
upon it should be re-executed.

However, the fact that you refer to POKY_EXTRA_INSTALL suggests you might be 
using an older version of the build system - the current equivalent variable 
is called CORE_IMAGE_EXTRA_INSTALL. Which version are you currently working 
with?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

