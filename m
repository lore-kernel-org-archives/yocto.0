Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D040E00815; Wed, 11 Feb 2015 13:00:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3D01E003D4
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 13:00:43 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 27335446D41
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 16:00:42 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 3vs-cDn2eEUC for <yocto@yoctoproject.org>;
	Wed, 11 Feb 2015 16:00:40 -0500 (EST)
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by mail.rogue-research.com (Postfix) with ESMTPSA id BADE5446D33
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 16:00:40 -0500 (EST)
Received: by mail-qa0-f46.google.com with SMTP id n4so4723012qaq.5
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 13:00:40 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.140.49.5 with SMTP id p5mr1138059qga.15.1423688439999; Wed,
	11 Feb 2015 13:00:39 -0800 (PST)
Received: by 10.96.87.38 with HTTP; Wed, 11 Feb 2015 13:00:39 -0800 (PST)
In-Reply-To: <46557CEF4ABDB54B92C59390D2741FD1BD8D87@PCISGEX.pciltd.com.sg>
References: <46557CEF4ABDB54B92C59390D2741FD1BD8C09@PCISGEX.pciltd.com.sg>
	<CACgAsMev7C2tTpHTYdQEr=Lb5mXJsi6nAHuJd-fR-4bqkreU2A@mail.gmail.com>
	<46557CEF4ABDB54B92C59390D2741FD1BD8C70@PCISGEX.pciltd.com.sg>
	<CACgAsMc_Oa=PGLR2tsLNfwTEBabZRfg1h09Tqi9Pa4m+oRZGqg@mail.gmail.com>
	<46557CEF4ABDB54B92C59390D2741FD1BD8D87@PCISGEX.pciltd.com.sg>
Date: Wed, 11 Feb 2015 16:00:39 -0500
Message-ID: <CACgAsMecMgA1w-HWxQuGTnO1z07eW=WCns+1mZ3rPbK1f2_dww@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: "Alvin D.M. DIZON" <adm.dizon@pciltd.com.sg>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confused with adding drivers to kernel via bitbake -c menuconfig
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
X-List-Received-Date: Wed, 11 Feb 2015 21:00:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 9, 2015 at 9:03 PM, Alvin D.M. DIZON
<adm.dizon@pciltd.com.sg> wrote:
> From my understanding bitbake -c cleansstate deletes sstate-cache and $(W=
ORKDIR), so if I want to replace the previous kernel configuration with a n=
ew one, I should run cleansstate right?

Yes bitbake <packagename> -c cleansstate will delete package cache & WORKDI=
R .

After you create you layer, add your bbappend file and add config in
defconfig.cfg simply bitbake <packagename> and it will detect changes
and process all tasks required by the package.

You can validate in your WORKDIR to validate the change


hmm I just notice that adding CONFIG_BT=3Dm, when it was =3Dy, in
defconfig.cfg didn't change it even tried cleansstate. But it worked
if I copy the original .config to my bbappend and change it inside...

I'm with yocto 1.7.1

NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "wandboard-quad"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.1"

 -KA


