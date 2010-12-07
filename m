Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0E3F4C80A74
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 22:33:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 20:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,309,1288594800"; d="scan'208";a="633810695"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 20:33:55 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 12:32:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 7 Dec 2010
	12:32:39 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Date: Tue, 7 Dec 2010 12:32:36 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YACqdV0QAAJu3TAAH5th4AABuUTAAAUY5IA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D4754397C@shsmsx502.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F49@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F85@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178E3E@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659733104C4D4@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733104C4D4@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Dec 2010 04:33:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Ke, Liping
>Sent: Tuesday, December 07, 2010 10:05 AM
>
>Ops. Seems I made concurrent changes again....
>Seems I need to redo today's work ....
>
>I will update the final files a little later. Just wait.

why don't you setup a master repo on git.pokylinux.org? anyway we need such
thing finally and now you have multiple people touching same code...

Thanks
Kevin

>
>
>criping
>
>> -----Original Message-----
>> From: Zhang, Jessica
>> Sent: Tuesday, December 07, 2010 9:34 AM
>> To: Ke, Liping; Lu, Lianhao
>> Cc: yocto@yoctoproject.org
>> Subject: RE: yocto_installer test script update
>>
>> Liping,
>>
>> I've made lots of modifications:
>>
>> 1. Tide up the prompt imformation format and messaging 2. Correct the
>> logic in validate_config for checking the target selection 3. Correct
>> the problem for qemu image download, now we forcing download images in
>> a clean directory since wget will change the file ext if the file
>> already there and which maybe corrupted 4. Eliminate unnecessary
>> checking and prompt, e.g. for removing the old /var/pseudo dir if user
>> already choosing to install under /opt/poky and override existing
>> contents 5. Add prompt for target arch configuration to be consistent
>> with the host side checking 6. Rename file names to make them make more
>> sense and cosistent with other script name convention of Yocto project
>>
>> Attached  tar file contains all my changes, so please make changes on
>> top of the files in it instead of merge into your local dir due to the
>> amount of changes, unless you already create a git repo some where for
>> us to track the changes...
>>
>> There're still couple issues that you need to fix:
>> 1. The log file is still not capturing all the needed content, I think
>> it's on your to do list 2. I noticed the target sysroot is create as
>> root under the user directory, which is wrong, I believe it's due to
>> the code is exectuing in the part that need root priviledge, so need to
>> move it out...
>>
>> I've run against situation of none /opt/poky and everything has been
>> installed before, and it functioning as I'd expected besides the above
>> 2 mentioned issues.  So we're almost there...
>>
>> Thanks,
>> Jessica
>>
>> Ke, Liping wrote:
>> > Just one thing, if directly tee, check_result will get wrong output
>> > result.
>> > So I did not tee opkg/make related command. I will try to add
>> > opkg/make to logfile tomorrow.
>> >
>> >> -----Original Message-----
>> >> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> >> bounces@yoctoproject.org] On Behalf Of Ke, Liping
>> >> Sent: Monday, December 06, 2010 5:04 PM
>> >> To: Zhang, Jessica; Lu, Lianhao; Tian, Kevin
>> >> Cc: yocto@yoctoproject.org
>> >> Subject: Re: [yocto] yocto_installer test script update
>> >>
>> >> Hi, Jessica
>> >>
>> >>   I have updated the script file which modifies all your input
>> >> (prompts and the discussion result in the weekly meeting such as
>> >> logfile, go on installing when /var/lib/opkg exists, etc).
>> >>   I have tested with lianhao's repository (x86_64 native sdk has
>> some
>> >> problem, he's now fixing it). Sample log files are included. I had
>> >> uploaded in lianhao's website.
>> >>
>> >>
>> >> Any problem, just let me know. I can fix it tomorrow!
>> >>
>> >> Thanks & Regards,
>> >> criping
>> >>
>> >>
>> >>
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

