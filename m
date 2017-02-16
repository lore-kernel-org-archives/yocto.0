Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF934E00566; Thu, 16 Feb 2017 07:50:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD86E004A0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 07:50:35 -0800 (PST)
Received: by mail-it0-f54.google.com with SMTP id 203so104466035ith.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 07:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=Kp6i//XuA7pJ9f4C0UN9YCm5/4Vc9rNR9y9o13MPWw0=;
	b=kZ6SSbL56gbT203Ip4MKSLp6qRbXsxu+AWZ5fjcoRkBxeQl1QkZBEmcu9dJVnAdo+F
	iIv3JH+ytYUTTN80sJyL7v+6rfjCO3iF4yMCpLtzHORGhmQ3q+JC8Rl+Ir83otcxHkRr
	bqTn8v7exfjtqeLX4z9GXeRsAQ3lpvxxUe5T/awfD0DVZzDcaGOHrl1y3JlDqSGjTzwK
	eQOcjQq+qZv81DtyXZzLzSMnVxxbV5R6h3RID+5U49nPPNgA8QihduQXRvLjJY6gfq/l
	zy+VXL686HwMTsh0Aqh0mpeD0aYqHsFhfGxkQWleYoBnAsiYcqknokDKQKSPiM8+4DJp
	Fawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=Kp6i//XuA7pJ9f4C0UN9YCm5/4Vc9rNR9y9o13MPWw0=;
	b=Mg+BaGvNjCzlLI3649nzG4SlgNctJlUhGYGvEGeYzIy5voJHLBalEH8u26Oy2lXtiw
	xFs23NTecnlgG2Ajb14bz6P9HFgVS3d4TEeiIO2S+m7dVTm4cagiuQEq7xU7kJ/MsXY/
	QpqUEtXxWtxPwatksrSLbdLRKIidjjOYcHuc1P9vI+KIhfuStEO/PoMzvgHZBwK0xJyh
	pw/Y63SSG5dUN3eBxVVPSyg4qWvllH/4TXPOTKVKg1W3DBjp9/W5doTBtBWaKwVkwsxS
	/nw0yuyO565x9DyvlJpI4/ffAglruAIodCJoHzlSq6VF6jrSD0+4ym7Z9j8H9WbIgRxI
	DTAw==
X-Gm-Message-State: AMke39l0R9+jgd1aKKyjStd+fGW/gjAYEMCxAAw+3Mdl1BHjmU/dP845Q98GD3ZOvPQm7hJK
X-Received: by 10.107.164.147 with SMTP id d19mr2868584ioj.79.1487260234402;
	Thu, 16 Feb 2017 07:50:34 -0800 (PST)
Received: from pohly-mobl1 (p5DE8C6B9.dip0.t-ipconnect.de. [93.232.198.185])
	by smtp.gmail.com with ESMTPSA id
	e139sm3370214iof.54.2017.02.16.07.50.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 07:50:33 -0800 (PST)
Message-ID: <1487260231.13854.471.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Thu, 16 Feb 2017 16:50:31 +0100
In-Reply-To: <1487259700.13854.467.camel@intel.com>
References: <20170216145830.21766-1-git@andred.net>
	<20170216145830.21766-4-git@andred.net>
	<1487259700.13854.467.camel@intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH 3/3] bundles.py: fix copying of full image to full bundle when no SWUPD_BUNDLES
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
X-List-Received-Date: Thu, 16 Feb 2017 15:50:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-02-16 at 16:41 +0100, Patrick Ohly wrote:
> On Thu, 2017-02-16 at 14:58 +0000, André Draszik wrote:
> > When SWUPD_BUNDLES is not set, exceptions are thrown, stopping the
> > build - there are two issues in here:
> > - the debug statement references a non-existent variable, 'bundle' was
> >   renamed to fulltar
> > - copyxattrfiles() needs a list of files as 2nd argument, not a filename
> >   of a file which contains this list
> > 
> > This got broken in commit 6c097131ad39
> > ("meta-swupd: support rm_work.bbclass") while support for rm_work
> > was being added.
> 
> I should have fixed that already in commit 
> 531a8e636 "bundles.py: fix "no bundles" special case". Can you rebase
> onto current master and retest.

Never mind, my bad. The commit you mentioned is after my fix, so in
other words, I fixed it, changed something, and broke it again. Clearly
this whole layer needs automated test cases :-/

Something to do for a maintainer with a bit more time available. There
is https://bugzilla.yoctoproject.org/show_bug.cgi?id=9783 for it, but I
don't think I'll be able to work on that anytime soon.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




