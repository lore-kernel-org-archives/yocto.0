Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12AE2E00A93; Mon, 30 Sep 2019 08:17:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
	[209.85.222.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12696E009E2
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 08:17:27 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id b14so4301943uap.6
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 08:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zw6dREVLabQWsfDeREpnWk8tRyXkkHi/MuO2cTXTOcc=;
	b=HjG/l3yEmHrN4fnxP0X3f5uMYsLRZc0LmMXsNttI1akZshPYHkWkQMoBl/oz/nJ9a2
	YtOBEnCdVmLRwveD2/lg/p/ckZXZbkN0Jd11lmBxSxleXh1gEStW/4sY8b9tw6GI3FZO
	Xv80s7+m4GEw4WOtcds+eB9b8BpJHtFCdtVBHWPe2bDhgHCrvuyRTCKA3mhIFXj/O/sS
	wq0vwGjT3KdsVDlqBhcrI7VZxwnFIKSTAR+7Nq+tFOEA5zg7QSOxYwzgKLq3/9J3515D
	tkANphQYonUechwHdHfFuFG2pm7D33lrYKgb6s9arhUgkBl3BGp9NwKnfeG2QQXIM79A
	HmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zw6dREVLabQWsfDeREpnWk8tRyXkkHi/MuO2cTXTOcc=;
	b=OIu400Ar7TWHfF6sQi5UtrPehtGYqDe8TCkovNhIutmN3pmPSz6TdALQioagKW2vs/
	/tpbTvL7ISAQCVMZ5xO0VnvbTHd2tS0lUAJ7rMjiPwOJqTTqvJ91HuIlei0B0wSlOszP
	oyIoFUF0SsL6ZLa3HB6KVpkjqX4P8RqRCw9CB9t38wbF+hh1DIIaMQjTPMnFqYRXlVse
	d1PJIBaR16gmy+Zub655k1GrjBqY7l6H6P5I0PomebG2xMcoZg1Euot8g3zoScD+ZrZG
	TsDFgP76bEI1rrorO/QkGe2kAl7qVRGRs4wWjtIShztoe+K6swUITeQ1Kf1yHaPL37Qe
	H3Iw==
X-Gm-Message-State: APjAAAVz2XipfRQHX2uMmOXv2RrrybR/7jMK8QKRTS9A7mudeGGLqfsL
	xPDASfCbMco14xFuR7ZGP8of4qqhrKoJ8npkLeJ9+yfE5YY=
X-Google-Smtp-Source: APXvYqwpG1gP7uMhQlqrEDjhdUmVxg9g/GhWpIDqTyrF44cCaFRxePlUb023T0FfvTMDfMH4Re/uqcR0m7GlLhy/C+s=
X-Received: by 2002:a9f:20a6:: with SMTP id 35mr8401624uaa.140.1569856646771; 
	Mon, 30 Sep 2019 08:17:26 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Mon, 30 Sep 2019 17:17:15 +0200
Message-ID: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
To: yocto@yoctoproject.org, zangrc.fnst@cn.fujitsu.com, 
	Khem Raj <raj.khem@gmail.com>
Subject: Cannot use "LICENSE_CREATE_PACKAGE = 1" when building the image with mdns
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
X-List-Received-Date: Mon, 30 Sep 2019 15:17:29 -0000
Content-Type: multipart/alternative; boundary="000000000000c777bf0593c6bb31"

--000000000000c777bf0593c6bb31
Content-Type: text/plain; charset="UTF-8"

I saw your last patch to upgrade mdns, so I'm sending this email also to
you to try to get help.

mdns is working correctly, however, when I try to build my image with
"LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described here
https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text
I
get this error message:

ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of ['mdns']
have failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in
/home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
ERROR: Task (MY CUSTOM LAYER
PATH/recipes-core/images/mydevice-image.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need to be
rerun and 1 failed.

Do you have a solution? Why is it happening?

thank u.

--000000000000c777bf0593c6bb31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I saw your last patch to upgrade mdns, so I&#39;m sending =
this email also to you to try to get help.<div><br></div><div>mdns is worki=
ng correctly, however, when I try to build my image with &quot;LICENSE_CREA=
TE_PACKAGE =3D &quot;1&quot;&quot; in my local.conf as described here=C2=A0=
<a href=3D"https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html=
#providing-license-text">https://www.yoctoproject.org/docs/2.8/dev-manual/d=
ev-manual.html#providing-license-text</a>=C2=A0I get this error=C2=A0messag=
e:</div><div><br></div><div>ERROR: mydevice-image-1.0-r0 do_rootfs: Postins=
tall scriptlets of [&#39;mdns&#39;] have failed. If the intention is to def=
er them to first boot,<br>then please place them into pkg_postinst_ontarget=
_${PN} ().<br>Deferring to first boot via &#39;exit 1&#39; is no longer sup=
ported.<br>Details of the failure are in /home/user/git/poky/build/tmp/work=
/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootf=
s.<br>ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br=
>ERROR: Logfile of failure stored in: /home/user/git/poky/build/tmp/work/my=
device1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586<b=
r>ERROR: Task (MY CUSTOM LAYER PATH/recipes-core/images/mydevice-image.bb:d=
o_rootfs) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempt=
ed 4871 tasks of which 4654 didn&#39;t need to be rerun and 1 failed.<br></=
div><div><br></div><div>Do you have a solution? Why is it happening?=C2=A0<=
/div><div><br></div><div>thank u.</div></div>

--000000000000c777bf0593c6bb31--
