Return-Path: <xbbn@mjolner.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FEE7E00CB0; Thu,  8 Dec 2016 23:26:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.mjolner.dk (bifrost.fuz.mjolner.dk [87.116.45.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6783E00CA6
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 23:25:43 -0800 (PST)
Received: from drift35.mia.local (10.16.200.35) by drift35.mia.local
	(10.16.200.35) with Microsoft SMTP Server (TLS) id 15.0.1236.3;
	Fri, 9 Dec 2016 08:25:41 +0100
Received: from drift35.mia.local ([::1]) by drift35.mia.local ([::1]) with
	mapi id 15.00.1236.000; Fri, 9 Dec 2016 08:25:41 +0100
From: Bent Bisballe Nyeng <xbbn@mjolner.dk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel config incremental modification not working.
Thread-Index: AQHSUVw0fyGoDN9Fj0KJMeltOJYcLQ==
Date: Fri, 9 Dec 2016 07:25:40 +0000
Message-ID: <2fda8ea478a64bdeab42c01e2df6a943@drift35.mia.local>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<30c3c6d7-9f12-e082-33bb-1a218c8f4bd5@windriver.com>
Accept-Language: en-GB, da-DK, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [87.116.45.78]
x-pmwin-version: 4.0.2, Antivirus-Engine: 3.64.3, Antivirus-Data: 5.34
x-puremessage: [Scanned]
MIME-Version: 1.0
Subject: Re: Kernel config incremental modification not working.
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
X-List-Received-Date: Fri, 09 Dec 2016 07:26:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 12/08/2016 05:06 PM, Bruce Ashfield wrote:=0A=
> On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:=0A=
>> Hi list=0A=
>>=0A=
>> I am working on a project based on the iMX6UL-EVK using the meta-fsl-arm=
=0A=
>> layer for the kernel.=0A=
>> In a local layer I have a bbappend recipe containing a patch for an=0A=
>> extra kernel feature (a framebuffer device) in that kernel as well as a=
=0A=
>> .cfg enabling said feature.=0A=
>> The bbappend recipe is located in=0A=
>> recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like this:=0A=
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"=0A=
>>=0A=
>> SRC_URI +=3D " \=0A=
>>         file://0001-mxc-4.1.patch \=0A=
>>         file://ST7789S.cfg \=0A=
>> "=0A=
>>=0A=
>> KERNEL_DEVICETREE =3D "imx6ul-14x14-evk.dtb"=0A=
>>=0A=
>> The .cfg is located in recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg=
=0A=
>> and looks like:=0A=
>> CONFIG_FB_MXS_ST7789S_QVGA=3Dy=0A=
>>=0A=
>> The 0001-mxc-4.1.patch patch is correctly applied but the .cfg is either=
=0A=
>> ignored or overwritten by some later buyild step since the resulting=0A=
>> .config after kernel compilation contains:=0A=
>> # CONFIG_FB_MXS_ST7789S_QVGA is not set=0A=
>>=0A=
>> I have tried finding the script in the build/.../temp folder that takes=
=0A=
>> care of the .cfg file patching but have not been able to find anything=
=0A=
>> useful.=0A=
>>=0A=
>> Any hints as to where I should start looking for a solution?=0A=
> Fragment processing using the kernel tools + auditing is only currently=
=0A=
> available to kernel recipes that use the kernel-yocto bbclass. That=0A=
> opt-in requirement was to ensure that existing recipes and workflows=0A=
> weren't broken by the new features.=0A=
>=0A=
> Last time I checked, the meta-fsl* kernel recipes don't use the=0A=
> kernel-yocto bbclass, so the fragment would be ignored.=0A=
>=0A=
> I'm taking the processing of fragments and making it universally=0A=
> available in the upcoming 2.3 release, so what I just described=0A=
> won't be an issue for much longer.=0A=
>=0A=
> In the mean time, you have a few options:=0A=
>=0A=
>   - in your bbappend, add "inherit kernel-yocto" and the processing=0A=
>     of fragments will be enabled (I can't say that I've tested=0A=
>     it against that recipe .. but the entire point of the new tasks=0A=
>     is that they are transparent/don't break existing worflows)=0A=
>=0A=
>   - carry a defconfig in your layer, and add it to the SRC_URI. That=0A=
>     defconfig would be the existing kernel recipe's defconfig + your=0A=
>     options=0A=
>=0A=
>   - write a custom task that runs before configuration to add your=0A=
>     options (cat, merge, etc, etc).=0A=
>=0A=
> I wouldn't really suggest the custom task route, but it is a valid=0A=
> option, so I put it in my list.=0A=
>=0A=
> The quickest is probably the defconfig option, and then the new=0A=
> inherit. If you had issues with the inherit, I could lend a hand to=0A=
> debug what is wrong .. since I'll run into it eventually with my=0A=
> feature work for the 2.3 release.=0A=
Hi Bruce=0A=
=0A=
Thanks for the reply.=0A=
=0A=
A quick test shows that the linux-fslc-imx recipe doesn't respond well=0A=
to the 'inherit kernel-yocto' solution failing in the do_kernel_checkout=0A=
task with a "Bad substitution" error message.=0A=
So I think I will go with the defconfig solution until the release of 2.3.=
=0A=
Any estimate of when 2.3 will be shipping? And do you know if this will=0A=
by any chance include the upcoming 4.9 LTS kernel?=0A=
=0A=
If you would like some more info on the failing task I'll be happy to=0A=
supply it.=0A=
=0A=
Thanks for your help :-)=0A=
=0A=
Kind regards=0A=
Bent Bisballe Nyeng=0A=

