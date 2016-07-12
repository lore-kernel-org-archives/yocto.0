Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3768E00F25; Tue, 12 Jul 2016 15:06:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21DD5E00E6D
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 15:06:43 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id 38so29766965iol.0
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 15:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=YLRiUMQZIeayREc+WMLlUWeBRchNiY2NoK6XE79K0yU=;
	b=qg05pGTW9oQcQuwh06Awoy/6ctNOX7oPyBCohxjUmfv7Cn30ysoP101ir0/+F4kfOK
	LuJAtj0TRJLnZCHgJC7EcacN1/K/eDgs5LYctrYjNzhSyKLlfxth+k3caNFCfOqj1hZU
	mPksyYDloPib4K6Z3vCHG1ftQMP1zfheR5yxMcy024/CjFRyNFnU7QmeYzWGpp2QhqR9
	+kpezPJuCR1OKgdN5ng74FGStGDdM8RzKkRiElUKctEN6DY/xbfsxD6xS+GKx9YFJUsL
	Xnu9n/lohW816mEefFqCJsZbnoVYLS21ntniE3C9aj4LCZG1zLyi2woo3+W7U6cwxh+A
	RNRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YLRiUMQZIeayREc+WMLlUWeBRchNiY2NoK6XE79K0yU=;
	b=hn0ahBeZuc36eLvWL+NkxQdU7v02rjuAa+IwFMWV2KUEakJwdWNIQvUPPv75cUm1Zx
	n6susDU1DlvNiyGimOoLBxfHgzJowiX+hfb+Q8+1Q1OG5w9IFgeXM/8tExHW6YzmCFh0
	fbBMGbBXcjgqzEJOT8pdec2Uiyq/pq/01nCF2ki8Zqy42061AKx43VvCWV2swesOH3fY
	iVbISVfpJMyju/pxp77scREXjvUEFBcPg1BGPK4fbLzs8A6r0isfuJD/BtaRY9dAd6LG
	YvwWV9NctW7XCQjICo8EAIYARs7PWG8gtEB9Owi2R2JQn8N42xv37K4TikIwdjIJpApI
	YarQ==
X-Gm-Message-State: ALyK8tKPjENDrfSbxXrzJoYRKF+akHPTGHTp/+eKCCy+1EMuY8R80u0d+vepLLWs06ls+mi7Kf6PHhIXqg5cAw==
X-Received: by 10.107.59.201 with SMTP id i192mr5424830ioa.89.1468361202955;
	Tue, 12 Jul 2016 15:06:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Tue, 12 Jul 2016 15:06:23 -0700 (PDT)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 13 Jul 2016 00:06:23 +0200
Message-ID: <CAEfap_AqC5ksgt1Zx_CJtaZ=yGQ0swyGSAV5ZC4+vZmV28SZJQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [genericx86-jethro] core-image-sato HDDIMG 'install' - no, hard drive selected - /etc/fstab no such file or directory, (Simon Bolek)
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
X-List-Received-Date: Tue, 12 Jul 2016 22:06:45 -0000
Content-Type: multipart/alternative; boundary=94eb2c063e9ee77afa0537777b95

--94eb2c063e9ee77afa0537777b95
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, so looking at the previous yocto image, that was working fine, I see
that under rootfs there is
/lib/modules/3.10.34-ltsi-yocto-standard with some files inside.
There are no such files in the jethro core-image-sato rootfs.
Can that be the reason, why my SSD hard drive does not get recognized?
How do i get the modules into rootfs?

thank you and kind regards
Simon :-)

Viele Gr=C3=BCsse
Simon Bolek :-)

mit freundlichem Gruss / kind regards / pozdrawiam
Simon P. Bolek
------------------------------------------------------
Dipl. Inf. Simon P. Bolek
SAP Integration Architect
Business Mobile and IVI Solutions
mailto: simon.bolek@arcom-ivi.de
http://www.arcom-ivi.de/
XING: https://www.xing.com/profile/SimonP_Bolek

On Tue, Jul 12, 2016 at 12:46 PM, <yocto-request@yoctoproject.org> wrote:

