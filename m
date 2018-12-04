Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C5DE00C62; Tue,  4 Dec 2018 07:57:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 579BAE003E1
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 07:57:11 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id q18so16491068wrx.9
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 07:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=8QPKwytCj3jAIpGUq3PRM/2l6MTkcA9lEC4UzdCqPWQ=;
	b=KeiRNo/Uy/xr8xpkUaclC5Qj/sIiv3h8/24ft4VF/cje8OYMuOMxmhiDH6NyOgmSIs
	TgIH5VwXQdXW55CgYhEbux/8BTjsrkFIw+1pprx44qLREy0+TcCqKYRua1M9zRcUxNwZ
	oshxpYmX+vd0fxHE0MDf4pdgqsBnhRgikh4Iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=8QPKwytCj3jAIpGUq3PRM/2l6MTkcA9lEC4UzdCqPWQ=;
	b=V8UeuyTwYwVKHPCwW0XkyPDFXcQehXr2ufNwq/yDwjDSOBABIbST7ZBD+pQP2kPfi+
	JhzcIySM84SPViL0tWBg6gYYTH6R2jgaEnFSSvuyPfv+b8bjnqAtoI7NPfllaiVNGLL7
	X1/TBJEFxfH+JloGMrfz9nsQ+0zg3jGvKXl/1cO+jYvpEndVkLz1qGi0V0O8G69j8/ek
	rTXcjklb8YPCZ33MBJ7uDjrp5/K07f2WYdikS2+VXT006P28zWkhNjotFVK4vP68O0Qq
	spvceICPSG2Aa2xHWKPeQ7Xoo5C5z2Uo1Ys7NqFSZ/g53y6Ud7EhXnSzK8EzM8mEYmE9
	JYdA==
X-Gm-Message-State: AA+aEWbfg7ZnSs3T6XflYlZgQVfDZipFT1MqxqD8+SwV2r9RdQHiUUj8
	5LtEjYcho7iGtal4Ib5SZdBbsQ==
X-Google-Smtp-Source: AFSGD/VyjpCFfIil1SNVyYPW05fHjvgG3d1pNiWhSfFBk+hiCz3YgF42hrehFRS9VyGJtVGZATleGA==
X-Received: by 2002:adf:84e4:: with SMTP id 91mr18482657wrg.237.1543939030322; 
	Tue, 04 Dec 2018 07:57:10 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	s202sm10932004wme.40.2018.12.04.07.57.08
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 04 Dec 2018 07:57:09 -0800 (PST)
Message-ID: <41893927b8cee3885c93d3386b77aa9eb14e7cf0.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 04 Dec 2018 15:57:07 +0000
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634CF2AD2@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634CEF595@PGSMSX110.gar.corp.intel.com>
	<5a3e9c82256c75c451d6a406fe5b16db394ff9d7.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634CF2AD2@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.4.4 RC1
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
X-List-Received-Date: Tue, 04 Dec 2018 15:57:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-11-28 at 07:07 +0000, Jain, Sangeeta wrote:
> The test cases run for 2.4.4 RC1 are same as run for 2.4 release. 

Ok, but I'm not sure they're correct. Are the test cases we're talking
about also run for the 2.5 release? I'll explain more below.

> > Thanks for running the QA for this. I do have some
> > questions/observations.
> > 
> > Firstly, this report is a little misleading as there are only two
> > bugs mentioned but 8
> > failures. The full report shows other bugs which were for example
> > reopened or
> > already open.
> In report, only new bugs are mentioned. All the bugs which are
> reopened/already existing are not listed in report mail but can be
> seen in full report.
> However, if its creating any confusion/inconvenience, going forward I
> can mention all the failing bugs in report.

I think it would be useful to have a complete summary of the bugs
found, in particular the reopened ones as otherwise it gives a
misleading view of the release status.

> > Taking the above bugs first, I believe they're both manual versions
> > of tests which
> > are already automated. I believe the automated tests have passed
> > and there
> > appears to be some kind of problem with the manual execution such
> > as the
> > wrong process being documented. I'm not quite sure why these are
> > being run
> > manually? Was the list of manual tests we received from Intel
> > incorrect?
> The list manual test we run for 2.4.4 is same as we run for 2.4
> release. This test case is automated later than 2.4 release and is
> still manual as per 2.4 test plan in Testopia. It's an irony that in
> Yocto Project we don't have any tracking of a test case converting
> into automated in which release, and no system that we can update
> test cases in Dot releases. I am trying to streamline the tracking of
> test case evolution, so as to avoid such scenarios in future.

Taking:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=13033

as an example, I believe the automated version is:

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/prservice.py?h=rocko#n52

which was present in the first 2.4 release.

Its also present in pyro:

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/prservice.py?h=pyro#n54

and morty:
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/prservice.py?h=morty#n51
krogoth:
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/prservice.py?h=krogoth#n52
jethro:
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/prservice.py?h=jethro#n51

so has been there since at least 2.0.

So either I'm wrong about this being an automated version of the test,
or we really shouldn't be running this test manually but it isn't a
problem of changing test criteria between point releases.

I'd also note that nobody from QA has replied to my question in the
bugzilla.

I'm now worrying about what test cases get run for 2.5 and how these
differ from what we run against 2.6 and master and what QA summarised
in the recent documentation of test cases exercise. Perhaps we need to
document the manual test cases in the 2.5 release too to ensure we have
the right set?

Cheers,

Richard


