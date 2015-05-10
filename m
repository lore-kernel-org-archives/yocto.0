Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF4A1E009A6; Sun, 10 May 2015 07:24:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D51F6E00993
	for <yocto@yoctoproject.org>; Sun, 10 May 2015 07:24:34 -0700 (PDT)
Received: by wizk4 with SMTP id k4so78058928wiz.1
	for <yocto@yoctoproject.org>; Sun, 10 May 2015 07:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=dw7Nydl428pdUH8jT/AcSeySEBp3AVW2tbeL06NR9/0=;
	b=jFA79foEYk+d7p4Z+16OqQWh3GMwRqejtmv9VjhEdxsqPKRlLaYe4ne02G6OMru+9t
	NEE4fI+kdmSp5XP6JmVmMTuVrXEVOJi0bGvbObgLG3FmKdzmS19EtmY7GNHlZ9CFpLef
	XzuYm8zfYVFgHe1v+PNN0+1LmHy6owrocxfXoYM9FHim5DdVGP7LMnc/f78NvoQtQtWK
	tRL9pvRbkRoXuzyi+Ug9VK3B/h98lzL8kgYOBFAJIN90J2FiM4gtufYVsps5zWLoH1dz
	/1Ccg02+e+9tLpP6YNq7f6ACl5w3xLDwjvySZdVptyNNafG2UEedXJ2pOxk9Vdg580lK
	vq7Q==
X-Gm-Message-State: ALoCoQk44tMNYgxswZYVwQMb1/xKp8EuUI/Qooo+uzMakIl0q1N+c9Rb68L3tENFO5vvLMkJ/kQz
X-Received: by 10.194.185.8 with SMTP id ey8mr12577344wjc.118.1431267873565;
	Sun, 10 May 2015 07:24:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.136 with HTTP; Sun, 10 May 2015 07:24:13 -0700 (PDT)
X-Originating-IP: [87.63.77.14]
In-Reply-To: <554F6918.4040903@technux.se>
References: <cover.1431121258.git.petter@technux.se>
	<b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
	<CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com>
	<554F6918.4040903@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 10 May 2015 16:24:13 +0200
Message-ID: <CAK18fxFkrpjBj-zJXBUkQYiGBoxqzBBhU7yUEaaLPsoLfUWKUA@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
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
X-List-Received-Date: Sun, 10 May 2015 14:24:39 -0000
Content-Type: multipart/alternative; boundary=047d7bd6abee2ec4d20515bb0506

--047d7bd6abee2ec4d20515bb0506
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, May 10, 2015 at 4:20 PM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:

>  Hi Andrei,
>
> See answers inline.
>
> BR,
> Petter
>
>
> On 05/10/2015 12:16 PM, Andrei Gherzan wrote:
>
> Hello Petter,
>
> On Fri, May 8, 2015 at 11:49 PM, Petter Mab=C3=A4cker <petter@technux.se>
> wrote:
>
>> After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
>> introduced, kernel versions < 3.18 might not be buildable. Since full
>> device tree support was introduced in 3.18 this change ensures that all
>> kernel < 3.18 will automatically disable device tree.
>>
>> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
>> ---
>>  classes/linux-raspberrypi-base.bbclass     | 29
>> +++++++++++++++++++++++++++++
>>  classes/sdcard_image-rpi.bbclass           |  6 ++++--
>>  recipes-kernel/linux/linux-raspberrypi.inc |  4 +++-
>>  3 files changed, 36 insertions(+), 3 deletions(-)
>>  create mode 100644 classes/linux-raspberrypi-base.bbclass
>>
>> diff --git a/classes/linux-raspberrypi-base.bbclass
>> b/classes/linux-raspberrypi-base.bbclass
>> new file mode 100644
>> index 0000000..4bcadd0
>> --- /dev/null
>> +++ b/classes/linux-raspberrypi-base.bbclass
>> @@ -0,0 +1,29 @@
>> +inherit linux-kernel-base
>> +
>> +
>> +def get_dts(d, ver):
>> +    staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
>> +    dts =3D d.getVar("KERNEL_DEVICETREE", True)
>> +
>> +    # d.getVar() might return 'None' as a normal string
>> +    # leading to 'is None' check isn't enough.
>> +    # TODO: Investigate if this is a bug in bitbake
>> +    if ver is None or ver =3D=3D "None":
>> +        ''' if 'ver' isn't set try to grab the kernel version
>> +        from the kernel staging '''
>> +        ver =3D get_kernelversion_file(staging_dir)
>> +
>> +    if ver is not None:
>> +        min_ver =3D ver.split('.', 3)
>> +    else:
>> +        return dts
>> +
>> +    # Always turn off device tree support for kernel's < 3.18
>> +    try:
>> +        if int(min_ver[0]) <=3D 3:
>> +            if int(min_ver[1]) < 18:
>> +                dts =3D ""
>> +    except IndexError:
>> +        min_ver =3D None
>> +
>> +    return dts
>> diff --git a/classes/sdcard_image-rpi.bbclass
>> b/classes/sdcard_image-rpi.bbclass
>> index 1ff664d..ca94566 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -1,4 +1,5 @@
>>  inherit image_types
>> +inherit linux-raspberrypi-base
>>
>>  #
>>  # Create an image that can by written onto a SD card using dd.
>> @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {
>>         ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIGNED} -
>> ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>>         SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
>> ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
>>
>> -       echo "Creating filesystem with Boot partition
>> ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>>
>
>  Why do you remove this line? Maybe by mistake?
>
> Yes this is by mistake, thanks for finding it. Will send up a new version
> with this fixed.
>
>   Don't bother. I'll fix it before merging.

