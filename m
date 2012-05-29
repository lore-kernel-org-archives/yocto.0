Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40A03E01429
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 05:45:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 May 2012 05:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148940149"
Received: from unknown (HELO helios.localnet) ([10.252.120.40])
	by azsmga001.ch.intel.com with ESMTP; 29 May 2012 05:45:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 29 May 2012 13:45:55 +0100
Message-ID: <2169739.jnn1kiU5B4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <CAAQYJAuekXxz8_O_GM3gAcvX0mz+TNFvMeY67Cp_vf3i5bY6Kw@mail.gmail.com>
References: <OFEE166903.804CCB84-ONC1257A0D.0035DA8C-C1257A0D.00394872@Sitek.it>
	<1825014.hTMMLqSJaD@helios>
	<CAAQYJAuekXxz8_O_GM3gAcvX0mz+TNFvMeY67Cp_vf3i5bY6Kw@mail.gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 29 May 2012 12:45:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 29 May 2012 13:43:44 Andrea Adami wrote:
> On Tue, May 29, 2012 at 12:56 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Tuesday 29 May 2012 12:25:27 marco.monguzzi@exorint.it wrote:
> >> let me rephrase for the sake of clearness.
> >> This part of recipe:
> >> 
> >> RDEPENDS_${PN}-base_ANOTHERBOARD  = " \
> >>         libqt-embeddedphonon4 \
> >>         qt4-embedded-plugin-phonon-backend-gstreamer \
> >>         "
> >> 
> >> has the ultimate goal of adding phonon + gstreamer backend
> >> for ANOTHERBOARD only to the rootfs.
> >> It appears ok. We normally do not get indeed phonon + gstreamer backend.
> 
> and btw this doesn't look right to me.
> 
> maybe you meant
> 
> >> RDEPENDS_${PN}-base_append_ANOTHERBOARD  = " \
 
Ah yes, well spotted.

> Finally, it looks like you could easily workaround your problem by
> defining a specific recipe for ANOTHERBOARD.

Except I don't think you will find this includes automatic runtime dependencies 
such as the shlibdeps I described previously.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

