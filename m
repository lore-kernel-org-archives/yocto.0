Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92664E01003; Wed, 23 Sep 2015 05:13:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
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
	*      [209.85.214.177 listed in list.dnswl.org]
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C861E00EA6
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 05:13:45 -0700 (PDT)
Received: by obbda8 with SMTP id da8so31292289obb.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 05:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lmpZZdu2X5BCIoHUD1zlvl5Usq4k6NYuXKy9Q5/jNE8=;
	b=JJUDLKIkGD6m9U4J/hbARmK6U5xzQykEMKIO3rhpZkNYy65nc/mQS2kup03o18dVYC
	SbrKDf1v8+zqb8OVrOwkRYrYBpFbyLyI7eVsvo7KUePrwxrGykwoRsUw+9kQlsY5xPAF
	IwqBz+Ci6fdZ/v4Hjg2nRrPXKoeuAr2jCV8aXaKQh0drBM9bT54nGLRM4ClGdzeYf9pV
	Bo1I+bjVehANII7kB4gEYYocMBB+j253jtsukBPdVsy/RleKG81tN0UV3CxGvNsXl1d2
	NCnxG9HFj3ACZoR6CgGzcB9fCn+6RUe6oS6I3d3IoM35HiMS4mapV5AbNxYcMlCBVK6p
	kYFg==
MIME-Version: 1.0
X-Received: by 10.60.95.197 with SMTP id dm5mr18063065oeb.76.1443010424812;
	Wed, 23 Sep 2015 05:13:44 -0700 (PDT)
Received: by 10.202.61.67 with HTTP; Wed, 23 Sep 2015 05:13:44 -0700 (PDT)
Date: Wed, 23 Sep 2015 17:43:44 +0530
Message-ID: <CAKjpqyJ0JARxdDF3Ux1g8Yh7ncCae3pF5MrPRbFo2Tr5rWsF+w@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: yocto@yoctoproject.org
Subject: Error in do_rootfs
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
X-List-Received-Date: Wed, 23 Sep 2015 12:13:52 -0000
Content-Type: multipart/alternative; boundary=089e0112cbc2c73d290520690b7a

--089e0112cbc2c73d290520690b7a
Content-Type: text/plain; charset=UTF-8

Hi,


To give you more detail,I am trying to add gstreamer-1.0 support in
framework which is already having gstreamer-0.10.
Now gstreamer binaries are built in Intel 80386 32 bit format,while my
machine is amd,64 bit.So what i am doing i am configuring
and compiling the gstreamer plugin packages on ubuntu and copy the whole
source from there,after that i am doing do_install
in my recipe.In my recipe i have set noexec=1 for
do_fetch,do_configure,do_compile.It is able to install binaries in
image/usr/lib and sysroot folder according to what i write in do_install
but in installing the binaries to final image it is giving these errors:

i hope what i am doing above is right.

In log.do_rootfs file i am getting below error:

ERROR: Unable to install packages. Command  returned 255:


update-alternatives: Error: not linking /rootfs//bin/bash to
/bin/busybox.nosuid since rootfs//bin/bash exists and is not a link

What changes i should do in recipe file in order to overcome these errors.

Regards
Mayank

--089e0112cbc2c73d290520690b7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div><div style=3D"font-size:12.8px"><br=
></div><div style=3D"font-size:12.8px">To give you more detail,I am trying =
to add gstreamer-1.0 support in framework which is already having gstreamer=
-0.10.</div><div style=3D"font-size:12.8px">Now gstreamer binaries are buil=
t in Intel 80386 32 bit format,while my machine is amd,64 bit.So what i am =
doing i am configuring</div><div style=3D"font-size:12.8px">and compiling t=
he gstreamer plugin packages on ubuntu and copy the whole source from there=
,after that i am doing do_install</div><div style=3D"font-size:12.8px">in m=
y recipe.In my recipe i have set noexec=3D1 for do_fetch,do_configure,do_co=
mpile.It is able to install binaries in image/usr/lib and sysroot folder ac=
cording to what i write in do_install but in installing the binaries to fin=
al image it is giving these errors:</div><div style=3D"font-size:12.8px"><b=
r></div><div style=3D"font-size:12.8px">i hope what i am doing above is rig=
ht.</div></div><div style=3D"font-size:12.8px"><br></div><div style=3D"font=
-size:12.8px">In log.do_rootfs file i am getting below error:</div><div sty=
le=3D"font-size:12.8px"><br></div><div style=3D""><span style=3D"font-size:=
12.8px">ERROR: Unable to install packages. Command =C2=A0returned 255:=C2=
=A0</span><br></div><div style=3D""><span style=3D"font-size:12.8px"><br></=
span></div><div style=3D""><div style=3D""><span style=3D"font-size:12.8px"=
><br></span></div><div style=3D""><span style=3D"font-size:12.8px">update-a=
lternatives: Error: not linking /rootfs//bin/bash to /bin/busybox.nosuid si=
nce rootfs//bin/bash exists and is not a link</span><br></div><div style=3D=
""><span style=3D"font-size:12.8px"><br></span></div><div style=3D""><span =
style=3D"font-size:12.8px">What changes i should do in recipe file in order=
 to overcome these errors.</span></div><div style=3D""><span style=3D"font-=
size:12.8px"><br></span></div><div style=3D""><span style=3D"font-size:12.8=
px">Regards</span></div><div style=3D""><span style=3D"font-size:12.8px">Ma=
yank</span></div></div></div>

--089e0112cbc2c73d290520690b7a--
