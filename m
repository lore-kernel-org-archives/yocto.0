Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D81FE009A6; Sun, 10 May 2015 07:20:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55716E00993
	for <yocto@yoctoproject.org>; Sun, 10 May 2015 07:20:13 -0700 (PDT)
X-Halon-ID: abe4c792-f71f-11e4-a62c-005056917a89
Authorized-sender: petter@technux.se
Received: from [192.168.1.82] (unknown [81.229.90.163])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun, 10 May 2015 16:20:12 +0200 (CEST)
Message-ID: <554F6918.4040903@technux.se>
Date: Sun, 10 May 2015 16:20:08 +0200
From: =?UTF-8?B?UGV0dGVyIE1hYsOkY2tlcg==?= <petter@technux.se>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <cover.1431121258.git.petter@technux.se>
	<b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
	<CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com>
In-Reply-To: <CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/5] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Sun, 10 May 2015 14:20:20 -0000
Content-Type: multipart/alternative;
	boundary="------------030305070200010108070105"

--------------030305070200010108070105
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Andrei,

See answers inline.

BR,
Petter

On 05/10/2015 12:16 PM, Andrei Gherzan wrote:
> Hello Petter,
>
> On Fri, May 8, 2015 at 11:49 PM, Petter Mabäcker <petter@technux.se 
> <mailto:petter@technux.se>> wrote:
>
>     After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
>     introduced, kernel versions < 3.18 might not be buildable. Since full
>     device tree support was introduced in 3.18 this change ensures
>     that all
>     kernel < 3.18 will automatically disable device tree.
>
>     Signed-off-by: Petter Mabäcker <petter@technux.se
>     <mailto:petter@technux.se>>
>     ---
>      classes/linux-raspberrypi-base.bbclass     | 29
>     +++++++++++++++++++++++++++++
>      classes/sdcard_image-rpi.bbclass           |  6 ++++--
>      recipes-kernel/linux/linux-raspberrypi.inc |  4 +++-
>      3 files changed, 36 insertions(+), 3 deletions(-)
>      create mode 100644 classes/linux-raspberrypi-base.bbclass
>
>     diff --git a/classes/linux-raspberrypi-base.bbclass
>     b/classes/linux-raspberrypi-base.bbclass
>     new file mode 100644
>     index 0000000..4bcadd0
>     --- /dev/null
>     +++ b/classes/linux-raspberrypi-base.bbclass
>     @@ -0,0 +1,29 @@
>     +inherit linux-kernel-base
>     +
>     +
>     +def get_dts(d, ver):
>     +    staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
>     +    dts = d.getVar("KERNEL_DEVICETREE", True)
>     +
>     +    # d.getVar() might return 'None' as a normal string
>     +    # leading to 'is None' check isn't enough.
>     +    # TODO: Investigate if this is a bug in bitbake
>     +    if ver is None or ver == "None":
>     +        ''' if 'ver' isn't set try to grab the kernel version
>     +        from the kernel staging '''
>     +        ver = get_kernelversion_file(staging_dir)
>     +
>     +    if ver is not None:
>     +        min_ver = ver.split('.', 3)
>     +    else:
>     +        return dts
>     +
>     +    # Always turn off device tree support for kernel's < 3.18
>     +    try:
>     +        if int(min_ver[0]) <= 3:
>     +            if int(min_ver[1]) < 18:
>     +                dts = ""
>     +    except IndexError:
>     +        min_ver = None
>     +
>     +    return dts
>     diff --git a/classes/sdcard_image-rpi.bbclass
>     b/classes/sdcard_image-rpi.bbclass
>     index 1ff664d..ca94566 100644
>     --- a/classes/sdcard_image-rpi.bbclass
>     +++ b/classes/sdcard_image-rpi.bbclass
>     @@ -1,4 +1,5 @@
>      inherit image_types
>     +inherit linux-raspberrypi-base
>
>      #
>      # Create an image that can by written onto a SD card using dd.
>     @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {
>             ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} -
>     ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>             SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
>     ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
>
>     -       echo "Creating filesystem with Boot partition
>     ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>
>
> Why do you remove this line? Maybe by mistake?
Yes this is by mistake, thanks for finding it. Will send up a new 
version with this fixed.
>
>     +      # Check if we are building with device tree support
>     +       DTS="${@get_dts(d, None)}"
>
>
> Aren't we able to use the same variable name, KERNEL_DEVICETREE? What 
> that be a little clearer?
No, at least i couldn't get this working. When trying to set the 
environment variable KERNEL_DEVICETREE in this context the values was 
only ignored. Don't know if the image recipe (or at least the IMAGE_CMD 
func) are doing something special. Perhaps it's possible to use 'eval' 
or something similar to enforce the expansion of the variable. If you 
have any good advice please share them, otherwise I can at least write 
some comment about this.
>
>
>             # Initialize sdcard image file
>             dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
>     @@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () {
>                     mcopy -i ${WORKDIR}/boot.img -s
>     ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin
>     ::uImage
>                     ;;
>             *)
>     -               if test -n "${KERNEL_DEVICETREE}"; then
>     +               if test -n "${DTS}"; then
>                             # Copy board device trees to root folder
>                             for DTB in ${DT_ROOT}; do
>                                     DTB_BASE_NAME=`basename ${DTB} .dtb`
>     diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
>     b/recipes-kernel/linux/linux-raspberrypi.inc
>     index 84d4f9e..7e36408 100644
>     --- a/recipes-kernel/linux/linux-raspberrypi.inc
>     +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>     @@ -1,4 +1,5 @@
>      require linux.inc
>     +inherit linux-raspberrypi-base
>
>      DESCRIPTION = "Linux Kernel for Raspberry Pi"
>      SECTION = "kernel"
>     @@ -26,7 +27,8 @@ UDEV_GE_141 ?= "1"
>      # See
>     http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#anonymous-python-functions
>      python __anonymous () {
>          kerneltype = d.getVar('KERNEL_IMAGETYPE', True)
>     -    kerneldt = d.getVar('KERNEL_DEVICETREE', True)
>     +    kerneldt = get_dts(d, d.getVar('LINUX_VERSION', True))
>     +    d.setVar("KERNEL_DEVICETREE", kerneldt)
>
>          # Add dependency to 'rpi-mkimage-native' package only if RPi
>     bootloader is used with DT-enable kernel
>          if kerneldt:
>     --
>     1.9.1
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> -- 
> *Andrei Gherzan*
> *e: */andrei@gherzan.ro <mailto:andrei@gherzan.ro>/
> /*w:* /www.gherzan.ro <http://www.gherzan.ro>


--------------030305070200010108070105
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi Andrei,<br>
      <br>
      See answers inline.<br>
      <br>
      BR,<br>
      Petter<br>
      <br>
      On 05/10/2015 12:16 PM, Andrei Gherzan wrote:<br>
    </div>
    <blockquote
cite="mid:CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hello Petter,<br>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Fri, May 8, 2015 at 11:49 PM,
            Petter Mabäcker <span dir="ltr">&lt;<a
                moz-do-not-send="true" href="mailto:petter@technux.se"
                target="_blank">petter@technux.se</a>&gt;</span> wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">After
              '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default'
              was<br>
              introduced, kernel versions &lt; 3.18 might not be
              buildable. Since full<br>
              device tree support was introduced in 3.18 this change
              ensures that all<br>
              kernel &lt; 3.18 will automatically disable device tree.<br>
              <br>
              Signed-off-by: Petter Mabäcker &lt;<a
                moz-do-not-send="true" href="mailto:petter@technux.se">petter@technux.se</a>&gt;<br>
              ---<br>
               classes/linux-raspberrypi-base.bbclass     | 29
              +++++++++++++++++++++++++++++<br>
               classes/sdcard_image-rpi.bbclass           |  6 ++++--<br>
               recipes-kernel/linux/linux-raspberrypi.inc |  4 +++-<br>
               3 files changed, 36 insertions(+), 3 deletions(-)<br>
               create mode 100644 classes/linux-raspberrypi-base.bbclass<br>
              <br>
              diff --git a/classes/linux-raspberrypi-base.bbclass
              b/classes/linux-raspberrypi-base.bbclass<br>
              new file mode 100644<br>
              index 0000000..4bcadd0<br>
              --- /dev/null<br>
              +++ b/classes/linux-raspberrypi-base.bbclass<br>
              @@ -0,0 +1,29 @@<br>
              +inherit linux-kernel-base<br>
              +<br>
              +<br>
              +def get_dts(d, ver):<br>
              +    staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR",
              True)<br>
              +    dts = d.getVar("KERNEL_DEVICETREE", True)<br>
              +<br>
              +    # d.getVar() might return 'None' as a normal string<br>
              +    # leading to 'is None' check isn't enough.<br>
              +    # TODO: Investigate if this is a bug in bitbake<br>
              +    if ver is None or ver == "None":<br>
              +        ''' if 'ver' isn't set try to grab the kernel
              version<br>
              +        from the kernel staging '''<br>
              +        ver = get_kernelversion_file(staging_dir)<br>
              +<br>
              +    if ver is not None:<br>
              +        min_ver = ver.split('.', 3)<br>
              +    else:<br>
              +        return dts<br>
              +<br>
              +    # Always turn off device tree support for kernel's
              &lt; 3.18<br>
              +    try:<br>
              +        if int(min_ver[0]) &lt;= 3:<br>
              +            if int(min_ver[1]) &lt; 18:<br>
              +                dts = ""<br>
              +    except IndexError:<br>
              +        min_ver = None<br>
              +<br>
              +    return dts<br>
              diff --git a/classes/sdcard_image-rpi.bbclass
              b/classes/sdcard_image-rpi.bbclass<br>
              index 1ff664d..ca94566 100644<br>
              --- a/classes/sdcard_image-rpi.bbclass<br>
              +++ b/classes/sdcard_image-rpi.bbclass<br>
              @@ -1,4 +1,5 @@<br>
               inherit image_types<br>
              +inherit linux-raspberrypi-base<br>
              <br>
               #<br>
               # Create an image that can by written onto a SD card
              using dd.<br>
              @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {<br>
                      ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED}
              - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})<br>
                      SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
              ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})<br>
              <br>
              -       echo "Creating filesystem with Boot partition
              ${BOOT_SPACE_ALIGNED} KiB and RootFS
              ${ROOTFS_SIZE_ALIGNED} KiB"<br>
            </blockquote>
            <div><br>
            </div>
            <div>Why do you remove this line? Maybe by mistake?</div>
          </div>
        </div>
      </div>
    </blockquote>
    Yes this is by mistake, thanks for finding it. Will send up a new
    version with this fixed.<br>
    <blockquote
cite="mid:CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div> </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">+ 
                   # Check if we are building with device tree support<br>
              +       DTS="${@get_dts(d, None)}"<br>
            </blockquote>
            <div><br>
            </div>
            <div>Aren't we able to use the same variable name,
              KERNEL_DEVICETREE? What that be a little clearer? <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    No, at least i couldn't get this working. When trying to set the
    environment variable KERNEL_DEVICETREE in this context the values
    was only ignored. Don't know if the image recipe (or at least the
    IMAGE_CMD func) are doing something special. Perhaps it's possible
    to use 'eval' or something similar to enforce the expansion of the
    variable. If you have any good advice please share them, otherwise I
    can at least write some comment about this.<br>
    <blockquote
cite="mid:CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div> </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><br>
                      # Initialize sdcard image file<br>
                      dd if=/dev/zero of=${SDIMG} bs=1024 count=0
              seek=${SDIMG_SIZE}<br>
              @@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () {<br>
                              mcopy -i ${WORKDIR}/boot.img -s
              ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin
              ::uImage<br>
                              ;;<br>
                      *)<br>
              -               if test -n "${KERNEL_DEVICETREE}"; then<br>
              +               if test -n "${DTS}"; then<br>
                                      # Copy board device trees to root
              folder<br>
                                      for DTB in ${DT_ROOT}; do<br>
                                              DTB_BASE_NAME=`basename
              ${DTB} .dtb`<br>
              diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
              b/recipes-kernel/linux/linux-raspberrypi.inc<br>
              index 84d4f9e..7e36408 100644<br>
              --- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
              +++ b/recipes-kernel/linux/linux-raspberrypi.inc<br>
              @@ -1,4 +1,5 @@<br>
               require linux.inc<br>
              +inherit linux-raspberrypi-base<br>
              <br>
               DESCRIPTION = "Linux Kernel for Raspberry Pi"<br>
               SECTION = "kernel"<br>
              @@ -26,7 +27,8 @@ UDEV_GE_141 ?= "1"<br>
               # See <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#anonymous-python-functions"
                target="_blank">http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#anonymous-python-functions</a><br>
               python __anonymous () {<br>
                   kerneltype = d.getVar('KERNEL_IMAGETYPE', True)<br>
              -    kerneldt = d.getVar('KERNEL_DEVICETREE', True)<br>
              +    kerneldt = get_dts(d, d.getVar('LINUX_VERSION',
              True))<br>
              +    d.setVar("KERNEL_DEVICETREE", kerneldt)<br>
              <br>
                   # Add dependency to 'rpi-mkimage-native' package only
              if RPi bootloader is used with DT-enable kernel<br>
                   if kerneldt:<br>
              <span class=""><font color="#888888">--<br>
                  1.9.1<br>
                  <br>
                  --<br>
                  _______________________________________________<br>
                  yocto mailing list<br>
                  <a moz-do-not-send="true"
                    href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                  <a moz-do-not-send="true"
                    href="https://lists.yoctoproject.org/listinfo/yocto"
                    target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                </font></span></blockquote>
          </div>
          <br>
          <br clear="all">
          <div><br>
          </div>
          -- <br>
          <div class="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr">
                  <div style="text-align:center">
                    <div align="left"><b
style="font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei
                        Gherzan</b><br>
                    </div>
                    <div align="left"><b
style="font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center">e:
                      </b><span
style="font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center"><i><a
                            moz-do-not-send="true"
                            href="mailto:andrei@gherzan.ro"
                            target="_blank">andrei@gherzan.ro</a></i></span></div>
                    <div align="left"><span
style="font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center"><i><b>w:</b>
                        </i><a moz-do-not-send="true"
                          href="http://www.gherzan.ro" target="_blank">www.gherzan.ro</a></span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030305070200010108070105--
