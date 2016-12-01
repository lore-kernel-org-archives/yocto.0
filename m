Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C8C8E00D36; Thu,  1 Dec 2016 06:06:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A575EE00D30
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 06:06:11 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id a124so424401513ioe.2
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 06:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=CBEB8/lr9eVIbyLyFAQ66aRysBNmLFZVZPk+M7J/XlI=;
	b=LSq/UpKcjkhOYE1LtNueFXgQ5Yk3hyxeQiiDc+k+7BDN8p1yCEEFMYW7ZXq5os7uPu
	XflsKoOPPAMxOT+06mIUQ6M3SzPNbCWCVNfHLczLPTgViqTRtNnWoLx0u8pC2osYJDw7
	j6/8iB53zgDRDSbRpSGDcgaGphVip7LVK7yt3WrBpYs+9ynhrm3zQiguq7qdajVG1CiC
	Vi1wx3VjMggRTkrGgLaHR79nBrXqoQeRW9MeQRxlAOaBtttegEeOrIVsrPlBs5ilMjVv
	sNYHoFqgBXyBvwLSBfuHjNd+Et3A/hC2fufvbqH3RtuBkkNVzNV9AhCacuUdp4VNYzK2
	aSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=CBEB8/lr9eVIbyLyFAQ66aRysBNmLFZVZPk+M7J/XlI=;
	b=IcvX4GLyPS/mzB42qOY8A5P2CJUZqWSVdXXnYfa0wIMWXEzed4HajsYsDSpS4exAa8
	tH/4/B4vbSg5p3ECTNvJHG8XFmXutADpiFl1s3H+UrhWNvG7V2KD0FE3BH6t5qXOao2L
	sutCqsour/UkcrP3bB550f47krPLf713EeLy+gaTm0jCa1BdMhw9zDVEV+8awVsOEJhr
	VW0PPMVEq0KDB6ZdKM6t3OcB/N35SBdY2sk2gvQpaZKc+N9uw/MrAK1ld96fK0e1LrJY
	4+NdHfG5RExLku8RJnhVCXPVed2OUsmGely9ZPmFspsO1u0W5C2SrSQeUja21xhk40Ix
	uUnQ==
X-Gm-Message-State: AKaTC01WtW2UzUuw1IUTlaYrHKttFyNZ5qp/SLDEEcrGq3SPPCMtUFXWfpY1jyBVXaZAu1/v
X-Received: by 10.36.130.66 with SMTP id t63mr33204563itd.90.1480601170521;
	Thu, 01 Dec 2016 06:06:10 -0800 (PST)
Received: from pohly-mobl1 (p57A56C74.dip0.t-ipconnect.de. [87.165.108.116])
	by smtp.gmail.com with ESMTPSA id v7sm298940iod.0.2016.12.01.06.06.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Dec 2016 06:06:09 -0800 (PST)
Message-ID: <1480601167.6873.316.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Thu, 01 Dec 2016 15:06:07 +0100
In-Reply-To: <20161121162904.20027-1-git@andred.net>
References: <20161121162904.20027-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH 1/2] oe-swupd-helpers: convert scripts to posix shell
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
X-List-Received-Date: Thu, 01 Dec 2016 14:06:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-11-21 at 16:29 +0000, André Draszik wrote:
> These scripts don't do much and there's no reason for
> them to require bash as interpreter.

Makes sense, I'll submit soon.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




