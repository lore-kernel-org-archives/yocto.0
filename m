Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 352524C800BA
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 11:48:19 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2MGmIIf003539
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Mar 2011 09:48:18 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 22 Mar 2011 09:48:17 -0700
Message-ID: <4D88D2D0.7050202@windriver.com>
Date: Tue, 22 Mar 2011 11:48:16 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Matt Madison <madison@cisco.com>
References: <C9AE1F25.3EB2F%madison@cisco.com>
In-Reply-To: <C9AE1F25.3EB2F%madison@cisco.com>
X-Originating-IP: [172.25.36.233]
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
X-List-Received-Date: Tue, 22 Mar 2011 16:48:19 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 3/22/11 11:40 AM, Matt Madison wrote:
> Hi,
> 

I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which I do
not have root access.

For me I was able to simply provide an update python, some additional tools and
it worked.  (Note, I haven't tried it in the last 2 months though, so something
may have broken since then.)

> I know the documentation mentions that you should be running a “reasonably
> current” Linux as your build host, but in my enterprise environment I’m stuck
> with having to run fairly old versions, based on RHEL 4 and 5.  I’ve got some
> patches that I’ve been maintaining so I can bootstrap Bernard builds on these
> systems.  Is there any interest in supporting older systems as build hosts?  Any
> thoughts on how far back “reasonably current” is going to be with each Yocto
> release?  I’m trying to work with my IT group to upgrade a bit more frequently,
> and for developer workstations, that might be possible, but I’m not sure I’ll be
> able to convince them to do that for servers in our data centers.
> 
> Is anyone else having this kind of problem?

I think this is a fairly typical problem.  In my experience it's usually easier
to solve in a commercial space then pure open source.

As for the question about interest, we're always interested in patches.  At a
minimum, it would be nice to document what steps you had to do and what patches
you may have had to apply in order to get "unsupported" functionality out of the
build environment.  The yocto wiki seems a fairly natural place for this.

So please send what you have, or start an account on the Yocto Wiki and post it
there.

--Mark

> Thanks,
> -Matt
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


