Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB87EE00D17; Thu,  1 Dec 2016 02:26:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A89DDE00D0E
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 02:26:05 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id g23so33500913wme.1
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 02:26:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=mkISF4STNIvPXeXNscIQjRHy4zRluj7yR5etgREqhng=;
	b=eLJtIDtHBcPt4BzGHMDw6UDtcucSfpcnoCNVGNEr6DEfVbnd7gRs8fMlwsMBKUuUPH
	oZ27tF4iesIZ1cTlX5Qmq5BrmW0+KwnEcsqvpXoA3IFDmW90Xse/EfuPBBhB/oC+U374
	YIzTa0CbyQupBWPKSfleGwFZkzURl6hRN4Vr3sYddeGBZu5Wj5d40agPdWroSKNWDUtA
	3CWoUx3QVbSZsuO++fWqMAYFR7w1DFxJhEwcsTz+ENS96+qI3ZHgFIhj3AB9dkRhCL5/
	H5zBBWW+IrMUMYkh5rI5a5ho7BqgR+p0IdCYYCd+9VHVrjLJqmsdGGXgD1sYXIsd9xLt
	yTIA==
X-Gm-Message-State: AKaTC01filmagdg8vT7A4dntx62Limq+o8LOEQxGysDiJy/kgTbnV8VevTMC9dMChMbTMg==
X-Received: by 10.28.29.23 with SMTP id d23mr13467616wmd.91.1480587964337;
	Thu, 01 Dec 2016 02:26:04 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	i132sm12415336wmf.14.2016.12.01.02.26.03
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 01 Dec 2016 02:26:03 -0800 (PST)
Message-ID: <1480587963.13682.12.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Patrick Ohly <patrick.ohly@intel.com>
Date: Thu, 01 Dec 2016 10:26:03 +0000
In-Reply-To: <1480578170.6873.312.camel@intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<1480526344.13682.8.camel@andred.net>
	<1480578170.6873.312.camel@intel.com>
X-Mailer: Evolution 3.22.2-1 
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
X-List-Received-Date: Thu, 01 Dec 2016 10:26:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-12-01 at 08:42 +0100, Patrick Ohly wrote:
> On Wed, 2016-11-30 at 17:19 +0000, André Draszik wrote:
> > I liked swupd for its ability to be used both for initial provisioning
> 
> You mean installing from the update repository? That's something that
> Clear Linux OS can do with their installer, but nothing like that has
> been tried with a Yocto-based build. That doesn't mean that it can't be
> done, it's just work.

Yes. In our case we can only provision the NOR flash in the factory (which
is too small for the real file system), so I have the swupd-client inside a
small initramfs in NOR flash, and from there I can provision NAND flash
using swupd verify -i

All yocto based, but in its current state not in a generally useful shape
for a wider audience.

> >  as
> > well as for incremental updates. The latter being important when you
> > have
> > *loads* of devices, where it doesn't seem to make sense to download a
> > full
> > image for a tiny change to each device (think cellular!),
> 
> That's indeed one of the strengths of swupd. OSTree comes close in terms
> of some key characteristics (file-based, persistent /etc and /var). It
> would be interesting to know how efficient updating via OSTree is.

True.


A.


