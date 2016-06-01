Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B519E00F01; Wed,  1 Jun 2016 06:39:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9483E00E31
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 06:39:52 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id q45so461073qtq.1
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 06:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=tcrclBoB/szXPEe9HEvcW7FdwBzp+L9YCWcY4lrANNM=;
	b=fNdiytvhPYa0SQWqwZJNa3KypIcQmElPYK34GqXn/5Y2YogAbm3Biv0ciKNQ5w4Ajy
	URVjM/HmaPZwuW+JpVF2OxfIHCKdNFS3lfpaJvMSXnjjpuPMm/q2FmgAPqbdsRgXd6zw
	H1Rorg4HeSxL2CDBBz97jOfgZCtZ0fIPo3FNlYMhubTqrwqP8Sf63QvMzpMx9UdCzDKT
	e3pulrCm/swfOmgczuGzeYoVawGDbBENCGDEYiDevR5O97FflnFTgZ9/hwXw7JjbpsK2
	kp3ZEEdsXAfmhywWYPLnQIesQiNHJJELzf5FlEv1G7xJv2u/a3WPI2fBZ6jM4P9NXs54
	AydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=tcrclBoB/szXPEe9HEvcW7FdwBzp+L9YCWcY4lrANNM=;
	b=cdLjpUHHj5HXNLhlu8vlxUgTcFzsKXxcI8E96+I165D3jke/J7B6poBHnk8nWdMmAV
	xXBHrTQiM14h8RRmW/Jy5O2ee/g2zIGqfm08CYTUMZtylkD1sEdfzq5gc7ikNKF/rx5m
	FEZAW2jzDnEUqsH9rwkhIodZkKNmNeFGWSrDRZxfwcsyF4Wk4HBVdk4IZRnLLaY3isUj
	k6Wr5GOcESQYZuUWAPCUDRjb1+2Hr2PfJSU9kxzwMMFGYEcrYQ/JTWQYuo9py64BBlAY
	L2EZBZR0H0fA9BVoKGfXvnNZKDYm1Nrq8UTHR70B1lplpxIPFKuEwtfuj2ndPcKENd1e
	mNeA==
X-Gm-Message-State: ALyK8tJ9auOV0DCUSCp1ZLN2/mxieZJ+/mIFjmOFYHRkUx8hru3/262geDei32qAhVLo2wVTexaWkJatb8ddyA==
MIME-Version: 1.0
X-Received: by 10.237.37.67 with SMTP id w3mr3537116qtc.75.1464788391431; Wed,
	01 Jun 2016 06:39:51 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Wed, 1 Jun 2016 06:39:51 -0700 (PDT)
In-Reply-To: <CO2PR01MB2184C310EE183297732FDFE0BF470@CO2PR01MB2184.prod.exchangelabs.com>
References: <CO2PR01MB2184C310EE183297732FDFE0BF470@CO2PR01MB2184.prod.exchangelabs.com>
Date: Wed, 1 Jun 2016 16:39:51 +0300
Message-ID: <CAEeWubK4M7HaF5thz-eNsot+P50bwR+gXLJPg-OupORFY2wKmQ@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: Paul DeMetrotion <pdemetrotion@winsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe Debug - QA Issue
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
X-List-Received-Date: Wed, 01 Jun 2016 13:39:56 -0000
Content-Type: multipart/alternative; boundary=001a113f3bd2be14c70534379f58

--001a113f3bd2be14c70534379f58
Content-Type: text/plain; charset=UTF-8

Hi,
1) It's more common to use FILES_${PN} += ...
2) Please, remove ${D} from FILES_${PN}

Try this:

FILES_${PN} += " \
    ${kmoddir}/onebox_common_gpl.ko \
    ${kmoddir}/onebox_gpl.ko \
    ${kmoddir}/onebox_nongpl.ko \
    ${kmoddir}/onebox_wlan_gpl.ko \
    ${kmoddir}/onebox_wlan_nongpl.ko \
    ${kmoddir}/wlan.ko \
    ${kmoddir}/wlan_wep.ko \
    ${kmoddir}/wlan_ccmp.ko \
    ${kmoddir}/wlan_tkip.ko \
    ${kmoddir}/wlan_acl.ko \
    ${kmoddir}/wlan_scan_sta.ko \
    ${kmoddir}/wlan_xauth.ko \
    /etc/redpine/wlan_enable.sh \
    /etc/redpine/wlan_disable.sh \
"

Moreover, You may simplify it:

FILES_${PN} += "${kmoddir} /etc/redpine"

On Wed, Jun 1, 2016 at 3:55 PM, Paul DeMetrotion <
pdemetrotion@winsystems.com> wrote:

