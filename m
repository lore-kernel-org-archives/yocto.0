Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD50E00CE1; Thu,  2 Jun 2016 05:07:42 -0700 (PDT)
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
	*      [209.85.192.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f67.google.com (mail-qg0-f67.google.com
	[209.85.192.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5CACE00CB0
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 05:07:38 -0700 (PDT)
Received: by mail-qg0-f67.google.com with SMTP id l75so15751432qgd.3
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 05:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=vdUc/fYu/YQ2vvq98rpT/jDz6Fa6QjnO5vWF/XUoRg0=;
	b=b9BjNy/4PBldkJzFqYFjXt1GXylHaiCpnbKJwLNaLxsP6PfkP7PPZq4gYVXhCrb710
	rI5LXrRbbhCugNNKVr1fHNumq9Dv3oQuaF/uUc6uI7EQSNM/M2qX15/W3K0OoxJSvoce
	8vlDMpGDmJ9IdJFbvgbR8y/VBHcqUT6NtzmPWLKZW9NKiWyYb5lUdOkLh588zLWomCie
	p+C6F4XoJknimUB0j+UP530x0vbbCz60c9ffqiBkU2oObaFooom8YCa2CBFAJVQrItSW
	AOpwGI7XYL2mECH6+abNV1rwTmVDAzKUS0ofggF1yih/icdMBmyGARIMhYoV+5BxlNQN
	PAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=vdUc/fYu/YQ2vvq98rpT/jDz6Fa6QjnO5vWF/XUoRg0=;
	b=h0YhAEJUj8EfkfognOwCKNyOwRwzlr/7zYPohRDofb2x34NX7ilXXZVeyc3WTlSe/k
	r2d2lL808VsOz8B7P+3xV7Jlof+e4hlhJCvv0GCwDX2gygJoZCZyVsHFd1a6mZ8nKBAZ
	MqlMV/ZmsPIj8mPkzH7Z47eUA6LnsiQ5vIO8wXXij6ksiCNuz/YOP6lz1FjhZp70mNTv
	2QPdQZX244eO2xYh6O2jhbqYF7vP0sjRmBHCjr2Nc+gLdSPGaBXJcHuxRo6+cBwMKbW3
	M9e96ua2ZmzMGcMKHtSWyIjjQJK69p0G94C+6CbttnfaUCa0/uTp9ZIZSbMB6+LdobP6
	YYrg==
X-Gm-Message-State: ALyK8tI6esbP2Xmuq0Vm0Gzpw9vpS/pUtOpxpjiA4cynsGvrZWZYcYrmLpLKfLFf2i0ToZ0J70kLkR6JZLut2g==
MIME-Version: 1.0
X-Received: by 10.140.93.97 with SMTP id c88mr40108856qge.64.1464869257690;
	Thu, 02 Jun 2016 05:07:37 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Thu, 2 Jun 2016 05:07:37 -0700 (PDT)
In-Reply-To: <CO2PR01MB21840F2DD89161EFD52F8DC9BF470@CO2PR01MB2184.prod.exchangelabs.com>
References: <CO2PR01MB2184C310EE183297732FDFE0BF470@CO2PR01MB2184.prod.exchangelabs.com>
	<CAEeWubK4M7HaF5thz-eNsot+P50bwR+gXLJPg-OupORFY2wKmQ@mail.gmail.com>
	<CO2PR01MB2184B876419EA3E195B8C861BF470@CO2PR01MB2184.prod.exchangelabs.com>
	<CAEeWubKnA=K9tvFR9ok8COyVJsqJ-1ixK+D0zq2Weyi7veCAag@mail.gmail.com>
	<CO2PR01MB21840F2DD89161EFD52F8DC9BF470@CO2PR01MB2184.prod.exchangelabs.com>
Date: Thu, 2 Jun 2016 15:07:37 +0300
Message-ID: <CAEeWubJP_Vr2cZZaOY2Kg_ZdQrn4SDqPB9xJgQ6qiVotc7Dh8w@mail.gmail.com>
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
X-List-Received-Date: Thu, 02 Jun 2016 12:07:42 -0000
Content-Type: multipart/alternative; boundary=001a113a2e1cbf490d05344a7349

--001a113a2e1cbf490d05344a7349
Content-Type: text/plain; charset=UTF-8

Also, try this to get KERNEL_VERSION:

KERNEL_VERSION="${@base_read_file('${STAGING_KERNEL_BUILDDIR}/kernel-abiversion')

kmoddir =
"/lib/modules/${KERNEL_VERSION}/kernel/drivers/net/wireless/redpine"

On Wed, Jun 1, 2016 at 8:44 PM, Paul DeMetrotion <
pdemetrotion@winsystems.com> wrote:

> That removed the QA error. Thanks you.
>
>
>
> Problems remain because none of the 12 driver files are being copied to
> the image while the two shell script files are copied.
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
> *From:* Oleksandr Poznyak [mailto:oleksandr.poznyak@gmail.com]
> *Sent:* Wednesday, June 01, 2016 11:20 AM
>
> *To:* Paul DeMetrotion
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Recipe Debug - QA Issue
>
>
>
> oops!
>
> FILES_${PN} += "${base_libdir}"
>
> That's it
>
>
>
> On Wed, Jun 1, 2016 at 6:42 PM, Paul DeMetrotion <
> pdemetrotion@winsystems.com> wrote:
>
> Thanks for your suggestions. I changed it to the simple one-line
> modification but still have the same issue. I even commented the
> FILES_${PN} line and have the same issue. It appears that the problem is
> with the do_install_append() section.
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
> *From:* Oleksandr Poznyak [mailto:oleksandr.poznyak@gmail.com]
> *Sent:* Wednesday, June 01, 2016 8:40 AM
> *To:* Paul DeMetrotion
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Recipe Debug - QA Issue
>
>
>
> Hi,
> 1) It's more common to use FILES_${PN} += ...
> 2) Please, remove ${D} from FILES_${PN}
>
> Try this:
>
> FILES_${PN} += " \
>     ${kmoddir}/onebox_common_gpl.ko \
>     ${kmoddir}/onebox_gpl.ko \
>     ${kmoddir}/onebox_nongpl.ko \
>     ${kmoddir}/onebox_wlan_gpl.ko \
>     ${kmoddir}/onebox_wlan_nongpl.ko \
>     ${kmoddir}/wlan.ko \
>     ${kmoddir}/wlan_wep.ko \
>     ${kmoddir}/wlan_ccmp.ko \
>     ${kmoddir}/wlan_tkip.ko \
>     ${kmoddir}/wlan_acl.ko \
>     ${kmoddir}/wlan_scan_sta.ko \
>     ${kmoddir}/wlan_xauth.ko \
>     /etc/redpine/wlan_enable.sh \
>     /etc/redpine/wlan_disable.sh \
> "
>
> Moreover, You may simplify it:
>
> FILES_${PN} += "${kmoddir} /etc/redpine"
>
>
>
> On Wed, Jun 1, 2016 at 3:55 PM, Paul DeMetrotion <
> pdemetrotion@winsystems.com> wrote:
>
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
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>

--001a113a2e1cbf490d05344a7349
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, try this to get KERNEL_VERSION:<br><br>KERNEL_VERSIO=
N=3D&quot;${@base_read_file(&#39;${STAGING_KERNEL_BUILDDIR}/kernel-abiversi=
on&#39;)<br><br>kmoddir =3D &quot;/lib/modules/${KERNEL_VERSION}/kernel/dri=
vers/net/wireless/redpine&quot;<br></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Wed, Jun 1, 2016 at 8:44 PM, Paul DeMetrotion <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:pdemetrotion@winsystems.com" target=
=3D"_blank">pdemetrotion@winsystems.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">That removed the QA error=
. Thanks you.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Problems remain because n=
one of the 12 driver files are being copied to the image while the two shel=
l script files are copied.<u></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Paul DeMetrotion<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Software Guru<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">WinSystems, Inc.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=3D"tel:%28972%29%=
20571-8657" value=3D"+19725718657" target=3D"_blank">(972) 571-8657</a><u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=3D"http://www.win=
systems.com/" target=3D"_blank">www.winsystems.com</a>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
</span><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0=
pt 0in 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Oleksand=
r Poznyak [mailto:<a href=3D"mailto:oleksandr.poznyak@gmail.com" target=3D"=
_blank">oleksandr.poznyak@gmail.com</a>]
<br>
<b>Sent:</b> Wednesday, June 01, 2016 11:20 AM</span></p><div><div class=3D=
"h5"><br>
<b>To:</b> Paul DeMetrotion<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Recipe Debug - QA Issue<u></u><u></u></div></di=
v><p></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">oops!<u></u><u></u></=
p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">FILES_${PN} +=3D &quo=
t;${base_libdir}&quot;<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">That&#39;s it<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Wed, Jun 1, 2016 at 6:42 PM, Paul DeMetrotion &lt=
;<a href=3D"mailto:pdemetrotion@winsystems.com" target=3D"_blank">pdemetrot=
ion@winsystems.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks for your suggestio=
ns. I changed it to the simple one-line modification but still have the
 same issue. I even commented the FILES_${PN} line and have the same issue.=
 It appears that the problem is with the do_install_append() section.
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Paul DeMetrotion</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Software Guru</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">WinSystems, Inc.
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=3D"tel:%28972%29%=
20571-8657" target=3D"_blank">(972) 571-8657</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=3D"http://www.win=
systems.com/" target=3D"_blank">www.winsystems.com</a>
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Oleksand=
r Poznyak [mailto:<a href=3D"mailto:oleksandr.poznyak@gmail.com" target=3D"=
_blank">oleksandr.poznyak@gmail.com</a>]
<br>
<b>Sent:</b> Wednesday, June 01, 2016 8:40 AM<br>
<b>To:</b> Paul DeMetrotion<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Recipe Debug - QA Issue</span><u></u><u></u></p=
>
</div>
<div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<br>
1) It&#39;s more common to use FILES_${PN} +=3D ...<br>
2) Please, remove ${D} from FILES_${PN}<br>
<br>
Try this:<br>
<br>
FILES_${PN} +=3D &quot; \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_common_gpl.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_gpl.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_nongpl.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_wlan_gpl.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/onebox_wlan_nongpl.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_wep.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_ccmp.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_tkip.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_acl.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_scan_sta.ko \<br>
=C2=A0=C2=A0=C2=A0 ${kmoddir}/wlan_xauth.ko \<br>
=C2=A0=C2=A0=C2=A0 /etc/redpine/wlan_enable.sh \<br>
=C2=A0=C2=A0=C2=A0 /etc/redpine/wlan_disable.sh \<br>
&quot;<br>
<br>
Moreover, You may simplify it:<br>
<br>
FILES_${PN} +=3D &quot;${kmoddir} /etc/redpine&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On Wed, Jun 1, 2016 at 3:55 PM, Paul DeMetrotion &lt=
;<a href=3D"mailto:pdemetrotion@winsystems.com" target=3D"_blank">pdemetrot=
ion@winsystems.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">I have created a simple (?) recipe to copy some exis=
ting drivers and scripts into my kernel image. I am getting the following e=
rror when I attempt to bitbake the recipe. Is this
 a license issue?<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">ERROR: QA Issue: rs9113: Files/directories were installed but not sh=
ipped</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine</span><u></u=
><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan.ko</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan_ccmp.ko=
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/onebox_commo=
n_gpl.ko</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan_tkip.ko=
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan_wep.ko<=
/span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan_scan_st=
a.ko</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan_acl.ko<=
/span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_=
nongpl.ko</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_=
gpl.ko</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/wlan_xauth.k=
o</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/onebox_gpl.k=
o</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0 /lib/modules/kernel/drivers/net/wireless/redpine/onebox_nongp=
l.ko [installed-vs-shipped]</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Here is the recipe. I have all of the files to be co=
pied in the same directory as the recipe.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">DESCRIPTION =3D &quot;Install of redpine drivers and scripts&quot;</=
span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">LICENSE =3D &quot;MIT&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">LIC_FILES_CHKSUM =3D &quot;file://${COREBASE}/LICENSE;md5=3D4d92cd37=
3abda3937c2bc47fbc49d690 \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<a>
file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420<=
/a>&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">kmoddir =3D &quot;/lib/modules/${KERNEL_VERSION}/kernel/drivers/net/=
wireless/redpine&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}:&quot;</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">SRC_URI_append =3D &quot; \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://onebox_common_gpl.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://onebox_gpl.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://onebox_nongpl.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://onebox_wlan_gpl.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://onebox_wlan_nongpl.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_wep.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_ccmp.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_tkip.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_acl.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_scan_sta.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_xauth.ko</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_enable.sh</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0
<a>file://wlan_disable.sh</a> \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">do_install_append() {
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0=C2=A0mkdir -p ${D}${kmoddir}
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0=C2=A0install -m 0755 ${WORKDIR}/onebox_common_gpl=
.ko ${D}${kmoddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/onebox_gpl.ko ${D}${km=
oddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/onebox_nongpl.ko ${D}$=
{kmoddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/onebox_wlan_gpl.ko ${D=
}${kmoddir}
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0=C2=A0install -m 0755 ${WORKDIR}/onebox_wlan_nongp=
l.ko ${D}${kmoddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan.ko ${D}${kmoddir}=
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_wep.ko ${D}${kmod=
dir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_ccmp.ko ${D}${kmo=
ddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_tkip.ko ${D}${kmo=
ddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_acl.ko ${D}${kmod=
dir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_scan_sta.ko ${D}$=
{kmoddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_xauth.ko ${D}${km=
oddir}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 mkdir -p ${D}/etc/redpine
</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0=C2=A0install -m 0755 ${WORKDIR}/wlan_enable.sh ${=
D}/etc/redpine</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/wlan_disable.sh ${D}/e=
tc/redpine</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">}</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">FILES_${PN}_append =3D &quot; \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/onebox_common_gpl.ko \</span><u></=
u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/onebox_gpl.ko \</span><u></u><u></=
u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/onebox_nongpl.ko \</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/onebox_wlan_gpl.ko \</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/onebox_wlan_nongpl.ko \</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan.ko \</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan_wep.ko \</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan_ccmp.ko \</span><u></u><u></u=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan_tkip.ko \</span><u></u><u></u=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan_acl.ko \</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan_scan_sta.ko \</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}${kmoddir}/wlan_xauth.ko \</span><u></u><u></=
u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}/etc/redpine/wlan_enable.sh \</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">=C2=A0=C2=A0=C2=A0 ${D}/etc/redpine/wlan_disable.sh \</span><u></u><=
u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">
<span style=3D"font-size:9.5pt;font-family:Consolas;color:black;background:=
white">&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Paul DeMetrotion</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Software Guru</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">WinSystems, Inc.
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><a href=3D"tel:%28972%=
29%20571-8657" target=3D"_blank">(972) 571-8657</a></span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><a href=3D"http://www.=
winsystems.com/" target=3D"_blank">www.winsystems.com</a>
</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--001a113a2e1cbf490d05344a7349--
