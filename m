Return-Path: <gvandenbosch@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B69FE00A48; Fri, 26 May 2017 08:08:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gvandenbosch[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FEDE00826
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 08:08:16 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id e127so23671651wmg.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 08:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MHeOAaZRy1esrfAhu0llw02BxEmf3FlZPqhvQAPKxYQ=;
	b=eLbBkJQTlkXVydpTaWvVaZ91+MHNjcOTm6R3x0gzCDFOt6dEcL7CFsk8qCGopjImUR
	5MA7LT9S99W23hFqyLVH52OEjdAO31VVCoer4b92jsNKBGhpK+jjb4O15HPyWybfuHhv
	VoObzZjnDW1eK2/uKqAjd+SDucsLGiOeMwktLu0KQ3FJzDO8i1QPHOnRKtc1Q28aDstU
	bpCr2TvAiZ1PyEey4YtRDNdq8rhXD1JJKOSvFPNl1estKincmZMxKD2DtfAkE+tW6u2c
	20/eSkIzbLBLnbcGXn3/7fb1m7X3whN6wIXvUTg19Flr5vtzi27N+UCvtc+5O4oXcLfx
	CinA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MHeOAaZRy1esrfAhu0llw02BxEmf3FlZPqhvQAPKxYQ=;
	b=Gio4hILQEICVaJLnGjMdP7o/vy9X383FQHeHSdxiF1Ih9KIVzdIMB61EIBRPGisK6L
	dyDksdppuLcVI54xEYkP+L1CEms71Vq3JESdR+BIKv1czfqWUpLZnVFS+4PfghkPNZyb
	P4Wdrl2pVFUJCUDk/0qgrW9hyv4/LR3ho61bt61cMTCN2dDXazPuinoCMl47H4gTX7rC
	4fs5q4o0AKQofp7S/2XGjg1TJeUilAo11pGrub+lETQDd6IizkaeDLhz5A85ZHrSQT4w
	cPmpKk3CnF+2kb0sLDfJBLXCgGLvqKdL9xKoA/F4d2m3buPrffF7kkIBCdX4cgNV/NSa
	A6tA==
X-Gm-Message-State: AODbwcABgpraXJhWnBk6itu3tjxFXv5/u84UiRS7ryO6SCqwZrvnnWXA
	YdtazufFok0Q4+5/Y3SloHPzaorWpg==
X-Received: by 10.28.24.202 with SMTP id 193mr2543829wmy.125.1495811295772;
	Fri, 26 May 2017 08:08:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.73.139 with HTTP; Fri, 26 May 2017 08:07:55 -0700 (PDT)
In-Reply-To: <243cabe6-7e72-446e-cf07-48de3f61f3f7@embexus.com>
References: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
	<CAAQYJAsD1B=Z1pFfVS8VhW4aKXcVShye2sLYqf0gsLFta+uifg@mail.gmail.com>
	<CADqNDzqOGHU43Eaz+RuaQAxSeRGPPd2AEKhWj9T7Hsj8L--Kgg@mail.gmail.com>
	<719c5e41-a79d-f14e-01e7-06a7b881fc44@embexus.com>
	<CADqNDzordhf-nQ=fuC=nT+hZyofbx_xeuZyQauKgtTAx1c6EBg@mail.gmail.com>
	<243cabe6-7e72-446e-cf07-48de3f61f3f7@embexus.com>
From: Gerard van den Bosch <gvandenbosch@gmail.com>
Date: Fri, 26 May 2017 23:07:55 +0800
Message-ID: <CADqNDzpVmbx0xYYLYVPdAP_WZ_S4vwLpjXV4V8W8vgfzSZybEQ@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: yocto@yoctoproject.org
Subject: Re: Warning: unable to open an initial console
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
X-List-Received-Date: Fri, 26 May 2017 15:08:19 -0000
Content-Type: multipart/alternative; boundary="001a11469398ef8ce805506eb446"

--001a11469398ef8ce805506eb446
Content-Type: text/plain; charset="UTF-8"

Hello Ayoub,

Thank you very much.

Your script creates the /dev/console and the /dev/null in my rootfs and now
I keep getting console data.

Cheers,
Gerard

On Fri, May 26, 2017 at 10:35 PM, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

> Hi Gerard,
>
> indeed your Kernel it's quite outdated.
>
> you can try to add a recipe like that in your image :
>
> SUMMARY = "basic initramfs image init script"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=
> 3da9cfbcb788c80a0384361b4de20420"
> SRC_URI = "file://init-boot.sh"
>
>
> S = "${WORKDIR}"
>
> do_install() {
>         install -d ${D}${base_sbindir}
>         install -m 0755 ${WORKDIR}/init-boot.sh ${D}${base_sbindir}/init
> }
>
> do_install_append() {
>         install -d ${D}/dev
>         mknod -m 622 ${D}/dev/console c 5 1
>         mknod -m 666 ${D}/dev/null c 1 3
> }
>
> inherit allarch
>
> FILES_${PN} += "/dev /sbin/init "
>
>
> Regards,
>
> Ayoub
>
>
>
> On 26.05.2017 16:27, Gerard van den Bosch wrote:
>
> Hello Ayoub,
>
> The kernel is quite old 2.6.20 and this variable is not available in the
> config.
> On the internet I saw this is only introduced with kernel version 2.6.32.
>
> Cheers,
> Gerard
>
> On Fri, May 26, 2017 at 10:20 PM, Ayoub Zaki <ayoub.zaki@embexus.com>
> wrote:
>
>> Hi Gerard,
>>
>> did you try to set CONFIG_DEVTMPFS=y in your Kernel config ?
>>
>> Cheers
>>
>> On 26.05.2017 15:52, Gerard van den Bosch wrote:
>>
>> Hello Andrea,
>>
>> I have tried to add the line to my machine config:
>> IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>>
>> But this didn't help, then I looked a bit further and also tried to set
>> the following:
>>
>> USE_DEVFS="0"
>> VIRTUAL_RUNTIME_dev_manager = "mdev"
>>
>> Unfortunately this doesn't seem to change anything.
>>
>> Cheers,
>> Gerard
>>
>> On Fri, May 26, 2017 at 7:27 PM, Andrea Adami <andrea.adami@gmail.com>
>> wrote:
>>
>>> On Fri, May 26, 2017 at 1:05 PM, Gerard van den Bosch
>>> <gvandenbosch@gmail.com> wrote:
>>> > Hello,
>>> >
>>> > I have build my vendor custom kernel 2.6.20 with yocto daisy.
>>> > Daisy is used because seems to be last release supporting this old
>>> kernel.
>>> >
>>> > I tried building core-image-minimal and core-image-base.
>>> >
>>> > The kernel boots and the rootfs is mounted but then I get:
>>> >
>>> > "Warning: unable to open an initial console."
>>> >
>>> >
>>> > I found on the internet this is because "/dev/console" doesn't exists.
>>> > The dev folder in my generated rootfs is empty.
>>> >
>>> > On internet found can do the following commands:
>>> > "mknod -m 600 /dev/console c 5 1 "
>>> > "mknod -m 666 /dev/null c 1 3"
>>> >
>>> > But if this is the problem how do I add this to my recipe?
>>> > Or is there a proper way to populate this devices?
>>> >
>>> > Cheers,
>>> > Gerard
>>> >
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >
>>>
>>> Hello Gerard,
>>>
>>> if your old kernel lacks devtmpfs you need a "device table".
>>> You need to set at least
>>> IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>>>
>>> This is a default set in image.bbclass before and after daisy...dunno
>>> what's happened with this release.
>>>
>>> Cheers
>>> Andrea
>>>
>>
>>
>>
>>
>> --
>>
>> Ayoub Zaki
>> ayoub.zaki@embexus.com
>> Mobile: +49(0)176-62901545 <+49%20176%2062901545>https://embexus.com
>>
>>
>
> --
>
> Ayoub Zaki
> ayoub.zaki@embexus.com
> Mobile: +49(0)176-62901545 <+49%20176%2062901545>https://embexus.com
>
>

--001a11469398ef8ce805506eb446
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ayoub,<div><br></div><div>Thank you very much.</div>=
<div><br></div><div>Your script creates the /dev/console and the /dev/null =
in my rootfs and now I keep getting console data.</div><div><br></div><div>=
Cheers,</div><div>Gerard</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Fri, May 26, 2017 at 10:35 PM, Ayoub Zaki <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ay=
oub.zaki@embexus.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Gerard,</p>
    <p>indeed your Kernel it&#39;s quite outdated.</p>
    <p>you can try to add a recipe like that in your image :</p>
    <p>SUMMARY =3D &quot;basic initramfs image init script&quot;<br>
      LICENSE =3D &quot;MIT&quot;<br>
      LIC_FILES_CHKSUM =3D
<a class=3D"m_6818304507651845666moz-txt-link-rfc2396E">&quot;file://${CORE=
BASE}/meta/<wbr>COPYING.MIT;md5=3D<wbr>3da9cfbcb788c80a0384361b4de204<wbr>2=
0&quot;</a><br>
      SRC_URI =3D <a class=3D"m_6818304507651845666moz-txt-link-rfc2396E">&=
