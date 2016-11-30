Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 266D1E00C49; Wed, 30 Nov 2016 07:00:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C173AE00C41
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 07:00:03 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id w63so232133009oiw.0
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 07:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=kRXh85z48yKG+FzqiTPRAoJBujQTs//+I+EEQxNbn5g=;
	b=Hxu+h/qbfqaxx16YXVga1AtYrr1nHlVmKWVlOWrpAEXCnv4IXUVcn8TrF/A94Mex+R
	+ZOAE3m3LtRSI3qFPZFp2m07BdlTNUN68toIOgOAfpUVH8gvEGjCk6c6H6K6uTX+peEr
	PW/J4rNKL/FkMMwWZbOg9B2yMOFbyqvJdTTU1by128o2x4qkzqMcE7nXIUyq90xLrOhD
	5yMjF8HLyZxceq1shW29KL92iCl0FTrBWNeyCqtfEMLaTXjT2qKSVfkWZLQ/h9BwjceK
	F40AjHWcSkYRs6gm+9n+pNJK/dII7B6YzCqeIPsEDEXrXXs5Qp05Emf+LOImvyV33+XI
	4eoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=kRXh85z48yKG+FzqiTPRAoJBujQTs//+I+EEQxNbn5g=;
	b=U+qqDxb3G6gyyz38lE8t/9Gw2H2ExJ0OK4eJ9QqYBG0LUG79L7iT4xmoNeZONENFNc
	bFnegXeUbf/n17g8Dpn58DV7rARV9YTJZbF1vFnJlsvFUW7mLYsfthuTSSO4E1g5YYtM
	vhMAPiQghxzaRaZZz23WZ+vX02hK/3RglxE6Bh47HbMl4HWMOEYkFKEcVhFHbgUWxUct
	8O0RXDXUyrDQ2D0PBNAJOts2Ws+zivJE1+R+pAUwz+9H+SerCcJhhsNI06PlqpwUC9X+
	lZ6R2WGwBeXBo+zh1YdIEoqfU6E8Daka1xXtXxK15KNiNDWcoDHy1sQ0z/hsuhZqcNyt
	GFJg==
X-Gm-Message-State: AKaTC00OGJ8ov/535rP4ZXQqKgi/w0Q96oZ3pL+jiSiHoNrqWm+qNeVjoYfxQnEwBmdt3Jxw
X-Received: by 10.36.34.196 with SMTP id o187mr16696569ito.3.1480518003071;
	Wed, 30 Nov 2016 07:00:03 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E1B8.dip0.t-ipconnect.de. [93.232.225.184])
	by smtp.gmail.com with ESMTPSA id
	w17sm20132053iod.22.2016.11.30.07.00.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Nov 2016 07:00:02 -0800 (PST)
Message-ID: <1480517999.6873.298.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Wed, 30 Nov 2016 15:59:59 +0100
In-Reply-To: <1480516308.13682.1.camel@andred.net>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: update mechanisms (was: Re: [meta-swupd][PATCH] bsdiff: update to latest version)
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
X-List-Received-Date: Wed, 30 Nov 2016 15:00:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-30 at 14:31 +0000, André Draszik wrote:
> On Wed, 2016-11-30 at 12:04 +0100, Patrick Ohly wrote:
> > On Mon, 2016-11-21 at 12:03 +0000, André Draszik wrote:
> > > This allows us to completely remove the build time
> > > depenency on libcheck when not needed, reducing
> > > overall build time, and in addition tests can be
> > > converted into a PACKAGECONFIG to enable them if
> > > needed.
> > 
> > +1
> > 
> > Sorry for the delay, I had to check with Joshua first who's going to
> > merge your patches. I'm currently working on a major update of
> > meta-swupd (see https://github.com/ostroproject/ostro-os/pull/198) and
> > if there's enough interest for using it as part of Yocto, might continue
> > maintaining it.
> 
> Thanks Patrick. Are you saying you would otherwise abandon meta-swupd
> completely, or have it be a part of ostro-os only?

That's undecided. We are currently trying to figure out which update
mechanism is a good fit for Yocto. Depending on the outcome of that and
available resources, we may or may not have the time to support
something.

I've started a Wiki page
https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
moment, but might as well be mentioned already now.

Perhaps you can say a few words about your usage of swupd and what you
liked or didn't like about it? Note that performance will become better
with the upcoming update.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




