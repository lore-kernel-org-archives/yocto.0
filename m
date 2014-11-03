Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ADB4E00905; Mon,  3 Nov 2014 06:12:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FF2CE008ED
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 06:12:54 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 03 Nov 2014 06:06:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="410385410"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Nov 2014 06:04:29 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.3]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.25]) with mapi id
	14.03.0195.001; Mon, 3 Nov 2014 14:11:36 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to debug dependency/setscene/sstate issues
Thread-Index: AQHP93ATsGxC6IoPakOJKx3vidmvHw==
Date: Mon, 3 Nov 2014 14:11:35 +0000
Message-ID: <D07D3A8A.4D1C6%belen.barros.pena@intel.com>
References: <30C2D590D16A5C46ADFE6521910377984114ED96@AZ-US1EXMB03.global.avaya.com>
	<5454DB3F.9080209@mindchasers.com>
	<30C2D590D16A5C46ADFE65219103779841151DE1@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779841151DE1@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.5.141003
x-originating-ip: [10.237.224.39]
MIME-Version: 1.0
Subject: Re: How to debug dependency/setscene/sstate issues
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
X-List-Received-Date: Mon, 03 Nov 2014 14:12:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A493E4C0D0EA6A448E1D1AAEC107B966@intel.com>
Content-Transfer-Encoding: quoted-printable



On 01/11/2014 13:45, "Vuille, Martin (Martin)" <vmartin@avaya.com> wrote:

>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Bob Cochran
>> Sent: November 01, 2014 9:08 AM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] How to debug dependency/setscene/sstate issues
>>=20
>> Won't Toaster give you the insight you seek?
>>=20
>> I still need to ramp up on mastering it, but I was hoping it would help
>>with
>> this sort of thing.
>>=20
>
>I'm still a Yocto newbie, so not familiar with Toaster.
>
>Thanks for the tip, I'll see what it can do for me.

Hi Martin,

You probably found this already, but just in case. The instructions to set
up Toaster:

https://wiki.yoctoproject.org/wiki/Toaster

When you select a build, the 'Tasks' section in the left navigation will
tell you which tasks used shared state objects (tasks with outcome
'cached'), and which tasks didn't find a valid shared state object and
executed instead (tasks with cache attempt set to 'File not in cache'). If
you click on a task name, you will see which file the task looked for and
where. This might help debug your issue.

There is a video explaining the Tasks information in Toaster at

https://wiki.yoctoproject.org/wiki/images/a/a4/Toaster-manual-v5.webmhd.web
m

Cheers

Bel=E9n

>
>MV
>=20
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


