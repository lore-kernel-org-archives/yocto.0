Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 755C0E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:55:56 -0700 (PDT)
Received: from mail-bk0-f72.google.com ([209.85.214.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 23 Oct 2012 14:55:28 -0700
Received: by mail-bk0-f72.google.com with SMTP id q16so3014769bkw.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:55:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=NqzeUwNvev1UuiSoANV6go/fNpPkjZMfVBsX9CLNfVQ=;
	b=MWpSC9Pyog06zFgrWh3fs0xk291IkSihigvGDENjn3kQzLyrxVRG1cqWfeWeiV9YFz
	xJe2lqJ2KgHYCMghUS6+nBdH00PzMU+QWcnLwL5VHxKFgyJakOA/mtqC8zlIZgVTNB1W
	4hFVrhZ3LgNZDnqpxCM0aOeoQF9jYqMCW5knncbf3HGe7cDbtbfUGmS9JXXYyvW/kc+R
	6bIMLGyoLUIovvQQQSxRs//TR6XH1opS85lQwj0Mn5GQZNchE+bzfU12/+SjkeBKOTWD
	VyTDPLb8Yc3MLediMvlsVFSNdbFPKFFZTjWr6THjFAL0jmXV4A3omo0zCck+zhonssu8
	x/0A==
Received: by 10.180.87.230 with SMTP id bb6mr948768wib.6.1351029353551;
	Tue, 23 Oct 2012 14:55:53 -0700 (PDT)
Received: by 10.180.87.230 with SMTP id bb6mr948755wib.6.1351029353422;
	Tue, 23 Oct 2012 14:55:53 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id ay10sm1017287wib.2.2012.10.23.14.55.51
	(version=SSLv3 cipher=OTHER); Tue, 23 Oct 2012 14:55:52 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:55:55 +0100
From: Ross Burton <ross.burton@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Message-ID: <69990FBFE83E4DFDB1BFCCAEBA8E0179@intel.com>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A71DF3B@039-SN1MPN1-002.039d.mgd.msft.net>
References: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A71DEF4@039-SN1MPN1-002.039d.mgd.msft.net>
	<0D8519A6089349458734E822A3CBF611@intel.com>
	<70CC66F5C30A414DADDA6973E4CA391A71DF3B@039-SN1MPN1-002.039d.mgd.msft.net>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQmqQVQwIVE0E1a9LouMY1FlLmzuGm1Rnwcibic4jJN8gm4b34Z9HlGo+aGrUnB+28G0dYDFQ/0NpkXaqQA75rbPU82If/t0AGuWienD/4czx3ctH6r9RzjiFxwPiPR3gBZkKdxV/sJ6bVcvriv1tMx1BLPBsw==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Performance improvements and machine build configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Oct 2012 21:55:56 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 23 October 2012 at 22:37, McClintock Matthew-B29882 wrote:
> > My machine has 16G of RAM, and after a good build will have 12G of "cache" (according to /proc), but the disk activity light was frantic. I can only imagine it would be more frantic with less RAM to act as an over-sized disk cache.
> 
> 
> Frantic but was it actually limiting the build time? It would seem not
> according to Elvis observations.

No idea, it's always had 16G.  One day I'll do some benchmarking.

Ross 



