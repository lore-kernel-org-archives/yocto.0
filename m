Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog101.obsmtp.com (eu1sys200aog101.obsmtp.com
	[207.126.144.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E3B2E0070C
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:35:49 -0700 (PDT)
Received: from beta.dmz-ap.st.com ([138.198.100.35]) (using TLSv1) by
	eu1sys200aob101.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT4Wk0/pvLdP49ZnNcnT7QBZ6t1NMF7nh@postini.com;
	Wed, 11 Apr 2012 15:35:49 UTC
Received: from zeta.dmz-ap.st.com (ns6.st.com [138.198.234.13])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id AED0EB0;
	Wed, 11 Apr 2012 15:27:20 +0000 (GMT)
Received: from relay2.stm.gmessaging.net (unknown [10.230.100.18])
	by zeta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 767BBB6C;
	Wed, 11 Apr 2012 15:35:43 +0000 (GMT)
Received: from exdcvycastm004.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm004", Issuer "exdcvycastm004" (not verified))
	by relay2.stm.gmessaging.net (Postfix) with ESMTPS id 73232A8083;
	Wed, 11 Apr 2012 17:35:36 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.6.6.68]) by
	exdcvycastm004.EQ1STM.local ([10.230.100.2]) with mapi; Wed, 11 Apr 2012
	17:35:42 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 11 Apr 2012 17:34:18 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac0Wdvt69Ner9ukASX2oljhpkOyjbwBgO9uw
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35AE65C8E92@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
In-Reply-To: <CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {AB40E112-F56A-4178-89F3-E12D1F80F0F5}
x-cr-hashedpuzzle: AdNd AkeF BNxs Dknk Dwgu EGob EthA HPyA HgBs K0z5 L59N
	MMzW OymS O7Rc RYSH V5t0; 2;
	YgByAHUAYwBlAC4AYQBzAGgAZgBpAGUAbABkAEAAZwBtAGEAaQBsAC4AYwBvAG0AOwB5AG8AYwB0AG8AQAB5AG8AYwB0AG8AcAByAG8AagBlAGMAdAAuAG8AcgBnAA==;
	Sosha1_v1; 7; {AB40E112-F56A-4178-89F3-E12D1F80F0F5};
	bwBtAHAAcgBhAGsAYQBzAGgALgBwAGEAbABAAHMAdABlAHIAaQBjAHMAcwBvAG4ALgBjAG8AbQA=;
	Wed, 11 Apr 2012 15:34:18 GMT;
	UgBFADoAIABbAHkAbwBjAHQAbwBdACAAUABvAHIAdABpAG4AZwAgAG8AZgAgAHMAcABlAGMAaQBmAGkAYwAgAEsAZQByAG4AZQBsAC8ARAByAGkAdgBlAHIAIABpAG4AdABvACAAeQBvAGMAdABvAC4A
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Wed, 11 Apr 2012 15:35:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
	I need some more info

[1].I want to add kernel dir path into SRC_URI(in meta-<bsp_name>/recipe-ke=
rnel/linux/linux_3.0.bb), how can we add it ? i.e. lets imagine that my ker=
nel is located in dir /local/kernel/*
How we can add this kernel into SRC_URI?.(imagine that we don't have git://=
 and http: path, we have just dir where my kernel is located)

[2] we want to create BSP for our board that is based on arm-cortex-A9 but =
we don't have meta/conf/machine/include/tune-armcortexa9.inc file in curren=
t yocto.
How can we create it?.

Thanks,

Best Regards,
Om Prakash Pal

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]=20
Sent: Monday, April 09, 2012 11:04 PM
To: Om Prakash PAL
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On Mon, Apr 9, 2012 at 12:31 PM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
> Hi Bruce,
> Thanks for you help.
> As you have mentioned, its working properly.
> I want to know that is there any better way of doing same thing for my sc=
enario ?:
> here is my scenario:
> We have development branch where we write/modify our kernel/driver code i=
.e. thats our local kernel repository(git rep)
> and lots of driver/files being modified everyday-->so I have to take the =
same effect into yocto kernel also----> so except =A0creating patches for a=
ll modified drivers and creating .bbappend files, is there any better way o=
f doing same thing .

Aha. Missed that.

Just create a simple recipe that points at your git repository in the SRC_U=
RI.
If all the changes are in the tree, and you have a defconfig and you
are building
the master branch. Then pretty much everything you need can be specified in
the SRC_URI .. and that's the entire recipe.

If you look in oe-classic, meta-ti or any one of a number of other
layers, you'll
find recipes that do just that.

The meta-kernel-dev (in the poky extras) layer has an example of using the
kernel.org tree with the yocto kern tools, and once yocto 1.3 opens up for
submissions, I have a set of changes prep'd that make it relatively simple =
to
use the yocto kern tools against different types of repository.

So the summary is: Depending on the type of tooling you need, and what base=
line
you need for your work .. there are a number of ways to do things.

>
> Is there anyway that =A0instead of using yocto-kernel tree, =A0can we use=
 our local kernel-tree for building images?. (should =A0I create separate B=
SP ?)

You should definitely create a BSP, that way you can tune the system specif=
ic
to your board,

Cheers,

Bruce

>
> Thanks in advance.
> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@windriver.com]
> Sent: Monday, April 09, 2012 9:32 AM
> To: Om Prakash PAL
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On 12-04-08 10:04 AM, Om Prakash PAL wrote:
>> Hi Bruce,
>> Thanks for your reply.
>> I am totally new to Yocto.
>> I have gone through the section BSP/Linux kernel configuration and if I =
am not wrong then it explains how can we configure the kernel, not the how =
we can add/replace a =A0component(driver etc).
>> lets take the example of UART driver, I want to add my own UART driver c=
ode.
>> Should I write a separate recipe file (.bb) for UART Driver?.
>> if yes then I have to write the recipe files for all my drivers that wil=
l be very time consuming.
>> Is there any other way that I can port all my desired drivers into Yocto=
 kernel?.
>
> No recipes are required per-driver, unless you are building them all
> as out of tree modules.
>
> The typical way this is done is to simply work in the extracted linux
> src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux), manual=
ly
> patch, or copy your drivers into the tree. At this point, you'll port
> the drivers, doing test builds (bitbake -f -c compile linux-yocto) to
> ensure that your port is working. When you've completed the build phase,
> boot tests would be in order. (Do not do a 'clean' or you'll lose in
> progress changes).
>
> When you are happy with the changes, the directory where you were working
> is with the kernel git repository. So you can simply commit your
> changes, and generate patches.
>
> =A0 =A0git format-patch -o <your directory> HEAD^ (or however many commit=
s
> you have)
>
> Take those patches, create a layer with a bbappend and add them like
> any other patch to any package. They'll be applied to subsequent builds
> of the kernel.
>
> I'm skipping a lot of detail there, but it is all found in the various
> manuals, and I don't want to repeat it here.
>
> Cheers,
>
> Bruce
>
>> Please help me.
>> Thanks a lot in advance.
>>
>> Best Regards,
>> Om Prakash Pal
>> ________________________________________
>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>> Sent: Wednesday, April 04, 2012 6:17 PM
>> To: Om Prakash PAL
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>>> Hi,
>>> I want to build my local kernel/Driver code, not the default one.
>>> please help how can i do it ?.
>>> any wiki/docs on this?.
>>
>> The BSP developer guides show how to extend the yocto kernels, and
>> also have sections on custom/different kernel versions. Have you
>> seen that doc yet ? Or have you seen it, and have specific questions ?
>>
>> Bruce
>>
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

