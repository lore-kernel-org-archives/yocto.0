Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FF38E009C9; Fri, 10 Mar 2017 06:21:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79D6E009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:20:46 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id g138so8706055itb.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=LsPHaD5qXD+6Jnz8+fh3fF5jfrL26p5WW4JLx+Avscs=;
	b=cW+ONbnJ7ocEYK41Msg0qTJsm7CtPE8qhs7m9aEpdvDAkPSQPoTELsdCjucBvQkdDS
	8B+KVZQkahBCYbGggKk0xopNdzF67hiPcouD1b3811U6AQW+jKVW1iS+i8zHkjqmF4Ni
	WiUwh45cWTzTtcT9R2Zl9agKcFzEDIFtJojHgPyny2LC+ESoGrMB4xEZkOgpxVE89InO
	Y2SfNmdBPqnyVOY94vIsH/8wMDeEdxB3LtCbVVAKoTd3OoTXTn8hbuiTZExsMEQL10Xn
	ooxKm27e5YQqh0QxZsXiDTtDJSOwQGU7wOQn77NhvRG3ebwVTtKJa9fvEwelmZTcCncO
	XqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=LsPHaD5qXD+6Jnz8+fh3fF5jfrL26p5WW4JLx+Avscs=;
	b=i4RIZBguOhXVxbnw+R19yaBHT7mEcM70tmcvailTj54UV27s/l9guGuRVt+4z5ZMFT
	jVgpyaZwNGmX3neYdozeWwsI0O5OpdD6FAl8Wei10MGMbfcWIwb3xjVjGbeYqzrcwR5t
	psqLFlPHZFs/j2c1Y7j6hYPRMKj7MetOtnnDzmjTq0ZF0GW/+cFRFb6G63UQcsvD9a3M
	zW2+wrgIYWQjjsSTgQdWhrgeGom4zTsGd85pB4iqPYlLKOEYm9za3+GPeDDbLOJ0jsJ0
	dWSO4rswKa2GFl+d03oxyE3sgqXPxbu6hMYWj0CEocYBR1SSonJUCnZ0ISgRwfONSAqT
	TAoA==
X-Gm-Message-State: AFeK/H0Xlafegk39hCptxe6IPxCFvH7C88EM31I36v6dFGnkjmnYT1NSfawKfZhBhYqG3SLr
X-Received: by 10.36.252.197 with SMTP id b188mr2164633ith.53.1489155645533;
	Fri, 10 Mar 2017 06:20:45 -0800 (PST)
Received: from pohly-mobl1 (p5DE8DCF9.dip0.t-ipconnect.de. [93.232.220.249])
	by smtp.gmail.com with ESMTPSA id
	i96sm4414988iod.46.2017.03.10.06.20.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 06:20:44 -0800 (PST)
Message-ID: <1489155642.7785.456.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Kristian Amlie <kristian.amlie@mender.io>
Date: Fri, 10 Mar 2017 15:20:42 +0100
In-Reply-To: <0135756b-1d20-a743-4f82-8f45becea106@mender.io>
References: <7d589da5-ff5b-3cdc-d0e7-fd2289363c98@mender.io>
	<c8f87996-c9e4-97ba-3ba8-be9c9260e094@mender.io>
	<1489150958.7785.436.camel@intel.com>
	<0135756b-1d20-a743-4f82-8f45becea106@mender.io>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org,
	Eystein =?ISO-8859-1?Q?M=E5l=F8y?= Stenberg <eystein@mender.io>
Subject: Re: update mechanisms
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
X-List-Received-Date: Fri, 10 Mar 2017 14:21:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-03-10 at 14:35 +0100, Kristian Amlie wrote:
> On 10/03/17 14:02, Patrick Ohly wrote:
> > On Wed, 2017-03-01 at 16:35 -0800, Eystein Måløy Stenberg wrote:
> >> On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote:
> >>> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
> >>>> Hi Patrick,
> >>>>
> >>>> On 30/11/2016 15:59, Patrick Ohly wrote:
> >>>>> I've started a Wiki page
> >>>>> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> >>>>> moment, but might as well be mentioned already now.
> >>>>
> >>>> I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
> >>>> like to edit for better explanation on some parts. Should I try to edit
> >>>> directly the page or is it better to discuss it here ?
> >>>
> >>> Use your own judgment. If its uncontroversial, the feel free to edit the
> >>> page directly, otherwise let's discuss it here.
> >>>
> >>> If feel that putting information directly into the table is too limiting
> >>> (it should be brief), then feel free to start a complete section about
> >>> SWUpdate.
> >>>
> >>> I'll do the same for swupd. Editing the sections should be possible
> >>> without conflicts, we just have to be more careful about editing the
> >>> table concurrently.
> >>
> >> I updated the Mender part of the wiki now that the stable version Mender 
> >> 1.0 is released. These changes should not be controversial, but let me 
> >> know if you disagree. We are planning to keep the Mender section 
> >> up-to-date as we release new versions, as I think this is what you expect.
> > 
> > Yes, that's useful.
> > 
> >> Are there any plans for next steps or is the wiki the "final state" in 
> >> terms of integrating OTA updates in Yocto/OE?
> > 
> > My own conclusion is that it is impossible to integrate a specific OTA
> > update into Yocto/OE (because there's no single solution that fits all
> > requirements) and/or it would be unfair to those solutions that don't
> > get such special testing. In that sense the Wiki page is the final
> > result of the investigation. Anyone interested in picking a solution can
> > go there, consider the pros and cons, and then make a choice.
> 
> Makes sense. We can always revisit this at a later point, if one method
> starts to emerge as the preferred option for most people.
> 
> > However, I see room for some collaborative work that then can happen in
> > Yocto/OE:
> >       * carrying local system configuration changes across system
> >         updates: I find it promising to investigate the "stateless"
> >         concept and have started some exploratory work, see
> >         https://wiki.yoctoproject.org/wiki/Stateless#Status_and_goals_for_.22stateless.22_in_Yocto (more on that soon)
> 
> What's the relation (if any) between this and a read-only rootfs?

/etc needs to be on the read/write partition. What "stateless" adds is
that there's no need to pre-populate that read/write part. That is done
during first boot, potentially even during each boot (no persistent
state at all).

In addition, factory reset can be done by simply wiping out /etc.
When /etc contains a mix of pre-populated files which are essential for
booting and local modifications which must be wiped out, that part
becomes harder.

In an ideal world, the OS would work entirely without files in /etc. We
don't live in that world (yet).

> Also this may be only vaguely related, but I have it in my queue to
> finish the built-in partitioning of rootfs images [1], which will help
> divide the filesystem into a stateful and a stateless part. The wic part
> is done [2], but ext4 images are not covered yet.

This is still useful, for example to pre-populate content than then
never gets touched anymore by the OS. I'm thinking of pre-installed apps
here, where app update/add/remove is done normally done independently of
the OS.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




