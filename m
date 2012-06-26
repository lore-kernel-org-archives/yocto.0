Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C8EE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 14:15:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jun 2012 14:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170352525"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2012 14:15:28 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 14:15:25 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.73]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 14:15:24 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, jfabernathy
	<jfabernathy@gmail.com>
Thread-Topic: [yocto] Yocto Development Manual Appendix B question
Thread-Index: AQHNU6tX5HKMCOJfWU226Ph+u+uRAJcNJQcA//+LH1CAAId2gIAAARCAgAACEoCAAAOEAP//i0OwgAB1xID//4tbcAARLnqAAA6hmFAAHHb4UP/+yt+AgABs2/D//6EngIAABNiAgABwgaA=
Date: Tue, 26 Jun 2012 21:15:24 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A13361@ORSMSX101.amr.corp.intel.com>
References: <4FE9CCAD.7080003@gmail.com>	<4FE9CD04.60604@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
	<4FE9DC9B.2090104@gmail.com>	<4FE9DD7F.2090402@windriver.com>
	<4FE9DF3B.8010104@gmail.com>	<4FE9E22E.8080305@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131AA@ORSMSX101.amr.corp.intel.com>
	<4FE9E30B.9080903@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131CC@ORSMSX101.amr.corp.intel.com>
	<4FE9F47F.80306@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13288@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A132A5@ORSMSX101.amr.corp.intel.com>
	<4FEA1265.1050408@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13317@ORSMSX101.amr.corp.intel.com>
	<4FEA1E25.9080103@gmail.com>
	<CADkTA4OGU-+BGefAVh_sWvoMkZu=g8Ma6H5_F=kMGsUSMYvWEQ@mail.gmail.com>
In-Reply-To: <CADkTA4OGU-+BGefAVh_sWvoMkZu=g8Ma6H5_F=kMGsUSMYvWEQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 26 Jun 2012 21:15:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Yes - looking more closely this is not the bug issue but standard warnings.=
  I got these also.  I can put a note in the example explaining the situati=
on.=20

Scott

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]=20
Sent: Tuesday, June 26, 2012 1:57 PM
To: jfabernathy
Cc: Rifenbark, Scott M; yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Development Manual Appendix B question

On Tue, Jun 26, 2012 at 4:40 PM, jfabernathy <jfabernathy@gmail.com> wrote:
> On 06/26/2012 04:21 PM, Rifenbark, Scott M wrote:
>>
>> Jim,
>>
>> Yes - I am still running the very last part of my test. =A0If that is th=
e
>> change then I will make it to the 1.2 version of the manual and publish =
it
>> to the website.
>>
>> Scott
>
>
> While I had this working I thought I'd complete the Appendix B example fo=
r
> the CONFIG_SMP change. =A0I'm finding problems with the compile step afte=
r
> menuconfig is run to turn off SMP. =A0I get a mismatch that I don't
> understand:
>
> Value requested for CONFIG_SMP not in final ".config"
> Requested value: "CONFIG_SMP=3Dy"
> Actual value set: "# CONFIG_SMP is not set"
>
> There must be another setting of CONFIG_SMP that is conflicting with the
> .config file

If I'm reading this correctly, it's just another tweak needed to the
docs. When we
first wrote those sections, there were issues with the kernel
configuration audit
information being masked.

In this case the kernel configuration audit knows that your BSP wants to en=
able
SMP, but yet it didn't appear in the final .config, so it warns you.
But since you
manually turned it off .. this is expected.

I can't decide if we should increase complexity and detect this to
inhibit the warning,
or document it. For now, I'm in the document it camp.

Cheers,

Bruce

>
>
> Jim A
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of jfabernathy
>> Sent: Tuesday, June 26, 2012 12:50 PM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>
>> On 06/26/2012 02:07 PM, Rifenbark, Scott M wrote:
>>>
>>> When I attempted to rebuild minimal I hit the same error you did Jim
>>> regarding kern-tools-native. =A0This would be expected as Bruce pointed=
 out
