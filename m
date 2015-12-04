Return-Path: <kubiznak.petr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4B94E00947; Fri,  4 Dec 2015 10:31:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kubiznak.petr[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C12E0090E
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2015 10:31:48 -0800 (PST)
Received: by iofh3 with SMTP id h3so125197904iof.3
	for <yocto@yoctoproject.org>; Fri, 04 Dec 2015 10:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=DDxPgL9SuhbD2GsW7EFpV1Y4R7R1CsvcZsiUnUtAcb0=;
	b=vz+A88AKDMoyVeO4rB/kOxU+roMOKRVAztAVtdbZTVa5mHdRgEi/z5apfw5LRghVNU
	dGWiVgKs8D/+ULzoepBGelSOB4HHK7qgDl9nZv4KiRUeP1jgMTew6j+80hj/xeg0+0v8
	Pe7FBtrc1hjzsl69MVfWd2YCbRcDV9YxEOlvBeN2Y3eQDoVyFkKi44TFopgi/0ThJT2v
	NJ4qR0C4KFgvanU5fe0vTnPm6QRu5bL4kuWZMdiPqenUVwqBlHzXTQ8JtxpVBkcmf495
	q5TJh+a9QgF+ewW23z7c6k5uNIfxrG6zn55yg0ulyefpsh2urtsa3bPkZCNQhNFhXUd3
	yNOA==
X-Received: by 10.107.3.144 with SMTP id e16mr14382464ioi.99.1449253907652;
	Fri, 04 Dec 2015 10:31:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.74.65 with HTTP; Fri, 4 Dec 2015 10:31:28 -0800 (PST)
In-Reply-To: <CAD+X0US1+b=sz3G3zL0ixXcP30c=jnRy92KkLhTpcWuSXam0SA@mail.gmail.com>
References: <CAD+X0US1+b=sz3G3zL0ixXcP30c=jnRy92KkLhTpcWuSXam0SA@mail.gmail.com>
From: =?UTF-8?B?UGV0ciBLdWJpesWIw6Fr?= <kubiznak.petr@gmail.com>
Date: Fri, 4 Dec 2015 19:31:28 +0100
Message-ID: <CAD+X0UT=3LyW5w5n2HCK978AjRobykJC=1RGdUo9aCOS-apc2Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: mountall.sh, udev and read-only rootfs
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
X-List-Received-Date: Fri, 04 Dec 2015 18:31:52 -0000
Content-Type: multipart/alternative; boundary=001a113ecf405ae60a052616b81c

--001a113ecf405ae60a052616b81c
Content-Type: text/plain; charset=UTF-8

Hi Yocto guys!

I experience problems with Yocto 1.7 Dizzy. I build an image with read-only
rootfs (EXTRA_IMAGE_FEATURES += "read-only-rootfs") and start kernel with
arguments "mem=256M root=/dev/mmcblk0p2 ro rootwait console=ttymxc1,115200
2". Please note the "ro" specifier. The specifier is needed on the release
configuration - rootfs at UBIFS on MTD. This is the simplest way how to
reproduce on a debug configuration with SD card.

Now the issue. When the system is booting, I receive udev errors, and udev
fails to start:
udevd[53]: bind failed: No such file or directory

udevd[53]: error binding udev control socket


Other parts of the system also do not work correctly, for example the
network is not set up. One finding is mainly interesting - devices listed
in /etc/fstab do not get mounted (so files fail to write to /var/run/, as
it remains read-only). It seems like if the /etc/init.d/mountall.sh script
(linked in /etc/rcS.d/S03mountall.sh) is not executed. I changed the order
of mountall and udev scripts by renaming the links as follows:
mv /etc/rcS.d/S03mountall.sh /etc/rcS.d/S04mountall.sh
mv /etc/rcS.d/S04udev /etc/rcS.d/S03udev

That resulted in successful mount of devices listed in /etc/fstab, and as a
consequence the network (and other services) was set up properly. Nothing
changed with the udev messages, though. It still fails to start.

Can anyone assist on this topic, please?

Petr

--
http://www.elnico.cz
http://www.sqm4.com

--001a113ecf405ae60a052616b81c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Yocto guys!<br><br>I experience problems=
 with Yocto=20
1.7 Dizzy. I build an image with read-only rootfs (EXTRA_IMAGE_FEATURES=20
+=3D &quot;read-only-rootfs&quot;) and start kernel with arguments &quot;me=
m=3D256M=20
root=3D/dev/mmcblk0p2 ro rootwait console=3Dttymxc1,115200 2&quot;. Please =
note=20
the &quot;ro&quot; specifier. The specifier is needed on the release config=
uration
 - rootfs at UBIFS on MTD. This is the simplest way how to reproduce on a
 debug configuration with SD card.<br><br></div>Now the issue. When the sys=
tem is booting, I receive udev errors, and udev fails to start:<br><div sty=
le=3D"margin-left:40px">udevd[53]: bind failed: No such file or directory<b=
r><br>udevd[53]: error binding udev control socket<br><br></div><br>Other
 parts of the system also do not work correctly, for example the network
 is not set up. One finding is mainly interesting - devices listed in=20
/etc/fstab do not get mounted (so files fail to write to /var/run/, as=20
it remains read-only). It seems like if the /etc/init.d/mountall.sh=20
script (linked in /etc/rcS.d/S03mountall.sh) is not executed. I changed=20
the order of mountall and udev scripts by renaming the links as follows:<br=
></div><div style=3D"margin-left:40px">mv /etc/rcS.d/S03mountall.sh /etc/rc=
S.d/S04mountall.sh<br>mv /etc/rcS.d/S04udev /etc/rcS.d/S03udev</div></div><=
div><br></div><div>That
 resulted in successful mount of devices listed in /etc/fstab, and as a=20
consequence the network (and other services) was set up properly.=20
Nothing changed with the udev messages, though. It still fails to start.<br=
><br></div><div>Can anyone assist on this topic, please?<br><br></div><div>=
Petr<br></div><br>--<br><a href=3D"http://www.elnico.cz" target=3D"_blank">=
http://www.elnico.cz</a><br><a href=3D"http://www.sqm4.com" target=3D"_blan=
k">http://www.sqm4.com</a><br></div>

--001a113ecf405ae60a052616b81c--
