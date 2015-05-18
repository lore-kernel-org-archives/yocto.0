Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08771E009E1; Mon, 18 May 2015 07:56:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C694E009D8
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 07:56:17 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.235.1;
	Mon, 18 May 2015 11:02:00 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.164]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0235.001;
	Mon, 18 May 2015 10:56:15 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: Steffen Schuetz <schuetz@cs.uni-kl.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Altera Cyclone V DTB origin
Thread-Index: AQHQkVCC2cUcIdQmu0y7Qgf7zmDe352B6EAA///lA9A=
Date: Mon, 18 May 2015 14:56:14 +0000
Message-ID: <F14AEF751653024287138321000C846AF482A75F@BOS-DAG1.zone1.flir.net>
References: <5559B3E0.7080104@cs.uni-kl.de> <5559D72E.1000506@cs.uni-kl.de>
In-Reply-To: <5559D72E.1000506@cs.uni-kl.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.10.89]
MIME-Version: 1.0
Subject: Re: Altera Cyclone V DTB origin
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
X-List-Received-Date: Mon, 18 May 2015 14:56:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Perhaps someone could improve on this, but
you can build a dtb from a source dts using a bbappend for your linux kerne=
l.
1. drop a copy of your new dts in ${S}/arch/arm/boot/dts
2. add the name of your dtb to the KERNEL_DEVICETREE variable.

If you are modifying an existing dts file, the cleanest approach is probabl=
y to use a patch file for step 1.  However, you could also create a complet=
ely new file.  That you could add either as a patch or by a direct file cop=
y with something like

SRC_URI +=3D "my-device-tree.dts"
KERNEL_DEVICETREE +=3D "my-device-tree.dtb"
do_patch_append() {
  cp ${WORKDIR}/my-device-tree.dts ${S}/arch/arm/boot/dts/
}

Using do_configure_append (or even possibly do_unpack_append) might be more=
 appropriate and would let you easily patch your own file in another layer,=
 but I have not personally tried that.

However, if changing the name of the dtb (i.e. adding your own), you may ne=
ed to tweak your bootloader (U-boot?) to pass the right dtb to the kernel a=
t boot.  I don't know the Altera Cyclone configuration/layers/versions so t=
ake that as a very general statement.

Also, check the kernel recipe you are extending KERNEL_DEVICETREE may need =
to be expressed as KERNEL_DEVICETREE_somemachinenamehere.


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Steffen Schuetz
> Sent: Monday, May 18, 2015 7:13 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Altera Cyclone V DTB origin
>
> Hi,
>
> I found that the dtb is obtained from a git reposirtory during the build =
and stored
> under build/tmp/work/socfpga_cyclone5-poky-linux-gnueabi/linux-altera-
> ltsi/3.10-r1/git/arch/arm/boot/dts/
> I succesfully build a custom dtb following these suggestions:
> https://community.freescale.com/thread/325219
>
> Is there a way to do this using a bitbake mechanism?
>
> Thanks!
>
> Best Regards,
> Steffen
>
> On 05/18/2015 11:41 AM, Steffen Schuetz wrote:
> > Hi,
> >
> > I build a customized Linux image using Yocto Daisy - we need gcc >=3D
> > 4.8
> > - following the instructions at
> >
> http://rocketboards.org/foswiki/Documentation/YoctoDoraBuildWithMetaAlter
> a .
> > Besides the zImage and rootfs the build process outputs an .dtb file.
> > Now, in order to get the FPGA fabric involved, I'd have to come up
> > with a modified dts and build it.
> > That's where I'm a bit lost in the blur. I can not figure out where
> > the generated dtb is coming from? What's the mechanism behind? I
> > cannot find any .dts nor .dtb in the meta-altera layer.
> >
> > Besides that I realized that if I use the dtb that shipped with the
> > board with the "daisy" kernel, the boot process gets stuck at "Waiting
> > for root device /dev/mmcblk0p3..." The "shipped" kernel is version
> > 3.8.0 while the "daisy" one is 3.10.31-ltsi.
> > Was there a change in the device tree layout as the "old" one doesn't
> > work with the "daisy" kernel?
> >
> >
> > Thanks in advance!
> >
> > Regards,
> > Steffen
>


________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