quot;file://init-boot.sh&quot;</a><br>
      <br>
      <br>
      S =3D &quot;${WORKDIR}&quot;<br>
      <br>
      do_install() {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${base_sbin=
dir}<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}=
/init-boot.sh
      ${D}${base_sbindir}/init<br>
      }<br>
      <br>
      do_install_append() {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/dev<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mknod -m 622 ${D}/dev/cons=
ole c 5 1<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mknod -m 666 ${D}/dev/null=
 c 1 3<br>
      }<br>
      <br>
      inherit allarch<br>
      <br>
      FILES_${PN} +=3D &quot;/dev /sbin/init &quot;<br>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ayoub<br>
    </p><div><div class=3D"h5">
    <p><br>
    </p>
    <br>
    <div class=3D"m_6818304507651845666moz-cite-prefix">On 26.05.2017 16:27=
, Gerard van den
      Bosch wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hello Ayoub,
        <div><br>
        </div>
        <div>The kernel is quite old 2.6.20 and this variable is not
          available in the config.</div>
        <div>On the internet I saw this is only introduced with kernel
          version 2.6.32.</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Gerard</div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Fri, May 26, 2017 at 10:20 PM, Ayoub
          Zaki <span dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@embexus.c=
om" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div text=3D"#000000" bgcolor=3D"#FFFFFF">
              <p>Hi Gerard,</p>
              <p>did you try to set <span>CONFIG_DEVTMPFS=3Dy
                  in your Kernel config ?</span></p>
              <p><span>Cheers<br>
                </span></p>
              <div>
                <div class=3D"m_6818304507651845666h5"> <br>
                  <div class=3D"m_6818304507651845666m_-6926889303052179457=
