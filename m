Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 919E0E00BBF; Mon, 22 Oct 2018 18:28:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63868E00B45
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 18:28:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9N1RvdG018014
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 18:28:08 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Mon, 22 Oct 2018 18:27:47 -0700
To: <yocto@yoctoproject.org>
References: <CAD0Q=Of26LUD-3pVPp0GGjLAv9JMCdqGaL4GCMhoPS3KTz5kOg@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <38dd2f69-d260-d297-538f-d1bfc79dc9a2@windriver.com>
Date: Tue, 23 Oct 2018 09:33:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAD0Q=Of26LUD-3pVPp0GGjLAv9JMCdqGaL4GCMhoPS3KTz5kOg@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: eSDK installation failing with sig computed mismatch with sig locked
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
X-List-Received-Date: Tue, 23 Oct 2018 01:28:20 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

I think the main problem is do_fetch sig mismatch.
What does the SRC_URI for the recipe look like?

Best Regards,
Chen  Qi


On 10/22/2018 08:47 PM, Sunil Mukundan wrote:
> Hi
>
> I built an extensible SDK and when installing the SDK, i see the
> following WARNINGS first
>
> WARNING: The netmap-modules:do_fetch sig is computed to be
> b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
> 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
> The netmap:do_fetch sig is computed to be
> b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
> 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
> The netmap:do_populate_lic sig is computed to be
> 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
> d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
> The netmap-modules:do_populate_lic sig is computed to be
> 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
> d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
>
> These WARNINGS then (probably) result in the following errors
> ERROR: Task netmap.do_prepare_recipe_sysroot attempted to execute unexpectedly
> ERROR: Task netmap.do_configure attempted to execute unexpectedly
> ERROR: Task netmap.do_compile attempted to execute unexpectedly
> ERROR: Task netmap.do_install attempted to execute unexpectedly
> ERROR: Task netmap.do_package attempted to execute unexpectedly and
> should have been setscened
> ERROR: Task netmap.do_packagedata attempted to execute unexpectedly
> and should have been setscened
> ERROR: Task netmap-modules.do_populate_lic attempted to execute
> unexpectedly and should have been setscened
> ERROR: Task netmap.do_populate_lic attempted to execute unexpectedly
> and should have been setscened
>
> Could someone help me with what could be going wrong?
>
> I used the usual 'bitbake -c populate_sdk_ext core-image-minimal'
> command to build the SDK.
>
> thanks,
> Sunil Mukundan



