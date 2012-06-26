Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68739E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 13:57:26 -0700 (PDT)
Received: by qcsg15 with SMTP id g15so223994qcs.13
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 13:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=sZT93mVom0i/K/MxXtgHu86pFSj6l5+eXDgaYKBDVuI=;
	b=P9GloNxhxtP+CWwYQSbigwoEBMEZAPU+FiCOhC5PB16/lM7eWBfjC1CLJjJdPJIgL7
	8ckrldI7DLnTbfaMbBCBud6ukcah+wQwuYv5fIARlm7kureAIwkX7d9dX2sqlA8UsvCZ
	At3xdsa911UNDR9Z1yfzzqkePZByWYx0qlmzXd0/edUOgFzbjum88lCjYPyJb0iz+gpX
	9RkpGeremgEIAVj98QMChEuMMx0DlZnzkgtOxayWU7zCOi9NA+pbi9aGIn0pTb0dk8os
	gE98+/gVDBSp35BLYAOfS/RxDt34d3IGl2pa+pKpV//rgLKtXyFvi3HmIvE34BcU/Hwm
	9PYA==
MIME-Version: 1.0
Received: by 10.224.18.146 with SMTP id w18mr26864792qaa.96.1340744245778;
	Tue, 26 Jun 2012 13:57:25 -0700 (PDT)
Received: by 10.229.41.5 with HTTP; Tue, 26 Jun 2012 13:57:25 -0700 (PDT)
In-Reply-To: <4FEA1E25.9080103@gmail.com>
References: <4FE9CCAD.7080003@gmail.com> <4FE9CD04.60604@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
	<4FE9DC9B.2090104@gmail.com> <4FE9DD7F.2090402@windriver.com>
	<4FE9DF3B.8010104@gmail.com> <4FE9E22E.8080305@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131AA@ORSMSX101.amr.corp.intel.com>
	<4FE9E30B.9080903@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131CC@ORSMSX101.amr.corp.intel.com>
	<4FE9F47F.80306@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13288@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A132A5@ORSMSX101.amr.corp.intel.com>
	<4FEA1265.1050408@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13317@ORSMSX101.amr.corp.intel.com>
	<4FEA1E25.9080103@gmail.com>
Date: Tue, 26 Jun 2012 16:57:25 -0400
Message-ID: <CADkTA4OGU-+BGefAVh_sWvoMkZu=g8Ma6H5_F=kMGsUSMYvWEQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
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
X-List-Received-Date: Tue, 26 Jun 2012 20:57:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

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

