Return-Path: <vidal.develone@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22572E01507
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 04:47:04 -0700 (PDT)
Received: by iecs9 with SMTP id s9so5522148iec.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 04:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=q5SZ1JSOn7FVOTIrWKspgfI1lIs6tG4eIMujiGuR6eY=;
	b=c91ngq3dOK7kKs5uGhPh/RFhGyg3WMK6xxAqg4wjwZS0JISXqhvN5WVzkqVBc28gsQ
	YikUWgC599nmScPxj46mu62K5rmH3fcpTK3W1yYxLHJHsLaR0h31bQyqxD0Qcf+y/iwq
	+gPuNAdn2atjOXRsHIkPcQA4py/sIjyXQB1Rh3S7Nz5gTyfwOemXgzIEfq60mWCasjb3
	z7VkUMLogbUGOjjuZYndhYf7Zk+hDqTJcn6wxPE48TcfUOOalTUS+Aol6Cwly/ATFaqu
	wtdkMlB0OU6jRX2BXB9erqbLtf8uWR3OFJt6qsxEDcbbavzMXeNGkk2UjMyASn5c4F08
	FRnw==
MIME-Version: 1.0
Received: by 10.42.23.207 with SMTP id t15mr6624234icb.3.1347018409645; Fri,
	07 Sep 2012 04:46:49 -0700 (PDT)
Received: by 10.64.33.107 with HTTP; Fri, 7 Sep 2012 04:46:49 -0700 (PDT)
Date: Fri, 7 Sep 2012 05:46:49 -0600
Message-ID: <CANwz6nyaMDWRTdd=_g0yYcg3bsvvJ7Qx56RN8zeWAxFsmjTSsQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard: change to xserver-xorg, not -lite
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Sep 2012 11:47:04 -0000
Content-Type: multipart/alternative; boundary=20cf301d41a4d0178e04c91b292b

--20cf301d41a4d0178e04c91b292b
Content-Type: text/plain; charset=ISO-8859-1

hello,
I did a new build of poky
git clone git://git.yoctoproject.org/poky.git
With gitk I see that the patch has been applied to

meta-yocto-bsp/conf/machine/beagleboard.conf

When I execute MACHINE=beagleboard bitbake -v core-image-sato
I get the following

Summary: 4 tasks failed:
  /home/vidal/poky/meta/recipes-graphics/xorg-proto/glproto_1.4.16.bb,
do_compile

  /home/vidal/poky/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb, do_compile
  /home/vidal/poky/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb,
do_configure

  /home/vidal/poky/meta/recipes-graphics/xorg-proto/fontsproto_2.1.2.bb,
do_configure
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
Is this error related to change from

xorg-xserver instead of xorg-xserver-lite
Any help will be appreciated.
Thanks

--20cf301d41a4d0178e04c91b292b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

hello,<br>I did a new build of poky<br>git clone git://<a href=3D"http://gi=
t.yoctoproject.org/poky.git" target=3D"_blank">git.yoctoproject.org/poky.gi=
t</a><br>With gitk I see that the patch has been applied to <br><pre>meta-y=
octo-bsp/conf/machine/beagleboard.conf<br>

<br>When I execute MACHINE=3Dbeagleboard bitbake -v core-image-sato<br>I ge=
t the following<br><br>Summary: 4 tasks failed:<br>  /home/vidal/poky/meta/=
recipes-graphics/xorg-proto/<a href=3D"http://glproto_1.4.16.bb" target=3D"=
_blank">glproto_1.4.16.bb</a>, do_compile<br>

  /home/vidal/poky/meta/recipes-graphics/xorg-proto/<a href=3D"http://dri2p=
roto_2.8.bb" target=3D"_blank">dri2proto_2.8.bb</a>, do_compile<br>  /home/=
vidal/poky/meta/recipes-graphics/xorg-proto/<a href=3D"http://xf86driproto_=
2.1.1.bb" target=3D"_blank">xf86driproto_2.1.1.bb</a>, do_configure<br>

  /home/vidal/poky/meta/recipes-graphics/xorg-proto/<a href=3D"http://fonts=
proto_2.1.2.bb" target=3D"_blank">fontsproto_2.1.2.bb</a>, do_configure<br>=
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.=
<br>
Is this error related to change from <br>
xorg-xserver instead of xorg-xserver-lite<br>Any help will be appreciated.<=
br>Thanks<br></pre>

--20cf301d41a4d0178e04c91b292b--
