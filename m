Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04C8FE009AA; Wed, 29 Apr 2015 05:38:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A1A6E00949
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 05:38:10 -0700 (PDT)
Received: by obfe9 with SMTP id e9so18638414obf.1
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 05:38:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=HZo5WDiTRKoTUwCelQECao4nHU0xHVFogYK3EzAzPxg=;
	b=Nb0a+kpeSGS8pHrTA7AzRDOKXGhVLD5G75K08ydsc4VCbwlwhAmV2/HqGRa5ftAOS6
	b0sYT4WxBBX8LgfaEjd4h5Yi3celAZPY72ld6KF3AjSbGcKkvp3LkHpPnOTTK/CZ3e0b
	C1VqsUTNu6tFXH9Pt9gOwQC3cSMgzJwCbf89Uws+5XwdbNnUYOjm80eFHQ2kspoYHY9u
	5XyAzE0ZVQYOpOs8lXvjyAGbWoSDeCWq4KENzc8cGmVJ0s5ay7Fpfy8Czxi9aY1PTiv8
	pELBm7m45MsC3QF3mbdNeEjkMKrtwq/r+DtbyUto7zRfkr/AX1JK7ww5jQom+gnxX5tv
	J3Hg==
X-Gm-Message-State: ALoCoQksSHqUefVqWSW88EMokQW6feTn3TIYJnjhjfNZU9JuZVn4mw5trSB0FVI14+qTjNaPX+9K
MIME-Version: 1.0
X-Received: by 10.182.130.201 with SMTP id og9mr17379858obb.60.1430311089044; 
	Wed, 29 Apr 2015 05:38:09 -0700 (PDT)
Received: by 10.60.162.210 with HTTP; Wed, 29 Apr 2015 05:38:09 -0700 (PDT)
Date: Wed, 29 Apr 2015 18:08:09 +0530
Message-ID: <CABNKipL2O7mZgYXSjRPR_Y9wYK4amR_EBVQmkEumXgB30Acvww@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: Yocto linux-kernel
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
X-List-Received-Date: Wed, 29 Apr 2015 12:38:17 -0000
Content-Type: multipart/alternative; boundary=089e01175e0b6193980514dc403c

--089e01175e0b6193980514dc403c
Content-Type: text/plain; charset=UTF-8

i am using beagleboard-xm like board for my custom use. for my development
i am using yocto-dora-1.5 as bsp and kernel-2.6.32(i downgraded).
         while bitbaking kernel, i got error as follows:

Log data follows:
| DEBUG: Executing shell function do_kernel_checkout
| Reinitialized existing Git repository in
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/linux-2.6.32/.git/
| On branch standard/base
| nothing to commit, working directory clean
| ERROR. The branch 'meta' is required and was not
| found. Ensure that the SRC_URI points to a valid linux-yocto
| kernel repository
| WARNING:
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/run.do_kernel_checkout.32588:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_kernel_checkout (log file is located at
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/log.do_kernel_checkout.32588)

due to this error i thought error can be cleared if kernel fetched from
yocto git repository, but i cat get from there,  so how do i get
kernel-2.6.32 for yocto project.

-- 
thanks and regards,
parthiban
      +919790329795

--089e01175e0b6193980514dc403c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>i am using beagleboard-xm like board for my cust=
om use. for my development i am using yocto-dora-1.5 as bsp and kernel-2.6.=
32(i downgraded). <br></div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 while bitbaking kernel, i got error as follows:<br><br>Log data follows=
:<br>| DEBUG: Executing shell function do_kernel_checkout<br>| Reinitialize=
d existing Git repository in /home/parthiban/UliveSytems/Parthiban/CODE/Ope=
nSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-l=
inux-gnueabi/linux-yocto/2.6.32-r0/linux-2.6.32/.git/<br>| On branch standa=
rd/base<br>| nothing to commit, working directory clean<br>| ERROR. The bra=
nch &#39;meta&#39; is required and was not<br>| found. Ensure that the SRC_=
URI points to a valid linux-yocto<br>| kernel repository<br>| WARNING: /hom=
e/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0=
.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r=
0/temp/run.do_kernel_checkout.32588:1 exit 1 from<br>|=C2=A0=C2=A0 exit 1<b=
r>| ERROR: Function failed: do_kernel_checkout (log file is located at /hom=
e/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0=
.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r=
0/temp/log.do_kernel_checkout.32588)<br><br></div>due to this error i thoug=
ht error can be cleared if kernel fetched from yocto git repository, but i =
cat get from there,=C2=A0 so how do i get kernel-2.6.32 for yocto project.<=
br><div><div><br>-- <br><div class=3D"gmail_signature"><div style=3D"text-a=
lign:right">thanks and regards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div =
style=3D"text-align:right">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=
=A0=C2=A0 <br></div></div></div>
</div></div></div>

--089e01175e0b6193980514dc403c--
