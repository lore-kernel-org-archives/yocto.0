Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EBFFE0070F
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 07:31:07 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Feb 2013 07:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,747,1355126400"; d="scan'208";a="292567173"
Received: from unknown (HELO helios.localnet) ([10.255.13.74])
	by fmsmga001.fm.intel.com with ESMTP; 27 Feb 2013 07:31:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: kevin.strasser@linux.intel.com
Date: Wed, 27 Feb 2013 15:31:05 +0000
Message-ID: <16217672.MMaEsTWZGN@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10 (Linux/3.5.0-24-generic; KDE/4.10.0; i686; ; )
In-Reply-To: <60980.10.254.105.78.1361908609.squirrel@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
	<60980.10.254.105.78.1361908609.squirrel@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 0/4] Webmin updates/fixes
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
X-List-Received-Date: Wed, 27 Feb 2013 15:31:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 February 2013 11:56:49 kevin.strasser@linux.intel.com wrote:
> > The following changes since commit
> > 
> > 6c7948d9ca339caa6647b7e3f20ab82508f0793a:
> >   schroedinger: specify the version of MPL in use (2013-01-03 13:46:02
> > 
> > -0800)
> > 
> > are available in the git repository at:
> >   git://git.yoctoproject.org/poky-contrib paule/webmin-update
> >   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/webmin-up
> >   date> 
> > Kevin Strasser (1):
> >   webmin: correct net-lib.pl patch
> > 
> > Paul Eggleton (3):
> >   webmin: update to 1.620
> >   webmin: tidy up recipe
> >   webmin: fix for changes in OE-Core master
> >  
> 
> This looks great, but I noticed that the nfs-utils recipe in oe-core has
> been updated and is causing our bbappend to break. I went ahead and made
> the update and applied a commit on top of these changes. That addition is
> available in a branch at:
> 
>    git://git.yoctoproject.org/poky-contrib
> strassek/webmin-update_and_nfs-utils

Thanks Kevin, I've now pushed all of these changes to master (with a slight 
tweak to the nfs-utils commit message 1.7.7 -> 1.2.7).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

