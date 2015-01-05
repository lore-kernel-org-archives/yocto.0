Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01FA2E0090F; Mon,  5 Jan 2015 03:59:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE5DE00751
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 03:59:19 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2015 03:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,698,1413270000"; d="scan'208";a="646397624"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2015 03:59:17 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.55]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.15]) with mapi id
	14.03.0195.001; Mon, 5 Jan 2015 11:59:16 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: William Mills <wmills@ti.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] My config got stuck in the toaster
Thread-Index: AQHQKN8GzJ3Nwy51okK8Jn45OLVuRg==
Date: Mon, 5 Jan 2015 11:59:15 +0000
Message-ID: <D0D07A4A.50C55%belen.barros.pena@intel.com>
References: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
	<549EFEF1.1040604@ti.com>
In-Reply-To: <549EFEF1.1040604@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.6.141106
x-originating-ip: [10.252.172.125]
MIME-Version: 1.0
Subject: Re: My config got stuck in the toaster
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
X-List-Received-Date: Mon, 05 Jan 2015 11:59:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <07CAF2C6F636CA47AB4F35AF2E83627F@intel.com>
Content-Transfer-Encoding: quoted-printable

On 28/12/2014 00:18, "William Mills" <wmills@ti.com> wrote:

>
>On 12/27/2014 10:40 AM, Mills, William wrote:
>> OK, you are not going to believe me but I swear this really happened ...

We do believe you :)

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6935


Hopefully to be fixed soon.

Cheers

Bel=E9n

>>
>> I have been playing with YP 1.7 over the break.
>> I thought I would give toaster a try so I had it running in the
>>background as I tried various builds.
>> Somehow I got into a state where changes to my conf/local.conf file
>>were being ignored.
>> I fixed it by stopping toaster.
>>
>> Here is the sequence as I remember:
>>
>> I was doing builds for qemuarm.
>> At some point I started toaster "source toaster start"
>> It could have been from a clean build dir but probably I had done a
>>couple of test builds first.
>> For qemuarm I built:
>>      core-image-minimal, meta-toolchain, core-image-sato,
>>core-image-sato-sdk, world
>> I definitely poked around the toaster UI at some of those builds.
>> Next in the same build dir (and the same screen session) I edited
>>conf/local.conf to
>> MACHINE =3D qemux86
>> I then did core-image-sato again
>> It built for qemuarm
>> I double check conf/* and ENV settings.
>> I rm -rf cache
>> still builds for qemuarm
>> I stopped toaster with "source toaster stop"
>> I rm -rf cache again for safe keeping
>> I tried core-image-sato again and it started building for qemux86.
>>
>> I tried to reproduce this with a clean build dir and a trivial target
>>"bitbake -c clean ed"
>> With or without toaster running it always detects the config change and
>>rebuilds the cache.
>> In the process I have now learned that removing the cache dir does not
>>cause a reparse as I expected.
>> However a config change does.
>>
>> I thought I had a theory w/ persistent bitbake process and files being
>>kept open
>> but I can't connect the dots and I can't reproduce it.
>>
>
>Actually it is easy to reproduce.
>
>The first time I tried I don't think toaster was starting as port 8000
>was busy. I thought I had stopped the other instance but I guess not.
>
>To reproduce this I did this:
>
>yocto$ $ . poky/oe-init-build-env toasted-build
>yocto/toasted-build$ source toaster start
>yocto/toasted-build$ bitbake -c clean ed
>	runs with MACHINE =3D "qemux86"
>yocto/toasted-build$ mcedit conf/local.conf
>	change to MACHINE ??=3D "qemuarm"
>yocto/toasted-build$ bitbake -c clean ed
>	still runs for qemux86
>yocto/toasted-build$ source toaster stop
>yocto/toasted-build$ bitbake -c clean ed
>	runs for qemuarm
>
>Am I starting toaster in the wrong way to be just an observer?
>I learned how to start toaster this way from:
>https://www.yoctoproject.org/documentation/toaster-manual-17  ->
>	First link is "How to install and run Toaster locally" ->
>https://wiki.yoctoproject.org/wiki/Setting_up_a_local_instance_of_Toaster
>
>The Yocto Project Dev guide say the same thing:
>https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#exami
>ning-builds-using-toaster
>
>> Any Ideas?
>>
>> BTW: Building "world" does not look nice in toaster.  It list 100s of
>>build targets instead of just "world".
>>
>> Thanks,
>> Bill
>>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


