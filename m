Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE60E013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 05:17:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2013 05:17:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="325937187"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2013 05:17:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 13:17:45 +0100
Message-ID: <5560552.0ejHhnttl9@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <c46460b7-9c66-40f3-9a1c-1be602fb0172@email.android.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
	<c46460b7-9c66-40f3-9a1c-1be602fb0172@email.android.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 12:17:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 April 2013 13:26:37 Anders Darander wrote:
> Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> >After setting MACHINE and adding the meta-gumstix and
> >meta-gumstix-extras path to conf/bblayers.conf and when building again,
> >i get the following:
> >
> >
> >WARNING: gumstix-repo-task: task.bbclass is deprecated, please inherit
> >packagegroup instead
> >
> >   | ETA:  00:00:30
> >
> >Parsing recipes: 100%
> >
> >|##########################################################################
> >|#################################################|>
> >Time: 00:00:37
> >
> >Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 targets,
> >44 skipped, 0 masked, 0 errors.
> >
> >ERROR: No recipes available for:
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networkmanager/
> >networkmanager_0.9.2.0.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/networkm
> >anager/networkmanager_0.9.2.0.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/systemd_git.bba
> >ppend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd/systemd_
> >git.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4
> >.8.1.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/base-passwd
> >_3.5.24.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/rfkill/r
> >fkill_0.4.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bb
> >append
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/vim_7.2.4
> >46.bbappend
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.0.bbappen
> >d
> >
> >ERROR: Command execution failed: Exited with 1
> 
> These are applications whose versions have been upgraded in either OE-Core
> or meta-oe. Thus, you need to update the bbappends in meta-gumstix to match
> the current versions.

Or, use the danny branch of meta-gumstix (if one exists) or poke the meta-
gumstix maintainer to update the bbappends there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

