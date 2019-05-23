Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A64A5E00D50; Thu, 23 May 2019 02:14:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
	[209.85.219.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37ADAE0053F
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 02:14:48 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id v66so2010013ybb.3
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 02:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=s7ben4BXSk4V/2Odb3Glk2SENznlzodGWY2tRaj8Z50=;
	b=uEaxZ2NZsMPknHfMAqjYkJs2skBWQCVIbrAPxp++1s3iMk9G0VHyVYckEw6qIV7vtr
	gOfBany/Fr1mFVtIKwO7lQV5PCXBExkHE78IlEL4GHZo6oCigNt595V6HuGfJZRdcG6W
	hw73jd5k/HiQwkEyIskwovn6MXS9xhY8V/IedCxVE6vHpUmONz829vwCgZ45Sn/Ey35m
	HFLRtxh4uuSbiP4+EOlN0blw6gq71heStQ4Zzd+pSh6PfhG6ZRqPJCvsTYlF9rf92AA6
	c4sN3WLhqyai7za+5nORyEeNAKgymOi6cjvZVaK1qERWEU02TpOPUaKZm32tzxJyRi+T
	leBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=s7ben4BXSk4V/2Odb3Glk2SENznlzodGWY2tRaj8Z50=;
	b=tQJTBVP11aXrQXvT3wFGFpejP6lR3RZgxFG8F2/40T0rxM1pSXBs+eC1VYfeH5XIzp
	tRiboBDqGp+e7VILE60rygt4bevIozAjiQTvrlHYw8MIqs/1ge1n+NY1TGdfQBI8xU5Z
	+S3l1ePuX1rLCX+1a011IEtSeZ+J84sUYXH3rgFRv6tH7Vbnan51OFm+YV4ZwnlNP3Lj
	628CqS9Eb8H7D3EayE3dKDVfUj+HRqYS/Cb+lqxWKED7tmacN2b2tNtdlHnxcG6vQBU/
	LiGl+d3PUCQsGExH7KVpYsNqXb2B44YE82tAMFOW5SLOzESQUqpaCuTyGUBIJ/eHj7Z8
	bghA==
X-Gm-Message-State: APjAAAWRXhCyQpbqX6jOHshm0C+k9c5uh5qTTpnL4I3fZxEOK0jIhr9X
	fO+FEqRs8Fdajs7mG7CtjPBZAfW2o0i4v0vBizyOmce4
X-Google-Smtp-Source: APXvYqz/4Tn3rdtIO2v1ALD7NA+cUnhrtCI1G8oMED7foJb7HeD2cSDpyIAKBl2woKhLXB1xXCzJTYnSze1b2VX/Rew=
X-Received: by 2002:a25:ef43:: with SMTP id w3mr1029355ybm.411.1558602887503; 
	Thu, 23 May 2019 02:14:47 -0700 (PDT)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Thu, 23 May 2019 11:14:36 +0200
Message-ID: <CAKpuFdc42Q4e=nu7EbQGOFuOtEwN0EVaKwdSkB-o8dE+tZ+VoQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: RPI WiFi not loading module
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
X-List-Received-Date: Thu, 23 May 2019 09:14:48 -0000
Content-Type: multipart/alternative; boundary="00000000000074a61805898a83ab"

--00000000000074a61805898a83ab
Content-Type: text/plain; charset="UTF-8"

Hi

I have problem to get my WiFi working on boot on Raspberry Pi 3.

The problem is that wlan0 interface not showing up, if I manually
run modprobe brcmfmac it works.

To try to "force" the load of brcmfmac i added it to KERNEL_MODULE_AUTOLOAD and
that generated an file in /etc/modules-load.d/ -> brcmfmac.conf but it is
still not loaded.

I use systemd an to my understanding systemd-modules-load.service is
handling module auto load, but that file is missing and I cant see how to
include it in my build.

Building thud version and I have added the following to my image recipe:

DISTRO_FEATURES_append = " wifi"

IMAGE_INSTALL_append = " iw wpa-supplicant packagegroup-base
module-init-tools"

IMAGE_INSTALL_append = "\
    linux-firmware-rpidistro-bcm43430 \
    linux-firmware-rpidistro-bcm43455 \
    bluez-firmware-rpidistro-bcm43430a1-hcd \
    bluez-firmware-rpidistro-bcm4345c0-hcd \
 "
Then i have symlinked wpa-supplicant service to load wpa-supplicant.conf
file and that work when I manually loads the module.

Best regards
Jonas

--00000000000074a61805898a83ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi<div><br></d=
iv><div>I have problem to get my WiFi working on boot on Raspberry Pi 3.</d=
iv><div><br></div><div>The problem is that wlan0 interface not showing up, =
if I manually run=C2=A0modprobe brcmfmac it works.</div><div><br></div><div=
>To try to &quot;force&quot; the load of brcmfmac i added it to=C2=A0<span =
style=3D"background-color:rgb(255,248,220);color:rgb(36,39,41);font-family:=
Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px">KERNE=
L_MODULE_AUTOLOAD</span>=C2=A0and that generated an file in=C2=A0/etc/modul=
es-load.d/ -&gt;=C2=A0brcmfmac.conf but it is still not loaded.</div><div><=
br></div><div>I use systemd an to my understanding=C2=A0systemd-modules-loa=
d.service is handling module auto load, but that file is missing and I cant=
 see how to include it in my build.</div><div><br></div><div>Building thud =
version and I have added the following to my image recipe:</div><div><br></=
div><div>DISTRO_FEATURES_append =3D &quot; wifi&quot;<br></div><div><br></d=
iv><div>IMAGE_INSTALL_append =3D &quot; iw wpa-supplicant packagegroup-base=
 module-init-tools&quot;<br></div><div><br></div><div><div>IMAGE_INSTALL_ap=
pend =3D &quot;\</div><div>=C2=A0 =C2=A0 linux-firmware-rpidistro-bcm43430 =
\</div><div>=C2=A0 =C2=A0 linux-firmware-rpidistro-bcm43455 \</div><div>=C2=
=A0 =C2=A0 bluez-firmware-rpidistro-bcm43430a1-hcd \</div><div>=C2=A0 =C2=
=A0 bluez-firmware-rpidistro-bcm4345c0-hcd \</div><div>=C2=A0&quot;</div></=
div><div>Then i have symlinked wpa-supplicant service to load wpa-supplican=
t.conf file and that work when I manually loads the module.</div><div><br><=
/div><div>Best regards</div><div>Jonas</div></div></div></div></div></div><=
/div></div></div>

--00000000000074a61805898a83ab--
