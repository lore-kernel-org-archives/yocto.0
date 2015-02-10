Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F498E0095F; Tue, 10 Feb 2015 05:36:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122EAE0094C
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 05:36:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 10 Feb 2015 05:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,550,1418112000"; d="scan'208";a="683668986"
Received: from mjbowe-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.120])
	by orsmga002.jf.intel.com with ESMTP; 10 Feb 2015 05:36:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>,
	yocto@yoctoproject.org
Date: Tue, 10 Feb 2015 13:36:37 +0000
Message-ID: <1968954.yQ8YLUUWUl@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <2974616.30.1423571125144.JavaMail.kraghavendra@Raghavendra>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<3732014.yvI11M98F7@peggleto-mobl5.ger.corp.intel.com>
	<2974616.30.1423571125144.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
Subject: Re: Yocto-custom kernel build issue
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
X-List-Received-Date: Tue, 10 Feb 2015 13:36:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Please keep replies on the mailing list, thanks.

Is this perhaps because you extracted the files onto an SD card / other storage 
device as a non-root user?

Cheers,
Paul

On Tuesday 10 February 2015 17:55:25 Raghavendra Kakarla wrote:
> Hi Paul Eggleton,
> 
> Thank you for your response.
> 
> It is the rootfs permissions issue.
> 
> I give the "chown -R root rfs" to my rfs then it is working.
> 
> Thanks and Regards,
> 
> Raghavendra.
> 
> ----- Original Message -----
> From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> To: "Raghavendra Kakarla" <raghavendra.kakarla@inedasystems.com>
> Cc: yocto@yoctoproject.org
> Sent: Tuesday, February 10, 2015 4:30:19 PM
> Subject: Re: [yocto] Yocto-custom kernel build issue
> 
> On Tuesday 10 February 2015 13:47:45 Raghavendra Kakarla wrote:
> > I am built the yocto for my custom machine. After booting a login prompt
> > was came. For that I tried the "root" as user name but it did not take
> > it.
> > 
> > Could please tell me where i can get the login and password details for
> > yocto rootfs.
> 
> The default is root with no password. If that doesn't work, do you have
> "debug-tweaks" in your EXTRA_IMAGE_FEATURES? It should be there by default.
> 
> Cheers,
> Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