>
>
>
> Today's Topics:
>
>    4. [genericx86-jethro] core-image-sato HDDIMG 'install' - no
>       hard drive selected - /etc/fstab no such file or directory
>       (Simon Bolek)
>
>
>
> ------------------------------
>
> Message: 4
>
> Hello everyone!
>
> I am trying to install genericx86 core-image-sato (jethro) HDDIMG to an
> atom-pc.
> For this 2GB USB stick is used.
> When choosing 'install' option from boot menu I get the message:
>
> "Searching for hard drives...
> No hard drive selected. Installation aborted."
>
> Installatiion stops and i get the console.
> When I try to run fsck, it says: can't read '/etc/fstab': No such file or
> directory
>
> fdisk -l  shows only the partitions of USB stick.
>
> After I choose 'boot' option to boot into live image, SDD drive is under
> /dev/sdb and USB installation stick under /dev/sda,
>
> What recipe/package is my installation missing? The SSD hard drive is not
> recognized for some reason. With previous yocto releases this package lis=
t
> DID work fine.
> So there is something missing in the background.
> Do you have any idea what this might be?
>
> Below is my package list from local.conf.
>
> thank you and kind regards
> Simon :-)
>
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
> IMAGE_INSTALL_append =3D " make \
>      initscripts \
>      grub \
>      initramfs-boot \
>      syslinux \
>      initramfs-live-install \
>      initramfs-live-install-efi \
>      initramfs-live-boot \
>      xinit \
>      xwininfo \
>      openssh-sftp \
>      openssh-sftp-server \
>      qtbase-plugins \
>      qtconnectivity \
>      qtdeclarative \
>      qtdeclarative-plugins \
>      qtdeclarative-tools \
>      qtdeclarative-qmlplugins \
>      qtenginio \
>      qtlocation \
>      qtmultimedia \
>      qtmultimedia-plugins \
>      qtmultimedia-qmlplugins \
>      qtsystems \
> "
>
> Viele Gr?sse
> Simon Bolek :-)
>
> mit freundlichem Gruss / kind regards / pozdrawiam
> Simon P. Bolek
> ------------------------------------------------------
> Dipl. Inf. Simon P. Bolek
> SAP Integration Architect
> Business Mobile and IVI Solutions
> mailto: simon.bolek@arcom-ivi.de
> http://www.arcom-ivi.de/
> XING: https://www.xing.com/profile/SimonP_Bolek
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20160712/795fcc=
82/attachment.html
> >
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 70, Issue 43
> *************************************
>

--94eb2c063e9ee77afa0537777b95
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, so looking at the previous yocto image, that was worki=
ng fine, I see that under rootfs there is <br>
/lib/modules/3.10.34-ltsi-yocto-standard with some files inside. <br>
There are no such files in the jethro core-image-sato rootfs. <br>
Can that be the reason, why my SSD hard drive does not get recognized?<br>
How do i get the modules into rootfs?<br>
<br>
thank you and kind regards<br>
Simon :-)<div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div>Viele Gr=C3=BCsse<br>Simon Bolek :-)<br><br>mit freundli=
chem Gruss / kind regards / pozdrawiam<br>Simon P. Bolek<br>---------------=
---------------------------------------<br>Dipl. Inf. Simon P. Bolek<br>SAP=
 Integration Architect<br><div>Business=C2=A0<span style=3D"font-family:ari=
