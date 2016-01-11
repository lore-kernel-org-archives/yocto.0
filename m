Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 192B1E007EA; Mon, 11 Jan 2016 12:32:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF1C7E0070F
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 12:32:36 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id f206so27945988wmf.2
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 12:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=iE+zJsMuOtO3PR39nkxu8VFsz8blUpkGsyatjVfnl7E=;
	b=MMRf+RBj1m9RGmY6S1gLwdmYO4CaY5RBBUcaFhqH8iO4pWl27oEvDG2y9hkNoy9JKw
	fEBdaSmlsvN/QaNrOMzumfABdb5O28uB9GJEG3INMUpLtTxZnVIf5Z/PyU1Br74RpV/2
	R1lULo0ykE9Z/vJ8H5e+Cb5p4yCWtRBjJJ2L2kEQKxm9kawzEKW0hh1SDnHzBIu9+7fH
	lBrbSZqGYJ1zAaxYPVcqRvksLC/lDTpSjP/dZxdTeVoTZT6zDCqRgAdMANNcSif2xKif
	hI9/SGzQiBcoLPW0DC57X9u3k/9Y0+GbGXhDABOSoAjokIyGTCNT+mLKzp4jpChgiF/1
	ij4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=iE+zJsMuOtO3PR39nkxu8VFsz8blUpkGsyatjVfnl7E=;
	b=d/Ujmif18fCTMq0QuA678U7Kgcb6/KRhmP6bZHHNL1PFcxdbfhgNA5gWEW9spl/Rmu
	SRhOjMrmTJFjRd0VpoqDa4AinkgHw8jUJSg0T6x+dCpFTiLjxqBalBOYe7fDRm0FxU5k
	JA4sl3+WrOMeQIop/ouolJ8oMWiSFNckdiF85Ca+NtZ8Meak3zLU3g6UgFjDDNhLI7aF
	olHhjC7ZtnXyJVtxPwTY/F7xtvXyQusqeyfV4fLNhglsPXaYhw3r6Jf7XudWgLWlAk2g
	8th8ULb3BZ2KTfpeXM7gSADZkPhW/Oi/zSH/+tue1JhYhCxJWnK/WrBYuSuzgQS3Y/QO
	h/WA==
X-Gm-Message-State: ALoCoQkCCqZ9mC73s+2BMvVP7hdIS7Ts7uhD299WyyRbMG/2/SG+QGzSvdatsSoeMGOzmvdQBiwpec8IUU8yCFH3e/qZ8X5cuA==
X-Received: by 10.194.175.104 with SMTP id bz8mr3219646wjc.8.1452544355780;
	Mon, 11 Jan 2016 12:32:35 -0800 (PST)
Received: from resin (dslb-178-007-064-118.178.007.pools.vodafone-ip.de.
	[178.7.64.118]) by smtp.gmail.com with ESMTPSA id
	df10sm106413231wjb.44.2016.01.11.12.32.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jan 2016 12:32:34 -0800 (PST)
Date: Mon, 11 Jan 2016 21:32:27 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160111203227.GA10203@resin>
References: <1452530987-994-1-git-send-email-petter@technux.se>
	<1452530987-994-5-git-send-email-petter@technux.se>
	<7564A308-E4D5-4B05-B03A-95A2B37A5F59@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7564A308-E4D5-4B05-B03A-95A2B37A5F59@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/5] pitft: Add basic support for PiTFT
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
X-List-Received-Date: Mon, 11 Jan 2016 20:32:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Jan 11, 2016 at 09:55:43AM -0800, Khem Raj wrote:
>
> > On Jan 11, 2016, at 8:49 AM, Petter Mabäcker <petter@technux.se> wrote:
> >
> > Add basic support for PiTFT display by using device-trees.
> >
> > In order get it working below configurations must be active in
> > local.conf:
> >
> > MACHINEOVERRIDES .= ":pitft”
>
> Using MACHINE_FEATURES will be more appropriate term. Effects are same.
>

Indeed. I support MACHINE_FEATURE usage here.

--
Andrei Gherzan