>>> that problem is alive in denzil. =A0I am going to set the poky-extras b=
ranch
>>> to 'denzil' and retry that part of the example.
>>>
>>> Scott
>>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org
>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>>> Sent: Tuesday, June 26, 2012 10:44 AM
>>> To: Bruce Ashfield
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>
>>> I am on task 1507 of 1606 of a minimal build (from the example). =A0No
>>> issues so far.
>>
>> So now that Denzil has a branch in poky-extra, the only doc change is to
>> add the checkout -b denzil statement for the poky-extra directory.
>> Everything else is correct.
>>
>> Jim A
>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, June 26, 2012 10:42 AM
>>> To: Rifenbark, Scott M
>>> Cc: jfabernathy; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>
>>> On 12-06-26 12:30 PM, Rifenbark, Scott M wrote:
>>>>
>>>> I am going to run through the B.1 example verbatim from the "current"
>>>> version of the manual and see what happens.
>>>
>>> Fixing the license check was just a matter of me locking the SRCREV
>>> for the tools to a value that works for denzil. I just pushed a denzil
>>> branch to poky-extras that built and booted the yocto kernel for
>>> me.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>> Scott
>>>>
>>>> -----Original Message-----
>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>> Sent: Tuesday, June 26, 2012 9:28 AM
>>>> To: Rifenbark, Scott M
>>>> Cc: jfabernathy; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>
>>>> On 12-06-26 12:26 PM, Rifenbark, Scott M wrote:
>>>>>
>>>>> This is a good point. =A0In looking at the example it does not say wh=
at
>>>>> branch you should be dealing with for poky-extras.
>>>>
>>>> And I'm configuring a test right now and will create a denzil
>>>> branch, once I see it works.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>> -----Original Message-----
>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>>> Sent: Tuesday, June 26, 2012 9:24 AM
>>>>> To: jfabernathy
>>>>> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>
>>>>> On 12-06-26 12:11 PM, jfabernathy wrote:
>>>>>>
>>>>>> On 06/26/2012 12:04 PM, Bruce Ashfield wrote:
>>>>>>>
>>>>>>> On 12-06-26 12:00 PM, jfabernathy wrote:
>>>>>>>>
>>>>>>>> On 06/26/2012 10:56 AM, Rifenbark, Scott M wrote:
>>>>>>>>>
>>>>>>>>> Bruce,
>>>>>>>>>
>>>>>>>>> Should the example note this? Would it be best to specifically sa=
y
>>>>>>>>> to
>>>>>>>>> uncomment that SRC_URI line?
>>>>>>>>>
>>>>>>>>> Scott
>>>>>>>>
>>>>>>>> I think some text needs to be added. I uncommented the SRC_URI lin=
e
>>>>>>>> and
>>>>>>>> I still fail building the image. The failure is related to kernel
>>>>>>>> tools:
>>>>>>>>
>>>>>>>> ERROR: kern-tools-native: md5 data is not matching for
>>>>>>>>
>>>>>>>> file://git/tools/kgit;beginline=3D5;endline=3D9;md5=3De2bf4415f3d8=
43f43d2e22b0d91a6fee
>>>>>>>>
>>>>>>>>
>>>>>>>> ERROR: kern-tools-native: The new md5 checksum is
>>>>>>>> d8d1d729a70cd5f52972f8884b80743d
>>>>>>>> ERROR: kern-tools-native: Check if the license information has
>>>>>>>> changed in
>>>>>>>> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fi=
x
>>>>>>>> ERROR: Function failed: do_qa_configure
>>>>>>>
>>>>>>> This one is actually fixed on master, but poky-extras .. is just th=
at
>>>>>>> 'extra', so this may still be alive in that repo.
>>>>>>>
>>>>>>> This wouldn't need to be documented, since it's a bug/issue, and no=
t
>>>>>>> something that would persist.
>>>>>>>
>>>>>>> What release are you pairing poky extras with ? I can always create=
 a
>>>>>>> branch to make sure they are consistent.
>>>>>>>
>>>>>> I was using Denzil because the snapshot noted in the example does no=
t
>>>>>> exist. So there is another doc issue.
>>>>>
>>>>> Aha. In this case, we could note that the poky-extras repo branch
>>>>> should
>>>>> match the main repository branch .. and I could ensure that
>>>>> meta-kernel-dev
>>>>> works in that configuration.
>>>>>
>>>>> That's likely the right solution, rather than forcing you to switch t=
o
>>>>> master (unless you want to :)
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>>> I can always test on Master, but the docs need to be update to refle=
ct
>>>>>> something that will work to completion without errors, IMHO.
>>>>>>
>>>>>> Jim A
>>>>>>
>>>>>>> Cheers,
>>>>>>>
>>>>>>> Bruce
>>>>>>>
>>>>>>>> Jim A
>>>>>>>>
>>>>>>>>> -----Original Message-----
>>>>>>>>> From: yocto-bounces@yoctoproject.org
>>>>>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bruce Ashfie=
ld
>>>>>>>>> Sent: Tuesday, June 26, 2012 7:54 AM
>>>>>>>>> To: jfabernathy
>>>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>>>>>
>>>>>>>>> On 12-06-26 10:52 AM, jfabernathy wrote:
>>>>>>>>>>
>>>>>>>>>> In the example in The Developement Manual v1.2 in Appendix B
>>>>>>>>>> Section
>>>>>>>>>> B.1.7, it states that you need to put in the statement:
>>>>>>>>>>
>>>>>>>>>> KSRC_linux_yocto_3_2 ?=3D"/home/scottrif/linux-yocto-3.2.git"
>>>>>>>>>>
>>>>>>>>>> into the appropriate .bbappend file way now in the poky-extra
>>>>>>>>>> directory
>>>>>>>>>> structure. If I look at that file, |linux-yocto_3.2.bbappend| , =
I
>>>>>>>>>> seen a
>>>>>>>>>> SRC_URI line, immediately after our inserted KSRC statement, tha=
t
>>>>>>>>>> is
>>>>>>>>>> commented out:
>>>>>>>>>>
>>>>>>>>>> # SRC_URI =3D
>>>>>>>>>>
>>>>>>>>>> "git://${KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;br=
anch=3D${KBRANCH},meta;name=3Dmachine,meta"
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Should that line be uncommented or is the SRC_URI already
>>>>>>>>>> defaulted
>>>>>>>>>> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable=
?
>>>>>>>>>
>>>>>>>>> It should be uncommented. I commented them by default, since the
>>>>>>>>> extras
>>>>>>>>> repository is a bit of a collection ground. If they are
>>>>>>>>> uncommented,
>>>>>>>>> and
>>>>>>>>> combined with the AUTOREV also set in the file, you are forced to
>>>>>>>>> fix
>>>>>>>>> all files, versus just the one you want.
>>>>>>>>>
>>>>>>>>> Cheers,
>>>>>>>>>
>>>>>>>>> Bruce
>>>>>>>>>
>>>>>>>>>> Jim A
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> yocto mailing list
>>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> yocto mailing list
>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

