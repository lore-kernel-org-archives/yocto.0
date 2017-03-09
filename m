Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A93ADE008D0; Thu,  9 Mar 2017 01:45:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F447E004D2
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 01:45:11 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id h10so125515291ith.1
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 01:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=7qB4cR0gmNJhPeXwuTb23rIUKjBRjgrbMV7nZ+cFRCA=;
	b=skwCKq6qKJdbcYFXNE4wlPXZGR5u/+Sxo1mFbfOn95BD2aAYjwORobyKh7nCoR9xzh
	Wcsb/F7Gp/3uH3FnrImMC1HjJg3rzY5sSz4iUYOLoTdm4+M4Q1I0lVMxM6HCVHsSOIq5
	8atUtq8clFRv8K5W+Ce2t6WV+LhADCH5tdyogt1Ik3BBMnyMuy7qgeACZfvFvK0Y0iqc
	pkYKsQvefR+8DG+5W/0Hp7lJR7GKkHCcfBX8u9UBwPpfFYBH3kqmTfRKg0+zvvJ5PVUL
	5X9dKPzr4BfRlmLTgh1rE/oQNRcLjFpHJYgLUP0vpjeibUroJuh28PZmtBtBSAicBDXe
	/I6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=7qB4cR0gmNJhPeXwuTb23rIUKjBRjgrbMV7nZ+cFRCA=;
	b=a43FfLxFijhm9yjKV2etqYm3bHakVOASM84hnJrlRxTWhmaVC49NR5nbCeoZHW+VS3
	BIKZXeRWMRLqm/TpwDRw5KdcHMkO2jWbWxLmTXc6Hr1hyF68ICI9CW9ttQ0QrfrMGDOp
	DJDKiuyr8IRQkRZOtzj+MHytaDE6r+16bUUJJTOzHOVfKmgDPXOPNs5Uam1q8SoB6Gig
	th5QoYpVyY9nbHHaObZlNHbiOJtBdEESAQuWXlrL+JQ4HSOWv6mJ4BF1z3lft6S1nypp
	XyAlb2ku7k8M+RUWWy7F4iX/CKxB4FEUkqJ0fxIGGdHqhaIsH6FKkuh+pVCocVXJjAaB
	6TCA==
X-Gm-Message-State: AMke39lfu/ErTG6O8EcZVX7D2Uccu3NBfA9Lco+kJyll5P38Sq10QPtjojRoNvxJpPnh+WKC
X-Received: by 10.36.219.10 with SMTP id c10mr10174284itg.1.1489052710390;
	Thu, 09 Mar 2017 01:45:10 -0800 (PST)
Received: from pohly-mobl1 (p5DE8D47C.dip0.t-ipconnect.de. [93.232.212.124])
	by smtp.gmail.com with ESMTPSA id
	x69sm2290836ite.25.2017.03.09.01.45.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Mar 2017 01:45:09 -0800 (PST)
Message-ID: <1489052706.7785.342.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Date: Thu, 09 Mar 2017 10:45:06 +0100
In-Reply-To: <d4287bea-7820-8a90-2deb-3b255a7ec34f@vitheia.com>
References: <51315601-026c-457c-a99f-4961487e12e3@vitheia.com>
	<1489044139.7785.341.camel@intel.com>
	<d4287bea-7820-8a90-2deb-3b255a7ec34f@vitheia.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: cannot build image using sstate
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
X-List-Received-Date: Thu, 09 Mar 2017 09:45:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-09 at 09:59 +0200, Mircea Gliga wrote:
> Thanks! You are right, the do_deploy_append installs the
> image_signed.fit in the ${DEPLOY_DIR_IMAGE}(I should have kept that
> line in the previous mail also):
> do_deploy_append() {
> [...]
>          #this line creates the image_signed.fit file
>           mkimage  [...] image_signed.fit
>           install -m 0644  image_signed.fit ${DEPLOY_DIR_IMAGE}/.
> [...]
> }
> 
> The doc mentions in regards to DEPLOYDIR:
> "Recipes inheriting the deploy class should copy files to be deployed
> into DEPLOYDIR, and the class will take care of copying them into
> DEPLOY_DIR_IMAGE afterwards."
> 
> So I should just replace ${DEPLOY_DIR_IMAGE} with ${DEPLOYDIR} and I
> get the same behaviour as before + the benefit of sstate cache ?

Yes.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




