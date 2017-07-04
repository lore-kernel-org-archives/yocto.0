Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91FB7E00B8D; Tue,  4 Jul 2017 09:03:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.174 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FBB0E00B3D
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 09:03:10 -0700 (PDT)
Received: by mail-yb0-f174.google.com with SMTP id e201so65229769ybb.1
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 09:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=d4FlQ6XFEP/fv/I0sV6F9DPg5ODgBZmr+7yx4ND0rl8=;
	b=DvsPQBOjy8ym+fQQsvSkOal2YA762UyJuxQwsG/2IT7zwRS6orpp2REJERUufbwVVM
	4nEf/zuSOZAmRYuWYzoRknYy3UIq9ssxMQEwFsfr5t9hLwTLG9G5VZnsHEaY94hZJNJa
	8TUIEh6h8VFWDr0Wzf/zFNSQIqQy9uZCbB64U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=d4FlQ6XFEP/fv/I0sV6F9DPg5ODgBZmr+7yx4ND0rl8=;
	b=E/ksAwnMfhv7vHYOhFX2geyLo4fF1c1is0OU2Upzj1SXuHjrciIroyleyQZ6X8LxWx
	wGvJ1cA6rxPOVth4EYNWMug9P+h+SMfQ0eSLkLcg8D9+UI5gXmnCEPqUfVHzxLl3dIBc
	cz7L9GpaRFIWRVGrUKGZYbJAMSkfVwKBCzh1kzh3P516J4pQy1wz7ShEa+zVzLITheTL
	3uk7MS4Vcv3F3tVxHAUNVQXLAAniyCmARTs4L47lPADwZ5DCvqnnpAP3ON+ncnF3S52C
	uUy5j7UkaT48oAV+xPP6WbMEw5GQQ2OOJnN8VmCHS9xQf8fIkEuqy1zCTiHFrNKQIz+3
	HPNg==
X-Gm-Message-State: AKS2vOwPqoya0nIibD/zO5bJJ8yKt7gPLP9+Ez1BloZHrX/CdjMUFGoA
	fszLxBqIzUB1StZPRJET/g==
X-Received: by 10.37.4.208 with SMTP id 199mr33304863ybe.133.1499184189885;
	Tue, 04 Jul 2017 09:03:09 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	b188sm8046671ywe.50.2017.07.04.09.03.09
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Tue, 04 Jul 2017 09:03:09 -0700 (PDT)
Date: Tue, 4 Jul 2017 12:03:58 -0400
From: Tom Rini <trini@konsulko.com>
To: Anders Montonen <Anders.Montonen@iki.fi>
Message-ID: <20170704160358.GJ9889@bill-the-cat>
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
	<CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
	<AD70DBFD-84A9-44DF-8DCB-1C25BBF0F351@iki.fi>
	<20170622120832.GS27196@bill-the-cat>
	<alpine.DEB.2.11.1706291347560.1790@lakka.kapsi.fi>
	<20170630013506.GI9889@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20170630013506.GI9889@bill-the-cat>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: AppArmor
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
X-List-Received-Date: Tue, 04 Jul 2017 16:03:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 29, 2017 at 09:35:06PM -0400, Tom Rini wrote:
> On Thu, Jun 29, 2017 at 01:56:22PM +0300, Anders Montonen wrote:
> > Hi Tom,
> > 
> > On Thu, 22 Jun 2017, Tom Rini wrote:
> > >
> > >I did fix the latter of these (along with the perl problem), but I'm
> > >using sysvinit and needed apache2 in my project anyhow.
> > 
> > Your commit fixes most of the problems, but /usr/bin/aa-easyprof
> > still gets installed with a shebang referring to the host python3
> > interpreter. The script is processed and installed by
> > utils/python-tools-setup.py, which captures whatever $PYTHON is set
> > to at the time.
> 
> Oh thanks!  I'll v2 things shortly with that fixed up.

So, FYI all, here's where I'm at.  Fixing up aa-easyprof for the shebang
part is easy as there's a few other cases around of "manually correct a
shebang".  But this exposes another problem of needing to basically
RDEPEND on python3-modules as not only does apparmor depend on a few
different core modules but the core modules themselves do not have
correct interdependencies.  As it stand today for perl this is handled
by some very fragile looking shell expressions that get re-run per perl
upgrade.  I don't think I can come up with the equivalent for python.
So my local version also has this just saying we need all of
python3-modules to be installed, and then it works.

I've also fixed up some minor logging issues in the sysvinit script
(which I know isn't a concern for Anders as he's using systemd, but just
being complete).  I will post another version in a few days just so
others can have functioning apparmor if they want it, at least until
Armin speaks up.

-- 
Tom

