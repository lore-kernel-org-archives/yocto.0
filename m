Return-Path: <sanjuchopracool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6A3FE00A16; Sat, 20 Oct 2018 01:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sanjuchopracool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008A9E00971
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 01:27:17 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id z21-v6so32794695ljz.0
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 01:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GrrzCTwZ41/jAvS5ywCrzA87r6iYilbGGNSlPfmtOaA=;
	b=BiN01y4qaHNtl2GMkK4aUa3MsLoLHGspti05UdISFD58hPIl3rMX8BzpkMTZbazFpM
	JV8DdwPAVylPPyxEP/RYa7+7eYSqu2cEOFnzDeIfIZB2IqoV+uGBCLfYemL7J/sKyYk2
	7NTAm9fPo6PrUd+IIfZwM1J9oiPIjXsVXRk8wz9LW/KsF3jt/1J6BwbOt3KHMxFQkoMA
	SZmHRiGz6+lkivBrokoB7BVzVb54YcZS2z6gkGiTDT+mSUFLsl0iQgEPdrzL0OrqUfiZ
	eKG1Hy/00D40KaqB0VVE/KPunoB6X7IFF7ei/3VN8raE7RE8hx3te0FneabeKnvq+csE
	qMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GrrzCTwZ41/jAvS5ywCrzA87r6iYilbGGNSlPfmtOaA=;
	b=TkU2z8g2kl8xmhpyMYEb/hN5GuQlpNLAZRX+51AyIjuc4Gvns9NQVB/yvI/kZR7Xz2
	Iekjhp6RkaI/c1fJH5GmH1RXU5XyzzKHWzhLfSrxK7n1M8+er/JXiprF/j94Yt5pL0K7
	GCMnxfrYVFb3q0BqHIfl/ZIDxmsbgixDHNKzJnTRGb4h5NW45IchN3fE9hA7MRoCnn7h
	ETaVN+fPbKyGDxSwZMflbI1KANFVJmDiVLwyB69Lc9FB7nLGvVVQiAWCDE6ZoJo+0lL/
	qkPstlronqwGo2DwQrSvK/m6NgVIXglxOK9TO6kzC6p7MXUGDf7PlA8kY3yAUBo35/mm
	bY9g==
X-Gm-Message-State: ABuFfoitElgUC6E48O8ykxi569h6W0H/FoNGdq3oUOCiT4ulr63PKlGQ
	Sp0IirpWRGsMModfXhX0MJNNTMfbetHKNeupKt8RUBOI
X-Google-Smtp-Source: ACcGV62cXdfyN4PN4Z3PXLkR3m8QmCbFyjvZ2GisHv3AfJou190Q21Ayw9N9iaitizIOgl/2fCszeczc84jFh9e4YUE=
X-Received: by 2002:a2e:638d:: with SMTP id
	s13-v6mr24038241lje.117.1540024036518; 
	Sat, 20 Oct 2018 01:27:16 -0700 (PDT)
MIME-Version: 1.0
From: sanjay chopra <sanjuchopracool@gmail.com>
Date: Sat, 20 Oct 2018 13:57:05 +0530
Message-ID: <CAC0z2vFatOVuJD15MKVuFcmJBamXysYEwDV0woN-PuHn1oecRw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 23 Oct 2018 15:46:46 -0700
Subject: master branch build failing with error 'update_font_cache' failed
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
X-List-Received-Date: Sat, 20 Oct 2018 08:27:18 -0000
Content-Type: multipart/alternative; boundary="000000000000a46f630578a4c9d1"

--000000000000a46f630578a4c9d1
Content-Type: text/plain; charset="UTF-8"

I am trying to build core-image-minimal for qemu86, I am always getting the
following error.
I have seen this message with sumo branch also, but there it was coming as
warning.


ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook
'update_font_cache' failed, details in
/mnt/DATA_PARTITION2/qemu/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/mnt/DATA_PARTITION2/qemu/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.29330
ERROR: Task
(/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
failed with exit code '1'

Please help me to resolve this issue.
-- 

*RegardsSanjay*

--000000000000a46f630578a4c9d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small;color:rgb(0,0,0)">I am trying to build core-image-minimal for =
qemu86, I am always getting the following error.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small;color:rgb(0,0,0)">I have seen this message=
 with sumo branch also, but there it was coming as warning.</div><div class=
=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)"=
>ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook=
 &#39;update_font_cache&#39; failed, details in /mnt/DATA_PARTITION2/qemu/b=
uild/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_root=
fs<br>ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootf=
s<br>ERROR: Logfile of failure stored in: /mnt/DATA_PARTITION2/qemu/build/t=
mp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.293=
30<br>ERROR: Task (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-i=
mage-minimal.bb:do_rootfs) failed with exit code &#39;1&#39;<br><br clear=
=3D"all"></div><div style=3D"font-size:small;color:rgb(0,0,0)" class=3D"gma=
il_default">Please help me to resolve this issue.</div><div style=3D"font-s=
ize:small;color:rgb(0,0,0)" class=3D"gmail_default"></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><span style=3D"bac=
kground-color:rgb(0,0,0)"><i style=3D"color:rgb(51,204,255)"><span style=3D=
"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)">Regard=
s<br>Sanjay</span><span></span></span></i></span><br></div></div></div></di=
v></div>

--000000000000a46f630578a4c9d1--
