Return-Path: <arigead@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A22EDE017DB
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 10:31:28 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id ez12so4227956wid.5
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 10:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ZZiv0A29xymjI+zSGefDzOkTHj4D3LXsBWA6Kt0hWWQ=;
	b=KZxXRTnXM4V7hjmhUm8PM8I7zLeUD4tuykKRKU2Gvma3lxZqgSdYA5NtYw3wVFfmZL
	YEMtYY05glWw4bGf8ERukY2028tF1k/rasVOuLLYhW1/BwHIYrCE9HNEDCf+ys7IA5aA
	Lu34zrFZThvBHJ4rYiE3crmyKtqFGgm2GAb7s8KaYMgmzT6xtuAxcT/w4aHthROdcN87
	iensJP+rlfN914cx2RH3Mo0o6otI50m6FZQM6SCFwKfiDQVpPMpibDpGMGDo13o3ssOy
	RWRreWETE2Il/IWE1HIoAlbJDNgdNn43ZUOmbKP4VcJe9vYO+MG3fnzvOZRidzOqWlmR
	YpNw==
X-Received: by 10.180.12.14 with SMTP id u14mr3499386wib.63.1383762687252;
	Wed, 06 Nov 2013 10:31:27 -0800 (PST)
Received: from griso.site ([109.77.237.105])
	by mx.google.com with ESMTPSA id q3sm27411259wib.5.2013.11.06.10.31.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Nov 2013 10:31:26 -0800 (PST)
Date: Wed, 6 Nov 2013 18:30:30 +0000
From: John Whitmore <arigead@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Message-ID: <20131106183028.GA2731@griso.site>
References: <20131106102602.GC30011@griso.site>
	<1383746428.18822.91.camel@empanada>
	<1383747173.18822.96.camel@empanada>
MIME-Version: 1.0
In-Reply-To: <1383747173.18822.96.camel@empanada>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: example of Kernel work
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
X-List-Received-Date: Wed, 06 Nov 2013 18:31:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


response inline

On Wed, Nov 06, 2013 at 08:12:53AM -0600, Tom Zanussi wrote:
> On Wed, 2013-11-06 at 08:00 -0600, Tom Zanussi wrote:
> > On Wed, 2013-11-06 at 10:26 +0000, John Whitmore wrote:
> > > Found this nice little document on Kernel work in the yocto build system [1]
> > > it's just a shame that it isn't up to date, to use against the current version
> > > of the build system. 
> > > 
> > > Does anybody know is there a more up to date version of this document? It
> > > might just be me but a worked example is so much cleared then writing about
> > > the process.
> > 
> > I updated the kernel lab for 1.4, and it used to be here:
> > 
> > https://www.yoctoproject.org/training/kernel-lab
> > 
> > I see the kernel-lab layers for 1.4 here:
> > 
> > https://www.yoctoproject.org/training/kernel-training
> > 
> > Which doesn't make sense either - you'd think the layers would go with
> > the (nonexistent) pdf under kernel-lab.
> > 
> > And I don't see either for 1.3 and am wondering how you found it...
> > 

You must blame Google for that one. I was just searching for help on making
Kernel changes. There'll probably be another thread :-(

> > Cc:ing Jefro on this.
> > 
> > 
> 
> OK, well, anyway, until it gets fixed, here's a link to the pdf:
> 
> https://www.yoctoproject.org/sites/yoctoproject.org/files/kernel-lab-1.4.pdf
> 
> And here are the accompanying layers:
> 
> https://www.yoctoproject.org/sites/yoctoproject.org/files/kernel-lab-1.4-layers.tar.bz2
> 
> Sorry for the inconvenience.
> 
> Tom
> 
> > Tom

Thanks a million for your help I'll have a look at those versions.

> > 
> > > 
> > > [1] https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > 
> 
> 