> I have created a simple (?) recipe to copy some existing drivers and
> scripts into my kernel image. I am getting the following error when I
> attempt to bitbake the recipe. Is this a license issue?
>
>
>
> ERROR: QA Issue: rs9113: Files/directories were installed but not shipped
>
>   /lib
>
>   /lib/modules
>
>   /lib/modules/kernel
>
>   /lib/modules/kernel/drivers
>
>   /lib/modules/kernel/drivers/net
>
>   /lib/modules/kernel/drivers/net/wireless
>
>   /lib/modules/kernel/drivers/net/wireless/redpine
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan_ccmp.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/onebox_common_gpl.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan_tkip.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan_wep.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan_scan_sta.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan_acl.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_nongpl.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_gpl.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/wlan_xauth.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/onebox_gpl.ko
>
>   /lib/modules/kernel/drivers/net/wireless/redpine/onebox_nongpl.ko
> [installed-vs-shipped]
>
>
>
> Here is the recipe. I have all of the files to be copied in the same
> directory as the recipe.
>
>
>
> DESCRIPTION = "Install of redpine drivers and scripts"
>
>
>
> LICENSE = "MIT"
>
> LIC_FILES_CHKSUM =
> "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
>
>
> file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>
>
>
> kmoddir =
> "/lib/modules/${KERNEL_VERSION}/kernel/drivers/net/wireless/redpine"
>
>
>
> FILESEXTRAPATHS_prepend := "${THISDIR}:"
>
>
>
> SRC_URI_append = " \
>
>     file://onebox_common_gpl.ko \
>
>     file://onebox_gpl.ko \
>
>     file://onebox_nongpl.ko \
>
>     file://onebox_wlan_gpl.ko \
>
>     file://onebox_wlan_nongpl.ko \
>
>     file://wlan.ko \
>
>     file://wlan_wep.ko \
>
>     file://wlan_ccmp.ko \
>
>     file://wlan_tkip.ko \
>
>     file://wlan_acl.ko \
>
>     file://wlan_scan_sta.ko \
>
>     file://wlan_xauth.ko \
>
>     file://wlan_enable.sh \
>
>     file://wlan_disable.sh \
>
> "
>
>
>
> do_install_append() {
>
>     mkdir -p ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/onebox_common_gpl.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/onebox_gpl.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/onebox_nongpl.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/onebox_wlan_gpl.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/onebox_wlan_nongpl.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan_wep.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan_ccmp.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan_tkip.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan_acl.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan_scan_sta.ko ${D}${kmoddir}
>
>     install -m 0755 ${WORKDIR}/wlan_xauth.ko ${D}${kmoddir}
>
>     mkdir -p ${D}/etc/redpine
>
>     install -m 0755 ${WORKDIR}/wlan_enable.sh ${D}/etc/redpine
>
>     install -m 0755 ${WORKDIR}/wlan_disable.sh ${D}/etc/redpine
>
> }
>
>
>
> FILES_${PN}_append = " \
>
>     ${D}${kmoddir}/onebox_common_gpl.ko \
>
>     ${D}${kmoddir}/onebox_gpl.ko \
>
>     ${D}${kmoddir}/onebox_nongpl.ko \
>
>     ${D}${kmoddir}/onebox_wlan_gpl.ko \
>
>     ${D}${kmoddir}/onebox_wlan_nongpl.ko \
>
>     ${D}${kmoddir}/wlan.ko \
>
>     ${D}${kmoddir}/wlan_wep.ko \
>
>     ${D}${kmoddir}/wlan_ccmp.ko \
>
>     ${D}${kmoddir}/wlan_tkip.ko \
>
>     ${D}${kmoddir}/wlan_acl.ko \
>
>     ${D}${kmoddir}/wlan_scan_sta.ko \
>
>     ${D}${kmoddir}/wlan_xauth.ko \
>
>     ${D}/etc/redpine/wlan_enable.sh \
>
>     ${D}/etc/redpine/wlan_disable.sh \
>
> "
>
>
>
> Paul DeMetrotion
>
> Software Guru
>
> WinSystems, Inc.
>
> (972) 571-8657
>
> www.winsystems.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113f3bd2be14c70534379f58
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>1) It&#39;s more common to use FILES_${PN} +=3D ...=
<br>2) Please, remove ${D} from FILES_${PN}<br><br>Try this:<br><br>FILES_$=
{PN} +=3D &quot; \<br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_common_gpl.ko \<=
br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_gpl.ko \<br>=C2=A0=C2=A0=C2=A0 ${km=
oddir}/onebox_nongpl.ko \<br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_wlan_gpl.=
ko \<br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_wlan_nongpl.ko \<br>=C2=A0=C2=
=A0=C2=A0 ${kmoddir}/wlan.ko \<br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_wep.ko=
 \<br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_ccmp.ko \<br>=C2=A0=C2=A0=C2=A0 ${=
kmoddir}/wlan_tkip.ko \<br>=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_acl.ko \<br>=
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_scan_sta.ko \<br>=C2=A0=C2=A0=C2=A0 ${km=
oddir}/wlan_xauth.ko \<br>=C2=A0=C2=A0=C2=A0 /etc/redpine/wlan_enable.sh \<=
br>=C2=A0=C2=A0=C2=A0 /etc/redpine/wlan_disable.sh \<br>&quot;<br><br>Moreo=
ver, You may simplify it:<br><br>FILES_${PN} +=3D &quot;${kmoddir} /etc/red=
pine&quot;<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Wed, Jun 1, 2016 at 3:55 PM, Paul DeMetrotion <span dir=3D"ltr">&lt;<=
a href=3D"mailto:pdemetrotion@winsystems.com" target=3D"_blank">pdemetrotio=
n@winsystems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal">I have created a simple (?) recipe to copy some exis=
ting drivers and scripts into my kernel image. I am getting the following e=
rror when I attempt to bitbake the recipe. Is this a license issue?<u></u><=
u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">ERROR: QA Issue=
: rs9113: Files/directories were installed but not shipped<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan.ko<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan_ccmp.ko<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/onebox_common_gpl.ko<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan_tkip.ko<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan_wep.ko<u></u><u></u></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan_scan_sta.ko<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan_acl.ko<u></u><u></u></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/onebox_wlan_nongpl.ko<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/onebox_wlan_gpl.ko<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/wlan_xauth.ko<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/onebox_gpl.ko<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0 /lib/mod=
ules/kernel/drivers/net/wireless/redpine/onebox_nongpl.ko [installed-vs-shi=
pped]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Here is the recipe. I have all of the files to be co=
pied in the same directory as the recipe.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">DESCRIPTION =3D=
 &quot;Install of redpine drivers and scripts&quot;<u></u><u></u></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">LICENSE =3D &qu=
