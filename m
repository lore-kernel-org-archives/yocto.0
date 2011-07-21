Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 231B34C803DB
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 11:37:45 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6LGbYBN002231;
	Thu, 21 Jul 2011 17:37:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01441-05; Thu, 21 Jul 2011 17:37:30 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6LGbOHU002225
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Jul 2011 17:37:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: McClintock Matthew-B29882 <B29882@freescale.com>
In-Reply-To: <CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
	<4E2829B1.7080506@intel.com>
	<CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
Date: Thu, 21 Jul 2011 17:37:21 +0100
Message-ID: <1311266241.2344.81.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Garman <scott.a.garman@intel.com>
Subject: Re: best cfg for building all of yocto?
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
X-List-Received-Date: Thu, 21 Jul 2011 16:37:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-21 at 16:32 +0000, McClintock Matthew-B29882 wrote:
> On Thu, Jul 21, 2011 at 8:29 AM, Scott Garman <scott.a.garman@intel.com> wrote:
> > bitbake world should build all of the available packages that aren't
> > explicitly excluded due to machine incompatibilities. It doesn't generate a
> > final image though, just all of the output packages.
> 
> Is there an easy way to remove a specific package from being built
> with running bitbake world? There are unmet dependencies:
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'libmad'
> ERROR: Required build target 'libomxil' has no buildable providers.
> Missing or unbuildable dependency chain was: ['libomxil', 'libmad']

EXCLUDE_FROM_WORLD_pn-libmad = "1"

should remove libmad from world builds.

Cheers,

Richard


