Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 040A8E0093B; Thu,  6 Sep 2018 07:03:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D0FE007AD
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 07:03:05 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id h4-v6so12340840qtj.7
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 07:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+2ibM1T89EKK+kwr1DWbNJDCFQTxwX767GJsDZo1baA=;
	b=UwOxRC/ZrSiGbPnK5JdMc6xRbEeiv0co010WFnIDpoUKdMzPSMZ8v/PsabeEJq1YwK
	MysRTcy/AIcgXXiELeMwFcgFwCFn7V2Tyk4uqbhcLwl086uvKPBNY2OjdBrbnNoPzz4L
	N0DGeAYzGb6KUh13V8/tMymIHY6MtKg3zDkK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+2ibM1T89EKK+kwr1DWbNJDCFQTxwX767GJsDZo1baA=;
	b=DQmrfgJfSXrS2sytbq23kc4BkJ0OtZjqNjOF2WtCEME6A9C0BB7jz4L9FqU9btL5zF
	rxc4b/Np7b+WvJ8z+zRdbfUSaJG+Cgv3GYy4qyRpM2geBgWu6m5mb/6bQEH66tr9C5Ln
	U7cufTjlVh29Z1H8OUqHGE3pfz5K6IxrvZxW9miZfgp4Y6tG0CAXoz0eMzNw+UD/QrOv
	vkonsKSnPBsjbgEA4Irg0LXLJ5yxTkj5Bsst430Nxg6r9l+8iqJ/XcROLmguRMEp5SbE
	0pDGfYmxmR4S9yV2biM672IL+xdQGYvA2wCJG/tsx1k/szZWNvSLlRZcfAmybDIADY7Y
	+Bxw==
X-Gm-Message-State: APzg51DV3v3sWeXGCHxT3InmJB3JXGQBTlt9uXXVzeQiMyfEX/cdwj3P
	w1L2clEr/Kc+JpcykDYYE+pfQ906bUZZx+g5SJ+SIw==
X-Google-Smtp-Source: ANB0Vda5NlmmoLLea5JOFfYYDOyAQLviMr7L3WFb8vHOw3pTw/ktXge+8koys4jVnd59Twk1Y25sqok0MyMs+FCL2ts=
X-Received: by 2002:a0c:8ab0:: with SMTP id 45-v6mr2168853qvv.49.1536242585027;
	Thu, 06 Sep 2018 07:03:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:3665:0:0:0:0:0 with HTTP;
	Thu, 6 Sep 2018 07:03:04 -0700 (PDT)
In-Reply-To: <83d74c67-18d3-df69-89ce-8c2408e53f21@gmail.com>
References: <CALDHXte7Z+dLUv4LDZAuQMJSRQMmjAp=3AoSQCtnM5LrC99mhA@mail.gmail.com>
	<83d74c67-18d3-df69-89ce-8c2408e53f21@gmail.com>
From: Ravikiran J <ravikiran.j@mistralsolutions.com>
Date: Thu, 6 Sep 2018 19:33:04 +0530
Message-ID: <CALDHXtdab57WOn7fsm8W562G4E57w-7J59o7=qi345qAT7RQOA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ERROR: No manifest generated
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
X-List-Received-Date: Thu, 06 Sep 2018 14:03:08 -0000
Content-Type: multipart/alternative; boundary="00000000000091fa0205753459db"