> ________________________________________
> From: Kevyn-Alexandre Par=C3=A9 [kapare@rogue-research.com]
> Sent: Saturday, February 07, 2015 3:21 AM
> To: Alvin D.M. DIZON
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Confused with adding drivers to kernel via bitbake -=
c menuconfig
>
> Alvin,,
>
> On Thu, Feb 5, 2015 at 8:35 PM, Alvin D.M. DIZON
> <adm.dizon@pciltd.com.sg> wrote:
>> Hello Kevyn,
>>
>> Thanks for your help. Do I still have to run bitbake -c cleansstate afte=
r creating the configuration fragment? Or do I go straight to bitbake linux=
-imx or bitbake fsl-image-x11?
>
> Look into ${WORKDIR}/temp for what's happening
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-W=
ORKDIR
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#using=
poky-debugging-taskfailures
>
> It depends what you want to do.
>
> -KA
>
> On Thu, Feb 5, 2015 at 8:35 PM, Alvin D.M. DIZON
> <adm.dizon@pciltd.com.sg> wrote:
>> Hello Kevyn,
>>
>> Thanks for your help. Do I still have to run bitbake -c cleansstate afte=
r creating the configuration fragment? Or do I go straight to bitbake linux=
-imx or bitbake fsl-image-x11?
>>
>> Thanks
>> ________________________________________
>> From: Kevyn-Alexandre Par=C3=A9 [kapare@rogue-research.com]
>> Sent: Friday, February 06, 2015 12:58 AM
>> To: Alvin D.M. DIZON
>> Subject: Re: [yocto] Confused with adding drivers to kernel via bitbake =
-c menuconfig
>>
>> Hi Alvin,
>>
>> On Thu, Feb 5, 2015 at 12:43 AM, Alvin D.M. DIZON
>> <adm.dizon@pciltd.com.sg> wrote:
>>> Hello,
>>>
>>> I would like to the generic USB bluetooth driver "btusb" to my i.MX6Q S=
ABRE SD, so that my USB Bluetooth dongle(Cambridge Silicon Radio). Upon rea=
ding https://community.freescale.com/docs/DOC-100847 I enabled the Bluetoot=
h subsystem support, RFCOMM, BNEP, and HIDP, as well as the HCI USB driver.=
 I saved the .config file and copied it to the directory where my Linux rec=
ipe is (linux-imx_3.10.17.bb). I then renamed my .config file into defconfi=
g, made a new folder called "files" and placed the defconfig in it. I also =
made a .bbappend file that contained
>>
>> I personally prefer this approach:
>> http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#changi=
ng-the-configuration
>> second part with the .cfg
>>
>> Doing this you can then validate it:
>> bitbake linux-imx -c configure -f
>>
>> cat tmp/work/<PATH>/linux-imx/<VERSION>/build/.config | grep CONFIG_BT
>>
>>>
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>> SRC_URI +=3D "file://defconfig"
>>>
>>> I then ran "bitbake -c cleansstate linux-imx", after that I ran "bitbak=
e fsl-image-x11". I flashed the resulting .sdcard file to an SD card, boote=
d up my board, but found no trace of btusb. I tried doing "bitbake -f -c co=
mpile linux-imx" and then "bitbake -f -c deploy linux-imx", and copied the =
resulting uImage to my SD card's /media/Boot folder, but still no trace of =
btusb. I checked the tar archive for the kernel modules found in the /tmp/d=
eploy/images/imx6qsabresd folder, and found two files called modules.order =
and modules.builtin, the btusb driver is listed in the modules.builtin file=
, but not mentioned in the modules.order file, I have also tried compiling =
the driver as module, and then ran the same commands as listed in the said =
link, but could not find the module. What am I doing wrong here? Any help w=
ill be will be appreciated, since I am new to Linux and the Yocto Project.
>>>
>>
>> Before putting it on your SD you could validate that btusb is in
>> tmp/work/<PATH>/linux-imx/<VERSION>/image
>>
>> Or
>>
>> grep btusb tmp/work/<PATH>/linux-imx/<VERSION>/temp/*
>>
>> Hope it could help,
>>
>> -KA
>>
>>> Thanks,
>>> Alvin
>>> [PCI]
>>>
>>>   Innovative Manufacturing Solutions. Professionally Delivered!
>>>
>>> The information contained in this email is confidential and is intended=
 for addressee(s) only. If you have received this email in error, please no=
tify the originator immediately. Nothing in this email shall constitute an =
offer or acceptance leading to a legally binding contract which shall only =
arise from a formal written agreement between yourselves and ourselves in t=
he form of a Purchase Order issued by us and accepted by you in writing. Fo=
r the avoidance of doubt, this email shall not be construed in any way as a=
 formal written agreement. We accept no liability for any damage arising fr=
om alteration of the contents of this message by a third party or as a resu=
lt of any virus being passed on. Please consider your environmental respons=
ibility before printing this e-mail.
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

