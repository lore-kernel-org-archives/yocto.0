Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4688E00C39; Mon, 12 Dec 2016 07:13:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.194 listed in dnsbl.sorbs.net]
Received: from mail-wj0-f194.google.com (mail-wj0-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FEB7E00C31
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:13:33 -0800 (PST)
Received: by mail-wj0-f194.google.com with SMTP id kp2so12037031wjc.0
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:13:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=2Lg7f+uzEz446G6NAkeRS6y8n+ji548VZ3t6tK7TKF8=;
	b=JC+hWcWuHlkIi0buav7qrNXvYlzPTTY8l4ozfM+deT4VBYfkv5RaL2WvNIcxtq4Pn8
	OvyvjYdMuTL7o3dgJuPPZ7QBFocYqF+DydcfIANQlnVl4ge6dLBHdx+N2K6z5VwdJPes
	C2VpGIFt7+nOpwdypGU/2eLkdyfJOnZ2v/c/OaBvKINL1byDqXmFCekKmELo7S3IfxNh
	etkgz0Ko05OGJXoEQwUTr7rQ6AN8Y7Z3aNG6zOf1kgO1JAJPRg3ty8q6kjI7T7VlJXZu
	StYQfeQ2S7MEjl2scRYvrLVi5kMjz9hrbgnpR0RE2M58CqVaasToh0HBbY8KlMD30FFJ
	E2Lg==
X-Gm-Message-State: AKaTC00vsERIRPuajylqRnAhKp6aKzekrNGJuzGwRil6x/jk9yrQYXK+y/jiseef+vWn6g==
X-Received: by 10.195.8.132 with SMTP id dk4mr77103231wjd.33.1481555612285;
	Mon, 12 Dec 2016 07:13:32 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	g17sm57708277wjs.38.2016.12.12.07.13.31
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 12 Dec 2016 07:13:31 -0800 (PST)
Message-ID: <1481555608.2518.10.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Patrick Ohly <patrick.ohly@intel.com>, Stefano Babic <sbabic@denx.de>
Date: Mon, 12 Dec 2016 15:13:28 +0000
In-Reply-To: <1481017522.17535.38.camel@intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
X-Mailer: Evolution 3.22.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, "Lopez, Mariano" <mariano.lopez@intel.com>
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
X-List-Received-Date: Mon, 12 Dec 2016 15:13:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote:
> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
> > Hi Patrick,
> > 
> > On 30/11/2016 15:59, Patrick Ohly wrote:
> > > I've started a Wiki page
> > > https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> > > moment, but might as well be mentioned already now.
> > 
> > I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
> > like to edit for better explanation on some parts. Should I try to edit
> > directly the page or is it better to discuss it here ?
> 
> Use your own judgment. If its uncontroversial, the feel free to edit the
> page directly, otherwise let's discuss it here.
> 
> If feel that putting information directly into the table is too limiting
> (it should be brief), then feel free to start a complete section about
> SWUpdate. 
> 
> I'll do the same for swupd. Editing the sections should be possible
> without conflicts, we just have to be more careful about editing the
> table concurrently.

It looks as if some highlights about swupdate can equally be said about
swupd:

- dual copy is supported
- my minimal swupd-based rescue initramfs is around 4MB


Cheers,
Andre'