--00000000000091fa0205753459db
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 6, 2018 at 1:47 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 9/4/18 10:39 PM, Ravikiran J wrote:
> > Dear Yocto team,
> >
> > We have developed some recipe file to install  the firmware binary in
> > the file system of Yocto.
> > Recipe file is working fine in *Yocto morty* version but when we tried
> > the same in the *Yocto sumo* version we got the following error for
> > *bitbake core-image-minimal*.
> >
> > *ERROR: core-image-minimal-1.0-r0 do_rootfs: No manifest generated from:
> > rtl-firmware in
> > /home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-L
> inux/sumo/poky/meta-graco/recipes-graco/firmware/rtl-firmware.bb
> > <http://rtl-firmware.bb>*
> > ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> > /home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-L
> inux/sumo/poky/build/tmp/work/rzn1d400_graco-poky-linux-gnue
> abi/core-image-minimal/1.0-r0/temp/log.do_rootfs.28035
> > ERROR: Task
> > (/home/graco_sm/1.4.4/GRACO_SM_REL_V1.1/Software/U-Boot-and-
> Linux/sumo/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
> > failed with exit code '1'
> >
> >
>
> which version of yocto project release is in use here ?
>
*Yocto version 2.5*

>
> > Recipe file*rtl-firmware.bb <http://rtl-firmware.bb> *content*
> > *
> > *
> > *
> > DESCRIPTION = "RTL 8723BU BT firmware"
> >
> > LICENSE = "MIT"
> > LIC_FILES_CHKSUM =
> > "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"
> >
> > PACKAGE_ARCH = "all"
>
> perhaps using inherit allarch  is better here.
>
> >
> > SRC_URI += " \
> >     file://rtl8723b_fw.bin \
> > "
> >
> > do_install () {
> >     install -d ${D}${base_libdir}/firmware/
> >     install -m 755 ${WORKDIR}/rtl8723b_fw.bin
> ${D}${base_libdir}/firmware/
> > }
> >
> > FILES_${PN} += " \
> >         ${base_libdir}/firmware/rtl8723b_fw.bin \
> > "*
> > *
> >
> > What needs to be done for to avoiding manifest error  ?
> > Kindly help us to resolve this issue.s
> >
> >
> > Thanks and Regards,
> > Ravikiran J J
> >
> >
>
>

--00000000000091fa0205753459db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Sep 6, 2018 at 1:47 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span><br>
<br>
On 9/4/18 10:39 PM, Ravikiran J wrote:<br>
&gt; Dear Yocto team,<br>
&gt; <br>
&gt; We have developed some recipe file to install=C2=A0 the firmware binar=
y in<br>
&gt; the file system of Yocto.<br>
</span>&gt; Recipe file is working fine in *Yocto morty* version but when w=
e tried<br>
&gt; the same in the *Yocto sumo* version we got the following error for<br=
>
&gt; *bitbake core-image-minimal*.<br>
&gt; <br>
&gt; *ERROR: core-image-minimal-1.0-r0 do_rootfs: No manifest generated fro=
m:<br>
&gt; rtl-firmware in<br>
&gt; /home/graco_sm/1.4.4/GRACO_SM_<wbr>REL_V1.1/Software/U-Boot-and-L<wbr>=
inux/sumo/poky/meta-graco/reci<wbr>pes-graco/firmware/<a href=3D"http://rtl=
-firmware.bb" rel=3D"noreferrer" target=3D"_blank">rtl-firmwar<wbr>e.bb</a>=
<br>
&gt; &lt;<a href=3D"http://rtl-firmware.bb" rel=3D"noreferrer" target=3D"_b=
lank">http://rtl-firmware.bb</a>&gt;*<br>
<span>&gt; ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_=
rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/graco_sm/1.4.4/GRACO_SM_<wbr>REL_V1.1/Software/U-Boot-and-L<wbr>=
inux/sumo/poky/build/tmp/work/<wbr>rzn1d400_graco-poky-linux-gnue<wbr>abi/c=
ore-image-minimal/1.0-r0/<wbr>temp/log.do_rootfs.28035<br>
&gt; ERROR: Task<br>
&gt; (/home/graco_sm/1.4.4/GRACO_SM<wbr>_REL_V1.1/Software/U-Boot-and-<wbr>=
Linux/sumo/poky/meta/recipes-c<wbr>ore/images/core-image-minimal.<wbr>bb:do=
_rootfs)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; <br>
&gt; <br>
<br>
</span>which version of yocto project release is in use here ?<br></blockqu=
ote><span style=3D"color:rgb(0,0,255)"><b>Yocto version 2.5</b> </span><br>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div>
<br>
&gt; Recipe file*<a href=3D"http://rtl-firmware.bb" rel=3D"noreferrer" targ=
et=3D"_blank">rtl-firmware.bb</a> &lt;<a href=3D"http://rtl-firmware.bb" re=
l=3D"noreferrer" target=3D"_blank">http://rtl-firmware.bb</a>&gt; *content*=
<br>
&gt; *<br>
&gt; *<br>
&gt; *<br>
<span>&gt; DESCRIPTION =3D &quot;RTL 8723BU BT firmware&quot;<br>
&gt; <br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://${COREBASE}/LICENSE;md<wbr>5=3D4d92cd373abda3937c2bc47fbc=
49<wbr>d690&quot;<br>
&gt; <br>
&gt; PACKAGE_ARCH =3D &quot;all&quot;<br>
<br>
</span>perhaps using inherit allarch=C2=A0 is better here.<br>
<span><br>
&gt; <br>
&gt; SRC_URI +=3D &quot; \<br>
&gt; =C2=A0=C2=A0=C2=A0 file://rtl8723b_fw.bin \<br>
&gt; &quot;<br>
&gt; <br>
&gt; do_install () {<br>
&gt; =C2=A0=C2=A0=C2=A0 install -d ${D}${base_libdir}/firmware/<br>
&gt; =C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/rtl8723b_fw.bin ${D}${bas=
e_libdir}/firmware/<br>
&gt; }<br>
&gt; <br>
&gt; FILES_${PN} +=3D &quot; \<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${base_libdir}/firmware/rtl=
872<wbr>3b_fw.bin \<br>
</span>&gt; &quot;*<br>
&gt; *<br>
<div class=3D"m_-6542611349148730104m_9144511390783343929HOEnZb"><div class=
=3D"m_-6542611349148730104m_9144511390783343929h5">&gt; <br>
&gt; What needs to be done for to avoiding manifest error=C2=A0 ?<br>
&gt; Kindly help us to resolve this issue.s <br>
&gt; <br>
&gt; <br>
&gt; Thanks and Regards,<br>
&gt; Ravikiran J J<br>
&gt; <br>
&gt; <br>
<br>
</div></div></div></blockquote></div><br></div></div>

--00000000000091fa0205753459db--
