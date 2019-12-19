Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8293.1576753438011200960
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 03:03:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TvRY5CCH;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59604E01165; Thu, 19 Dec 2019 03:03:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B40EDE00942
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 03:03:54 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id q6so5504250wro.9
        for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 03:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=GqzIsAFXag+4Gqo8Sin9faljShe5KzaxGpscVv9zIeA=;
        b=TvRY5CCHm+KAB894OdU0gk0bulTm5wTHHg3RBItXaWvis+lYrk/swL/MY8ZlHQbtr9
         3bERF8HJLZy1vvIO06bN1MS4iru1I7WkK775If8IQ156PjB8ghSLRSIefiudITrgKnVe
         B7Qs97wjIH+irk+LzUp/jpnXZ5KO9CK6bVomI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=GqzIsAFXag+4Gqo8Sin9faljShe5KzaxGpscVv9zIeA=;
        b=gR1ijUBiuFaaXZlROZo8pT/JaRS3ZKJug4MQzlYBgeou0ROJR7ikx4eU4BcfpFmEVn
         vwUAaZGe/A1LgFhF1GLcVpBebDhk6zAp4rxArNoD1kNDyYbi25Sv249EwogkUxu0X/eu
         SikTvJx15frJgeipThLwox6NLeRWkN1wFcFtdBLLdRMthMvcy+F4frMYW48xtWPdOppw
         qlJF4SepaMQNbtRgsHy3VNkRCZzmbtM1xm9oyhzC3jDicuKqEmHNZ9lmuTnd0CTjIn3h
         p3ax2EW1ujZU7e0jf7I3yO/5IVU9WLG83ohJ6u1b1NfbgzQVguY9Eu2sU/pl9RH2F9nf
         o7qg==
X-Gm-Message-State: APjAAAVC+gyPD94PN/kVHWO76+yVvvCPB+eTx+w5Btn7EFEpZXx8GuGN
	R+6mr6XED4O6HdOTW94F3/fSQw==
X-Google-Smtp-Source: APXvYqzpORv6q8Qehj5vv44vzUcf+DGFdE18SuA0+5pqMmzqL3f8g1MZ2S4IXExEk7hoTKFYVpyB4A==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr8603178wrt.229.1576753433660;
        Thu, 19 Dec 2019 03:03:53 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id s10sm5969254wrw.12.2019.12.19.03.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 03:03:52 -0800 (PST)
Message-ID: <d3593eec212503a90c585aab88f15bcbb8053015.camel@linuxfoundation.org>
Subject: Re: QA Cycle report for build (yocto-3.1_M1.rc8)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
 <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
 <yocto@yoctoproject.org>,  Yocto TSC <tsc@lists.yoctoproject.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>
Date: Thu, 19 Dec 2019 11:03:50 +0000
In-Reply-To: <758d70c1-e964-483a-a0ee-69763fea3d9c@gmail.com>
References: 
	<CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <6ef53298d27a12c5dc99cc985ea0fae147438f63.camel@linuxfoundation.org>
	 <758d70c1-e964-483a-a0ee-69763fea3d9c@gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-12-18 at 07:38 -0800, akuster808 wrote:
> 
> On 12/18/19 2:46 AM, Richard Purdie wrote:
> > On Wed, 2019-12-18 at 03:32 +0000, Jain, Sangeeta wrote:
> > > Hello all,
> > > 
> > > This is the full report for 3.1_M1.rc8:  
> > > https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> > > 
> > > 
> > > ======= Summary ========
> > > No high milestone defects.  
> > > No new defects are found in this cycle.
> > > glib and valgrind ptest failed (BUG id:13713). 

Vineela,

We have TSC approval so could we release this please!

Thanks,

Richard

