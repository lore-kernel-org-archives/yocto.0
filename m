Return-Path: <dev.kurt@vandijck-laurijssen.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CA0FE00A30; Tue,  7 Jul 2015 06:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.71.1.210 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Jul 2015 06:08:32 PDT
Received: from relaygateway01.edpnet.net (relaygateway01.edpnet.net
	[212.71.1.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96FB9E009FD
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 06:08:32 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AoUGABnOm1Vt7IXT/2dsb2JhbABcgxKBGcVrBASBU00BAQEBAQGBC4RNM1gCBSECEQUlJIhFpFaPX5ckgSGSHy+BFAWUGItomFsmgUlDHIFVgzgBAQE
X-IPAS-Result: AoUGABnOm1Vt7IXT/2dsb2JhbABcgxKBGcVrBASBU00BAQEBAQGBC4RNM1gCBSECEQUlJIhFpFaPX5ckgSGSHy+BFAWUGItomFsmgUlDHIFVgzgBAQE
X-IronPort-AV: E=Sophos;i="5.15,423,1432591200"; d="scan'208";a="339269862"
Received: from 109.236.133.211.wls.msr91gkk3.adsl.fix.edpnet.net (HELO
	zotac.vandijck-laurijssen.be) ([109.236.133.211])
	by relaygateway01.edpnet.net with ESMTP; 07 Jul 2015 15:07:24 +0200
Received: from vandijck-laurijssen.be (unknown [195.130.156.3])
	by zotac.vandijck-laurijssen.be (Postfix) with ESMTPSA id 519A01C0057
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 15:07:27 +0200 (CEST)
Date: Tue, 7 Jul 2015 15:07:18 +0200
From: Kurt Van Dijck <dev.kurt@vandijck-laurijssen.be>
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <20150707130718.GB3967@vandijck-laurijssen.be>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: using shared state cache from other machine
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
X-List-Received-Date: Tue, 07 Jul 2015 13:08:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hey,

I started to re-use the shared state cache from a build machine.
If I clean everything locally, I still spend time building.
So, can everything be re-used, or only the target packages.
How different may the build machine & may host be.
The build machine is a (recent) ubuntu. My machine is debian squeeze+sid
mixed version. Is that a problem?

Kind regards,
Kurt