al,sans-serif;font-size:13px;border-collapse:collapse">Mobile and IVI Solut=
ions</span><div>mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" target=
=3D"_blank">simon.bolek@arcom-ivi.de</a><div><a href=3D"http://www.arcom-iv=
i.de/" target=3D"_blank">http://www.arcom-ivi.de/</a><br>XING: <a href=3D"h=
ttps://www.xing.com/profile/SimonP_Bolek" target=3D"_blank">https://www.xin=
g.com/profile/SimonP_Bolek</a><br></div></div></div></div></div></div></div=
></div></div>
<br><div class=3D"gmail_quote">On Tue, Jul 12, 2016 at 12:46 PM,  <span dir=
=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_b=
lank">yocto-request@yoctoproject.org</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0=C2=A0 4. [genericx86-jethro] core-image-sato HDDIMG &#39;install&#39=
; - no<br>
=C2=A0 =C2=A0 =C2=A0 hard drive selected - /etc/fstab no such file or direc=
tory<br>
=C2=A0 =C2=A0 =C2=A0 (Simon Bolek)<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
<br>
Hello everyone!<br>
<br>
I am trying to install genericx86 core-image-sato (jethro) HDDIMG to an<br>
atom-pc.<br>
For this 2GB USB stick is used.<br>
When choosing &#39;install&#39; option from boot menu I get the message:<br=
>
<br>
&quot;Searching for hard drives...<br>
No hard drive selected. Installation aborted.&quot;<br>
<br>
Installatiion stops and i get the console.<br>
When I try to run fsck, it says: can&#39;t read &#39;/etc/fstab&#39;: No su=
ch file or<br>
directory<br>
<br>
fdisk -l=C2=A0 shows only the partitions of USB stick.<br>
<br>
After I choose &#39;boot&#39; option to boot into live image, SDD drive is =
under<br>
/dev/sdb and USB installation stick under /dev/sda,<br>
<br>
What recipe/package is my installation missing? The SSD hard drive is not<b=
r>
recognized for some reason. With previous yocto releases this package list<=
br>
DID work fine.<br>
So there is something missing in the background.<br>
Do you have any idea what this might be?<br>
<br>
Below is my package list from local.conf.<br>
<br>
thank you and kind regards<br>
Simon :-)<br>
<br>
EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks ssh-server-openssh&quot;<br>
IMAGE_INSTALL_append =3D &quot; make \<br>
=C2=A0 =C2=A0 =C2=A0initscripts \<br>
=C2=A0 =C2=A0 =C2=A0grub \<br>
=C2=A0 =C2=A0 =C2=A0initramfs-boot \<br>
=C2=A0 =C2=A0 =C2=A0syslinux \<br>
=C2=A0 =C2=A0 =C2=A0initramfs-live-install \<br>
=C2=A0 =C2=A0 =C2=A0initramfs-live-install-efi \<br>
=C2=A0 =C2=A0 =C2=A0initramfs-live-boot \<br>
=C2=A0 =C2=A0 =C2=A0xinit \<br>
=C2=A0 =C2=A0 =C2=A0xwininfo \<br>
=C2=A0 =C2=A0 =C2=A0openssh-sftp \<br>
=C2=A0 =C2=A0 =C2=A0openssh-sftp-server \<br>
=C2=A0 =C2=A0 =C2=A0qtbase-plugins \<br>
=C2=A0 =C2=A0 =C2=A0qtconnectivity \<br>
=C2=A0 =C2=A0 =C2=A0qtdeclarative \<br>
=C2=A0 =C2=A0 =C2=A0qtdeclarative-plugins \<br>
=C2=A0 =C2=A0 =C2=A0qtdeclarative-tools \<br>
=C2=A0 =C2=A0 =C2=A0qtdeclarative-qmlplugins \<br>
=C2=A0 =C2=A0 =C2=A0qtenginio \<br>
=C2=A0 =C2=A0 =C2=A0qtlocation \<br>
=C2=A0 =C2=A0 =C2=A0qtmultimedia \<br>
=C2=A0 =C2=A0 =C2=A0qtmultimedia-plugins \<br>
=C2=A0 =C2=A0 =C2=A0qtmultimedia-qmlplugins \<br>
=C2=A0 =C2=A0 =C2=A0qtsystems \<br>
&quot;<br>
<br>
Viele Gr?sse<br>
Simon Bolek :-)<br>
<br>
mit freundlichem Gruss / kind regards / pozdrawiam<br>
Simon P. Bolek<br>
------------------------------------------------------<br>
Dipl. Inf. Simon P. Bolek<br>
SAP Integration Architect<br>
Business Mobile and IVI Solutions<br>
mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">simon.bolek@arcom-ivi.d=
e</a><br>
<a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" target=3D"_blank">h=
ttp://www.arcom-ivi.de/</a><br>
XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" rel=3D"noreferr=
er" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20160712/795fcc82/attachment.html" rel=3D"noreferrer" target=3D"_blank">=
http://lists.yoctoproject.org/pipermail/yocto/attachments/20160712/795fcc82=
/attachment.html</a>&gt;<br>
<br>
------------------------------<br>
<span class=3D""><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 70, Issue 43<br>
*************************************<br>
</font></span></blockquote></div><br></div></div>

--94eb2c063e9ee77afa0537777b95--
