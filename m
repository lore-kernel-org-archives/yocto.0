Return-Path: <Michael_E_Brown@dell.com>
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
	[143.166.85.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 491B3E0030F
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 10:27:12 -0800 (PST)
X-Loopcount0: from 10.9.160.253
From: Michael E Brown <Michael_E_Brown@dell.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Mon, 12 Dec 2011 12:27:28 -0600
In-Reply-To: <3295079.2DL3Md5Ydr@helios>
References: <1408073.zz37vY4uZy@helios>
	<CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
	<3295079.2DL3Md5Ydr@helios>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1323714448.27202.0.camel@duo>
Mime-Version: 1.0
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 12 Dec 2011 18:27:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-12-12 at 11:16 -0600, Paul Eggleton wrote:
> On Tuesday 06 December 2011 15:59:39 McClintock Matthew-B29882 wrote:
> > On Tue, Dec 6, 2011 at 9:43 AM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > We had some discussions [1] [2] about this last cycle but I don't feel
> > > we
> > > reached a proper conclusion on the list of tested distributions we want
> > > to set (SANITY_TESTED_DISTROS) and I assume we want to support a few
> > > more distros (latest versions of Fedora & Ubuntu, presumably?). I'd
> > > like to update and re- post the patch [3] so we can close bug #1096 [4]
> > > but for that we need to agree on the list.
> > 
> > I'm fairly comprehensively testing something close to the edison 1.1.1
> > release on CentOS 5.5 and Ubuntu 10.04 LTS. We plan on adding more but
> > maybe not in time for our next release.
> 
> I can definitely see a compelling reason to mark CentOS 5.x as supported, but 
> the problem with it is it doesn't come with Python 2.6, so BitBake won't work 
> out of the box (actually right now it fails before it has a chance to show a 
> reasonable error message, which is even worse). We really need a concise set 
> of instructions on how to install the external python tarball, at the moment I 
> don't think we have these.

EPEL has a python26 RPM which works perfectly well if you add a
~/bin/python symlink to python26. No need to compile python from
scratch.
--
Michael



