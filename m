Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F23F5E008DD; Tue, 27 Jan 2015 04:17:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C02E008BC
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:17:09 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2015 04:17:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="668317865"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2015 04:17:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mahdi Saadat <MahdiS@nimakco.net>
Date: Tue, 27 Jan 2015 12:17:07 +0000
Message-ID: <10462848.NKh9I0Ul1T@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <00d101d03a2a$49fa6b10$ddef4130$@nimakco.net>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
	<1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
	<00d101d03a2a$49fa6b10$ddef4130$@nimakco.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: dansguardian
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
X-List-Received-Date: Tue, 27 Jan 2015 12:17:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 January 2015 15:40:43 Mahdi Saadat wrote:
> After I used inherit autotools in my recipe the .configure steps stop on
> this error:
> 
> line 6455: PKG_PROG_PKG_CONFIG: command not found
> line 6482: syntax error near unexpected token `PCRE,libpcre'---------------

That sounds like it is attempting to find pkg-config. You could try adding 
"inherit pkgconfig" and if you still get the error you will need to look into 
where it is looking for pkg-config and why that isn't valid for the cross 
environment.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

