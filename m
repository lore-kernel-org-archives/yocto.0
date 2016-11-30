Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C168E00C22; Wed, 30 Nov 2016 03:04:26 -0800 (PST)
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
	*      [209.85.223.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEC27E00C1A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 03:04:23 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id c21so323689873ioj.1
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 03:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=C6RJjQk5496NH7WD2Qg4uExjfLd47WCmWol184CuqpY=;
	b=vfVcDfRxRz5A+c19dmrjL5zLkykRR1gBi3lOudTcDbADJd4lZ45BJIG4FwbDYY+Ee/
	2emSHRZLjKbZ4g57Mej9AfF5TxBzTtDMoSUniDYLx+4OfuD1wachzxcCSeDjSjItFE7Q
	ceKoaY0QChuXFl8xB6TvBhEn5cZwg5o+uZYLt6gCRLDKtOSTzNGgRec6+dwLPQIHG+9E
	gKyTfCQ9Id5bo8E2OKDSmvOc1rc/VyB48IBOsh1gkaPmc21qV0+0jCa0yTR1jOlaspum
	gn5jyVIn7oT24siJQHar8tPk2UvlCuQeg9rg86wG1dw/7sjYfpSMkCzCwvfCZxYYmFfW
	0wJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=C6RJjQk5496NH7WD2Qg4uExjfLd47WCmWol184CuqpY=;
	b=AhlGELyTCHmuKkQKiBqCBFhfLIEc77LXESw0aLorlFtKyHedKyBf8BmlPYffzzc1VF
	bmaQGGOiWBQcChqTUzchilcdZcSWQswZ9JTk4sPNQZa8k88tPSU+/cND8SoPIBI6CF17
	OT/UTCMDwayyHrnIAGkBMUDk09xLcf7kFA8ZgCOQkiAA8Pi08tap1rbiQmnEdkT8uUJT
	gFq9+Z29ZbNTpl+RcSW2ALfb0hZNTUV1i+ne+nqxqXWjaoJUXoF/YNeItMbcpizC+p9a
	hVTAA74JEaWCRzmXwMJrRws2+uSc3l5SL0j6ytaoi2b3fJT+44uwDUzrHy2eBpXpCrFC
	MAIQ==
X-Gm-Message-State: AKaTC03QCrTd7av6GB0w7Ib0tLwyneSrcFiJBe9zhExzoDTjYZJSrA0zNFjmAEJjgy4vGCS7
X-Received: by 10.36.139.197 with SMTP id g188mr28067282ite.68.1480503862619; 
	Wed, 30 Nov 2016 03:04:22 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E1B8.dip0.t-ipconnect.de. [93.232.225.184])
	by smtp.gmail.com with ESMTPSA id
	e202sm23168006ioe.27.2016.11.30.03.04.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Nov 2016 03:04:21 -0800 (PST)
Message-ID: <1480503859.6873.280.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Wed, 30 Nov 2016 12:04:19 +0100
In-Reply-To: <20161121120355.18309-1-git@andred.net>
References: <20161121120355.18309-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] bsdiff: update to latest version
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
X-List-Received-Date: Wed, 30 Nov 2016 11:04:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-11-21 at 12:03 +0000, André Draszik wrote:
> This allows us to completely remove the build time
> depenency on libcheck when not needed, reducing
> overall build time, and in addition tests can be
> converted into a PACKAGECONFIG to enable them if
> needed.

+1

Sorry for the delay, I had to check with Joshua first who's going to
merge your patches. I'm currently working on a major update of
meta-swupd (see https://github.com/ostroproject/ostro-os/pull/198) and
if there's enough interest for using it as part of Yocto, might continue
maintaining it.

I'm going to stage your patches in that branch and after one round of
testing, will also push them to meta-swupd master.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




