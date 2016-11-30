Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 082FCE00C41; Wed, 30 Nov 2016 05:18:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4083AE00D01
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 05:18:17 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id c21so328876304ioj.1
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 05:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=OLBjqAMGNIH4yOwjjEcgwxvMMTFCbDy5s+zITtXVDZY=;
	b=GcDKGYJOfM8e09jhEYuA952nRlH3ZygDNwRZEU8O472CwNVnWZVTrQBwrFztw/5dQY
	bK9wsVIaybvnB6vkquz3p6+sEEZYiYvbFKkSNjbmJ/MY/9t/cMnLgAJWJg1Jo3XrRXcY
	zQGj0Jdu7P1FqG/syVCU+nxZRPeYAUR2rVk5hSxhYszdsRd+lQzdk63/RcWjL1+qCotF
	kWWp2gpQhtGXtw+S4ns3/inTHzJQG29mTtaemYvObapXhDEMH6mZi9nE671WL8j7YI8x
	a9IdTTZ3wWG71wzCO2vazhdVm9mh+OmSJlq9w/9Slb22fxhI0JP0dyhnn6GtCmDP6Z3X
	U2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=OLBjqAMGNIH4yOwjjEcgwxvMMTFCbDy5s+zITtXVDZY=;
	b=AN+YZLJHzT6uuOJHV1CXkhwyFrJ7UQBC20XiqLH3jSmAmtZLRYV1haxi2XmJvY98RJ
	rrUau014yhBUSwwqs4dvQq+HI+d6ZCGo2+k789iWg1jyc6zz5+1V6hTUI4KT8pf97cWs
	8DffzCxk5AFDgA7GHy8jc6Y3vVbf9QFCI4JJByvm9M3QBLmu95vG47CgPBoz3JD6MqN/
	QTYimkp1Em53QZ7uZQZZFqPlou2ASsPpix2ZPTieWmASzqD3VrnrQU0PhaWRrd/Gf2H4
	DmxmkdbjTFlvfGdrSfLn720JnS7o8w1l3EvIQL5ae9WFYOOIn+ewtG4qbHGe5T5t5pvc
	/ZNg==
X-Gm-Message-State: AKaTC01NyegjWYyjPi+p90BJAB1TrXFzyuHnGARGdQxMOjNVviBhAXaVdO+Cn0kPjlD8FQFf
X-Received: by 10.36.107.79 with SMTP id v76mr28257047itc.32.1480511895601;
	Wed, 30 Nov 2016 05:18:15 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E1B8.dip0.t-ipconnect.de. [93.232.225.184])
	by smtp.gmail.com with ESMTPSA id p20sm3210861itc.2.2016.11.30.05.18.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Nov 2016 05:18:14 -0800 (PST)
Message-ID: <1480511891.6873.291.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Wed, 30 Nov 2016 14:18:11 +0100
In-Reply-To: <20161128121812.31416-1-git@andred.net>
References: <20161128121812.31416-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] swupd-client: fix invalid directory in do_install_append()
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
X-List-Received-Date: Wed, 30 Nov 2016 13:18:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-11-28 at 12:18 +0000, André Draszik wrote:
> diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-core/swupd-client/swupd-client_git.bb
> index fd4716f..3aed480 100644
> --- a/recipes-core/swupd-client/swupd-client_git.bb
> +++ b/recipes-core/swupd-client/swupd-client_git.bb
> @@ -38,7 +38,7 @@ SWUPD_FORMAT ??= "3"
>  SWUPD_PINNED_PUBKEY ??= ""
>  do_install_append () {
>      # TODO: This should be a less os-specific directory and not hard-code datadir
> -    install -d ${D}$/usr/share/clear/bundles
> +    install -d ${D}/usr/share/clear/bundles
>  
>      # Write default values to the configuration hierarchy (since 3.4.0)
>      install -d ${D}/usr/share/defaults/swupd

I'm about to remove this entire do_install_append.
create_bundle_manifest() in swupd-image.bbclass is what really creates
that directory, and onfiguring the image so that the swupd-client is
usable is part of image creation, not of compiling the client.

For example, different images may need different settings, and that
can't be done with settings compiled into swupd-client because it gets
built only once.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




