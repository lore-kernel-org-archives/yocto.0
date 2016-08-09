Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A36E1E00EA1; Tue,  9 Aug 2016 03:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40149E00E46
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 03:09:44 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id q128so23414810wma.1
	for <yocto@yoctoproject.org>; Tue, 09 Aug 2016 03:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=flhYpSfKnMAcpCDi1pTdz//6ffgRoO2zmDh4HvqKWp0=;
	b=Grl5QIw6Hs9/UrWbwuxxaFd3XhvQN5KI2lxMBFE3Jm2CrAdGA9bVai0rUcZBIFqI5C
	psejgPQnIRHllOaZ6QYHgkpTLGRHXIhSpx3naeLVmwFNdC83ezBppgeUQ9Jp/RW098gW
	UE4PG4P4xHA7LWvRitmBRfgSAEZ7areARzd2v8Vyem896+wEV+e29aHRRXz7l+CHk0Z8
	5efxVPsd6OlDzgrEoJPfkmuyYYRvq421pSM5XCU0rXai6z1G4FN8SUYnUtt+jeBA0Pcc
	jx4VHsxwey3YpadthNk5azbWzJsr/ACxr2YaQ2a5rax6WHMw0bMRNIfimb1f7I8+WI6+
	k4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=flhYpSfKnMAcpCDi1pTdz//6ffgRoO2zmDh4HvqKWp0=;
	b=FL90l1D3ubZFg9sO2DnITSnP2mVdeIntVYpvuPMhoZ7abRL74QTfR4G8V0LoTiy9lH
	RpVjT9yg0mCfUAHjaLNKfNY47LEDo2S3n4TbMNmZhXHz1ZjXExdJJDlwAyCppUzRHe/S
	x77WU5tx7wZbVi2oEdjVgb3NUBFOeQFWNDCjaZmzVqkA/o+44frrehERQBzK3FAvosG6
	MRThN+osRylfiiSZ9hyIJZnEs0zdbQMC1BzpWsL3W6B9JxEbi5fqWxLBeMVRcrI3pida
	TzrGkqjrShev5kib7/kgQvpckK/5EDwsrgL9VUAwRlIRHgV59wXZ9BvZqXabLtedzT+p
	oSOA==
X-Gm-Message-State: AEkoousGJ41LOlH3UhS9rv31fawErMLLzYLDNJoT3FS7I5ee8DaHEY368AO8V8KQg7EFPw==
X-Received: by 10.25.147.197 with SMTP id v188mr31044829lfd.9.1470737382507;
	Tue, 09 Aug 2016 03:09:42 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-130-no126.business.telia.com.
	[213.64.218.130]) by smtp.gmail.com with ESMTPSA id
	d11sm6449582lfe.13.2016.08.09.03.09.41 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 09 Aug 2016 03:09:41 -0700 (PDT)
Date: Tue, 9 Aug 2016 12:09:40 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20160809100940.v6ywy6cekz6plknl@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <1470151429.3175.189.camel@linux.intel.com>
	<5598b740-e529-52a3-91e0-e4b34d2bde01@balister.org>
	<32f35f59-c150-838f-4a53-d7dab0648252@gmail.com>
MIME-Version: 1.0
In-Reply-To: <32f35f59-c150-838f-4a53-d7dab0648252@gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.6.2-neo (2016-07-23)
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 7, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 09 Aug 2016 10:09:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* akuster808 <akuster808@gmail.com> [160803 17:18]:

> On 8/3/16 6:19 AM, Philip Balister wrote:

> > On 08/02/2016 11:23 AM, Jolley, Stephen K wrote:
> >> Attendees: Saul, David Wolfe, Joshua, Belen, Ross, Mark, Bill

> > ....

> >>         Poky - LTS/LTM Branch
> >>         - Community Driven
> >>         - 2 Years
> >>         - Companies continue to push on older branches that they are
> >> interested in.
> >>         - Most patches would be in Oe-Core meta-data
> > This kind of jumped out at me. Can anyone explain why the Yocto Project
> > needs an LTS version of the reference distribution?

> It not so much having an LTS Poky as much as having LTS branches for OE
> core and bitbake. This means Poky would not have to be kept updated nor
> would the Yocto Project need to build or QA the LTS branches.

I'm pretty sure that this is the point Philip was after, that it really
doesn't make sense for Poky.

LTS branches in oe-core and bitbake, OTOH, makes sense, and would be
appreciated by quite some. 

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

