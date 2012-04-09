Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4F1EE0030B
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 10:34:10 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so6489747pbb.35
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2012 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=AgfogBy0Av7a09gGfJ/4FnAjYLV7NppIihYHYKiVhFI=;
	b=a38MbInQtpW98wC0Q4McWRn6jLxUFPiWrlAFFDYuE61xHcnrH9Lpx4gL/5bmGPtkNE
	02gLD3gOH+J8SefF+HkLs347wNAYwAJTHw9fLNDF+U92Os4Icb3WHBopT8Vq74hhXj23
	LTIlOXJiFoImKyuoQVp5lb1eMxTcfhx8Arp7Ga97eGuyKGsxTmM5QSBS7CDRIIsQ77vb
	oYGOox4MpUpn21j76BbHfL5TkKIV6aZsEuLlzuV0xUxdlG8r4Yca+pOp+4c1md7W/0/X
	4AGcGQDvPbmnpO7X04dODLzzgnz015TavVjP9eXRZLlVeEqA36A61xkf+JjRFutdSdLW
	YcQg==
MIME-Version: 1.0
Received: by 10.68.191.35 with SMTP id gv3mr21251482pbc.57.1333992850427; Mon,
	09 Apr 2012 10:34:10 -0700 (PDT)
Received: by 10.68.60.5 with HTTP; Mon, 9 Apr 2012 10:34:10 -0700 (PDT)
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
Date: Mon, 9 Apr 2012 13:34:10 -0400
Message-ID: <CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Om Prakash PAL <omprakash.pal@stericsson.com>
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
X-List-Received-Date: Mon, 09 Apr 2012 17:34:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

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

