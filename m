Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 976C6E00D12; Fri,  9 Dec 2016 08:17:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f194.google.com (mail-wj0-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 387F0E00C38
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 08:17:23 -0800 (PST)
Received: by mail-wj0-f194.google.com with SMTP id kp2so3089319wjc.0
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 08:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Rh3NbgczU9so9gLRGBZmk1bpL1VHBrmRqv+QohlIZ+Y=;
	b=Mx12odpeGLVGXK/ClvQkjjFusA4EELj9quLtt10jHW1+xEN6B8oyddvs1ERDciJN36
	j2/h9j2KUo31KT26TLVxPC1UoOSRt6MYZCacJH21XM+iiJaAt8f9QX7DYJlREzIWTBQP
	P8SHtBhp1nt2zkPTXeBbYvEbNEZDqGQMIIzvra8Y1QhGQvQ+sYNf1NHErkma8EEZwQFp
	6lOZyQYWkLIJo5HO448G0QfmhqPikJFJHSE21Wr92gvuJK9SVQvUfCi4DVOZ/Es0I1gS
	6sMHLXM1Yb3fwoXqSNs+dRtFWjCpc7n4wUR8VPWGwP9MhJJwlqICm3Ce6N8YNgDNqZoH
	Jlhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Rh3NbgczU9so9gLRGBZmk1bpL1VHBrmRqv+QohlIZ+Y=;
	b=iUm4LiRWFNZRFClt/g4VlfXMU8cY8gypmDnXFguDhGm4vV2OtspdTlaPQ//kislde7
	VJc+aT0MeCj6Cfy+Dm3V5w/9KBDqb7z7nILGYGOQphOQ1c4VjulH9f6K4V713fRNmxIY
	mdWdkFVAXUsDzVXFBajWqi/Hr1eVxm46yLK/C8jWmyNaOe3uBE3BDdIo0uopOuaxvzcW
	YcngYAgpAu5cr0+HS5auMwksKPg619Pxjxig8FUpuIyzMn8y5LE7BQdKIkAS/kSDz0Fx
	83be3p3MLXgBbgIcIKk2poOv3l5fJYGcpoilLxK7cCnBTbxaJmGSzFy9idN7D0TbxF7m
	Z5Jw==
X-Gm-Message-State: AKaTC01WEd0fHni6IfABzk3eDow3qaJC49TBBrDZ/qqzETDXSIicHgC873NFCtzXYJHmD8Em+kyaYocLGcCLjQ==
X-Received: by 10.194.66.37 with SMTP id c5mr68732105wjt.138.1481300242021;
	Fri, 09 Dec 2016 08:17:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.169.100 with HTTP; Fri, 9 Dec 2016 08:17:21 -0800 (PST)
In-Reply-To: <30c3c6d7-9f12-e082-33bb-1a218c8f4bd5@windriver.com>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<30c3c6d7-9f12-e082-33bb-1a218c8f4bd5@windriver.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 9 Dec 2016 17:17:21 +0100
Message-ID: <CAC+thW1Hdj8MSdwf-oJegtd8eTfV6Kc_z8NRBtkrN=3Th+xn-g@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 Dec 2016 16:17:26 -0000
Content-Type: multipart/alternative; boundary=089e01494a7cbb410205433c1630

--089e01494a7cbb410205433c1630
Content-Type: text/plain; charset=UTF-8

Hi Bruce,

On Thu, Dec 8, 2016 at 3:36 PM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:
>
>> Hi list
>>
>> I am working on a project based on the iMX6UL-EVK using the meta-fsl-arm
>> layer for the kernel.
>> In a local layer I have a bbappend recipe containing a patch for an
>> extra kernel feature (a framebuffer device) in that kernel as well as a
>> .cfg enabling said feature.
>> The bbappend recipe is located in
>> recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like this:
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> SRC_URI += " \
>>         file://0001-mxc-4.1.patch \
>>         file://ST7789S.cfg \
>> "
>>
>> KERNEL_DEVICETREE = "imx6ul-14x14-evk.dtb"
>>
>> The .cfg is located in recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg
>> and looks like:
>> CONFIG_FB_MXS_ST7789S_QVGA=y
>>
>> The 0001-mxc-4.1.patch patch is correctly applied but the .cfg is either
>> ignored or overwritten by some later buyild step since the resulting
>> .config after kernel compilation contains:
>> # CONFIG_FB_MXS_ST7789S_QVGA is not set
>>
>> I have tried finding the script in the build/.../temp folder that takes
>> care of the .cfg file patching but have not been able to find anything
>> useful.
>>
>> Any hints as to where I should start looking for a solution?
>>
>
> Fragment processing using the kernel tools + auditing is only currently
> available to kernel recipes that use the kernel-yocto bbclass. That
> opt-in requirement was to ensure that existing recipes and workflows
> weren't broken by the new features.
>
> Last time I checked, the meta-fsl* kernel recipes don't use the
> kernel-yocto bbclass, so the fragment would be ignored.
>
> I'm taking the processing of fragments and making it universally
> available in the upcoming 2.3 release, so what I just described
> won't be an issue for much longer.
>
> In the mean time, you have a few options:
>
>  - in your bbappend, add "inherit kernel-yocto" and the processing
>    of fragments will be enabled (I can't say that I've tested
>    it against that recipe .. but the entire point of the new tasks
>    is that they are transparent/don't break existing worflows)
>
>  - carry a defconfig in your layer, and add it to the SRC_URI. That
>    defconfig would be the existing kernel recipe's defconfig + your
>    options
>

I was just testing one of my layers against your recent patchset on
kernel-yocto when I noticed this thread. My build is broken by commit
476ffd57cf5b6fba40d4e3f5dd913824ab8a8d3d on oe-core
(e38775a1d82e6dc60fc96cf243ecb94be964d9b2 on the poky repo side).

WARNING: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
do_kernel_metadata: GIZERO: before 'cmp'
ERROR: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-r0
do_kernel_metadata: Function failed: do_kernel_metadata (log file is
located at
/scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274)
ERROR: Logfile of failure stored in:
/scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274
Log data follows:
| DEBUG: Executing shell function do_kernel_metadata
| WARNING: GIZERO: before 'cmp'
|
/scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/defconfig
/scratch/gizero/mitysom-5csx-master-build/tmp/work-shared/cyclone5/kernel-source/arch/arm/configs/socfpga_defconfig
differ: byte 1525, line 72
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_kernel_metadata (log file is located at
/scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metadata.28274)
ERROR: Task
(/home/gizero/work/decos/repo-master/poky/../meta-altera/recipes-kernel/linux/linux-altera-ltsi_4.1.22.bb:do_kernel_metadata)
failed with exit code '1'

The commit in the patch remove the 'set +e' bits, but the following legit
code path expects the cmp command to have a non-zero return value.

        if [ -n "${KBUILD_DEFCONFIG}" ]; then
                if [ -f "${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}" ];
then
                        if [ -f "${WORKDIR}/defconfig" ]; then
                                # If the two defconfig's are different,
warn that we didn't overwrite the
                                # one already placed in WORKDIR by the
fetcher.
                                cmp "${WORKDIR}/defconfig"
"${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}"
                                if [ $? -ne 0 ]; then
                                        bbwarn "defconfig detected in
WORKDIR. ${KBUILD_DEFCONFIG} skipped"
                                fi

My layer provides a defconfig on top of a bsp layer which
defines KBUILD_DEFCONFIG. So, in my opinion, if this scenario is still
supported as you confirm in this thread, we should expect cmp to always
return nonzero when this is the case.

Sorry for posting here, but I wasn't subscribed to the oe-core mailing
list, so I don't have the original email to oe-core mailing list with the
patch to reply to...


>
>  - write a custom task that runs before configuration to add your
>    options (cat, merge, etc, etc).
>
> I wouldn't really suggest the custom task route, but it is a valid
> option, so I put it in my list.
>
> The quickest is probably the defconfig option, and then the new
> inherit. If you had issues with the inherit, I could lend a hand to
> debug what is wrong .. since I'll run into it eventually with my
> feature work for the 2.3 release.
>
> Bruce
>
>
>
>
>> Kind regards
>> Bent Bisballe Nyeng
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01494a7cbb410205433c1630
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Bruce,<div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Thu, Dec 8, 2016 at 3:36 PM, Bruce Ashfield <span dir=3D"ltr">&=
lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.=
ashfield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">=
On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hi list<br>
<br>
I am working on a project based on the iMX6UL-EVK using the meta-fsl-arm<br=
>
layer for the kernel.<br>
In a local layer I have a bbappend recipe containing a patch for an<br>
extra kernel feature (a framebuffer device) in that kernel as well as a<br>
.cfg enabling said feature.<br>
The bbappend recipe is located in<br>
recipes-kernel/linux/linux-fsl<wbr>c-imx_%.bbappend and looks like this:<br=
>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
SRC_URI +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-mxc-4.1.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ST7789S.cfg \<br>
&quot;<br>
<br>
KERNEL_DEVICETREE =3D &quot;imx6ul-14x14-evk.dtb&quot;<br>
<br>
The .cfg is located in recipes-kernel/linux/linux-fsl<wbr>c-imx/ST7789S.cfg=
<br>
and looks like:<br>
CONFIG_FB_MXS_ST7789S_QVGA=3Dy<br>
<br>
The 0001-mxc-4.1.patch patch is correctly applied but the .cfg is either<br=
>
ignored or overwritten by some later buyild step since the resulting<br>
.config after kernel compilation contains:<br>
# CONFIG_FB_MXS_ST7789S_QVGA is not set<br>
<br>
I have tried finding the script in the build/.../temp folder that takes<br>
care of the .cfg file patching but have not been able to find anything<br>
useful.<br>
<br>
Any hints as to where I should start looking for a solution?<br>
</blockquote>
<br></div></div>
Fragment processing using the kernel tools + auditing is only currently<br>
available to kernel recipes that use the kernel-yocto bbclass. That<br>
opt-in requirement was to ensure that existing recipes and workflows<br>
weren&#39;t broken by the new features.<br>
<br>
Last time I checked, the meta-fsl* kernel recipes don&#39;t use the<br>
kernel-yocto bbclass, so the fragment would be ignored.<br>
<br>
I&#39;m taking the processing of fragments and making it universally<br>
available in the upcoming 2.3 release, so what I just described<br>
won&#39;t be an issue for much longer.<br>
<br>
In the mean time, you have a few options:<br>
<br>
=C2=A0- in your bbappend, add &quot;inherit kernel-yocto&quot; and the proc=
essing<br>
=C2=A0 =C2=A0of fragments will be enabled (I can&#39;t say that I&#39;ve te=
sted<br>
=C2=A0 =C2=A0it against that recipe .. but the entire point of the new task=
s<br>
=C2=A0 =C2=A0is that they are transparent/don&#39;t break existing worflows=
)<br>
<br>
=C2=A0- carry a defconfig in your layer, and add it to the SRC_URI. That<br=
>
=C2=A0 =C2=A0defconfig would be the existing kernel recipe&#39;s defconfig =
+ your<br>
=C2=A0 =C2=A0options<br></blockquote><div><br></div><div>I was just testing=
 one of my layers against your recent patchset on kernel-yocto when I notic=
ed this thread. My build is broken by commit 476ffd57cf5b6fba40d4e3f5dd9138=
24ab8a8d3d on oe-core (e38775a1d82e6dc60fc96cf243ecb94be964d9b2 on the poky=
 repo side).</div><div><br></div><div><div>WARNING: linux-altera-ltsi-4.1.2=
2-ltsi+gitAUTOINC+76bdba2700-r0 do_kernel_metadata: GIZERO: before &#39;cmp=
&#39;</div><div>ERROR: linux-altera-ltsi-4.1.22-ltsi+gitAUTOINC+76bdba2700-=
r0 do_kernel_metadata: Function failed: do_kernel_metadata (log file is loc=
ated at /scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-li=
nux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log=
.do_kernel_metadata.28274)</div><div>ERROR: Logfile of failure stored in: /=
scratch/gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnuea=
bi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kerne=
l_metadata.28274</div><div>Log data follows:</div><div>| DEBUG: Executing s=
hell function do_kernel_metadata</div><div>| WARNING: GIZERO: before &#39;c=
mp&#39;</div><div>| /scratch/gizero/mitysom-5csx-master-build/tmp/work/cycl=
one5-poky-linux-gnueabi/linux-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700=
-r0/defconfig /scratch/gizero/mitysom-5csx-master-build/tmp/work-shared/cyc=
lone5/kernel-source/arch/arm/configs/socfpga_defconfig differ: byte 1525, l=
ine 72</div><div>| WARNING: exit code 1 from a shell command.</div><div>| E=
RROR: Function failed: do_kernel_metadata (log file is located at /scratch/=
gizero/mitysom-5csx-master-build/tmp/work/cyclone5-poky-linux-gnueabi/linux=
-altera-ltsi/4.1.22-ltsi+gitAUTOINC+76bdba2700-r0/temp/log.do_kernel_metada=
ta.28274)</div><div>ERROR: Task (/home/gizero/work/decos/repo-master/poky/.=
./meta-altera/recipes-kernel/linux/linux-altera-ltsi_4.1.22.bb:do_kernel_me=
tadata) failed with exit code &#39;1&#39;</div></div><div><br></div><div>Th=
e commit in the patch remove the &#39;set +e&#39; bits, but the following l=
egit code path expects the cmp command to have a non-zero return value.</di=
v><div><br></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;${KBUI=
LD_DEFCONFIG}&quot; ]; then</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if [ -f &quot;${S}/arch/${ARCH}/configs/${KBUILD_DEFCO=
NFIG}&quot; ]; then</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -f &quot;${WORKDIR}/defconfig&q=
uot; ]; then</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # If the two de=
fconfig&#39;s are different, warn that we didn&#39;t overwrite the</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # one already placed in WORKDIR by t=
he fetcher.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmp &quot;${WOR=
KDIR}/defconfig&quot; &quot;${S}/arch/${ARCH}/configs/${KBUILD_DEFCONFIG}&q=
uot;<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ $? -ne 0 ]; th=
en</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 bbwarn &quot;defconfig detected in WORKDIR. ${KBUILD_DEFCONFIG} skipped=
&quot;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</div></div><div>=
<br></div><div>My layer provides a defconfig on top of a bsp layer which de=
fines=C2=A0KBUILD_DEFCONFIG. So, in my opinion, if this scenario is still s=
upported as you confirm in this thread, we should expect cmp to always retu=
rn nonzero when this is the case.</div><div><br></div><div>Sorry for postin=
g here, but I wasn&#39;t subscribed to the oe-core mailing list, so I don&#=
39;t have the original email to oe-core mailing list with the patch to repl=
y to...</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<br>
=C2=A0- write a custom task that runs before configuration to add your<br>
=C2=A0 =C2=A0options (cat, merge, etc, etc).<br>
<br>
I wouldn&#39;t really suggest the custom task route, but it is a valid<br>
option, so I put it in my list.<br>
<br>
The quickest is probably the defconfig option, and then the new<br>
inherit. If you had issues with the inherit, I could lend a hand to<br>
debug what is wrong .. since I&#39;ll run into it eventually with my<br>
feature work for the 2.3 release.<span class=3D"gmail-HOEnZb"><font color=
=3D"#888888"><br>
<br>
Bruce</font></span><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Kind regards<br>
Bent Bisballe Nyeng<br>
<br>
</blockquote>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--089e01494a7cbb410205433c1630--
