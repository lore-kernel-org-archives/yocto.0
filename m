Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 653AB4C800BA
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2011 12:49:07 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2NHn1dJ004288;
	Wed, 23 Mar 2011 17:49:01 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02947-10; Wed, 23 Mar 2011 17:48:57 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2NHmrV4004279
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 23 Mar 2011 17:48:54 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D892FC3.1010306@windriver.com>
References: <C9AE1F25.3EB2F%madison@cisco.com>
	<4D88D2D0.7050202@windriver.com> <4D88D5F6.4020306@gmail.com>
	<4D892FC3.1010306@windriver.com>
Date: Wed, 23 Mar 2011 17:48:51 +0000
Message-ID: <1300902531.3018.41.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
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
X-List-Received-Date: Wed, 23 Mar 2011 17:49:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-22 at 18:24 -0500, Mark Hatle wrote:
> On 3/22/11 12:01 PM, Jeremy Puhlman wrote:
> > On 3/22/2011 9:48 AM, Mark Hatle wrote:
> >> On 3/22/11 11:40 AM, Matt Madison wrote:
> >>> Hi,
> >>>
> >> I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which I do
> >> not have root access.
> >>
> >> For me I was able to simply provide an update python, some additional tools and
> >> it worked.  (Note, I haven't tried it in the last 2 months though, so something
> >> may have broken since then.)
> > 
> > I have noticed of late, pseudo's definition of clone conflicts with my
> > RHEL 4's definition of clone. Aside
> > from that I haven't noticed any significant issues.
> 
> semantics of clone changed between RHEL 4 and RHEL 5.  :(
> 
> The newer version of pseudo (upstream, not yet in Poky) fixes this issue.
> 
> It's still in development, so I wouldn't consider it stable yet -- but the
> reworking of the utility directories is what was needed to identify the differences.

For what its worth, poky master is now moving ahead with new changes so
if you do have updates for master, the tree is open for them.

Cheers,

Richard



