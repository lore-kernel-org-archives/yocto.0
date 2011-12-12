Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8CDEE0030F
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 09:16:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2011 09:16:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101317256"
Received: from unknown (HELO helios.localnet) ([10.252.122.29])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2011 09:16:43 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Mon, 12 Dec 2011 17:16:37 +0000
Message-ID: <3295079.2DL3Md5Ydr@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
References: <1408073.zz37vY4uZy@helios>
	<CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Sanity tested distributions list
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
X-List-Received-Date: Mon, 12 Dec 2011 17:16:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 06 December 2011 15:59:39 McClintock Matthew-B29882 wrote:
> On Tue, Dec 6, 2011 at 9:43 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > We had some discussions [1] [2] about this last cycle but I don't feel
> > we
> > reached a proper conclusion on the list of tested distributions we want
> > to set (SANITY_TESTED_DISTROS) and I assume we want to support a few
> > more distros (latest versions of Fedora & Ubuntu, presumably?). I'd
> > like to update and re- post the patch [3] so we can close bug #1096 [4]
> > but for that we need to agree on the list.
> 
> I'm fairly comprehensively testing something close to the edison 1.1.1
> release on CentOS 5.5 and Ubuntu 10.04 LTS. We plan on adding more but
> maybe not in time for our next release.

I can definitely see a compelling reason to mark CentOS 5.x as supported, but 
the problem with it is it doesn't come with Python 2.6, so BitBake won't work 
out of the box (actually right now it fails before it has a chance to show a 
reasonable error message, which is even worse). We really need a concise set 
of instructions on how to install the external python tarball, at the moment I 
don't think we have these.

Did you need to perform any other special steps on either of these 
distributions?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

