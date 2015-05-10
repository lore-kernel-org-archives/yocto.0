Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C9FCE009A6; Sun, 10 May 2015 10:07:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DCD9E00993
	for <yocto@yoctoproject.org>; Sun, 10 May 2015 10:07:29 -0700 (PDT)
X-Halon-ID: 06162679-f737-11e4-8918-0050569116f7
Authorized-sender: petter@technux.se
Received: from [192.168.1.82] (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun, 10 May 2015 19:07:22 +0200 (CEST)
Message-ID: <554F904D.803@technux.se>
Date: Sun, 10 May 2015 19:07:25 +0200
From: =?UTF-8?B?UGV0dGVyIE1hYsOkY2tlcg==?= <petter@technux.se>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <cover.1431121258.git.petter@technux.se>
	<b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
	<CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com>
	<554F6918.4040903@technux.se>
	<CAK18fxFkrpjBj-zJXBUkQYiGBoxqzBBhU7yUEaaLPsoLfUWKUA@mail.gmail.com>
In-Reply-To: <CAK18fxFkrpjBj-zJXBUkQYiGBoxqzBBhU7yUEaaLPsoLfUWKUA@mail.gmail.com>
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
X-List-Received-Date: Sun, 10 May 2015 17:07:35 -0000
Content-Type: multipart/alternative;
	boundary="------------040508020902060800090303"

--------------040508020902060800090303
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/10/2015 04:24 PM, Andrei Gherzan wrote:
>
>
> On Sun, May 10, 2015 at 4:20 PM, Petter Mabäcker <petter@technux.se 
> <mailto:petter@technux.se>> wrote:
>
>     Hi Andrei,
>
>     See answers inline.
>
>     BR,
>     Petter
>
>
>     On 05/10/2015 12:16 PM, Andrei Gherzan wrote:
>>     Hello Petter,
>>
>>     On Fri, May 8, 2015 at 11:49 PM, Petter Mabäcker
>>     <petter@technux.se <mailto:petter@technux.se>> wrote:
>>
>>         After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by
>>         default' was
>>         introduced, kernel versions < 3.18 might not be buildable.
>>         Since full
>>         device tree support was introduced in 3.18 this change
>>         ensures that all
>>         kernel < 3.18 will automatically disable device tree.
>>
>>         Signed-off-by: Petter Mabäcker <petter@technux.se
>>         <mailto:petter@technux.se>>
>>         ---
>>          classes/linux-raspberrypi-base.bbclass  | 29
>>         +++++++++++++++++++++++++++++
>>          classes/sdcard_image-rpi.bbclass  |  6 ++++--
>>          recipes-kernel/linux/linux-raspberrypi.inc |  4 +++-
>>          3 files changed, 36 insertions(+), 3 deletions(-)
>>          create mode 100644 classes/linux-raspberrypi-base.bbclass
>>
>>         diff --git a/classes/linux-raspberrypi-base.bbclass
>>         b/classes/linux-raspberrypi-base.bbclass
>>         new file mode 100644
>>         index 0000000..4bcadd0
>>         --- /dev/null
>>         +++ b/classes/linux-raspberrypi-base.bbclass
>>         @@ -0,0 +1,29 @@
>>         +inherit linux-kernel-base
>>         +
>>         +
>>         +def get_dts(d, ver):
>>         +    staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
>>         +    dts = d.getVar("KERNEL_DEVICETREE", True)
>>         +
>>         +    # d.getVar() might return 'None' as a normal string
>>         +    # leading to 'is None' check isn't enough.
>>         +    # TODO: Investigate if this is a bug in bitbake
>>         +    if ver is None or ver == "None":
>>         +        ''' if 'ver' isn't set try to grab the kernel version
>>         +        from the kernel staging '''
>>         +        ver = get_kernelversion_file(staging_dir)
>>         +
>>         +    if ver is not None:
>>         +        min_ver = ver.split('.', 3)
>>         +    else:
>>         +        return dts
>>         +
>>         +    # Always turn off device tree support for kernel's < 3.18
>>         +    try:
>>         +        if int(min_ver[0]) <= 3:
>>         +            if int(min_ver[1]) < 18:
>>         +                dts = ""
>>         +    except IndexError:
>>         +        min_ver = None
>>         +
>>         +    return dts
>>         diff --git a/classes/sdcard_image-rpi.bbclass
>>         b/classes/sdcard_image-rpi.bbclass
>>         index 1ff664d..ca94566 100644
>>         --- a/classes/sdcard_image-rpi.bbclass
>>         +++ b/classes/sdcard_image-rpi.bbclass
>>         @@ -1,4 +1,5 @@
>>          inherit image_types
>>         +inherit linux-raspberrypi-base
>>
>>          #
>>          # Create an image that can by written onto a SD card using dd.
>>         @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {
>>                 ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} -
>>         ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>>                 SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
>>         ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
>>
>>         -       echo "Creating filesystem with Boot partition
>>         ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>>
>>
>>     Why do you remove this line? Maybe by mistake?
>     Yes this is by mistake, thanks for finding it. Will send up a new
>     version with this fixed.
>
> Don't bother. I'll fix it before merging.
Ok, thanks.
>
>>         +      # Check if we are building with device tree support
>>         +       DTS="${@get_dts(d, None)}"
>>
>>
>>     Aren't we able to use the same variable name, KERNEL_DEVICETREE?
>>     What that be a little clearer?
>     No, at least i couldn't get this working. When trying to set the
>     environment variable KERNEL_DEVICETREE in this context the values
>     was only ignored. Don't know if the image recipe (or at least the
>     IMAGE_CMD func) are doing something special. Perhaps it's possible
>     to use 'eval' or something similar to enforce the expansion of the
>     variable. If you have any good advice please share them, otherwise
>     I can at least write some comment about this.
>
>
> I'll try it a little. But I didn't expect this. Will see. Otherwise 
> this is fine.
Neither did I, let me know if you find anything interesting about this.
>
>
> -- 
> *Andrei Gherzan*
> *e: */andrei@gherzan.ro <mailto:andrei@gherzan.ro>/
> /*w:* /www.gherzan.ro <http://www.gherzan.ro>


--------------040508020902060800090303
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/10/2015 04:24 PM, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAK18fxFkrpjBj-zJXBUkQYiGBoxqzBBhU7yUEaaLPsoLfUWKUA@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Sun, May 10, 2015 at 4:20 PM,
            Petter Mabäcker <span dir="ltr">&lt;<a
                moz-do-not-send="true" href="mailto:petter@technux.se"
                target="_blank">petter@technux.se</a>&gt;</span> wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000">
                <div>Hi Andrei,<br>
                  <br>
                  See answers inline.<br>
                  <br>
                  BR,<br>
                  Petter
                  <div>
                    <div class="h5"><br>
                      <br>
                      On 05/10/2015 12:16 PM, Andrei Gherzan wrote:<br>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="h5">
                    <blockquote type="cite">
                      <div dir="ltr">Hello Petter,<br>
                        <div class="gmail_extra"><br>
                          <div class="gmail_quote">On Fri, May 8, 2015
                            at 11:49 PM, Petter Mabäcker <span
                              dir="ltr">&lt;<a moz-do-not-send="true"
                                href="mailto:petter@technux.se"
                                target="_blank">petter@technux.se</a>&gt;</span>
                            wrote:<br>
                            <blockquote class="gmail_quote"
                              style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">After

                              '6392a63 rpi-base.inc: Use
                              KERNEL_DEVICETREE by default' was<br>
                              introduced, kernel versions &lt; 3.18
                              might not be buildable. Since full<br>
                              device tree support was introduced in 3.18
                              this change ensures that all<br>
                              kernel &lt; 3.18 will automatically
                              disable device tree.<br>
                              <br>
                              Signed-off-by: Petter Mabäcker &lt;<a
                                moz-do-not-send="true"
                                href="mailto:petter@technux.se"
                                target="_blank">petter@technux.se</a>&gt;<br>
                              ---<br>
                               classes/linux-raspberrypi-base.bbclass   
                               | 29 +++++++++++++++++++++++++++++<br>
                               classes/sdcard_image-rpi.bbclass         
                               |  6 ++++--<br>
                               recipes-kernel/linux/linux-raspberrypi.inc
                              |  4 +++-<br>
                               3 files changed, 36 insertions(+), 3
                              deletions(-)<br>
                               create mode 100644
                              classes/linux-raspberrypi-base.bbclass<br>
                              <br>
                              diff --git
                              a/classes/linux-raspberrypi-base.bbclass
                              b/classes/linux-raspberrypi-base.bbclass<br>
                              new file mode 100644<br>
                              index 0000000..4bcadd0<br>
                              --- /dev/null<br>
                              +++
                              b/classes/linux-raspberrypi-base.bbclass<br>
                              @@ -0,0 +1,29 @@<br>
                              +inherit linux-kernel-base<br>
                              +<br>
                              +<br>
                              +def get_dts(d, ver):<br>
                              +    staging_dir =
                              d.getVar("STAGING_KERNEL_BUILDDIR", True)<br>
                              +    dts = d.getVar("KERNEL_DEVICETREE",
                              True)<br>
                              +<br>
                              +    # d.getVar() might return 'None' as a
                              normal string<br>
                              +    # leading to 'is None' check isn't
                              enough.<br>
                              +    # TODO: Investigate if this is a bug
                              in bitbake<br>
                              +    if ver is None or ver == "None":<br>
                              +        ''' if 'ver' isn't set try to
                              grab the kernel version<br>
                              +        from the kernel staging '''<br>
                              +        ver =
                              get_kernelversion_file(staging_dir)<br>
                              +<br>
                              +    if ver is not None:<br>
                              +        min_ver = ver.split('.', 3)<br>
                              +    else:<br>
                              +        return dts<br>
                              +<br>
                              +    # Always turn off device tree support
                              for kernel's &lt; 3.18<br>
                              +    try:<br>
                              +        if int(min_ver[0]) &lt;= 3:<br>
                              +            if int(min_ver[1]) &lt; 18:<br>
                              +                dts = ""<br>
                              +    except IndexError:<br>
                              +        min_ver = None<br>
                              +<br>
                              +    return dts<br>
                              diff --git
                              a/classes/sdcard_image-rpi.bbclass
                              b/classes/sdcard_image-rpi.bbclass<br>
                              index 1ff664d..ca94566 100644<br>
                              --- a/classes/sdcard_image-rpi.bbclass<br>
                              +++ b/classes/sdcard_image-rpi.bbclass<br>
                              @@ -1,4 +1,5 @@<br>
                               inherit image_types<br>
                              +inherit linux-raspberrypi-base<br>
                              <br>
                               #<br>
                               # Create an image that can by written
                              onto a SD card using dd.<br>
                              @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {<br>
                                      ROOTFS_SIZE_ALIGNED=$(expr
                              ${ROOTFS_SIZE_ALIGNED} -
                              ${ROOTFS_SIZE_ALIGNED} %
                              ${IMAGE_ROOTFS_ALIGNMENT})<br>
                                      SDIMG_SIZE=$(expr
                              ${IMAGE_ROOTFS_ALIGNMENT} +
                              ${BOOT_SPACE_ALIGNED} +
                              ${ROOTFS_SIZE_ALIGNED})<br>
                              <br>
                              -       echo "Creating filesystem with
                              Boot partition ${BOOT_SPACE_ALIGNED} KiB
                              and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"<br>
                            </blockquote>
                            <div><br>
                            </div>
                            <div>Why do you remove this line? Maybe by
                              mistake?</div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </div>
                Yes this is by mistake, thanks for finding it. Will send
                up a new version with this fixed.<span class=""><br>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div class="gmail_extra">
                        <div class="gmail_quote"> </div>
                      </div>
                    </div>
                  </blockquote>
                </span></div>
            </blockquote>
            <div>Don't bother. I'll fix it before merging.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Ok, thanks.<br>
    <blockquote
cite="mid:CAK18fxFkrpjBj-zJXBUkQYiGBoxqzBBhU7yUEaaLPsoLfUWKUA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div> <br>
            </div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div bgcolor="#FFFFFF" text="#000000"><span class="">
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div class="gmail_extra">
                        <div class="gmail_quote">
                          <div> </div>
                          <blockquote class="gmail_quote"
                            style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">+ 

                                 # Check if we are building with device
                            tree support<br>
                            +       DTS="${@get_dts(d, None)}"<br>
                          </blockquote>
                          <div><br>
                          </div>
                          <div>Aren't we able to use the same variable
                            name, KERNEL_DEVICETREE? What that be a
                            little clearer? <br>
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                </span> No, at least i couldn't get this working. When
                trying to set the environment variable KERNEL_DEVICETREE
                in this context the values was only ignored. Don't know
                if the image recipe (or at least the IMAGE_CMD func) are
                doing something special. Perhaps it's possible to use
                'eval' or something similar to enforce the expansion of
                the variable. If you have any good advice please share
                them, otherwise I can at least write some comment about
                this.</div>
            </blockquote>
            <div><br>
            </div>
            <div>I'll try it a little. But I didn't expect this. Will
              see. Otherwise this is fine.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Neither did I, let me know if you find anything interesting about
    this.<br>
    <blockquote
cite="mid:CAK18fxFkrpjBj-zJXBUkQYiGBoxqzBBhU7yUEaaLPsoLfUWKUA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br clear="all">
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

--------------040508020902060800090303--
