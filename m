Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 707B7E00736
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 02:50:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Feb 2014 02:46:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,547,1389772800"; d="scan'208";a="490033346"
Received: from jgkenna-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.171])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2014 02:50:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Meier, Dennis" <meier.dennis@siemens.com>,
	Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 26 Feb 2014 10:50:51 +0000
Message-ID: <2388138.yKjCEoKfgy@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.3-201.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <6F22A92316C68C42A591A48A6291DA9DD60D59@DEFTHW99EI0MSX.ww902.siemens.net>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E54FA5AC3@fmsmsx111.amr.corp.intel.com>
	<6F22A92316C68C42A591A48A6291DA9DD60D59@DEFTHW99EI0MSX.ww902.siemens.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, February 25, 2014 8:00 AM US Pacific Time
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
X-List-Received-Date: Wed, 26 Feb 2014 10:50:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dennis,

On Wednesday 26 February 2014 09:56:46 Meier, Dennis wrote:
> > * Yocto 1.6 status - 10 min (Stephen/team)
> >
> >  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status
> >  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features
> >
> > YP 1.6 M3 RC2 is about ready for release.  Still working some non-blocking
> > issues for M3.  YP 1.6 > is progressing for release at the end of April.
> > Richard: Could use some more eyes on the new revision of the Bitbake
> > manual located here.  If you have time please review it.
>
> Concerning the bitbake manual at
> http://www.yoctoproject.org/docs/temp/user-manual/user-manual.html: I found
> a small mistake and wanted to create a patch but the user-manual doesn't
> seem to be in the https://github.com/openembedded/bitbake or
> http://git.openembedded.org/bitbake/ repo. What am I doing wrong or where
> can I find this newest version?

I can't tell for sure but It looks like Scott hasn't pushed his changes out 
yet, he's only published the output. Scott, when you get a chance would you be 
able to push a poky-contrib branch with your most recent BitBake manual 
changes in it?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

