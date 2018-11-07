Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03127E00A54; Wed,  7 Nov 2018 13:03:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 103AEE00A1A
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 13:03:45 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wA7L3Rck014485
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 7 Nov 2018 21:03:39 GMT
Message-ID: <2c9a0fc173e899c50a457067e4e4833631f26757.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: akuster <akuster@mvista.com>, Michael Halstead
	<mhalstead@linuxfoundation.org>, yocto@yoctoproject.org
Date: Wed, 07 Nov 2018 21:03:27 +0000
In-Reply-To: <2e0a8556-fbbe-e51d-117e-c7f9effd8b29@mvista.com>
References: <20181107183338.22347-1-mhalstead@linuxfoundation.org>
	<2e0a8556-fbbe-e51d-117e-c7f9effd8b29@mvista.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Re: [yocto-autobuilder-helper][PATCH] config.json: Add steps to test new workers before adding to the main pool
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
X-List-Received-Date: Wed, 07 Nov 2018 21:03:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-11-07 at 11:15 -0800, akuster wrote:
> On 11/7/18 10:33 AM, Michael Halstead wrote:
> > We add workers to the nightly-bringup pool to test them in a
> > production like
> > enviroment. Include one completely emulated target and one to test
> > virtualization extentions.
> 
> 
> Would this be a good indicator to add a new host to the sanity
> checker or start that process?

Yes, that is another piece of this puzzle. I'm trying to deal with it
piece by piece as if we try and do everything at once there is a risk
of insanity at this point. Even getting this bring up testing sorted
out is proving tricky and highlighting other issues :/

Cheers,

Richard


