Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 469F1E00519; Mon, 12 Dec 2016 07:32:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 476ADE00503
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:32:56 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id p42so2338696ioo.1
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=mdB2kSRKjXwqpHHmvwmLRkFdifUk8WfyvsrqOWXItIo=;
	b=jf9aMZ3POk1nbVn74Lj7v1zl07y6CBoHCQZwpQQEioooTqBvAxwprqBpMn2R3fiMb8
	p8289EwGfCKsDa3CJdnUQpAcRPUiGDglOFl1d5KQpE3g05u1pcDH2bZePqCn12QQZFX9
	+aIN8foWTGMNNl9up33WkiZqatIfNs9JvKLsAsTmBKcA3ee2lamrsnHQhGEJkqOTtUli
	1w6TwdupgPiiGlItA7Or2Sl/HyKtoLZovzTXf7VPdkOXKVMohCdGwFCJN63JqSMQwCNP
	XnvcJfD5zEhN39Pri7dbXcxQK41Eoso5KeBAfv8VvBkFJHbIq55Ta3oYqZkOC9lvRJac
	G/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=mdB2kSRKjXwqpHHmvwmLRkFdifUk8WfyvsrqOWXItIo=;
	b=T9zFH+7juxNOpWjd/1CXbWwMc48m4jCaa073S7yFbrZ+HIGF4iMDJobK4W6vX+ojK7
	eeeu3/Z5BUc7qVDbi0UZo1yxu6hDLzi9xurJneGhKIi3z89K6rmAKL3jUSe8QjFMOPoK
	e2kqlQ/LoJyX3UjF6qizgeva6hmKh4JnkoIeiTSSEJuR1HrT1OadVBFHvOZ2O+dwMLWB
	zIuqqtT/gkue3GAwNRslELaVlT79ygbO89685mGg90EIBiRX0YTRJSYtONiV4Rr3fr0j
	F5h9DkKN0gnU1YeWLBJtI3w53sAhDzk+NDbLXS01xd2I97yvsozOFUMzeOrVCXj4J84+
	JnaQ==
X-Gm-Message-State: AKaTC03ysBWawep4C515JoipcL2OjGgUOSpyug/4IXqm84vBXG6k7inuW0R/suS2L8LI4TNr
X-Received: by 10.36.61.146 with SMTP id n140mr10112281itn.78.1481556759440;
	Mon, 12 Dec 2016 07:32:39 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E6D1.dip0.t-ipconnect.de. [93.232.230.209])
	by smtp.gmail.com with ESMTPSA id
	d137sm11978628itc.21.2016.12.12.07.32.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Dec 2016 07:32:38 -0800 (PST)
Message-ID: <1481556755.17535.230.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Mon, 12 Dec 2016 16:32:35 +0100
In-Reply-To: <1481555608.2518.10.camel@andred.net>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<1481555608.2518.10.camel@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
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
X-List-Received-Date: Mon, 12 Dec 2016 15:32:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-12-12 at 15:13 +0000, André Draszik wrote:
> Hi,
> 
> On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote: 
> > I'll do the same for swupd. Editing the sections should be possible
> > without conflicts, we just have to be more careful about editing the
> > table concurrently.
> 
> It looks as if some highlights about swupdate can equally be said about
> swupd:
> 
> - dual copy is supported
> - my minimal swupd-based rescue initramfs is around 4MB

swupdate has support for a "dual copy
strategy" (http://sbabic.github.io/swupdate/swupdate.html#software-collections) while out-of-the-box (i.e. with what is currently available) meta-swupd and swupd itself don't. So I think it is correct to say that swupdate has some (implementation) advantage here.

The "could be extended to do updates without that risk" in the
"swupd/Failure resilience" section was meant to include a dual-copy
approach. Should that be rephrased to be more explicit? I was thinking
of several possible scenarios:
      * single partition: stage files, stop services, update, restart
        services or reboot
      * dual partition: update inactive partition, swap partitions,
        reboot

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




