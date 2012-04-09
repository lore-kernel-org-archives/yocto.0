Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog109.obsmtp.com (eu1sys200aog109.obsmtp.com
	[207.126.144.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88F3E0030B
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 09:31:35 -0700 (PDT)
Received: from beta.dmz-us.st.com ([167.4.1.35]) (using TLSv1) by
	eu1sys200aob109.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT4MO5FRDxY+muYkXJ4KvhCE2imviucHT@postini.com;
	Mon, 09 Apr 2012 16:31:35 UTC
Received: from zeta.dmz-us.st.com (ns4.st.com [167.4.16.71])
	by beta.dmz-us.st.com (STMicroelectronics) with ESMTP id 277FA3D;
	Mon,  9 Apr 2012 16:31:03 +0000 (GMT)
Received: from relay1.stm.gmessaging.net (unknown [10.230.100.17])
	by zeta.dmz-us.st.com (STMicroelectronics) with ESMTP id 6175A50;
	Mon,  9 Apr 2012 14:32:34 +0000 (GMT)
Received: from exdcvycastm003.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm003", Issuer "exdcvycastm003" (not verified))
	by relay1.stm.gmessaging.net (Postfix) with ESMTPS id E53CF24C2C0;
	Mon,  9 Apr 2012 18:31:08 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.6.6.68]) by
	exdcvycastm003.EQ1STM.local ([10.230.100.1]) with mapi; Mon, 9 Apr 2012
	18:31:17 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 9 Apr 2012 18:31:08 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac0WBaJA4YGLEbHnSGe3hbSN/QhHJQAYtMdd
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>,
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>,
	<4F825F65.4040706@windriver.com>
In-Reply-To: <4F825F65.4040706@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
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
X-List-Received-Date: Mon, 09 Apr 2012 16:31:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
Thanks for you help.
As you have mentioned, its working properly.
I want to know that is there any better way of doing same thing for my scen=
ario ?:
here is my scenario:
We have development branch where we write/modify our kernel/driver code i.e=
. thats our local kernel repository(git rep)
and lots of driver/files being modified everyday-->so I have to take the sa=
me effect into yocto kernel also----> so except  creating patches for all m=
odified drivers and creating .bbappend files, is there any better way of do=
ing same thing . =20

Is there anyway that  instead of using yocto-kernel tree,  can we use our l=
ocal kernel-tree for building images?. (should  I create separate BSP ?)

Thanks in advance.
Best Regards,
Om Prakash Pal
________________________________________
From: Bruce Ashfield [bruce.ashfield@windriver.com]
Sent: Monday, April 09, 2012 9:32 AM
To: Om Prakash PAL
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On 12-04-08 10:04 AM, Om Prakash PAL wrote:
> Hi Bruce,
> Thanks for your reply.
> I am totally new to Yocto.
> I have gone through the section BSP/Linux kernel configuration and if I a=
m not wrong then it explains how can we configure the kernel, not the how w=
e can add/replace a  component(driver etc).
> lets take the example of UART driver, I want to add my own UART driver co=
de.
> Should I write a separate recipe file (.bb) for UART Driver?.
> if yes then I have to write the recipe files for all my drivers that will=
 be very time consuming.
> Is there any other way that I can port all my desired drivers into Yocto =
kernel?.

No recipes are required per-driver, unless you are building them all
as out of tree modules.

The typical way this is done is to simply work in the extracted linux
src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux), manually
patch, or copy your drivers into the tree. At this point, you'll port
the drivers, doing test builds (bitbake -f -c compile linux-yocto) to
ensure that your port is working. When you've completed the build phase,
boot tests would be in order. (Do not do a 'clean' or you'll lose in
progress changes).

When you are happy with the changes, the directory where you were working
is with the kernel git repository. So you can simply commit your
changes, and generate patches.

    git format-patch -o <your directory> HEAD^ (or however many commits
you have)

Take those patches, create a layer with a bbappend and add them like
any other patch to any package. They'll be applied to subsequent builds
of the kernel.

I'm skipping a lot of detail there, but it is all found in the various
manuals, and I don't want to repeat it here.

Cheers,

Bruce

> Please help me.
> Thanks a lot in advance.
>
> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@windriver.com]
> Sent: Wednesday, April 04, 2012 6:17 PM
> To: Om Prakash PAL
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>> Hi,
>> I want to build my local kernel/Driver code, not the default one.
>> please help how can i do it ?.
>> any wiki/docs on this?.
>
> The BSP developer guides show how to extend the yocto kernels, and
> also have sections on custom/different kernel versions. Have you
> seen that doc yet ? Or have you seen it, and have specific questions ?
>
> Bruce
>
>>
>> Best Regards,
>> Om Prakash Pal
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


