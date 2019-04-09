Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 200EBE00D44; Tue,  9 Apr 2019 03:18:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from dawnrocksmusic.com (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE68FE00D11
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dAZJYUaQs8I/3Os+e5SgfbYpCZjCjMRqvr4OlL9Qy9g=;
	b=C8eCNihEhR+TMSTlmTbwTkmlA
	HuXg6htmxZNIx0VJk85w5Sjw3PaLl4JxsMxaxx1EI+AMi9dwELDJDbwXY0bUZO8/YEi5KHybeUk8+
	g5lfYw8zQGeBK5GV7FF3F+o9LYq8ciBlRweUtiMjJ+lpCO9Nhu5MU3xDYGy385NKew2j62FuMW6vR
	9yvW+cOjqS/zcTChfF7GEqJict0+fT0f3r8lqxvxF7+dnWbDRt0uRTsUx1sV2bOk92JrNUI87MxDf
	S9ItqLIvsehCTQaCm56efjxfZlSAS7k39tdLp/B5vbp/sNEd9QRZej9hiQYUbqYZBzw9oHZSxvzKo
	U9hmniYDg==;
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com
	([174.114.57.56]:45492 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hDnpM-00088C-10; Tue, 09 Apr 2019 06:18:04 -0400
Date: Tue, 9 Apr 2019 06:18:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYB0ckHOoXG59NPDY-dkXc7Qf1XUcpjkjXgfw_BqduVxg@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1904090617510.7571@localhost.localdomain>
References: <alpine.LFD.2.21.1904081613420.23184@localhost.localdomain>
	<CAJTo0LYVR2L137Gt5s0-6HUcTKhx=KKwi=Lz_Fgx5nExf5bzQA@mail.gmail.com>
	<alpine.LFD.2.21.1904090613060.7419@localhost.localdomain>
	<CAJTo0LYB0ckHOoXG59NPDY-dkXc7Qf1XUcpjkjXgfw_BqduVxg@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: m4-mative: "Please port gnulib fseeko.c to your platform!"
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
X-List-Received-Date: Tue, 09 Apr 2019 10:18:10 -0000
Content-Type: text/plain; charset=US-ASCII

On Tue, 9 Apr 2019, Burton, Ross wrote:

> On Tue, 9 Apr 2019 at 11:14, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   so, to confirm what i thought, this is a bug in gnulib which
> > suggests i should dig through the build configuration to see where i
> > can, say, set a PREFERRED_VERSION of a newer version of gnulib that
> > no longer has tat bug? or, barring that, just add the appropriate
> > local patch on my end.
>
> No, gnulib is a copy/paste library.  The bug was fixed in gnulib, and
> new releases of m4 are fixed, but you'll need to cherry-pick the fix
> from oe-core master (we apply the patch to our m4 recipe) back to
> whatever stable branch you're using.

  ah, got it, thanks.

rday