moz-cite-prefix">On
                    26.05.2017 15:52, Gerard van den Bosch wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">Hello Andrea,
                      <div><br>
                      </div>
                      <div>I have tried to add the line to my machine
                        config:</div>
                      <div>
                        <div>IMAGE_DEVICE_TABLES =3D
                          &quot;files/device_table-minimal.tx<wbr>t&quot;</=
div>
                      </div>
                      <div><br>
                      </div>
                      <div>But this didn&#39;t help, then I looked a bit
                        further and also tried to set the following:</div>
                      <div><br>
                      </div>
                      <div>
                        <div>USE_DEVFS=3D&quot;0&quot;</div>
                        <div>VIRTUAL_RUNTIME_dev_manager =3D &quot;mdev&quo=
t;<br>
                        </div>
                      </div>
                      <div><br>
                      </div>
                      <div>Unfortunately this doesn&#39;t seem to change
                        anything.</div>
                      <div><br>
                      </div>
                      <div>Cheers,</div>
                      <div>Gerard</div>
                    </div>
                    <div class=3D"gmail_extra"><br>
                      <div class=3D"gmail_quote">On Fri, May 26, 2017 at
                        7:27 PM, Andrea Adami <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrea.adami@gmail.com" target=3D"_blank">andrea.adami@gmail.com=
</a>&gt;</span>
                        wrote:<br>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                          <div class=3D"m_6818304507651845666m_-69268893030=
52179457HOEnZb">
                            <div class=3D"m_6818304507651845666m_-692688930=
