Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5655E00D03; Wed, 30 Nov 2016 23:43:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A4D8E00CF9
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 23:42:56 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id c21so375290703ioj.1
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 23:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=Nja6Z8iX97q58VVGtqh4zDTufuIyZyGtl8j9sTNZ2uQ=;
	b=ftrEBWPkOmm/RTobJ0M2NBZ5d2HEn90eQH+ckvhCLqoby25QO+Ug4UH6x0BVux5VJE
	DrU+pNHJqH36pA2Us7V3jmCl81HartKqz/3odw9hCe5qtGahW7D8I8hRDN04PMFzBiqc
	v99XmHZP9+5SUc36Hz/Z69UCosX8CcowVQ5AnH32F161dYxtww3mbzMMUqCzsRCWdAfB
	vv7ar2M3vwqoy1ezR1Vcp6kNUI2KjQ2fDO3y6w4sndasBZTZ3tuiheNuDiDWqIwI8TdX
	/H8M0Dh9bJoY+Fdkhmgs2L9qQjgR0z+ukvgBnYe48Ivo3ub+6ERVJlYokNAwwXNTOWWT
	rSBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=Nja6Z8iX97q58VVGtqh4zDTufuIyZyGtl8j9sTNZ2uQ=;
	b=m73zOW63Gf0KgTMew7+/gCXRGmiHNgLZLNb6/0Igb+M+rDOWT0C4aiEbs+4EN+50wh
	5jotK9WyDhlK6KNsK9gW1KBm8AQiEZ0vh3KL9eCe9WEf2vx6VI2oFbx1ybpOPfGhcYOj
	8s5bG4YmjLqqQqvXaAm7W/uNhy/Vq6pbxljka/WQaCrQskfDWF0dqDXYQaQ29t8I4EiW
	1TDMb+CH1BNMuidMoWZVShEaF6AiIvDFr46mYqP6Kdtca9U1XOtRGPfp4TpOBO1VQgpz
	Hyv++SJgUwTZ0sY3uebRwbuCrwDtx6T2E8SfHZWruLiftsk20BO+3Pi7DPkovfUN4taH
	e4Mg==
X-Gm-Message-State: AKaTC01ycBHpQ4R1Q20/Rj9ACftpjKuEHjIMS7FKn8ux3j4I+JAOxwkkr6L3qnnQVHOc/D/v
X-Received: by 10.36.196.86 with SMTP id v83mr32205305itf.86.1480578174299;
	Wed, 30 Nov 2016 23:42:54 -0800 (PST)
Received: from pohly-mobl1 (p57A56C74.dip0.t-ipconnect.de. [87.165.108.116])
	by smtp.gmail.com with ESMTPSA id
	q19sm24744422ioi.36.2016.11.30.23.42.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Nov 2016 23:42:52 -0800 (PST)
Message-ID: <1480578170.6873.312.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Thu, 01 Dec 2016 08:42:50 +0100
In-Reply-To: <1480526344.13682.8.camel@andred.net>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<1480526344.13682.8.camel@andred.net>
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
X-List-Received-Date: Thu, 01 Dec 2016 07:43:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-30 at 17:19 +0000, André Draszik wrote:
> On Wed, 2016-11-30 at 15:59 +0100, Patrick Ohly wrote:
> > I've started a Wiki page
> > https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> > moment, but might as well be mentioned already now.
> > 
> > Perhaps you can say a few words about your usage of swupd and what you
> > liked or didn't like about it? Note that performance will become better
> > with the upcoming update.
> 
> In the wiki or here? I'll be out for the next week, but when I come back I
> will write some more.

Let's discuss here and if necessary, summarize in the wiki.

> BTW, you probably know this: 
> https://lists.linuxfoundation.org/pipermail/automotive-discussions/2016-May/002061.html

I might have seen it at some point, but I hadn't paid that much
attention then and it's a good, timely reminder. I'll link to it from
the Wiki page.

> I liked swupd for its ability to be used both for initial provisioning

You mean installing from the update repository? That's something that
Clear Linux OS can do with their installer, but nothing like that has
been tried with a Yocto-based build. That doesn't mean that it can't be
done, it's just work.

>  as
> well as for incremental updates. The latter being important when you have
> *loads* of devices, where it doesn't seem to make sense to download a full
> image for a tiny change to each device (think cellular!),

That's indeed one of the strengths of swupd. OSTree comes close in terms
of some key characteristics (file-based, persistent /etc and /var). It
would be interesting to know how efficient updating via OSTree is.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




