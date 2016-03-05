Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 322BEE008C1; Sat,  5 Mar 2016 13:19:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10B2FE00863
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2016 13:19:37 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id 124so56307168pfg.0
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2016 13:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:user-agent:mime-version
	:content-transfer-encoding;
	bh=USikYKREbn9zzHxvMRNnSC3DDKHtGBZRxxc0NK2xJtk=;
	b=lkzAe8uIrQDIgM6nr6hSG2y84oke636797PuM88KXPmOpJJuOMJlwXSQuCLNXOfbeg
	85ze549L9Bu08heRLoBOPbXNgkXtb3fDD3rqaUnrDUT56r0F+FgvBXCS+wzDpzSMSHWb
	lFENwaEAJSitlCRLyRRJitCcI/oEilvZfsNlmgu8XhnZUZJc898VCcKYqWMrdkjM6zVS
	z2bCotO65OzDA3o1+LabGDMDXpMyZTQovPY8htw4tbR2MIG25MZh+bdxknHhULPYLfdx
	Yoiv9A/sB0PRUGv7tmK5F69eqsbbHoB8schfwHs65wIXKffFsW+RNxPNp5LFxyemanpf
	UYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:user-agent
	:mime-version:content-transfer-encoding;
	bh=USikYKREbn9zzHxvMRNnSC3DDKHtGBZRxxc0NK2xJtk=;
	b=KAP4vSSIqFPG2WlZcVhFCeQ1qmK46Zv0G25IXSpAUoIHsZ7H6BJmwlrYJuXC9fNcoM
	GoHKQff9xOTwdMk/gVyJwboMX+srVw2WYyn+AwpQkdzK9Usl6k3vZv4IG1MUZV0PLKr5
	fwJiq9YwBOfgQ9yZT/zbJ1mnKSBLJeBVe57UuSi0CToUwU1Q5l/EXZ1ShNPLWQoOtKpO
	M8z726PB09XQN2dhD+QC6hbiTKtFVVxkFzXNpOr5f7eB0Q4Sh3TgVzvt5uFId62JPVai
	9oANkpxvF+F01++A+SPNBu1jhlWZ7IuxcIg5ozx4SPPKfMUGMchObBSoxkrIzd62gRwn
	2jMA==
X-Gm-Message-State: AD7BkJJ9R2rQJZuJ4ooyK6wImF7diErXJaEjz0x1fhikzRi4BcYgSZeASqZ3G0vAKDWWCg==
X-Received: by 10.98.12.129 with SMTP id 1mr22402928pfm.95.1457212776904;
	Sat, 05 Mar 2016 13:19:36 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	79sm14302209pfq.65.2016.03.05.13.19.35 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 05 Mar 2016 13:19:35 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 05 Mar 2016 13:19:34 -0800
Message-ID: <18448427.V3ACvxT67R@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.3.6-201.fc22.x86_64; KDE/4.14.17; x86_64; ;
	)
MIME-Version: 1.0
Subject: Building gdb-7.10 for arm with master
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
X-List-Received-Date: Sat, 05 Mar 2016 21:19:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

At least for arm (I have not tested other arch) building gdb-7.10 with

Build Configuration:                                                                                                                          
BB_VERSION        = "1.29.0"                                                                                                                  
BUILD_SYS         = "x86_64-linux"                                                                                                            
NATIVELSBSTRING   = "Fedora-22"                                                                                                               
TARGET_SYS        = "arm-poky-linux-gnueabi"                                                                                                  
MACHINE           = "beaglebone"                                                                                                              
DISTRO            = "poky"                                                                                                                    
DISTRO_VERSION    = "2.0+snapshot-20160305"                                                                                                   
TUNE_FEATURES     = "arm armv7a vfp  neon        callconvention-hard        cortexa8"                                                         
TARGET_FPU        = "hard"                                                                                                                    
meta                                                                                                                                          
meta-poky                                                                                                                                     
meta-yocto-bsp    = "master:5cd71fe432c9bdfd3ff519543e96e8caa2b7cf6c"                                                                         
meta-oe                                                                                                                                       
meta-python       = "master:36aab3f797630e3de680a88523f40ead4ca95d28"                                                                         
meta-qt5          = "master:88a7f264ef5f64d73881c384d22bf883b2cbf72e"

compile fails with the following error message:

| make[2]: *** No rule to make target '../readline/libreadline.a', needed by 'gdb'.  Stop.
| make[2]: *** Waiting for unfinished jobs....

The reason seems to be a broken path to the built-in readline in the makefile as the default configuration is 
--without-system-readline. Enabling

PACKAGECONFIG_append_pn-dbg = " readline"

solves the problem.

I wonder if anybody else has observed this problem?

Cheers,
Rudi

