Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CE89E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:31:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Jun 2012 09:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="162942142"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 26 Jun 2012 09:30:55 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 09:30:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.115]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 09:30:54 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Yocto Development Manual Appendix B question
Thread-Index: AQHNU6tX5HKMCOJfWU226Ph+u+uRAJcNJQcA//+LH1CAAId2gIAAARCAgAACEoCAAAOEAP//i0OwgAB1xID//4tbcA==
Date: Tue, 26 Jun 2012 16:30:53 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A131CC@ORSMSX101.amr.corp.intel.com>
References: <4FE9CCAD.7080003@gmail.com> <4FE9CD04.60604@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
	<4FE9DC9B.2090104@gmail.com> <4FE9DD7F.2090402@windriver.com>
	<4FE9DF3B.8010104@gmail.com> <4FE9E22E.8080305@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131AA@ORSMSX101.amr.corp.intel.com>
	<4FE9E30B.9080903@windriver.com>
In-Reply-To: <4FE9E30B.9080903@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Development Manual Appendix B question
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
X-List-Received-Date: Tue, 26 Jun 2012 16:31:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am going to run through the B.1 example verbatim from the "current" versi=
on of the manual and see what happens.

Scott

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Tuesday, June 26, 2012 9:28 AM
To: Rifenbark, Scott M
Cc: jfabernathy; yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Development Manual Appendix B question

On 12-06-26 12:26 PM, Rifenbark, Scott M wrote:
> This is a good point.  In looking at the example it does not say what bra=
nch you should be dealing with for poky-extras.

And I'm configuring a test right now and will create a denzil
branch, once I see it works.

Cheers,

Bruce

>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Tuesday, June 26, 2012 9:24 AM
> To: jfabernathy
> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>
> On 12-06-26 12:11 PM, jfabernathy wrote:
>> On 06/26/2012 12:04 PM, Bruce Ashfield wrote:
>>> On 12-06-26 12:00 PM, jfabernathy wrote:
>>>> On 06/26/2012 10:56 AM, Rifenbark, Scott M wrote:
>>>>> Bruce,
>>>>>
>>>>> Should the example note this? Would it be best to specifically say to
>>>>> uncomment that SRC_URI line?
>>>>>
>>>>> Scott
>>>> I think some text needs to be added. I uncommented the SRC_URI line an=
d
>>>> I still fail building the image. The failure is related to kernel tool=
s:
>>>>
>>>> ERROR: kern-tools-native: md5 data is not matching for
>>>> file://git/tools/kgit;beginline=3D5;endline=3D9;md5=3De2bf4415f3d843f4=
3d2e22b0d91a6fee
>>>>
>>>>
>>>> ERROR: kern-tools-native: The new md5 checksum is
>>>> d8d1d729a70cd5f52972f8884b80743d
>>>> ERROR: kern-tools-native: Check if the license information has
>>>> changed in
>>>> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
>>>> ERROR: Function failed: do_qa_configure
>>>
>>> This one is actually fixed on master, but poky-extras .. is just that
>>> 'extra', so this may still be alive in that repo.
>>>
>>> This wouldn't need to be documented, since it's a bug/issue, and not
>>> something that would persist.
>>>
>>> What release are you pairing poky extras with ? I can always create a
>>> branch to make sure they are consistent.
>>>
>>
>> I was using Denzil because the snapshot noted in the example does not
>> exist. So there is another doc issue.
>
> Aha. In this case, we could note that the poky-extras repo branch should
> match the main repository branch .. and I could ensure that meta-kernel-d=
ev
> works in that configuration.
>
> That's likely the right solution, rather than forcing you to switch to
> master (unless you want to :)
>
> Cheers,
>
> Bruce
>
>>
>> I can always test on Master, but the docs need to be update to reflect
>> something that will work to completion without errors, IMHO.
>>
>> Jim A
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>>
>>>> Jim A
>>>>
>>>>> -----Original Message-----
>>>>> From: yocto-bounces@yoctoproject.org
>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
>>>>> Sent: Tuesday, June 26, 2012 7:54 AM
>>>>> To: jfabernathy
>>>>> Cc: yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>
>>>>> On 12-06-26 10:52 AM, jfabernathy wrote:
>>>>>> In the example in The Developement Manual v1.2 in Appendix B Section
>>>>>> B.1.7, it states that you need to put in the statement:
>>>>>>
>>>>>> KSRC_linux_yocto_3_2 ?=3D"/home/scottrif/linux-yocto-3.2.git"
>>>>>>
>>>>>> into the appropriate .bbappend file way now in the poky-extra
>>>>>> directory
>>>>>> structure. If I look at that file, |linux-yocto_3.2.bbappend| , I
>>>>>> seen a
>>>>>> SRC_URI line, immediately after our inserted KSRC statement, that is
>>>>>> commented out:
>>>>>>
>>>>>> # SRC_URI =3D
>>>>>> "git://${KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;branch=
=3D${KBRANCH},meta;name=3Dmachine,meta"
>>>>>>
>>>>>>
>>>>>>
>>>>>> Should that line be uncommented or is the SRC_URI already defaulted
>>>>>> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?
>>>>> It should be uncommented. I commented them by default, since the extr=
as
>>>>> repository is a bit of a collection ground. If they are uncommented,
>>>>> and
>>>>> combined with the AUTOREV also set in the file, you are forced to fix
>>>>> all files, versus just the one you want.
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>>> Jim A
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>
>>
>


