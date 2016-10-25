Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 740A9E00953; Tue, 25 Oct 2016 02:32:22 -0700 (PDT)
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A2DDE00912
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 02:32:18 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id y2so88128595oie.0
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 02:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=XZSaJ5VDqYOiqmLkR1fnCMcDj3rfxVej3CaKyFExzVg=;
	b=I5R4fNUcDFqiZ7YYl4AUYW+NNRjRn5jO2nflQ1JMLTBK4Tv4QYddG2JWeGnNyNqsGS
	SKKt9GVHYvdyaR1k380uaeGrYtgrnqWhjedAEbMDydBJHPauf8fVF71vLhmP7S0TK+zC
	+EHU/jIn4ncN7idpVH2/wZDAIQ43kaQbBNs7Ej84bcV0aY9QL6P+l0boMKWXTx4tRhx9
	ttDWLv1WuVmRMj3woslSyb02khTLb6MrDnPDX1n5Mucbn3rIEAnKnh87JqrmHSjIZG03
	gszuOQVvA7y8EJpA7EFa0qSC6Ktca3KNBVVDcIJgd70e0AD8LBkHw9/oryOT+qjbGRTt
	EB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=XZSaJ5VDqYOiqmLkR1fnCMcDj3rfxVej3CaKyFExzVg=;
	b=gsYBhFonPOEQ023oY7old7wITeEtne8jDeDvRNoZFZDsekSAwWlKZZk67XOucnY/qv
	lNZK+uJvAzyCk6RCPHpVXB4X4MfOQ1AUSoaT9Lf3vA43yNZ4fRV7FQRmRySqbY5e42th
	ZjpXBZds3e21++0SCNLzp8ZGWEKiz8z73F0zwenZqmxBX0wbKvI2Ae2IrFydTnjJ+ObQ
	jZUbRSoTNV3JMwTrwsPUakakLeUNRB/4ECsrfxzHnkt5kSzPFOTc15SF66PYyxwhZh9k
	NKCC94zCWgt7yKevSk6icgpvwhfPZGcerFNepj7EdhhkC5echDvWYbalid8kcC4/lZLu
	jrOg==
X-Gm-Message-State: ABUngvdyA0Xs72MwCPyqTk+fKaTC6TVlkoIEWIKNmK128DxKDv1MxFyuSAgAeqPcs70YQrnz
X-Received: by 10.107.178.137 with SMTP id b131mr17683327iof.175.1477387937382;
	Tue, 25 Oct 2016 02:32:17 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8EF09.dip0.t-ipconnect.de. [93.232.239.9])
	by smtp.gmail.com with ESMTPSA id
	v197sm1002048ita.0.2016.10.25.02.32.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Oct 2016 02:32:16 -0700 (PDT)
Message-ID: <1477387933.21499.74.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Blaettler, Michael" <michael.blaettler@siemens.com>
Date: Tue, 25 Oct 2016 11:32:13 +0200
In-Reply-To: <347AAC56F29ACA4EA31B39C2109A6FE702F12C61@DEFTHW99EH2MSX.ww902.siemens.net>
References: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
	<1477314859.21499.20.camel@intel.com>
	<347AAC56F29ACA4EA31B39C2109A6FE702F12C61@DEFTHW99EH2MSX.ww902.siemens.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: curl-native and ca-bundle
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
X-List-Received-Date: Tue, 25 Oct 2016 09:32:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-10-25 at 05:49 +0000, Blaettler, Michael wrote:
> Hi Patrick
> 
> What do you think of removing the --with-ca-bundle as a solution for
> curl-native? On my machine it works without problems.

What path does it use then? Something that configure determines based on
the current machine (sorry, I'm lazy^Wbusy right now and haven't
checked)?

I suspect that this won't work when moving the resulting lib through
sstate from one Linux distro to another if the location of the bundle
file is different on those two distros.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




