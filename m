Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3ADCE00B83; Wed, 11 Jun 2014 00:34:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52317E0082A
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:33:56 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w61so1817764wes.29
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nId4c38ftYTeXmBWOGPdeq6KdMKL93wcPpMK5LZDNRg=;
	b=UFc8D8aaFWIcuLPcSwiv8mEeEgYFlmK9CbPrFeNnapimcLca4FPQ6Wg26pL0Rg9A5Z
	jY4hnkydqZ5X/GDqjPpeDKUEiYxLqJCuvAvI/DQZSDdwAfzU4IPH9EAGZ1R5mb3Ko1ji
	2v7p6jOuVXUv0M0T+Elah9qF6+z9ax1TaBo3PSIhJK4Lt8CxZSu+krpCLlpFLOC5AC8E
	nDcO8EsAMt02nfyvmJY6No/HlciPjMxFoavJRUqqouBVMQ/r5F4fHWPRtrCwUzlTorRo
	TY6NZMFXSallZxoUpN/SHSp+SL4/mN9ZdsSwYyAL1Okp56Ro/Vlq15RYBFO1zdqkskVV
	pPZA==
X-Gm-Message-State: ALoCoQlt3A5oy58LXe+tiR5luaLL/MSHH6HxTS4I/FHfeoylPUkthTHHwx1vEXKVoiwPF/WGcsdF
X-Received: by 10.180.94.163 with SMTP id dd3mr44450487wib.26.1402472035237;
	Wed, 11 Jun 2014 00:33:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 00:33:35 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <53980530.8000705@dynamicdevices.co.uk>
References: <cover.1402296985.git.ajlennon@dynamicdevices.co.uk>
	<9c061d514d5c846032c672ae42b6a1119e4e69db.1402296985.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxGg1sCKbsKS=Qg4n8==sJJgEME4_N11CriNa+irL-ziBg@mail.gmail.com>
	<53979352.6040909@dynamicdevices.co.uk>
	<53980530.8000705@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 10:33:35 +0300
Message-ID: <CAK18fxH_jGCkFcpJnjwaQUjx6xotY99cpoaw8-OSQfS1WheMPg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-plugins-bad: Build eglglessink for Raspberry Pi
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
X-List-Received-Date: Wed, 11 Jun 2014 07:34:00 -0000
Content-Type: multipart/alternative; boundary=f46d04462e5e77defc04fb8a7729

--f46d04462e5e77defc04fb8a7729
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 10:28 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 11/06/2014 00:22, Alex J Lennon wrote:
>
>
> On 10/06/2014 19:48, Andrei Gherzan wrote:
>
> Hi Alex,
>
>
> On Mon, Jun 9, 2014 at 10:23 AM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>> The eglglessink needs to be built to target the Raspberry Pi or it will
>> seg-fault in use.
>>
>> Autoconf attempts to detect whether to build for RPi but there are some
>> include files needed, the search path to which must be specified.
>>
>
>  Format lines - max 78 chars per line.
>
>
>>
>> ref: https://github.com/raspberrypi/firmware/issues/34
>>
>> ref: https://github.com/raspberrypi/firmware/issues/99
>>
>> This patch adds the needed include paths and forces the plugin to be
>> built for Raspberry Pi.
>>
>> With this patch the following pipeline works on RPi,
>>
>> modprobe bcm2835-v4l2 gst_v4l2src_is_broken=1
>> gst-launch-1.0 --gst-debug-no-color v4l2src !
>> 'video/x-raw,format=RGB,width=1280,height=720,framerate=(fraction)30/1' !
>> eglglessink max-lateness=-1
>>
>> Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f
>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>> ---
>>   recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend |
>> 1 +
>>  1 file changed, 1 insertion(+)
>>  create mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>>
>>  diff --git
>> a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>> b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>> new file mode 100644
>> index 0000000..199e0c1
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend
>> @@ -0,0 +1 @@
>> +EXTRA_OECONF += "
>> CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads
>> -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'
>> --with-egl-window-system=rpi"
>>
>
>  This append should be done only for raspberrypi machine. Having this
> append (EXTRA_OECONF) for other machines too would
> break gstreamer1.0-plugins-bad as most of the times bblayers.conf includes
> many layers not always related to the MACHINE selected.
>
>
> Absolutely. Our emails may have crossed here and if so my apologies, but
> this is why I directed the .bbappend to [meta-raspberrypi] as that's where
> it's needed.
>
>
> Andrei - Upon further reflection I see what you mean. Somebody might well
> include the meta-raspberrypi layer, yet not be building for the Raspberry
> Pi. Not something I'd considered. I'll re-work the patch to take this into
> account.
>
> Cheers, Alex
>
>
Great. Thank you Alex.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d04462e5e77defc04fb8a7729
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 10:28 AM, Alex J Lennon <span dir=3D"ltr">&=
lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlen=
non@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div><div class=3D"h5">
    <br>
    <div>On 11/06/2014 00:22, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <br>
      <div>On 10/06/2014 19:48, Andrei Gherzan
        wrote:<br>
      </div>
      <blockquote type=3D"cite">
        <div dir=3D"ltr">Hi Alex,<br>
          <div class=3D"gmail_extra"><br>
            <br>
            <div class=3D"gmail_quote">On Mon, Jun 9, 2014 at 10:23 AM,
              Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlenno=
