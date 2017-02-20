Return-Path: <harshadlele1991@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85C14E009A0; Mon, 20 Feb 2017 07:28:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.170 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (harshadlele1991[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3513E00867
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 07:28:51 -0800 (PST)
Received: by mail-ua0-f170.google.com with SMTP id t17so58744093uae.3
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 07:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SSn92Kx6EgX0jaQ+n9VofIBSNtODlkw87zCafQi1sHU=;
	b=tU6wp5gnubJpQYcfAmh5rnGSN6+ryoE9VXTWhEXXwkPOiWLLN5Sn5RiLbwFdyOkKDE
	5HfC7j2TOqae65X9AmHjQxjeh6eXiKI7evKSdBcAMsE7JGZMv4UziCEWxDBP+FjCftDY
	iHS3d9KNDQ5vEdCuJ5ELz1roWo9Dw8Y42rj8U9CEqWJpyHCHXkeKMPeTUO7fVrNlYHAp
	BCdY2FMVPBqVtksoooJ5EFzlROwS9rSqtu0aHd0FjDvC3C09BHwzIvgjQhs1TpMxabWJ
	wPvDvINVSUBCq25hjRrBP8ZWHht47laJMeZ8LpBmM5pM7DEA9UGpDE8SQrEqzuxLmMml
	44YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SSn92Kx6EgX0jaQ+n9VofIBSNtODlkw87zCafQi1sHU=;
	b=U/t9J54OM7gYI1ih9dScfw21xc3HJWdjM49XtEDThRJpsv0kLsT2mIMFkkolPTHT+u
	28kyc869dloxEZEJfz0uaCpnLin36crDpv5Hr1PFgYwF+DIEQVIHrLFmzZAo9i1p39Aj
	MABPBOieto687+LLZ+h27wLq9AzJ/9bBgs1s2g2xOJ4Enp54ctLV28gJQtI+cpAtd28Q
	xoiepm/u2Ulj/3/Xnxj6Q8ItLki7hfLXdbcH2pB9fFghU0yYtBGWtLpVka6knjiJEa65
	B8gL/byL0JZYL+Nly/o9CdgbXwCZPRdULIdf9Yuo3CuFRDDh3ifJ/A+VbE0DWlxLZUd8
	Qxlg==
X-Gm-Message-State: AMke39ks/2dz9xgCyMm5VW8dMcWv+yVWN84sN4Vo5jjYAfxUXv7qVIXDEYL1EggrdJZPb2piioS0DTX8K/bMZQ==
X-Received: by 10.176.24.153 with SMTP id t25mr3020274uag.162.1487604530606;
	Mon, 20 Feb 2017 07:28:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.76.235 with HTTP; Mon, 20 Feb 2017 07:28:50 -0800 (PST)
From: Harshad Lele <harshadlele1991@gmail.com>
Date: Mon, 20 Feb 2017 10:28:50 -0500
Message-ID: <CAP-iPXyiHVN5SHSsx1TffvOrBE3A0pdrUUqDXgQQg0xqyMvWQA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Unable to read file uImage--ccimx6sbc-id129.dtb
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
X-List-Received-Date: Mon, 20 Feb 2017 15:28:52 -0000
Content-Type: multipart/alternative; boundary=f40304379edc9cf8080548f7ebfd

--f40304379edc9cf8080548f7ebfd
Content-Type: text/plain; charset=UTF-8

Hi All,

I am new to Yocto. I am trying to learn it by actually doing it. Thus my
doubt might be naive.

I am using Freescale's Connect Core iMX6 Single Board Computer - Version 1
with board ID - 129.

I have created distribution by doing

bitbake dey-image-qt

with following options in local.conf-
DISTRO_FEATURES_remove = "X11"
IMAGE_FEATURES_remove = "dey-qt"

as i don't need X11 support.

However, after successfully updating uboot, kernel and root file system
using tftp when I do 'boot' -
the kernel is booting from its legacy image and not with the image that I
have updated. It give following error -

=> boot
reading boot.scr
2042 bytes read in 19 ms (104.5 KiB/s)
## Executing script at 12000000
reading uImage-ccimx6sbc.bin
5181288 bytes read in 151 ms (32.7 MiB/s)
reading uImage--ccimx6sbc-id129.dtb
** Unable to read file uImage--ccimx6sbc-id129.dtb **
## Booting kernel from Legacy Image at 12000000 ...
Image Name: Linux-3.14.79-dey+gc4cef43
Image Type: ARM Linux Kernel Image (uncompressed)
Data Size: 5181224 Bytes = 4.9 MiB
Load Address: 10800000
Entry Point: 10800000
Verifying Checksum ... OK
Loading Kernel Image ... OK
No gpc device node -9, force to ldo-enable.
1.2G chip, increase VDDARM_IN/VDDSOC_IN

Any help regarding this would be appreciated.

Thanks and regards,
Harshad Lele.

--f40304379edc9cf8080548f7ebfd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I am new to Yocto. I=
 am trying to learn it by actually doing it. Thus my doubt might be naive.=
=C2=A0</div><div><br></div><div>I am using Freescale&#39;s Connect Core iMX=
6 Single Board Computer - Version 1 with board ID - 129.</div><div><br></di=
v><div>I have created distribution by doing=C2=A0</div><div><br></div><div>=
bitbake dey-image-qt=C2=A0</div><div><br></div><div>with following options =
in local.conf-=C2=A0</div><div>DISTRO_FEATURES_remove =3D &quot;X11&quot;=
=C2=A0</div><div>IMAGE_FEATURES_remove =3D &quot;dey-qt&quot;=C2=A0</div><d=
iv><br></div><div>as i don&#39;t need X11 support.=C2=A0</div><div><br></di=
v><div>However, after successfully updating uboot, kernel and root file sys=
tem using tftp when I do &#39;boot&#39; -=C2=A0</div><div>the kernel is boo=
ting from its legacy image and not with the image that I have updated. It g=
ive following error -=C2=A0</div><div><br></div><div>=3D&gt; boot=C2=A0</di=
v><div>reading boot.scr=C2=A0</div><div>2042 bytes read in 19 ms (104.5 KiB=
/s)=C2=A0</div><div>## Executing script at 12000000=C2=A0</div><div>reading=
 uImage-ccimx6sbc.bin=C2=A0</div><div>5181288 bytes read in 151 ms (32.7 Mi=
B/s)=C2=A0</div><div>reading uImage--ccimx6sbc-id129.dtb=C2=A0</div><div>**=
 Unable to read file uImage--ccimx6sbc-id129.dtb **=C2=A0</div><div>## Boot=
ing kernel from Legacy Image at 12000000 ...=C2=A0</div><div>Image Name: Li=
nux-3.14.79-dey+gc4cef43=C2=A0</div><div>Image Type: ARM Linux Kernel Image=
 (uncompressed)=C2=A0</div><div>Data Size: 5181224 Bytes =3D 4.9 MiB=C2=A0<=
/div><div>Load Address: 10800000=C2=A0</div><div>Entry Point: 10800000=C2=
=A0</div><div>Verifying Checksum ... OK=C2=A0</div><div>Loading Kernel Imag=
e ... OK=C2=A0</div><div>No gpc device node -9, force to ldo-enable.=C2=A0<=
/div><div>1.2G chip, increase VDDARM_IN/VDDSOC_IN=C2=A0</div><div><br></div=
><div>Any help regarding this would be appreciated.=C2=A0</div><div><br></d=
iv><div>Thanks and regards,</div><div>Harshad Lele.</div></div>

--f40304379edc9cf8080548f7ebfd--
