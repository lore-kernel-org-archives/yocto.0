Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17905E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 17:42:48 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so607906ggn.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 17:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=wnFPJMkzoRgYOj9YQb/+d/7koPvFZPowAMvLTTixCIk=;
	b=wWmqW6ZBc2eELn7FP4sMK5R+HJgjK/XWUDTzm2rhnJZNlZ5chZ0wlNfPbls8/cYh8Y
	1zTFyxOmp1zpAF19mGFFnSEPX4sKvE1pzPcxfclVQhkpaZ+5bgDXl3pyTjXr28YTUOqJ
	6CZOfUrjhZbiR9E5gOtcOVjg+jo3paNEnzNv1zDCbiCeEIMgczLkct9WlzQZExah+MjS
	zuqA5/1mptmdUN0wSSYLbrMA9FK4Z55JdbCpfy7Hp5uH/pG97gD3Nz3Q64AbsNScBRHy
	rfGqRQzJTFryP+7JPsjPFEOlLDJ35lZqWivxC+OxoxiJUoqddISHYZqQk9Z59QZlOPBk
	l7/g==
Received: by 10.236.161.2 with SMTP id v2mr20104516yhk.26.1340757767258;
	Tue, 26 Jun 2012 17:42:47 -0700 (PDT)
Received: from [10.68.121.217] (mobile-166-147-115-050.mycingular.net.
	[166.147.115.50])
	by mx.google.com with ESMTPS id c28sm107231785yhk.2.2012.06.26.17.42.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 26 Jun 2012 17:42:46 -0700 (PDT)
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
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13340@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A13340@ORSMSX101.amr.corp.intel.com>
Mime-Version: 1.0 (1.0)
Message-Id: <0826D141-960A-4B14-900A-3ECCBED18F9D@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: James Abernathy <jfabernathy@gmail.com>
Date: Tue, 26 Jun 2012 20:42:38 -0400
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
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
X-List-Received-Date: Wed, 27 Jun 2012 00:42:48 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Yes I did cleansstate.=20
On Jun 26, 2012, at 4:43 PM, "Rifenbark, Scott M" <scott.m.rifenbark@intel=
.com> wrote:

> Jim,=20
>=20
> Did you cleansstate before building and using menuconfig?  There is a bu=
g (2256) that prevents configurations made using menuconfig from sticking.
>=20
> Scott
>=20
> -----Original Message-----
> From: jfabernathy [mailto:jfabernathy@gmail.com]=20
> Sent: Tuesday, June 26, 2012 1:40 PM
> To: Rifenbark, Scott M
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>=20
> On 06/26/2012 04:21 PM, Rifenbark, Scott M wrote:
>> Jim,
>>=20
>> Yes - I am still running the very last part of my test.  If that is the=
 change then I will make it to the 1.2 version of the manual and publish it=
 to the website.
>>=20
>> Scott
>=20
> While I had this working I thought I'd complete the Appendix B example=
=20
> for the CONFIG_SMP change.  I'm finding problems with the compile step=
=20
> after menuconfig is run to turn off SMP.  I get a mismatch that I don't=
=20
> understand:
>=20
> Value requested for CONFIG_SMP not in final ".config"
> Requested value: "CONFIG_SMP=3Dy"
> Actual value set: "# CONFIG_SMP is not set"
>=20
> There must be another setting of CONFIG_SMP that is conflicting with the=
=
=20
> .config file
>=20
> Jim A
>=20
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject=
.org] On Behalf Of jfabernathy
>> Sent: Tuesday, June 26, 2012 12:50 PM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>=20
>> On 06/26/2012 02:07 PM, Rifenbark, Scott M wrote:
>>> When I attempted to rebuild minimal I hit the same error you did Jim r=
egarding kern-tools-native.  This would be expected as Bruce pointed out th=
at problem is alive in denzil.  I am going to set the poky-extras branch to=
 'denzil' and retry that part of the example.
>>>=20
>>> Scott
>>>=20
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoprojec=
t.org] On Behalf Of Rifenbark, Scott M
>>> Sent: Tuesday, June 26, 2012 10:44 AM
>>> To: Bruce Ashfield
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>=20
>>> I am on task 1507 of 1606 of a minimal build (from the example).  No i=
ssues so far.
>> So now that Denzil has a branch in poky-extra, the only doc change is t=
o
>> add the checkout -b denzil statement for the poky-extra directory.
>> Everything else is correct.
>>=20
>> Jim A
>>=20
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, June 26, 2012 10:42 AM
>>> To: Rifenbark, Scott M
>>> Cc: jfabernathy; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>=20
>>> On 12-06-26 12:30 PM, Rifenbark, Scott M wrote:
>>>> I am going to run through the B.1 example verbatim from the "current"=
 version of the manual and see what happens.
