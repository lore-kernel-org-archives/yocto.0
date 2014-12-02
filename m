Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7AEE006EF; Tue,  2 Dec 2014 06:09:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2696FE0034B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 06:09:15 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2014 06:06:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,501,1413270000"; d="scan'208";a="641357850"
Received: from fodonogx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.21.108])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2014 06:06:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Fabrice Coulon <fabrice.coulon@axis.com>
Date: Tue, 02 Dec 2014 14:06:51 +0000
Message-ID: <5704119.0hoZ2pIDf1@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <547DB99C.7000404@axis.com>
References: <547DB99C.7000404@axis.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Export bitbake variables between recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 14:09:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Fabrice,

On Tuesday 02 December 2014 14:07:40 Fabrice Coulon wrote:
> Is it possible to export one bitbake variable from one recipe and make it
> available from inside another recipe? For example: we want to export
> from our systemd_%.bbappend where the systemctl command has been installed,
> in order to, from another recipe depending on systemd, refer to the absolute
> path where systemctl was installed. Any ideas or suggestions on how to do
> that?

There's no mechanism to do this, no. The only way for this kind of thing to 
work is for it to be specified at the configuration level (e.g. ${bindir} points 
to the subdirectory /usr/bin and this variable would be used both when 
choosing where the executable should be installed and finding it later - this 
would typically be how this kind of problem would be solved since it would be 
unusual to have systemctl installed somewhere other than ${bindir}). 

(Another alternative is pkg-config, but I don't think that really applies in 
this situation.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

