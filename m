Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B96DFE006B4; Mon, 12 Dec 2016 11:02:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C6D7E00519
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 11:02:42 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id p42so14669906ioo.1
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 11:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=1L3YS5ehdYd2Xe/+BPpw9gQW3FnTfpkyhhgodkH+Aes=;
	b=HhwoEtKKIGuaRs64DKj2HiNnbWpbiN8OILKYxWIye78zoZOV2Ms/MvJ4S4dhHDCNBF
	UIhl666qWK9nk74yMI3BXXBHhof4KoptY8HueG5j65f4LnyIgLcVpOgXiv7JMyC3s4sB
	mTi3+rOa7JdE4GeFX511S7rw4nTroSUhkjzAIB+jF9mciA27+2PGdyDMQ44On1Swxn9B
	tRqM52maLZotRdzlL1tPJvwXHzoa5P4JkPDdJZJuNkB0l3f11HaXDqEBtMlS88sHXOss
	/LyF8B56qwKi6O5UN/UqaYwtIneG2AYeD09Sf6C51oI/DsKk803z07wJNZ9zLZlcg0Ug
	JZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=1L3YS5ehdYd2Xe/+BPpw9gQW3FnTfpkyhhgodkH+Aes=;
	b=mQFQDt8FXkI5osg3lNj8BArFFJ5+mY5iQlF7va3OBDx/dbm6eGjmSrHT5JQ374OUSn
	JfdLUJLoTc2sgMsfSRdVbLK1hp9TmJ/kaWmyjOLrtlJYLqq+iKlOrKAkYEGC82R6I6uh
	X/ZaQNfUSeZKzz6vZU+CCQoxn/g7FgRzufK5RMz9xOfQpAzCId691uqo9cHCwAZK6H8u
	ezN65VwSadyflZlF4716B6dcEdiOblQ/INKJu2rLDMp807eFwLPREOYj3+q9cPuvc0ia
	Nt9WG8ACtseh6xgCmSRZ83DWpl5EBIQBPwh8NYcVVLcQVSxQmckMrqOkgZU7kWhLoM/7
	nxnw==
X-Gm-Message-State: AKaTC02x0HtfwLVsFPd/L4YZ9zAo5YTrJ6QBAHYNhzxQhwiEBdxM+cNVIpkHZN19V2KWWtwf
X-Received: by 10.36.92.145 with SMTP id q139mr11191511itb.107.1481569362225; 
	Mon, 12 Dec 2016 11:02:42 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E6D1.dip0.t-ipconnect.de. [93.232.230.209])
	by smtp.gmail.com with ESMTPSA id
	c36sm12304501itd.18.2016.12.12.11.02.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Dec 2016 11:02:40 -0800 (PST)
Message-ID: <1481569357.17535.247.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mariano Lopez <mariano.lopez@linux.intel.com>
Date: Mon, 12 Dec 2016 20:02:37 +0100
In-Reply-To: <a696ba47-0a02-d90e-d2cd-297a40dd73c4@linux.intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
	<4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de>
	<f62528f8-aadc-2542-2d2a-96faaa5af01f@linux.intel.com>
	<1481557268.17535.234.camel@intel.com>
	<a696ba47-0a02-d90e-d2cd-297a40dd73c4@linux.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org,
	=?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
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
X-List-Received-Date: Mon, 12 Dec 2016 19:02:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-12-12 at 09:49 -0600, Mariano Lopez wrote:
> 
> On 12/12/16 09:41, Patrick Ohly wrote:
> > On Mon, 2016-12-12 at 08:59 -0600, Mariano Lopez wrote:
> >>>> In particular the "complexity" column is a bit subjective. Stefano, I
> >>>> hope you don't mind that I did not quite buy the "easy to use"
> >>>> characterization of swupdate ;-)
> >>> No worry...and I have not written myself. It was inserted by Mariano, so
> >>> it looks like that swupdate at least for Mariano is "easy to use".
> >>> I think it is correct to point out that customization is required.
> >> Compared to other update mechanism that I tested it was the easier to
> >> implement.
> > Which "getting started" document or presentation were you using? The
> > documentation for mender (https://docs.mender.io/) is very
> > straight-forward (partly of course because it doesn't need to cover many
> > variations), while for swupdate
> > (http://sbabic.github.io/swupdate/swupdate.html) I found it less clear
> > how to begin.
> >
> 
> When I did a research in update mechanism, mender wasn't yet available,
> and indeed it seems very straight forward (need to test it before final
> veredict). But if you compare SWUpdate, swupd, and OSTree; SWUpdate is
> by far less complex than the other two

Ease-of-use is not necessarily determined by the complexity. Good
integration and documentation can go a long way towards making a complex
solution easy to use - when sticking to the pre-defined usage patterns.

The opposite is also true: a simple solution may be hard to use if all
one gets is the source code and one first has to reverse-engineer the
usage model.

I agree that the complexity is roughly swupdate < ostree < swupd and
there's also no doubt that the latter two aren't easy to use (mostly due
to lacking documentation and integration), but I'm still not sure what
documentation the "easy to use" verdict for swupdate is based on.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




