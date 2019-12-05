Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web09.6520.1575535753111412842
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 00:49:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=Fn8N/zag;
 spf=pass (domain: betafive.co.uk, ip: 64.147.123.19, mailfrom: paul@betafive.co.uk)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 0C9489BE;
	Thu,  5 Dec 2019 03:49:11 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Thu, 05 Dec 2019 03:49:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm3; bh=m16cT5GKCC2NFuz1fvkttIBuy8cS
	ZDB7Y85zQlyaTug=; b=Fn8N/zagkI05cqHVnqDeUZvoJjgH6DI60P0iQHzNYXnB
	KMbD+x276BQsfiL564wJJ7K1DVblzT/lwWf1SVaWt0R1mBQtb5bOx8yziEUpZZIM
	GtLs+VFAeqbsrz8IEbLHvVxBJQLd7bankgoJljoJTymmuerlz0nAbat64NUwho6d
	SByPbhAIBsvmmxz63ilUcHKkoHVcoEb9RcVgSlZUpxhEq0J/PXedROZRENkBIKcw
	qxbzFYvuZlRKsR3x2rhx0z+E510/FDsscEL9IcLQCcTVu3fHYF+XklYMYcpdNgGT
	BaufYD8t0spuVqRKY/gmWIM9QN88TnJ5ASb0pjHw/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=m16cT5
	GKCC2NFuz1fvkttIBuy8cSZDB7Y85zQlyaTug=; b=YCs+pnyanq9uJN74UPfLZO
	8LOB1BtxnQrhxjG6c9YKcqORzBo9mYW+fxhGed/FfD2F/qARLbpuWUpMK5mnPmT1
	xH1WTtE8jUvRJB73l7DAo9TIyisTjetvA6eDZT8SpMGMSrv44aNNCzqw4t9QVsVK
	g9Q79ySDMR389zi8WW7549Utnble3tk6wyqDTV8hCPKe/AXc7i5mW/2AdVjTWcKW
	ZLLtUHbgJR782onAJ3KEh2Z4Vr7vmYEARFTfSQDPJ+hlyp55BzfSPfDegsMCePav
	p5odQbUryR0rVtqrfwcFF73aN3JzNxk9ysoVbMw5YjJw5eM6ghr+I1dWSvyjhu2w
	==
X-ME-Sender: <xms:h8ToXQhN9wdSlfSaWpxzoGYNvCr8ByvbYXhYBN5KK-iTAThdbfJvQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudektddguddvfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfrfgr
    uhhluceurghrkhgvrhdfuceophgruhhlsegsvghtrghfihhvvgdrtghordhukheqnecuff
    homhgrihhnpehgihhthhhusgdrtghomhdpshgrnhgtlhhouhgurdgtohdruhhknecurfgr
    rhgrmhepmhgrihhlfhhrohhmpehprghulhessggvthgrfhhivhgvrdgtohdruhhknecuve
    hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:h8ToXSVszmryLfk69FY4JcA_IuQuWAaOWq4JDknyVT7SRXRAaEPg4Q>
    <xmx:h8ToXfUYnx35NxgO1gMZSTy4achghgjFbP3YHy0Ew3_lrIxhO7aRqw>
    <xmx:h8ToXSjdNZSX_gc96cT9m760-6JdutkEAwvtqsB4yyVPe0ZRUT-5Gw>
    <xmx:h8ToXVa88ZA8Y4qCcPZNosl6-T-UkIsjm-cv3ogdF2ZveZSLAgPqZQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 26C78E00A2; Thu,  5 Dec 2019 03:49:11 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <717103ea-e4b3-4e9e-88eb-e31f80eb1cb3@www.fastmail.com>
In-Reply-To: <1725959.xBGxL0dlV4@shodan>
References: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com>
 <CAP71Wjw=1yz2_hbZHCmeCyHTaBqTfWjpHEkBARf+eXbnNtZB3g@mail.gmail.com>
 <1725959.xBGxL0dlV4@shodan>
Date: Thu, 05 Dec 2019 08:48:48 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>,
 "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Cc: "Yocto discussion list" <yocto@yoctoproject.org>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] Missing layer in the layer index
Content-Type: text/plain

On Thu, 5 Dec 2019, at 01:37, Paul Eggleton wrote:
> On Wednesday, 4 December 2019 11:10:49 PM NZDT Nicolas Dechesne wrote:
> > > I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-> > sancloud) is listed in the layer index. I can't see it listed for either
> > > of the branches we support (thud & rocko). However, when I try to add the
> > > layer I get the error message "Layer with this Layer name already exists."
> > >
> > > Perhaps this was already added with an old URL. Is there any way to get
> > > this fixed up?
> > 
> > yes, this is the reason. It exists with the following URL:
> > https://bitbucket.sancloud.co.uk/scm/yb/meta-sancloud.git
> > 
> > The maintainer for that layer is not listed.. was it you?
> 
> Oddly there are no maintainer records and no layer branch records either, 
> hence why the layer doesn't show up properly. I'm unsure how it would have got 
> into that state or how long it's been there, but since it's pretty much 
> useless I have gone ahead and deleted it - Paul, could you please file your 
> submission again?

Thanks for that, it may have got broken in the layer index when we moved the repo from our private Bitbucket instance over to GitHub. I've resubmitted now.

-- 
Paul Barker
