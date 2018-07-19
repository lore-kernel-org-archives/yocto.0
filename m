Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19FF9E01422; Thu, 19 Jul 2018 13:21:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82EDFE009CF
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 13:21:11 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id s11-v6so9227944wra.13
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 13:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=qfu9yrP0/uYCEfasx8ypxJj7t7iNWe94vPacHDfuPdk=;
	b=I8YAyiYkNfAfDK5CA5xIQxprlR5jIt5fuPSvQw78PxAsv/1SNXgW6qhIh/gjMwkeGQ
	m0UNMRoW6whYfN5n1VRqrn2bFJCEX0qND+yBaGZnrKoHGlW7WAW64/iz01NSKU8Qx+a4
	psSab8MnpAnMjvdmO5Z2q/T2/TxXZYe4A/Zqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=qfu9yrP0/uYCEfasx8ypxJj7t7iNWe94vPacHDfuPdk=;
	b=lWHLrLnVrQT7mhKLCjOpQ9eMx66GVlINELYMdN777ApwoMZybCFjruRRazj9AihQTV
	kWlFpHPe6kvCUM0ccwvNqXbpsHAQXvIy0Ua5LfJiV6wOvlVWJGWH0D+sOAA2aEAdefdn
	L6sbOKvMviGPbUzJ0hss0RccuTUaq6yBOt987GWLdZ7SYP0C/mtN9qQ3D8UqbIpLkBXl
	JPqNy567hsaXke3mwwPvNm6GJ1bYkyzMabHGO5TpEZbxvqTVcHOMbkq70MATPKhS24em
	hGFWRXFZ0tqIq4l7foG8kYaJE7/ieOQySfjkyany7MaFN/K68S3Rfc8DZNgIQeTjWtqq
	C0QA==
X-Gm-Message-State: AOUpUlE5zNm+7dijCMXZBbmH+ouWwMvXsbMuQA+OW6TBe2R0C8sYwplE
	vHDDCHCww4Yn+MA8jS5AdDWKmg==
X-Google-Smtp-Source: AAOMgpdceR67WygNhst+hAxXwvPGSB/qyac64EbcdmxaaHMRdXtfLcNliJZJKNqiWARFB1UoSE9wUQ==
X-Received: by 2002:a5d:4b90:: with SMTP id
	b16-v6mr7990835wrt.168.1532031670246; 
	Thu, 19 Jul 2018 13:21:10 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	d14-v6sm135370wrr.12.2018.07.19.13.21.08
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 19 Jul 2018 13:21:09 -0700 (PDT)
Message-ID: <b35f09b4ef87677dfe95f795c7273878e3304848.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Eggleton, Paul" <paul.eggleton@intel.com>
Date: Thu, 19 Jul 2018 21:21:07 +0100
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E844C2@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E844C2@PGSMSX109.gar.corp.intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.2.4 RC1
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
X-List-Received-Date: Thu, 19 Jul 2018 20:21:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-07-19 at 09:55 +0000, Yeoh, Ee Peng wrote:
> This is the full report for 2.2.4.rc1:  
> https://wiki.yoctoproject.org/wiki/WW28_-_2018-07-13_-_Full_Test_Cycl
> e_2.2.4_rc1
>  
> ======= Summary ========
>  
> All planned tests were executed.  There were zero high milestone
> defect.  Team had found 3 new defects [1] [2] [3] where runtime
> test_parselogs testcase failed with error message inside dmesg
> log.  While executing the runtime smart package manager tests on
> target platform to install psplash, team discovered that the target
> platform screen was splash with Yocto logo and the Yocto logo remain
> after the tests completed, need further investigation to verify if
> this was caused by post installation script from psplash.  For
> performance test, regression on 2.2.3.rc2 faced with error where
> SRCREV defined for distcc was no longer available.  For pTest, both
> glib-2.0 and util-linux passrate decreased as compared to 2.2.3.rc2
> as some new tests available in 2.2.4.rc1 were failing.   
>  
> ======= QA-Hints========
>  
> Found 3 non critical defects.  
>  
> ======= Bugs ========
>  
> New Bugs
> [1] Bug 12854 - [2.2.4.rc1][BSP Auto] [genericx86-64 on MMAX64bit]
> [test_parselogs] blk_update_request: I/O error, dev loop0
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12854
> 
> [2] Bug 12853 - [2.2.4.rc1][BSP Auto] [genericx86-64 on
> NUC6][test_parselogs] drm:intel_dp_link_training_clock_recovery]
> *ERROR* too many voltage retries, give up
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12853
> 
> [3] Bug 12852 - [2.2.4.rc1][BSP Auto] [genericx86-64-WIC on
> NUC6][test_parselogs] snd_hda_intel 0000:00:1f.3: failed to add i915
> component master  
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12852

Thanks. One of these was resolved by the triage team as WONTFIX since
whilst there is a fix in master, backporting it has potential side
effects and in their view would be too risky for a stable release.

The other two issues were identified as being due to changes in QA team
hardware used for the testing and therefore are not regressions, just
error messages that appear on the newer testing hardware.

As such, I believe we should release 2.2.4.

Cheers,

Richard

