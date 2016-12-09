Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8397BE00CBC; Fri,  9 Dec 2016 09:43:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f169.google.com (mail-wj0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFCFFE00C40
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 09:43:14 -0800 (PST)
Received: by mail-wj0-f169.google.com with SMTP id tg4so20543205wjb.1
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 09:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BitWmOWe2StOMQoTHTsh6zfnDuVbnH5LXh8oza3u9Zc=;
	b=S7fF/o/BJN7LA0nhTiewH9X0QaFgvJxg3f/ZFowuMBw5oiTP3TZ2nOhHhQ43chOXRq
	eNP8Z6/MN+Qz+PlwcsX79uJcP+4gchPynBcmVSg01do9b3jyBOLGbNFDvpPIUWs2kX/b
	xeQxvv0g6Uuu5pGdkoAfuff1UTiC8vTKu40deu5vxp8ACNzVWF06aSEF481XE0CtX7un
	bsjGFH6GDUA2nMH21ZdX8vU2j+iHnpEZnHlrl+SrRk8B3K7cOC1FSN6Aj+GCkzdVKvEP
	s0vwPnLQs1502caUOD45EIKkawNtIFriYlqd6SA0Zb2LqJzRs8xLQwpMY//MBp33EaAr
	t8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BitWmOWe2StOMQoTHTsh6zfnDuVbnH5LXh8oza3u9Zc=;
	b=MInpOV+BABkBdS2JYxFffNZiEq5X/BhbPWdcJQgunGqXLkf+PxgogJAdk7w4ZcNsTM
	vtUWDeA3N/yOtNc3c2r8xfmCpVt2fz7Vex5GKlRIV1M6QpIj/Mo+XDywtvvjihAs2uuu
	4KWEVMVIf0SEbdTvhlk1H8QkacOLUOGZSTrXBI5U9LupMN9nwzZsWGsrQGVQ27hv3em6
	hloprCgqerY4G4cYExRZ5fspMoj/KXNyzlJyVw3ae4Zyysp36mrw8LoLgk88erQXWSEG
	qi4EPH5DXy+3ncT7/RqqymBmRGTEfHHyd5WFo5hNB1GweQx9y5QoI3lZHJlO0GBTP5X9
	vm5g==
X-Gm-Message-State: AKaTC02CpXlHKEp0XrGZC0gmGy/H0zGlRUDm2mKwhm2hmeRypHRDIj1jcEqW906J8VJFKJI2+Cgj2GyMV8zS5g==
X-Received: by 10.194.191.201 with SMTP id ha9mr70191389wjc.205.1481305393488; 
	Fri, 09 Dec 2016 09:43:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.169.100 with HTTP; Fri, 9 Dec 2016 09:43:12 -0800 (PST)
In-Reply-To: <82236320-4030-29f9-8eb7-242af9b4be12@windriver.com>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<30c3c6d7-9f12-e082-33bb-1a218c8f4bd5@windriver.com>
	<CAC+thW1Hdj8MSdwf-oJegtd8eTfV6Kc_z8NRBtkrN=3Th+xn-g@mail.gmail.com>
	<82236320-4030-29f9-8eb7-242af9b4be12@windriver.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 9 Dec 2016 18:43:12 +0100
Message-ID: <CAC+thW2zPDwNW9GDeiNkBQPYs6+89SZEYyLWkd=6_JhMmmaHYg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 09 Dec 2016 17:43:18 -0000
Content-Type: multipart/alternative; boundary=047d7b86cae0c869ed05433d4991

--047d7b86cae0c869ed05433d4991
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 9, 2016 at 5:47 PM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 2016-12-09 11:17 AM, Andrea Galbusera wrote:
>
>> Hi Bruce,
>>
>> On Thu, Dec 8, 2016 at 3:36 PM, Bruce Ashfield
>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>> wrote:
>>
>>     On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:
>>
>>         Hi list
>>
>>         I am working on a project based on the iMX6UL-EVK using the
>>         meta-fsl-arm
>>         layer for the kernel.
>>         In a local layer I have a bbappend recipe containing a patch for
>> an
>>         extra kernel feature (a framebuffer device) in that kernel as
>>         well as a
>>         .cfg enabling said feature.
>>         The bbappend recipe is located in
>>         recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like
>> this:
>>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>>         SRC_URI += " \
>>                 file://0001-mxc-4.1.patch \
>>                 file://ST7789S.cfg \
>>         "
>>
>>         KERNEL_DEVICETREE = "imx6ul-14x14-evk.dtb"
>>
>>         The .cfg is located in
>>         recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg
>>         and looks like:
>>         CONFIG_FB_MXS_ST7789S_QVGA=y
>>
>>         The 0001-mxc-4.1.patch patch is correctly applied but the .cfg
>>         is either
>>         ignored or overwritten by some later buyild step since the
>> resulting
>>         .config after kernel compilation contains:
>>         # CONFIG_FB_MXS_ST7789S_QVGA is not set
>>
>>         I have tried finding the script in the build/.../temp folder
>>         that takes
>>         care of the .cfg file patching but have not been able to find
>>         anything
>>         useful.
>>
>>         Any hints as to where I should start looking for a solution?
>>
>>
>>     Fragment processing using the kernel tools + auditing is only
>> currently
>>     available to kernel recipes that use the kernel-yocto bbclass. That
>>     opt-in requirement was to ensure that existing recipes and workflows
>>     weren't broken by the new features.
>>
>>     Last time I checked, the meta-fsl* kernel recipes don't use the
>>     kernel-yocto bbclass, so the fragment would be ignored.
>>
>>     I'm taking the processing of fragments and making it universally
>>     available in the upcoming 2.3 release, so what I just described
>>     won't be an issue for much longer.
>>
>>     In the mean time, you have a few options:
>>
>>      - in your bbappend, add "inherit kernel-yocto" and the processing
>>        of fragments will be enabled (I can't say that I've tested
>>        it against that recipe .. but the entire point of the new tasks
>>        is that they are transparent/don't break existing worflows)
>>
>>      - carry a defconfig in your layer, and add it to the SRC_URI. That
>>        defconfig would be the existing kernel recipe's defconfig + your
>>        options
>>
>>
>> I was just testing one of my layers against your recent patchset on
>> kernel-yocto when I noticed this thread. My build is broken by commit
>> 476ffd57cf5b6fba40d4e3f5dd913824ab8a8d3d on oe-core
>> (e38775a1d82e6dc60fc96cf243ecb94be964d9b2 on the poky repo side).
>>
>> WARNING: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
>> do_kernel_metadata: GIZERO: before 'cmp'
>> ERROR: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
>> do_kernel_metadata: Function failed: do_kernel_metadata (log file is
>> located at
>> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-
>> poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUT
>> OINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274)
>> ERROR: Logfile of failure stored in:
>> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-
>> poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUT
>> OINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274
>> Log data follows:
>> | DEBUG: Executing shell function do_kernel_metadata
>> | WARNING: GIZERO: before 'cmp'
>> |
>> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-
>> poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUT
>> OINC+76bdba2700-r0/defconfig
>> /scratch/gizero/mitysom-5csx-master-build/tmp/work-shared/cy
>> clone5/kernel-source/arch/arm/configs/socfpga_defconfig
>> differ: byte 1525, line 72
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_kernel_metadata (log file is located at
>> /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-
>> poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUT
>> OINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274)
>> ERROR: Task
>> (/home/gizero/work/decos/repo-master/poky/../meta-altera/rec
>> ipes-kernel/linux/linux-altera-ltsi_4.1.22.bb:do_kernel_metadata)
>> failed with exit code '1'
>>
>> The commit in the patch remove the 'set +e' bits, but the following
>> legit code path expects the cmp command to have a non-zero return value.
>>
>>         if [ -n "${KBUILD_DEFCONFIG}" ]; then
>>                 if [ -f "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}"
>> ]; then
>>                         if [ -f "${WORKDIR}/defconfig" ]; then
>>                                 # If the two defconfig's are different,
>> warn that we didn't overwrite the
>>                                 # one already placed in WORKDIR by the
>> fetcher.
>>                                 cmp "${WORKDIR}/defconfig"
>> "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}"
>>                                 if [ $? -ne 0 ]; then
>>                                         bbwarn "defconfig detected in
>> WORKDIR. ${KBUILD_DEFCONFIG} skipped"
>>                                 fi
>>
>> My layer provides a defconfig on top of a bsp layer which
>> defines KBUILD_DEFCONFIG. So, in my opinion, if this scenario is still
>> supported as you confirm in this thread, we should expect cmp to always
>> return nonzero when this is the case.
>>
>> Sorry for posting here, but I wasn't subscribed to the oe-core mailing
>> list, so I don't have the original email to oe-core mailing list with
>> the patch to reply to...
>>
>
> attached is the patch that should fix the issue. I'll send it to oe-core
> later today once I've done more testing.


Thanks Bruce, FWIW I did a spin with this patch and it did un-brick the
build... \o/
In the meanwhile, I'm beginning to port my defconfig into the more scalable
config fragment approach ;-)


>
>
> Bruce
>
>
>>
>>
>>      - write a custom task that runs before configuration to add your
>>        options (cat, merge, etc, etc).
>>
>>     I wouldn't really suggest the custom task route, but it is a valid
>>     option, so I put it in my list.
>>
>>     The quickest is probably the defconfig option, and then the new
>>     inherit. If you had issues with the inherit, I could lend a hand to
>>     debug what is wrong .. since I'll run into it eventually with my
>>     feature work for the 2.3 release.
>>
>>     Bruce
>>
>>
>>
>>
>>         Kind regards
>>         Bent Bisballe Nyeng
>>
>>
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>

--047d7b86cae0c869ed05433d4991
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Dec 9, 2016 at 5:47 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D=
"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@wind=
river.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On 2016-12-09 11:17 AM, Andrea Galbusera wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi Bruce,<br>
<br>
On Thu, Dec 8, 2016 at 3:36 PM, Bruce Ashfield<br></span><div><div class=3D=
"h5">
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriv<wbr>er.com</a>&gt;&gt;=
 wrote:<br>
<br>
=C2=A0 =C2=A0 On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi list<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am working on a project based on the iMX6UL-E=
VK using the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-fsl-arm<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 layer for the kernel.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 In a local layer I have a bbappend recipe conta=
ining a patch for an<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 extra kernel feature (a framebuffer device) in =
that kernel as<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 well as a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .cfg enabling said feature.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The bbappend recipe is located in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 recipes-kernel/linux/linux-fsl<wbr>c-imx_%.bbap=
pend and looks like this:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/$=
{PN}:&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SRC_URI +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-mxc-4.1=
.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ST7789S.cfg =
\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 KERNEL_DEVICETREE =3D &quot;imx6ul-14x14-evk.dt=
b&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The .cfg is located in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 recipes-kernel/linux/linux-fsl<wbr>c-imx/ST7789=
S.cfg<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 and looks like:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_FB_MXS_ST7789S_QVGA=3Dy<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The 0001-mxc-4.1.patch patch is correctly appli=
ed but the .cfg<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 is either<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ignored or overwritten by some later buyild ste=
p since the resulting<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .config after kernel compilation contains:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # CONFIG_FB_MXS_ST7789S_QVGA is not set<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I have tried finding the script in the build/..=
./temp folder<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 that takes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 care of the .cfg file patching but have not bee=
n able to find<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 anything<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 useful.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Any hints as to where I should start looking fo=
r a solution?<br>
<br>
<br>
=C2=A0 =C2=A0 Fragment processing using the kernel tools + auditing is only=
 currently<br>
=C2=A0 =C2=A0 available to kernel recipes that use the kernel-yocto bbclass=
. That<br>
=C2=A0 =C2=A0 opt-in requirement was to ensure that existing recipes and wo=
rkflows<br>
=C2=A0 =C2=A0 weren&#39;t broken by the new features.<br>
<br>
=C2=A0 =C2=A0 Last time I checked, the meta-fsl* kernel recipes don&#39;t u=
se the<br>
=C2=A0 =C2=A0 kernel-yocto bbclass, so the fragment would be ignored.<br>
<br>
=C2=A0 =C2=A0 I&#39;m taking the processing of fragments and making it univ=
ersally<br>
=C2=A0 =C2=A0 available in the upcoming 2.3 release, so what I just describ=
ed<br>
=C2=A0 =C2=A0 won&#39;t be an issue for much longer.<br>
<br>
=C2=A0 =C2=A0 In the mean time, you have a few options:<br>
<br>
=C2=A0 =C2=A0 =C2=A0- in your bbappend, add &quot;inherit kernel-yocto&quot=
; and the processing<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0of fragments will be enabled (I can&#39;t say th=
at I&#39;ve tested<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0it against that recipe .. but the entire point o=
f the new tasks<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0is that they are transparent/don&#39;t break exi=
sting worflows)<br>
<br>
=C2=A0 =C2=A0 =C2=A0- carry a defconfig in your layer, and add it to the SR=
C_URI. That<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0defconfig would be the existing kernel recipe&#3=
9;s defconfig + your<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0options<br>
<br>
<br>
I was just testing one of my layers against your recent patchset on<br>
kernel-yocto when I noticed this thread. My build is broken by commit<br>
476ffd57cf5b6fba40d4e3f5dd9138<wbr>24ab8a8d3d on oe-core<br>
(e38775a1d82e6dc60fc96cf243ecb<wbr>94be964d9b2 on the poky repo side).<br>
<br>
WARNING: linux-altera-ltsi-4.1.22-ltsi+<wbr>gitAUTOINC+76bdba2700-r0<br>
do_kernel_metadata: GIZERO: before &#39;cmp&#39;<br>
ERROR: linux-altera-ltsi-4.1.22-ltsi+<wbr>gitAUTOINC+76bdba2700-r0<br>
do_kernel_metadata: Function failed: do_kernel_metadata (log file is<br>
located at<br>
/scratch/gizero/mitysom-5csx-m<wbr>aster-build/tmp/work/cyclone5-<wbr>poky-=
linux-gnueabi/linux-<wbr>altera-ltsi/4.1.22-ltsi+gitAUT<wbr>OINC+76bdba2700=
-r0/temp/log.<wbr>do_kernel_metadata.28274)<br>
ERROR: Logfile of failure stored in:<br>
/scratch/gizero/mitysom-5csx-m<wbr>aster-build/tmp/work/cyclone5-<wbr>poky-=
linux-gnueabi/linux-<wbr>altera-ltsi/4.1.22-ltsi+gitAUT<wbr>OINC+76bdba2700=
-r0/temp/log.<wbr>do_kernel_metadata.28274<br>
Log data follows:<br>
| DEBUG: Executing shell function do_kernel_metadata<br>
| WARNING: GIZERO: before &#39;cmp&#39;<br>
|<br>
/scratch/gizero/mitysom-5csx-m<wbr>aster-build/tmp/work/cyclone5-<wbr>poky-=
linux-gnueabi/linux-<wbr>altera-ltsi/4.1.22-ltsi+gitAUT<wbr>OINC+76bdba2700=
-r0/defconfig<br>
/scratch/gizero/mitysom-5csx-m<wbr>aster-build/tmp/work-shared/cy<wbr>clone=
5/kernel-source/arch/arm/<wbr>configs/socfpga_defconfig<br>
differ: byte 1525, line 72<br>
| WARNING: exit code 1 from a shell command.<br>
| ERROR: Function failed: do_kernel_metadata (log file is located at<br>
/scratch/gizero/mitysom-5csx-m<wbr>aster-build/tmp/work/cyclone5-<wbr>poky-=
linux-gnueabi/linux-<wbr>altera-ltsi/4.1.22-ltsi+gitAUT<wbr>OINC+76bdba2700=
-r0/temp/log.<wbr>do_kernel_metadata.28274)<br>
ERROR: Task<br>
(/home/gizero/work/decos/repo-<wbr>master/poky/../meta-altera/rec<wbr>ipes-=
kernel/linux/linux-altera<wbr>-ltsi_4.1.22.bb:do_kernel_<wbr>metadata)<br>
failed with exit code &#39;1&#39;<br>
<br>
The commit in the patch remove the &#39;set +e&#39; bits, but the following=
<br>
legit code path expects the cmp command to have a non-zero return value.<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;${KBUILD_DEFCONFIG}&quot; ]; then=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -f &quot;${S}/=
arch/${ARCH}/configs/${K<wbr>BUILD_DEFCONFIG}&quot;<br>
]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if [ -f &quot;${WORKDIR}/defconfig&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # If the two defconfig&#39;s are dif=
ferent,<br>
warn that we didn&#39;t overwrite the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # one already placed in WORKDIR by t=
he<br>
fetcher.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmp &quot;${WORKDIR}/defconfig&quot;=
<br>
&quot;${S}/arch/${ARCH}/configs/${K<wbr>BUILD_DEFCONFIG}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ $? -ne 0 ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bbwarn &=
quot;defconfig detected in<br>
WORKDIR. ${KBUILD_DEFCONFIG} skipped&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
My layer provides a defconfig on top of a bsp layer which<br>
defines KBUILD_DEFCONFIG. So, in my opinion, if this scenario is still<br>
supported as you confirm in this thread, we should expect cmp to always<br>
return nonzero when this is the case.<br>
<br>
Sorry for posting here, but I wasn&#39;t subscribed to the oe-core mailing<=
br>
list, so I don&#39;t have the original email to oe-core mailing list with<b=
r>
the patch to reply to...<br>
</div></div></blockquote>
<br>
attached is the patch that should fix the issue. I&#39;ll send it to oe-cor=
e<br>
later today once I&#39;ve done more testing.</blockquote><div><br></div><di=
v>Thanks Bruce, FWIW I did a spin with this patch and it did un-brick the b=
uild... \o/=C2=A0</div><div>In the meanwhile, I&#39;m beginning to port my =
defconfig into the more scalable config fragment approach ;-)</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span class=3D"HOEnZb"><font color=
=3D"#888888"><br>
<br>
Bruce<br>
<br>
</font></span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0- write a custom task that runs before configuration to=
 add your<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0options (cat, merge, etc, etc).<br>
<br>
=C2=A0 =C2=A0 I wouldn&#39;t really suggest the custom task route, but it i=
s a valid<br>
=C2=A0 =C2=A0 option, so I put it in my list.<br>
<br>
=C2=A0 =C2=A0 The quickest is probably the defconfig option, and then the n=
ew<br>
=C2=A0 =C2=A0 inherit. If you had issues with the inherit, I could lend a h=
and to<br>
=C2=A0 =C2=A0 debug what is wrong .. since I&#39;ll run into it eventually =
with my<br>
=C2=A0 =C2=A0 feature work for the 2.3 release.<br>
<br>
=C2=A0 =C2=A0 Bruce<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Kind regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Bent Bisballe Nyeng<br>
<br>
<br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 ______________________________<wbr>_________________<br>
=C2=A0 =C2=A0 yocto mailing list<br></span><span class=3D"">
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listi=
nfo/yocto</a><br>
=C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or<wbr>g/l=
istinfo/yocto</a>&gt;<br>
<br>
<br>
</span></blockquote>
<br>
</blockquote></div><br></div></div>

--047d7b86cae0c869ed05433d4991--