>>> Fixing the license check was just a matter of me locking the SRCREV
>>> for the tools to a value that works for denzil. I just pushed a denzil
>>> branch to poky-extras that built and booted the yocto kernel for
>>> me.
>>>=20
>>> Cheers,
>>>=20
>>> Bruce
>>>=20
>>>> Scott
>>>>=20
>>>> -----Original Message-----
>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>> Sent: Tuesday, June 26, 2012 9:28 AM
>>>> To: Rifenbark, Scott M
>>>> Cc: jfabernathy; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>=20
>>>> On 12-06-26 12:26 PM, Rifenbark, Scott M wrote:
>>>>> This is a good point.  In looking at the example it does not say wha=
t branch you should be dealing with for poky-extras.
>>>> And I'm configuring a test right now and will create a denzil
>>>> branch, once I see it works.
>>>>=20
>>>> Cheers,
>>>>=20
>>>> Bruce
>>>>=20
>>>>> -----Original Message-----
>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>>> Sent: Tuesday, June 26, 2012 9:24 AM
>>>>> To: jfabernathy
>>>>> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>=20
>>>>> On 12-06-26 12:11 PM, jfabernathy wrote:
>>>>>> On 06/26/2012 12:04 PM, Bruce Ashfield wrote:
>>>>>>> On 12-06-26 12:00 PM, jfabernathy wrote:
>>>>>>>> On 06/26/2012 10:56 AM, Rifenbark, Scott M wrote:
>>>>>>>>> Bruce,
>>>>>>>>>=20
>>>>>>>>> Should the example note this? Would it be best to specifically s=
ay to
>>>>>>>>> uncomment that SRC_URI line?
>>>>>>>>>=20
>>>>>>>>> Scott
>>>>>>>> I think some text needs to be added. I uncommented the SRC_URI li=
ne and
>>>>>>>> I still fail building the image. The failure is related to kernel=
 tools:
>>>>>>>>=20
>>>>>>>> ERROR: kern-tools-native: md5 data is not matching for
>>>>>>>> file://git/tools/kgit;beginline=3D5;endline=3D9;md5=3De2bf4415f3d=
843f43d2e22b0d91a6fee
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> ERROR: kern-tools-native: The new md5 checksum is
>>>>>>>> d8d1d729a70cd5f52972f8884b80743d
>>>>>>>> ERROR: kern-tools-native: Check if the license information has
>>>>>>>> changed in
>>>>>>>> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please f=
ix
>>>>>>>> ERROR: Function failed: do_qa_configure
>>>>>>> This one is actually fixed on master, but poky-extras .. is just t=
hat
>>>>>>> 'extra', so this may still be alive in that repo.
>>>>>>>=20
>>>>>>> This wouldn't need to be documented, since it's a bug/issue, and n=
ot
>>>>>>> something that would persist.
>>>>>>>=20
>>>>>>> What release are you pairing poky extras with ? I can always creat=
e a
>>>>>>> branch to make sure they are consistent.
>>>>>>>=20
>>>>>> I was using Denzil because the snapshot noted in the example does n=
ot
>>>>>> exist. So there is another doc issue.
>>>>> Aha. In this case, we could note that the poky-extras repo branch sh=
ould
>>>>> match the main repository branch .. and I could ensure that meta-ker=
nel-dev
>>>>> works in that configuration.
>>>>>=20
>>>>> That's likely the right solution, rather than forcing you to switch =
to
>>>>> master (unless you want to :)
>>>>>=20
>>>>> Cheers,
>>>>>=20
>>>>> Bruce
>>>>>=20
>>>>>> I can always test on Master, but the docs need to be update to refl=
ect
>>>>>> something that will work to completion without errors, IMHO.
>>>>>>=20
>>>>>> Jim A
>>>>>>=20
>>>>>>> Cheers,
>>>>>>>=20
>>>>>>> Bruce
>>>>>>>=20
>>>>>>>> Jim A
>>>>>>>>=20
>>>>>>>>> -----Original Message-----
>>>>>>>>> From: yocto-bounces@yoctoproject.org
>>>>>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bruce Ashfi=
eld
>>>>>>>>> Sent: Tuesday, June 26, 2012 7:54 AM
>>>>>>>>> To: jfabernathy
>>>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B questio=
n
>>>>>>>>>=20
>>>>>>>>> On 12-06-26 10:52 AM, jfabernathy wrote:
>>>>>>>>>> In the example in The Developement Manual v1.2 in Appendix B Se=
ction
>>>>>>>>>> B.1.7, it states that you need to put in the statement:
>>>>>>>>>>=20
>>>>>>>>>> KSRC_linux_yocto_3_2 ?=3D"/home/scottrif/linux-yocto-3.2.git"
>>>>>>>>>>=20
>>>>>>>>>> into the appropriate .bbappend file way now in the poky-extra
>>>>>>>>>> directory
>>>>>>>>>> structure. If I look at that file, |linux-yocto_3.2.bbappend| ,=
 I
>>>>>>>>>> seen a
>>>>>>>>>> SRC_URI line, immediately after our inserted KSRC statement, th=
at is
>>>>>>>>>> commented out:
>>>>>>>>>>=20
>>>>>>>>>> # SRC_URI =3D
>>>>>>>>>> "git://${KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;b=
ranch=3D${KBRANCH},meta;name=3Dmachine,meta"
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>> Should that line be uncommented or is the SRC_URI already defau=
lted
>>>>>>>>>> somewhere to use the newly defined KSRC_linux_yocto_3_2 variabl=
e?
>>>>>>>>> It should be uncommented. I commented them by default, since the=
 extras
>>>>>>>>> repository is a bit of a collection ground. If they are uncommen=
ted,
>>>>>>>>> and
>>>>>>>>> combined with the AUTOREV also set in the file, you are forced t=
o fix
>>>>>>>>> all files, versus just the one you want.
>>>>>>>>>=20
>>>>>>>>> Cheers,
>>>>>>>>>=20
>>>>>>>>> Bruce
>>>>>>>>>=20
>>>>>>>>>> Jim A
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>> _______________________________________________
>>>>>>>>>> yocto mailing list
>>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>> _______________________________________________
>>>>>>>>> yocto mailing list
>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20

