Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C50A1E00519; Mon, 12 Dec 2016 07:41:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB40E00503
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:41:12 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id p42so2825322ioo.1
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 07:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=MSrtxJ+kx1B8pspCQE+ZqDM46gMYAQ6hL77G+oHQdqI=;
	b=VowyCzl2dKoK8jprfYaVvkbAcCcDX6hi7cAPcCy+J0jJU+A/EknipcGEReU8KKBOo0
	KuRwbD9aNfNXM3VXRLku98fwHhLxpMCYUM3xqYAIqzyN2BgXL/4qqZQc9zRcUIHzpSFt
	6Go/01FDmiGLpyBt6qBnd5RM5ro9bqvgA6gVuk6+BdCusBc/xUTIBXBYHtLKImdqfVtK
	e7b95GKd58NuQWJfPluQh8WjBF3TSP7s++WlFsSI/Ij78uEivOI7QRWY47SVXrK4y2+t
	FbfBeiD2HXV0l033lkMqlgoqNmRfwlpj8Cpu4CSmOIANsbUc3Og5bY7hR1hINaZVaLct
	1FKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=MSrtxJ+kx1B8pspCQE+ZqDM46gMYAQ6hL77G+oHQdqI=;
	b=kIJGfPlcJuswlg/ee3Tz89Y2Wd48gqX4wgKq+apUlUJMKPjZtkKPqJ/H/fgWLYdbKB
	/z5xEVKBC8/NeYhSOTJgGtReeC7dWHGYMYJgbKeT++NzLIx8paVXTZB39s6S3vRCfMr1
	dPKz7kKQejKkK4nIatjVJUiNC/XEVz+wP0Htrlnj3H/77ykg0b90/kA8/gemNXXyYVx5
	n6CUqQ8lAKQrK3+4WhPIWRcVPTFZHBhrWRnPAI34Omj+W+KltSm4f9e1kTK/HU82U303
	XglgJWBPy4ro0w4d73MLYeWP/HRCDJ/5hsPZolZRBgtmzDytaqz1nCGCoZS3DJ/2w9UK
	mfpg==
X-Gm-Message-State: AKaTC01Sqf9RHpnaNgxm35TDQSNn1qkpSPMziUjp1Fo6qlCLyaMZfFvsrnSLq5wKH2gFj7aY
X-Received: by 10.36.22.13 with SMTP id a13mr16334468ita.90.1481557272364;
	Mon, 12 Dec 2016 07:41:12 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E6D1.dip0.t-ipconnect.de. [93.232.230.209])
	by smtp.gmail.com with ESMTPSA id
	i2sm11949828ioe.34.2016.12.12.07.41.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Dec 2016 07:41:11 -0800 (PST)
Message-ID: <1481557268.17535.234.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mariano Lopez <mariano.lopez@linux.intel.com>
Date: Mon, 12 Dec 2016 16:41:08 +0100
In-Reply-To: <f62528f8-aadc-2542-2d2a-96faaa5af01f@linux.intel.com>
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
X-List-Received-Date: Mon, 12 Dec 2016 15:41:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-12-12 at 08:59 -0600, Mariano Lopez wrote:
> >> In particular the "complexity" column is a bit subjective. Stefano, I
> >> hope you don't mind that I did not quite buy the "easy to use"
> >> characterization of swupdate ;-)
> > No worry...and I have not written myself. It was inserted by Mariano, so
> > it looks like that swupdate at least for Mariano is "easy to use".
> > I think it is correct to point out that customization is required.
> 
> Compared to other update mechanism that I tested it was the easier to
> implement.

Which "getting started" document or presentation were you using? The
documentation for mender (https://docs.mender.io/) is very
straight-forward (partly of course because it doesn't need to cover many
variations), while for swupdate
(http://sbabic.github.io/swupdate/swupdate.html) I found it less clear
how to begin.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