>
>
>> +       # Check if we are building with device tree support
>> +       DTS=3D"${@get_dts(d, None)}"
>>
>
>  Aren't we able to use the same variable name, KERNEL_DEVICETREE? What
> that be a little clearer?
>
> No, at least i couldn't get this working. When trying to set the
> environment variable KERNEL_DEVICETREE in this context the values was onl=
y
> ignored. Don't know if the image recipe (or at least the IMAGE_CMD func)
> are doing something special. Perhaps it's possible to use 'eval' or
> something similar to enforce the expansion of the variable. If you have a=
ny
> good advice please share them, otherwise I can at least write some commen=
t
> about this.
>

I'll try it a little. But I didn't expect this. Will see. Otherwise this is
fine.


--=20
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--047d7bd6abee2ec4d20515bb0506
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, May 10, 2015 at 4:20 PM, Petter Mab=C3=A4cker <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:petter@technux.se" target=3D"_blank">petter@technux.=
se</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>Hi Andrei,<br>
      <br>
      See answers inline.<br>
      <br>
      BR,<br>
      Petter<div><div class=3D"h5"><br>
      <br>
      On 05/10/2015 12:16 PM, Andrei Gherzan wrote:<br>
    </div></div></div><div><div class=3D"h5">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hello Petter,<br>
        <div class=3D"gmail_extra"><br>
          <div class=3D"gmail_quote">On Fri, May 8, 2015 at 11:49 PM,
            Petter Mab=C3=A4cker <span dir=3D"ltr">&lt;<a href=3D"mailto:pe=
tter@technux.se" target=3D"_blank">petter@technux.se</a>&gt;</span> wrote:<=
br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">After
              &#39;6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default&#=
39;
              was<br>
              introduced, kernel versions &lt; 3.18 might not be
              buildable. Since full<br>
              device tree support was introduced in 3.18 this change
              ensures that all<br>
              kernel &lt; 3.18 will automatically disable device tree.<br>
              <br>
              Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:pet=
ter@technux.se" target=3D"_blank">petter@technux.se</a>&gt;<br>
              ---<br>
              =C2=A0classes/linux-raspberrypi-base.bbclass=C2=A0 =C2=A0 =C2=
=A0| 29
              +++++++++++++++++++++++++++++<br>
              =C2=A0classes/sdcard_image-rpi.bbclass=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 6 ++++--<br>
              =C2=A0recipes-kernel/linux/linux-raspberrypi.inc |=C2=A0 4 ++=
+-<br>
              =C2=A03 files changed, 36 insertions(+), 3 deletions(-)<br>
              =C2=A0create mode 100644 classes/linux-raspberrypi-base.bbcla=
ss<br>
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
              +=C2=A0 =C2=A0 staging_dir =3D d.getVar(&quot;STAGING_KERNEL_=
BUILDDIR&quot;,
              True)<br>
              +=C2=A0 =C2=A0 dts =3D d.getVar(&quot;KERNEL_DEVICETREE&quot;=
, True)<br>
              +<br>
              +=C2=A0 =C2=A0 # d.getVar() might return &#39;None&#39; as a =
normal string<br>
              +=C2=A0 =C2=A0 # leading to &#39;is None&#39; check isn&#39;t=
 enough.<br>
              +=C2=A0 =C2=A0 # TODO: Investigate if this is a bug in bitbak=
