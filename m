Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 248914C801DA
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2011 10:35:10 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65FYoo1032729;
	Tue, 5 Jul 2011 16:34:50 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32636-02; Tue,  5 Jul 2011 16:34:46 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65FYfdp032722
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jul 2011 16:34:41 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6A1FA38BB68@shsmsx502.ccr.corp.intel.com>
References: <1309399927.1876.7.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
	<1309400982.1876.10.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BF@shsmsx502.ccr.corp.intel.com>
	<1309403903.24059.8.camel@localhost.localdomain>
	<4E0D0CEE.1000907@linux.intel.com>
	<1309484065.10559.7.camel@localhost.localdomain>
	<1309484869.10559.9.camel@localhost.localdomain>
	<1309488329.10559.12.camel@localhost.localdomain>
	<1309490029.25082.1.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1FA38BB68@shsmsx502.ccr.corp.intel.com>
Date: Tue, 05 Jul 2011 16:34:09 +0100
Message-ID: <1309880049.20015.723.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dependency gui problem
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
X-List-Received-Date: Tue, 05 Jul 2011 15:35:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-01 at 16:44 +0800, Cui, Dexuan wrote:
> NiQingliang wrote:
> > I have changed that code section, and solved my problem, but I don't
> > know if it is the right way.
> > 
> >             if isinstance(event, bb.event.CacheLoadCompleted):
> >                  pbar.hide()
> >                  continue
> >             .......
> >             if isinstance(event, bb.event.ParseCompleted):
> >                  pbar.hide()
> >                  continue
> > 
> > On Fri, 2011-07-01 at 10:45 +0800, NiQingliang wrote:
> >> I have looked the fiel depexp.py, and have some doubt:
> >> 
> >> why in "ParseCompleted", the progress bar will hide, but in
> >> "CacheLoadCompleted", it will not???????
> I guess there should be a ParseCompleted event after the CacheLoadCompleted event(?), but on your host, the ParseCompleted doesn't happen somehow?
> 
> I'm not sure your change is ok, because if it's a generic issue, why can't I reproduce the issue?

I suspect you were always parsing at least one file because you were
using linux-yocto. I have a "fix" pending for that issue as well as the
fix I've added to bitbake to address this specific problem.

Cheers,

Richard


