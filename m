Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE0FEE00B45; Tue,  4 Apr 2017 02:22:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A085E008D0
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 02:22:01 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id a140so25090535ita.0
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 02:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=WcdvoWdR6yVEXZ1p9dYoqDRNzMuGNOh2T1/3tas+1bM=;
	b=LirAD0x0nXcmhx7yyT4c3famUGZN78Y9ueNYsMaFp1ray/4x6koeUP9ir1s+o7Ct8Q
	obCYMmcQ3DaCPUClMJdHkXCBub0ffX+Sa/xUuDlw2zzawmJFyhWW7uzeeXyPIiVsM8OF
	MBblmtI4QE+vHMTERyvz0l05ug5zSoYImcIfmIvoX2pa09y2MRvtjc3Rai+gEZIH9wI4
	WWRfH5PtSVTeFqg8IclLnGDY+/KmjzTnvo6/x1vT1OC1BBUzBNex8O9MyrvyB9wBgcq1
	A1d7N7dY6qdF4Ksscb4ebacDDh2ZLq6i/pR3tacmUswZvx8LaXnLhjDx+sIXsBfBd8EF
	Qniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=WcdvoWdR6yVEXZ1p9dYoqDRNzMuGNOh2T1/3tas+1bM=;
	b=gksF7Cjbq72otS9dKJAGlr2ogN1W5hbR91ii39bbrWj6NmCCgIeca1GuwTVBSm6LKE
	d0OV87hspqQ2cpZJD4mB5FO7/OTTaBdTEK8Rpn3zwfaHhDMfn5dpZzBm5YiQn3FV2/a/
	b+udlCblzljoiiC3f8DKvSWTc1S6/uD0+em8o+27MkVYdmq0HzVJ5L8Rsn2hNWruzVxe
	QwhxGjLqv+4dFVMiDJq9a8appzK0wEtlhKDRE7wgd/mudphehhFAUf4KasCZENTTn6kk
	D5OKD8pw1CIRu81Wn9WYFNhkCz6yDBIySzNP9zW+w5VpTIEk5cD/Ew3l5Ma4iEKAkQRv
	W/Dg==
X-Gm-Message-State: AFeK/H1DW6c75lHlfWsaIwZVeGwEyObXkhkQNAn3fj5sH56HZUH0tHla07eRt6P+7LRWRK0J
X-Received: by 10.36.54.149 with SMTP id l143mr14205095itl.38.1491297721348;
	Tue, 04 Apr 2017 02:22:01 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8DF78.dip0.t-ipconnect.de. [93.232.223.120])
	by smtp.gmail.com with ESMTPSA id
	f130sm8865634iof.2.2017.04.04.02.21.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Apr 2017 02:22:00 -0700 (PDT)
Message-ID: <1491297717.10884.30.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Jaap de Jong <jaap.dejong@nedap.com>
Date: Tue, 04 Apr 2017 11:21:57 +0200
In-Reply-To: <2c388f10-f905-a412-ffa0-08965058b531@nedap.com>
References: <2c388f10-f905-a412-ffa0-08965058b531@nedap.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Custom conf files
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
X-List-Received-Date: Tue, 04 Apr 2017 09:22:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-04-04 at 10:23 +0200, Jaap de Jong wrote:
> Hi,
> 
> I'm just wondering what the best practise is for configuration files 
> that I want to change for a specific image.
> 
> F.i. a simple one: /etc/issue

We just debated the exact same question over on the refkit mailing list,
without a conclusion (so far):
https://lists.yoctoproject.org/pipermail/intel-iot-refkit/2017-March/000007.html

There were two different opinions:
     1. Move config files into their own packages, create alternative
        packages with a different configuration, then in image recipes
        choose which package to install. Before Yocto 2.3,
        update-alternatives had to be used for this, starting with 2.3
        it is a bit simpler because recipe-specific sysroots allow
        different recipes to create packages with the same file (but one
        still cannot do it in the same recipe).
     2. Apply per-image configuration changes during rootfs
        construction. This could be done by dropping in entire files,
        sed expressions, or applying patches.

Personally, I prefer the second approach because it seems simpler,
ideally based on patches. That would have the advantage that there's no
need to keep a copied config file in sync with what upstream is changing
in that same file (i.e. the "I just want to change this one option" use
case becomes easier).

The downside is that it only works in combination with a system update
mechanism that updates the entire OS based on the final rootfs and some
care is needed when allowing local modifications of those same
configuration files (but that's problematic either way).

> I could create a bbappend for the responsible recipe.

That would be a third approach. However, that doesn't scale when
considering that the recipe might have to be used in different ways, and
layers which do that tend to be hard to reuse.

>  Or I could add a 
> ROOTFS_POSTPROCESS_COMMAND and patch in my changes

Yep.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