e<br>
              +=C2=A0 =C2=A0 if ver is None or ver =3D=3D &quot;None&quot;:=
<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; if &#39;ver&#39;=
 isn&#39;t set try to grab the kernel
              version<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 from the kernel staging &#39;&#3=
9;&#39;<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ver =3D get_kernelversion_file(s=
taging_dir)<br>
              +<br>
              +=C2=A0 =C2=A0 if ver is not None:<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 min_ver =3D ver.split(&#39;.&#39=
;, 3)<br>
              +=C2=A0 =C2=A0 else:<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 return dts<br>
              +<br>
              +=C2=A0 =C2=A0 # Always turn off device tree support for kern=
el&#39;s
              &lt; 3.18<br>
              +=C2=A0 =C2=A0 try:<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if int(min_ver[0]) &lt;=3D 3:<br=
>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if int(min_ver[1])=
 &lt; 18:<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dts =
=3D &quot;&quot;<br>
              +=C2=A0 =C2=A0 except IndexError:<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0 min_ver =3D None<br>
              +<br>
              +=C2=A0 =C2=A0 return dts<br>
              diff --git a/classes/sdcard_image-rpi.bbclass
              b/classes/sdcard_image-rpi.bbclass<br>
              index 1ff664d..ca94566 100644<br>
              --- a/classes/sdcard_image-rpi.bbclass<br>
              +++ b/classes/sdcard_image-rpi.bbclass<br>
              @@ -1,4 +1,5 @@<br>
              =C2=A0inherit image_types<br>
              +inherit linux-raspberrypi-base<br>
              <br>
              =C2=A0#<br>
              =C2=A0# Create an image that can by written onto a SD card
              using dd.<br>
              @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 ROOTFS_SIZE_ALIGNED=3D$(expr ${RO=
OTFS_SIZE_ALIGNED}
              - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})<br>
              =C2=A0 =C2=A0 =C2=A0 =C2=A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTF=
S_ALIGNMENT} +
              ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})<br>
              <br>
              -=C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Creating filesystem wi=
th Boot partition
              ${BOOT_SPACE_ALIGNED} KiB and RootFS
              ${ROOTFS_SIZE_ALIGNED} KiB&quot;<br>
            </blockquote>
            <div><br>
            </div>
            <div>Why do you remove this line? Maybe by mistake?</div>
          </div>
        </div>
      </div>
    </blockquote></div></div>
    Yes this is by mistake, thanks for finding it. Will send up a new
    version with this fixed.<span class=3D""><br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">
          <div class=3D"gmail_quote">
            <div></div></div></div></div></blockquote></span></div></blockq=
uote><div>Don&#39;t bother. I&#39;ll fix it before merging.=C2=A0<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#000000"><s=
pan class=3D""><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"gma=
il_extra"><div class=3D"gmail_quote"><div>=C2=A0</div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">+=C2=A0
              =C2=A0 =C2=A0 =C2=A0# Check if we are building with device tr=
ee support<br>
              +=C2=A0 =C2=A0 =C2=A0 =C2=A0DTS=3D&quot;${@get_dts(d, None)}&=
quot;<br>
            </blockquote>
            <div><br>
            </div>
            <div>Aren&#39;t we able to use the same variable name,
              KERNEL_DEVICETREE? What that be a little clearer? <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote></span>
    No, at least i couldn&#39;t get this working. When trying to set the
    environment variable KERNEL_DEVICETREE in this context the values
    was only ignored. Don&#39;t know if the image recipe (or at least the
    IMAGE_CMD func) are doing something special. Perhaps it&#39;s possible
    to use &#39;eval&#39; or something similar to enforce the expansion of =
the
    variable. If you have any good advice please share them, otherwise I
    can at least write some comment about this.</div></blockquote><div><br>=
</div><div>I&#39;ll try it a little. But I didn&#39;t expect this. Will see=
. Otherwise this is fine.</div></div><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v style=3D"text-align:center"></div><div style=3D"text-align:center"><div a=
lign=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51=
,51);text-align:center">Andrei Gherzan</b><br></div><div align=3D"left"><b =
style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:c=
enter">e: </b><span style=3D"font-family:Arial;font-size:small;color:rgb(51=
,51,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"left"><span=
 style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:=
center"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" target=3D"_blank=
">www.gherzan.ro</a></span></div></div></div></div></div></div>
</div></div>

--047d7bd6abee2ec4d20515bb0506--
