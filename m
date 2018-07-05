Return-Path: <abhishekr@eximiusdesign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21AEFE0109D; Thu,  5 Jul 2018 00:15:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A9DCE00ECB
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 00:15:22 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id u7-v6so3244162lji.3
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 00:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eximiusdesign-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=SEP0Ol3hltpg1He/QARPtKtg0LWMhf6wLUO+5SGXDkk=;
	b=b1TXD5MtMDzbbGNwaxxmripFoXSL1rmWGeR1OS86YgBsK2O5MJZ6jGaLIiObPxLKT3
	IWj9qB1S9j9I8FnqxEl0kdQGzfGqcBP9oER6NygWfWP5hXAHnWClqJ97FniqD/aON+nF
	m1phlRaRTnL/Zd5sO6zM/p+qKC9MSChAwwdoEDOxxUDVRe60O7zY8dEBf7RqPzRRN2ks
	FHWY9T08trdrmpKubOdunEqO5suhDXfEU3GU08/P9RHsJQMjc2WLwcmXAjB5UsT2+49X
	K/MalRzqAak6Kwj4i0+Lv51dTNAQM5wBgoK56jU10TDph5LXy2jGI3SI7O9MBt+mJdLe
	ebZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SEP0Ol3hltpg1He/QARPtKtg0LWMhf6wLUO+5SGXDkk=;
	b=Urjt1vD+RzRPAxcOf3GHKRH3MVehs+LufesiD27VwV9Aren2a/8SIz+/yqz80wOcbD
	JJQbLSZEij+K0AvG74SEW5T+2jf1PJBlTSRvll406f0abHnJZ6Hfj5/bzV0WN4eVJt5D
	fkEH3x9lYurs5xrXuAZowvQA2DEg6KjhkVO8WjlPsXHl3zTO+cAR1o8GShKSbHAH/+BU
	Uu3WvvRQ5+fd/blv1GqtSA4cEu7CP3lmGu0PrwUhm99+qnovTpDIrjvROIz3psMHDvB6
	kQEVMYqGHvjWoJINOU47Qrdt1XqUnE1Hi1KubQYmJV/xZD23+TPN/g3CgFoaMncRKHyr
	CxCg==
X-Gm-Message-State: APt69E2aj2Gr2x9BPRPxZKNY5aXfeT5jWFopxOAR4nUbig60r37AKa7q
	Vc6fVnNJ4JqQTutxKdsOfjcABKX+uYSZNJvDTwSXLTEHBLupLLhiHRDNhOKxn+vpoEW5g6WCxFe
	SAm7o1Ds3gDoItfwRJtpl4WCPJjaIR+0=
X-Google-Smtp-Source: AAOMgpcbUm6HqzT5Zp4ze+LpJRDrS/XKrcSdtpMR+BvVZQGoca5H4hej5sKYT+B/TYFvLjmzadA4XtuyfrvNs4dP7Xg=
X-Received: by 2002:a2e:4357:: with SMTP id
	q84-v6mr3076080lja.13.1530774921050; 
	Thu, 05 Jul 2018 00:15:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:6b05:0:0:0:0:0 with HTTP;
	Thu, 5 Jul 2018 00:15:20 -0700 (PDT)
From: Abhishek Kumar Rai <abhishekr@eximiusdesign.com>
Date: Thu, 5 Jul 2018 12:45:20 +0530
Message-ID: <CALYWmf9kQfqdvz-8AuR2dDAz-xDxHWwcACu-j+AyNxq426UEgw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Regarding Error occuring after changing configuration
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
X-List-Received-Date: Thu, 05 Jul 2018 07:15:23 -0000
Content-Type: multipart/alternative; boundary="000000000000668dea05703b4ff6"

--000000000000668dea05703b4ff6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am getting error while building yocto after changing the configuration.

Please find set of below commands that i have used
$ bitbake virtual/kernel -c menuconfig
$ bitbake virtual/kernel
$ bitbake -k agl-demo-platform

*| Disk
~/build/tmp/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r0/depl=
oy-agl-demo-platform-image-complete/agl-demo-platform-nitrogen6x-2018070506=
3932.rootfs.sdcard:
2185MB*
*| Sector size (logical/physical): 512B/512B*
*| Partition Table: msdos*
*| Disk Flags:*
*| *
*| Number  Start   End     Size    Type     File system  Flags*
*|  1      4194kB  12.6MB  8389kB  primary               lba*
*|  2      12.6MB  2181MB  2168MB  primary*
*| *
*| mkfs.fat: warning - lowercase labels might not work properly with DOS or
Windows*
*| mkfs.fat 4.1 (2017-01-24)*
*| Disk full*
*| WARNING: exit code 1 from a shell command.*
*| ERROR: Function failed: do_image_sdcard (log file is located at
~/build/tmp/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r0/temp=
/log.do_image_sdcard.6362)*
*ERROR: Task
(~/kapil/meta-agl-demo/recipes-platform/images/agl-demo-platform.bb:do_imag=
e_sdcard)
failed with exit code '1'*


*NOTE: Tasks Summary: Attempted 7063 tasks of which 7059 didn't need to be
rerun and 1 failed.*I think due to change in configuration rootfs size is
increased and the current rootfs size is small that is not able to
accommodate the thae changed size.
If it is so can anybody please provide steps to change the rootfs size .

Can you please give your inputs regarding this.


*Regards,*

*Abhishek Rai*

--=20














The information contained in this e-mail message (including=20
any=C2=A0


attachments) may be confidential, proprietary, privileged, or=20
otherwise