n@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>=
&gt;</span>
              wrote:<br>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
                <div>The eglglessink needs to be built to
                  target the Raspberry Pi or it will seg-fault in use.<br>
                  <br>
                  Autoconf attempts to detect whether to build for RPi
                  but there are some include files needed, the search
                  path to which must be specified.<br>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>Format lines - max 78 chars per line.</div>
              <div>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
                <div> <br>
                  ref: <a href=3D"https://github.com/raspberrypi/firmware/i=
ssues/34" target=3D"_blank">https://github.com/raspberrypi/firmware/issues/=
34</a><br>
                  <br>
                  ref: <a href=3D"https://github.com/raspberrypi/firmware/i=
ssues/99" target=3D"_blank">https://github.com/raspberrypi/firmware/issues/=
99</a><br>
                  <br>
                  This patch adds the needed include paths and forces
                  the plugin to be built for Raspberry Pi.<br>
                  <br>
                  With this patch the following pipeline works on RPi,<br>
                  <br>
                  modprobe bcm2835-v4l2 gst_v4l2src_is_broken=3D1<br>
                  gst-launch-1.0 --gst-debug-no-color v4l2src !
                  &#39;video/x-raw,format=3DRGB,width=3D1280,height=3D720,f=
ramerate=3D(fraction)30/1&#39;
                  ! eglglessink max-lateness=3D-1<br>
                  <br>
                  Change-Id: I80826a43a428199b2a05ea51404ead24a815c38f<br>
                  Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlenn=
on@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a=
>&gt;<br>
                  ---<br>
                </div>
                <div>=C2=A0recipes-multimedia/gstreamer/gstreamer1.0-plugin=
s-bad_1.2.3.bbappend

                  | 1 +<br>
                  =C2=A01 file changed, 1 insertion(+)<br>
                  =C2=A0create mode 100644
                  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2=
.3.bbappend<br>
                  <br>
                </div>
                <div>diff --git
                  a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1=
.2.3.bbappend
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.3.bbappend<br>
                  new file mode 100644<br>
                  index 0000000..199e0c1<br>
                  --- /dev/null<br>
                  +++
                  b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1=
.2.3.bbappend<br>
                  @@ -0,0 +1 @@<br>
                  +EXTRA_OECONF +=3D &quot;
                  CPPFLAGS=3D&#39;-I${STAGING_DIR_TARGET}/usr/include/inter=
face/vcos/pthreads
                  -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/l=
inux&#39;

                  --with-egl-window-system=3Drpi&quot;<br>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>This append should be done only for raspberrypi
                machine. Having this append (EXTRA_OECONF) for other
                machines too would break=C2=A0gstreamer1.0-plugins-bad as
                most of the times bblayers.conf includes many layers not
                always related to the MACHINE selected.</div>
            </div>
          </div>
        </div>
      </blockquote>
      <br>
      Absolutely. Our emails may have crossed here and if so my
      apologies, but this is why I directed the .bbappend to
      [meta-raspberrypi] as that&#39;s where it&#39;s needed.<br>
    </blockquote>
    <br></div></div>
    Andrei - Upon further reflection I see what you mean. Somebody might
    well include the meta-raspberrypi layer, yet not be building for the
    Raspberry Pi. Not something I&#39;d considered. I&#39;ll re-work the pa=
tch
    to take this into account.<br>
    <br>
    Cheers, Alex<br>
    <br>
    <div>
      <div> </div>
    </div>
  </div>

</blockquote></div><div class=3D"gmail_extra"><br></div>Great. Thank you Al=
ex.<br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=
=3D"text-align:center"></div><div style=3D"text-align:center"><div align=3D=
"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--f46d04462e5e77defc04fb8a7729--
