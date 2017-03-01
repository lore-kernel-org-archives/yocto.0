Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1EB9E00726; Wed,  1 Mar 2017 08:48:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A77CCE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 08:47:56 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id f84so33910751ioj.0
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 08:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=LEhOeZU/me1bCfWH4tIIbi0TJXKZmVZYn/zfiuOfdBw=;
	b=N6fTToPtxRnI4pS55kN3z0Hj9t6VjyDUttRl9EsIj6g2nMRL6EX89Sd2wb7Q/VOGU9
	9Xz20vJrJFw5svOlz/MVqHnVVLRmy/BtfrSIxuLlopHsh8xofZynTxXuts81R6RkEqe9
	OHsz26Rds6XMgD4aEyy+ZImUMt0dJlk/4vFPpazL73FhNsHXgPdpg2W0oprsFlhD3Xhp
	xLRB5hMqxeRpfzpwy5n/iKVIDeKp9uciaeKF3ZQIQlIrs/qKLnURcHU0My7AGMhc/HsA
	dpNEY2AbrpyCFz9MEfnDbdxBU0ME4wXC9oAJP60FoJboQthEd9HCU3JRiaMaO/1tJ/08
	5PNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=LEhOeZU/me1bCfWH4tIIbi0TJXKZmVZYn/zfiuOfdBw=;
	b=YNY+fC1khecqwtJZUdIMvHy7ocWNx51+h3TXXtKspmV7FvCoFeGjxZgL7az8ESk8um
	VEDajHvsfIUoQ13okodUBt2Cbl0X7qYAkldALVVpAe/DUUJGr2ETdRPp4x+/Rnl1BVXp
	Xk7tlwFlK+AH6L2ktjzQI5o47KwBiOnAFKTpMXUHE0deakZvoqzVxD05o6ze0fOcCLoB
	iYqI1Zc7/3oudmkOlivUhz9xgvwclSAny8/V/pidKt4bjqqt3XGaRb3QQuePOsrUCTYU
	TBfF/hDrwSVGQWniv2lO6afUT5s+aDHziwREEX0lVoyZhX+rdrETf2wi6/Gr3P4gy9fx
	WwjQ==
X-Gm-Message-State: AMke39nny6/HtFZq3ZGFkS9CnP+x4SstVQvwyJY1PiyOC5wlT9AYfipbzqHpX6RlF240TCc7
X-Received: by 10.107.50.71 with SMTP id y68mr358988ioy.77.1488386875817;
	Wed, 01 Mar 2017 08:47:55 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E037.dip0.t-ipconnect.de. [93.232.224.55])
	by smtp.gmail.com with ESMTPSA id n6sm7112399itb.25.2017.03.01.08.47.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Mar 2017 08:47:54 -0800 (PST)
Message-ID: <1488386871.7785.175.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 01 Mar 2017 17:47:51 +0100
In-Reply-To: <1488384106.24526.36.camel@linuxfoundation.org>
References: <1487625169-22282-1-git-send-email-anibal.limon@linux.intel.com>
	<1488312568.7785.73.camel@intel.com>
	<1488340816.24526.26.camel@linuxfoundation.org>
	<1488352225.7785.83.camel@intel.com>
	<1488381139.24526.30.camel@linuxfoundation.org>
	<1488383463.7785.165.camel@intel.com>
	<1488384106.24526.36.camel@linuxfoundation.org>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCHv2] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Wed, 01 Mar 2017 16:48:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-03-01 at 16:01 +0000, Richard Purdie wrote:
> On Wed, 2017-03-01 at 16:51 +0100, Patrick Ohly wrote:
> > On Wed, 2017-03-01 at 15:12 +0000, Richard Purdie wrote:
> > > 
> > > On Wed, 2017-03-01 at 08:10 +0100, Patrick Ohly wrote:
> > > > 
> > > > Is the "build single distro for different machines" scenario that
> > > > I
> > > > described part of the Yocto Compliance 2.0? Should there be tests
> > > > for
> > > > it?
> > > Right now its not
> > Okay, so the goal is a bit less ambitious than I had thought. I
> > wonder
> > whether that's useful, because at least the problems Ostro and AGL
> > (at
> > least as far as I understood it from lurking on their mailing list)
> > had
> > only happened when trying to combine multiple BSP layers *and*
> > actually
> > using the different machines in the same distro.
> > 
> > > 
> > > but I'd consider it.
> > At least I'd find that useful - not sure about others ;-}
> 
> I do like the idea, I'm also mindful of walking before running...

But bumping the requirements in the Yocto Compliance often will irritate
people, because they will have to redo the compliance testing more
often.

> > >  The question is can we write an
> > > easy generic test for it,
> > It's a bit more complicated than the existing tests, but I think it
> > is
> > doable.
> > 
> > > 
> > > and also clearly phrase the criteria in the
> > > list of compliance questions with a binary yes/no answer?
> > Does the BSP layer only modify machine-specific packages and only
> > when
> > the MACHINE(s) defined by the BSP layer are selected? [yes/no]
> > 
> > The "only when" part is covered by the existing tests (because they
> > keep
> > MACHINE constant). The missing part is comparing different MACHINE
> > sstamps.
> 
> That seems reasonable, unless the layer in question applying for
> compatibility is not a BSP layer but thats a minor detail.
> 
> I'm open to more details on what the test would look like.

I guess I now have the AR to write such a test? ;-}

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