exempt from disclosure under applicable laws. It is intended to=20
be=C2=A0


conveyed only to the designated recipient(s). Any use, dissemination,=C2=A0



distribution, printing, retaining or copying of this e-mail (including=20
its=C2=A0


attachments) by unintended recipient(s) is strictly prohibited and=20
may=C2=A0


be unlawful. If you are not an intended recipient of this e-mail, or=20
believe=C2=A0


that you have received this e-mail in error, please notify the=20
sender=C2=A0


immediately (by replying to this e-mail), delete any and all=20
copies of=C2=A0


this e-mail (including any attachments) from your system, and=20
do not


disclose the content of this e-mail to any other person. Thank you=20
for your cooperation.






--=20
_This e-mail message (including any=C2=A0attachments) may be confidential,=
=20
proprietary, privileged, or otherwise=C2=A0exempt from disclosure under=20
applicable laws. If you are not an intended recipient, please delete this=
=20
message. Thank you.
_

--000000000000668dea05703b4ff6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Team,<br><br></div>I am getting error wh=
ile building yocto after changing the configuration.<br><br>Please find set=
 of below commands that i have used<br>$ bitbake virtual/kernel -c menuconf=
ig<br></div><div>$ bitbake virtual/kernel<br>$ bitbake -k agl-demo-platform=
<br></div><div><br><span id=3D"gmail-:c2.co" class=3D"gmail-tL8wMe gmail-EM=
oHub" style=3D"text-align:left" dir=3D"ltr"><b>|
 Disk ~/build/tmp/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r=
0/deploy-agl-demo-platform-image-complete/agl-demo-platform-nitrogen6x-2018=
0705063932.rootfs.sdcard:
 2185MB</b><br><b>| Sector size (logical/physical): 512B/512B</b><br><b>| P=
artition Table: msdos</b><br><b>| Disk Flags:</b><br><b>| </b><br><b>| Numb=
er=C2=A0 Start=C2=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0=C2=A0=C2=
=A0 Type=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=A0 Flags</b><br><b>|=C2=A0 =
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=C2=A0 12.6MB=C2=A0 8389kB=C2=A0 prim=
ary=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 lba</b><br><b>|=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12.6MB=
=C2=A0 2181MB=C2=A0 2168MB=C2=A0 primary</b><br><b>| </b><br><b>| mkfs.fat:=
 warning - lowercase labels might not work properly with DOS or Windows</b>=
<br><b>| mkfs.fat 4.1 (2017-01-24)</b><br><b>| Disk full</b><br><b>| WARNIN=
G: exit code 1 from a shell command.</b><br><b>|
 ERROR: Function failed: do_image_sdcard (log file is located at ~/build/tm=
p/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r0/temp/log.do_im=
age_sdcard.6362)</b><br><b>ERROR:
 Task=20
(~/kapil/meta-agl-demo/recipes-platform/images/agl-demo-platform.bb:do_imag=
e_sdcard)
 failed with exit code &#39;1&#39;</b><br><b>NOTE: Tasks Summary: Attempted=
 7063 tasks of which 7059 didn&#39;t need to be rerun and 1 failed.<br><br>=
</b></span>I think due to change in configuration rootfs size is increased =
and the current rootfs size is small that is not able to accommodate the th=
ae changed size.<br>If it is so can anybody please provide steps to change =
the rootfs size .<br><br>Can you please give your inputs regarding this.<br=
><br></div><span id=3D"gmail-:c2.co" class=3D"gmail-tL8wMe gmail-EMoHub" st=
yle=3D"text-align:left" dir=3D"ltr"><b>Regards,<br></b></span></div><span i=
d=3D"gmail-:c2.co" class=3D"gmail-tL8wMe gmail-EMoHub" style=3D"text-align:=
left" dir=3D"ltr"><b>Abhishek Rai<br></b></span></div>

<br>








<table cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"middle">
<p><span>The information contained in this e-mail message (including any=C2=
=A0</span></p>
<p><span>attachments) may be confidential, proprietary, privileged, or othe=
rwise</span></p>
<p><span>exempt from disclosure under applicable laws. It is intended to be=
=C2=A0</span></p>
<p><span>conveyed only to the designated recipient(s). Any use, disseminati=
on,=C2=A0</span></p>
<p><span>distribution, printing, retaining or copying of this e-mail (inclu=
ding its=C2=A0</span></p>
<p><span>attachments) by unintended recipient(s) is strictly prohibited and=
 may=C2=A0</span></p>
<p><span>be unlawful. If you are not an intended recipient of this e-mail, =
or believe=C2=A0</span></p>
<p><span>that you have received this e-mail in error, please notify the sen=
der=C2=A0</span></p>
<p><span>immediately (by replying to this e-mail), delete any and all copie=
s of=C2=A0</span></p>
<p><span>this e-mail (including any attachments) from your system, and do n=
ot</span></p>
<p><span>disclose the content of this e-mail to any other person. Thank you=
 for your cooperation.</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<img><i style=3D"font-family:Calibri;font-size:14px"><span style=3D"font-si=
ze:10pt">This e-mail message (including any=C2=A0</span>attachments) may be=
 confidential, proprietary, privileged, or otherwise=C2=A0exempt from discl=
osure under applicable laws. If you are not an intended recipient, please d=
elete this message. Thank you.</i><br style=3D"font-family:Calibri;font-siz=
e:14px">

--000000000000668dea05703b4ff6--
