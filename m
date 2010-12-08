Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A67114C81233
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 11:47:05 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8Hl4ms025184;
	Wed, 8 Dec 2010 17:47:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25122-01; Wed,  8 Dec 2010 17:47:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8Hktu9025156
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 17:46:56 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE940254AC91@orsmsx504.amr.corp.intel.com>
References: <9DA5872FEF993D41B7173F58FCF6BE940254AA53@orsmsx504.amr.corp.intel.com>
	<1291804501.1554.264.camel@rex>
	<9DA5872FEF993D41B7173F58FCF6BE940254AC91@orsmsx504.amr.corp.intel.com>
Date: Wed, 08 Dec 2010 17:46:45 +0000
Message-ID: <1291830405.1554.721.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: strange bitbake error
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
X-List-Received-Date: Wed, 08 Dec 2010 17:47:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2010-12-08 at 08:29 -0800, Kamble, Nitin A wrote:
> 
> > On Tue, 2010-12-07 at 19:15 -0800, Kamble, Nitin A wrote:
> > >   I am getting following bitbake error. I also tried passing –D
> > option
> > > to bitbake, but I did not find anything useful. Also bellow is the
> > > change which is causing this error.
> > >
> > > I don’t see anything oblivious here. As I understand just changing
> > the
> > > recipe from cvs to git src_uri has caused this issue.
> > 
> > Its probably exactly this change the breaks things. git SRC_URIs have a
> > dependency on git-native. git-native probably depends on
> > gnu-config-native indirectly. The end result is a circular dependency.
> > Bitbake tried to work this out but obviously got lost in the circular
> > logic.
> > 
> Thanks Richard for the clarification. So what would be possible
> solution for this circular dependency issue? I can check if we can get
> the latest gnu-config via cvs. Any other or better solution?

Is there a release tarball we can use? If not, we might end up hosting a
release tarball for it somewhere given this piece of software's position
in the build process.

I'd like to axe our cvs dependency for sure.

Cheers,

Richard