ot;MIT&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">LIC_FILES_CHKSU=
M =3D &quot;file://${COREBASE}/LICENSE;md5=3D4d92cd373abda3937c2bc47fbc49d6=
90 \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">kmoddir =3D &qu=
ot;/lib/modules/${KERNEL_VERSION}/kernel/drivers/net/wireless/redpine&quot;=
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">FILESEXTRAPATHS=
_prepend :=3D &quot;${THISDIR}:&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">SRC_URI_append =
=3D &quot; \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://onebox_common_gpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://onebox_gpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://onebox_nongpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://onebox_wlan_gpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://onebox_wlan_nongpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_wep.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_ccmp.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_tkip.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_acl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_scan_sta.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_xauth.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_enable.sh \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 file://wlan_disable.sh \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">&quot;<u></u><u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">do_install_appe=
nd() {
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0=C2=A0mkdir -p ${D}${kmoddir}
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0=C2=A0install -m 0755 ${WORKDIR}/onebox_common_gpl.ko ${D}${kmoddir}<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/onebox_gpl.ko ${D}${kmoddir}<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/onebox_nongpl.ko ${D}${kmoddir}<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/onebox_wlan_gpl.ko ${D}${kmoddir}
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0=C2=A0install -m 0755 ${WORKDIR}/onebox_wlan_nongpl.ko ${D}${kmoddir}<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan.ko ${D}${kmoddir}<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_wep.ko ${D}${kmoddir}<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_ccmp.ko ${D}${kmoddir}<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_tkip.ko ${D}${kmoddir}<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_acl.ko ${D}${kmoddir}<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_scan_sta.ko ${D}${kmoddir}<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_xauth.ko ${D}${kmoddir}<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 mkdir -p ${D}/etc/redpine
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0=C2=A0install -m 0755 ${WORKDIR}/wlan_enable.sh ${D}/etc/redpine<u></u><=
u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 install -m 0755 ${WORKDIR}/wlan_disable.sh ${D}/etc/redpine<u></u><u></=
u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">}<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">FILES_${PN}_app=
end =3D &quot; \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/onebox_common_gpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/onebox_gpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/onebox_nongpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/onebox_wlan_gpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/onebox_wlan_nongpl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan_wep.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan_ccmp.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan_tkip.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan_acl.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan_scan_sta.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}${kmoddir}/wlan_xauth.ko \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}/etc/redpine/wlan_enable.sh \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">=C2=A0=C2=A0=C2=
=A0 ${D}/etc/redpine/wlan_disable.sh \<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white">&quot;<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Paul DeMetrotion<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Software Guru<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">WinSystems, Inc. <u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><a href=3D"tel:%28972%=
29%20571-8657" value=3D"+19725718657" target=3D"_blank">(972) 571-8657</a><=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><a href=3D"http://www.=
winsystems.com/" target=3D"_blank"><span style=3D"color:blue">www.winsystem=
s.com</span></a>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a113f3bd2be14c70534379f58--