3052179457h5">On
                              Fri, May 26, 2017 at 1:05 PM, Gerard van
                              den Bosch<br>
                              &lt;<a href=3D"mailto:gvandenbosch@gmail.com"=
 target=3D"_blank">gvandenbosch@gmail.com</a>&gt;
                              wrote:<br>
                              &gt; Hello,<br>
                              &gt;<br>
                              &gt; I have build my vendor custom kernel
                              2.6.20 with yocto daisy.<br>
                              &gt; Daisy is used because seems to be
                              last release supporting this old kernel.<br>
                              &gt;<br>
                              &gt; I tried building core-image-minimal
                              and core-image-base.<br>
                              &gt;<br>
                              &gt; The kernel boots and the rootfs is
                              mounted but then I get:<br>
                              &gt;<br>
                              &gt; &quot;Warning: unable to open an initial
                              console.&quot;<br>
                              &gt;<br>
                              &gt;<br>
                              &gt; I found on the internet this is
                              because &quot;/dev/console&quot; doesn&#39;t =
exists.<br>
                              &gt; The dev folder in my generated rootfs
                              is empty.<br>
                              &gt;<br>
                              &gt; On internet found can do the
                              following commands:<br>
                              &gt; &quot;mknod -m 600 /dev/console c 5 1 &q=
uot;<br>
                              &gt; &quot;mknod -m 666 /dev/null c 1 3&quot;=
<br>
                              &gt;<br>
                              &gt; But if this is the problem how do I
                              add this to my recipe?<br>
                              &gt; Or is there a proper way to populate
                              this devices?<br>
                              &gt;<br>
                              &gt; Cheers,<br>
                              &gt; Gerard<br>
                              &gt;<br>
                            </div>
                          </div>
                          &gt; --<br>
                          &gt; ______________________________<wbr>_________=
________<br>
                          &gt; yocto mailing list<br>
                          &gt; <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a><br>
                          &gt; <a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org<wbr>/listinfo/yocto</a><br>
                          &gt;<br>
                          <br>
                          Hello Gerard,<br>
                          <br>
                          if your old kernel lacks devtmpfs you need a
                          &quot;device table&quot;.<br>
                          You need to set at least<br>
                          IMAGE_DEVICE_TABLES =3D
                          &quot;files/device_table-minimal.tx<wbr>t&quot;<b=
r>
                          <br>
                          This is a default set in image.bbclass before
                          and after daisy...dunno<br>
                          what&#39;s happened with this release.<br>
                          <br>
                          Cheers<br>
                          <span class=3D"m_6818304507651845666m_-6926889303=
052179457HOEnZb"><font color=3D"#888888">Andrea<br>
                            </font></span></blockquote>
                      </div>
                      <br>
                    </div>
                    <br>
                    <fieldset class=3D"m_6818304507651845666m_-692688930305=
2179457mimeAttachmentHeader"></fieldset>
                    <br>
                  </blockquote>
                  <br>
                </div>
              </div>
              <span class=3D"m_6818304507651845666HOEnZb"><font color=3D"#8=
88888">
                  <pre class=3D"m_6818304507651845666m_-6926889303052179457=
moz-signature" cols=3D"72">--=20

Ayoub Zaki

<a class=3D"m_6818304507651845666m_-6926889303052179457moz-txt-link-abbrevi=
ated" href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@e=
mbexus.com</a>
Mobile: <a href=3D"tel:+49%20176%2062901545" value=3D"+4917662901545" targe=
t=3D"_blank">+49(0)176-62901545</a>
<a class=3D"m_6818304507651845666m_-6926889303052179457moz-txt-link-freetex=
t" href=3D"https://embexus.com" target=3D"_blank">https://embexus.com</a></=
pre>
                </font></span></div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <pre class=3D"m_6818304507651845666moz-signature" cols=3D"72">--=20

Ayoub Zaki

<a class=3D"m_6818304507651845666moz-txt-link-abbreviated" href=3D"mailto:a=
youb.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>
Mobile: <a href=3D"tel:+49%20176%2062901545" value=3D"+4917662901545" targe=
t=3D"_blank">+49(0)176-62901545</a>
<a class=3D"m_6818304507651845666moz-txt-link-freetext" href=3D"https://emb=
exus.com" target=3D"_blank">https://embexus.com</a></pre>
  </div></div></div>

</blockquote></div><br></div>

--001a11469398ef8ce805506eb446--
