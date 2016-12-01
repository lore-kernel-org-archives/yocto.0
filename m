Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1672E00D1C; Thu,  1 Dec 2016 03:25:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6097AE00D17
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 03:25:57 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id j65so416452722iof.0
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 03:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=7aERFl4nnlmpGo5IBstxQHZzdZrqS06wCjuVtdboZ1s=;
	b=qvy521t32AaegBXc4Go1AVGBJsXbl38yT+LLepZuDUoKu4kxrhoF99ya11aqouNoRF
	tdp3pqejY+N0i6jlzIDjohe8dClDgjrcGjdomNJKbtV+82Q8K8/m8HbNihSv7VV4hPhd
	qkvTGFBCd8N+bCRkFwAlpaT+k8F2h07N6vEvwKSKRyOLJPN+lOka7g+1AEeFdVTZzgUb
	o45xiEKABs56rHuR2VAzeeSzlpYAyxtNPTPsH1SKSI6GsndT4YcGSvmPiNIPsu4xrM9H
	wQxuk6fsK+hGiYeKccV5ThPeRLhA6vDZuqRRftWZ8mR26s4sXbyJPMg9lWZVawzLn6lW
	kq6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=7aERFl4nnlmpGo5IBstxQHZzdZrqS06wCjuVtdboZ1s=;
	b=LyILR9DoZHRZTd71FQ8L/X/gEmZ/nn2deZ1HP7pv+1Y07XfIJ/HYBhBfb6N2HqNWs3
	PlMDPT42OYTXDP5o1tNGzckeqPYd4O3YzYaGBEy3Z7rsY69SzmDgf0SJe0D7bUJRNPXw
	j3rb4DPnM9vDMerdGI0HE/PYfrGYuo2RqKakBKTwY/iYdWRaw0LlMWhsQ3+4Z9hytbrj
	2sQ44/U3Ey/tDPv0vSMvd0kHXMVD4pNri257nfKhdRnje3Ji5B782x1vPPc4pU3KNqvo
	0BCnS+5ZdD6EzfM4ku7zuCZuUZJcXmn81u1d7klr4eUOja8NGEKLnhi9NpXM3BRl1Bgk
	OebQ==
X-Gm-Message-State: AKaTC01+hzDRuZGGLcCzgMpAOuQs0n4RdFy6jfxlEtedta+QPvu76WurtdrY6KzmEawkbq48
X-Received: by 10.107.138.93 with SMTP id m90mr33349852iod.127.1480591556942; 
	Thu, 01 Dec 2016 03:25:56 -0800 (PST)
Received: from pohly-mobl1 (p57A56C74.dip0.t-ipconnect.de. [87.165.108.116])
	by smtp.gmail.com with ESMTPSA id g96sm94672iod.10.2016.12.01.03.25.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Dec 2016 03:25:56 -0800 (PST)
Message-ID: <1480591553.6873.315.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Thu, 01 Dec 2016 12:25:53 +0100
In-Reply-To: <1480587963.13682.12.camel@andred.net>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<1480526344.13682.8.camel@andred.net>
	<1480578170.6873.312.camel@intel.com>
	<1480587963.13682.12.camel@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: update mechanisms (was: Re: [meta-swupd][PATCH] bsdiff: update to latest version)
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
X-List-Received-Date: Thu, 01 Dec 2016 11:25:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-12-01 at 10:26 +0000, André Draszik wrote:
> On Thu, 2016-12-01 at 08:42 +0100, Patrick Ohly wrote:
> > On Wed, 2016-11-30 at 17:19 +0000, André Draszik wrote:
> > > I liked swupd for its ability to be used both for initial provisioning
> > 
> > You mean installing from the update repository? That's something that
> > Clear Linux OS can do with their installer, but nothing like that has
> > been tried with a Yocto-based build. That doesn't mean that it can't be
> > done, it's just work.
> 
> Yes. In our case we can only provision the NOR flash in the factory (which
> is too small for the real file system), so I have the swupd-client inside a
> small initramfs in NOR flash, and from there I can provision NAND flash
> using swupd verify -i

Interesting, I hadn't thought of using it like that. When doing this,
does it download the "from-0" pack files?

"swupd bundle-add" uses those; I'm less sure about verify. It would have
to detect that it misses all files from the os-core bundle and then as a
special optimization get the pack file instead of individual files.

Speaking of bundles, is that concept something that you find useful for
your purposes? It's not strictly needed for a pure system update
mechanism.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




