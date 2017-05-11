Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 596DAE00961; Thu, 11 May 2017 09:12:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33CFBE0094C
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 09:12:13 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id c15so46767525ith.0
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 09:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=A/uTpkaVzsJsL/hkUMf3VrQIz5J4NodevCsaDr8xhkY=;
	b=tsjfu70muI27TmOnzNarKpSd6QdwUGh4TgcgUXfpzLpNWph+WBPzWehA1hy5Kw3Ep5
	odunwHUAXIwgsTJuwm/o8r9xruIbfALg5X88DPHPu4zTjQeeguW2rXWRW4QRAcTrsRRV
	rmNZAXYDbxiFJrf8etFsrVePDoMwOqFg4pdEQmrbstFPhGfyrWMh4z3BvoEtNOUpIOHM
	Z5WkasQEt9drqB36DzznDLo4EhqWTc+mFj/Ymms74ezVALdN7yXpgKFiZ0zpnZinaKsG
	GSg4hixHxa3ZmiGWKYxUCSA4yJEO2dqw61eXfQXe4JIbAspLD7L9RUN/62sE1DevXU53
	7RLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=A/uTpkaVzsJsL/hkUMf3VrQIz5J4NodevCsaDr8xhkY=;
	b=BGaICu596i6VxBUbpfSAwF/36xR6ZJAVYb0cL7axSUf7LJuUn68aRIH9PpojtpwWC0
	w65vY+WQY9cgZ90dMQXfmm65BPaKBKLx8ZG9rVwzv1WKaF9j90rNoKO+Bnh7x1bFs8hF
	77HrbbChaBALjHXT3pcf4eN3pdNRllBrJNRDjekIaYeCu9FEE4g5V2hYiIrz2VjZ00TO
	u28TWuT1OaP2/ZTZGCdhI9GlvotSWLBWxWxQqM2LZA5IE8gFByuBP+hUiiUWmO8x9eDa
	v0lYmpDXBCxggdbTJ0+riXIrFYUJdbsAqKxY+0Y282BAqnceQE0Znazb0eWGTeYfra6L
	JZoQ==
X-Gm-Message-State: AODbwcDs6HW3G0Iqdu95CF3OrmPxASSVYlMQB2+6IosC7rD0/98TEZe3
	O0FaCU32EiTtQMJY
X-Received: by 10.36.108.147 with SMTP id w141mr1934298itb.57.1494519132697;
	Thu, 11 May 2017 09:12:12 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8ED82.dip0.t-ipconnect.de. [93.232.237.130])
	by smtp.gmail.com with ESMTPSA id 77sm265760ios.19.2017.05.11.09.12.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 May 2017 09:12:10 -0700 (PDT)
Message-ID: <1494519127.1179.191.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
Date: Thu, 11 May 2017 18:12:07 +0200
In-Reply-To: <CY4PR06MB26169AEB73B583DD03D6FF25E6ED0@CY4PR06MB2616.namprd06.prod.outlook.com>
References: <CY4PR06MB26169AEB73B583DD03D6FF25E6ED0@CY4PR06MB2616.namprd06.prod.outlook.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [sstate question] How does SSTATE_CACHE work when shared?
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
X-List-Received-Date: Thu, 11 May 2017 16:12:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-05-11 at 13:22 +0000, Schmitt, Richard wrote:
> An example of our problem.  We are using a Xilinx BSP.  There is a
> recipe, device-tree-generation, that will deploy dtb files to the
> DEPLOY_IMAGE_DIR.  We are running into a case where other developers
> builds will fail when they run a task (in u-boot-xlnx) which depends
> on the dtb file being available in DEPLOY_IMAGE_DIR.  My assumption is
> that the shared state cache indicated that the dtb file did not need
> to be rebuilt because none of the dependencies changed, hence its
> signature had not changed.  But, it doesn’t actually exist in the
> users workspace (tmp/deploy/images).   
>  
> 
> Do I understand this correctly?

Yes.

>   Is there some step or configuration that I’m missing?  What is
> supposed to happen?  Is some magic supposed to copy a previous version
> of the dtb to the local deploy directory?

A "setscene" task should unpack the build result that was previously
placed into the sstate cache.

This sounds like a bug in the BSP and/or it hasn't been updated for the
version or OE-core that you use.

If this was part of a normal image recipe, my guess would be that the
BSP still copies directly to DEPLOY_DIR_IMAGE (thus bypassing the sstate
machinery) instead of to IMGDEPLOYDIR, and you are using a recent
OE-core. See "image: Deploy images to IMGDEPLOYDIR" (rev 6d969bacc718e2
in OE-core).

But for a separate recipe, it must be using deploy.bbclass incorrectly.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




