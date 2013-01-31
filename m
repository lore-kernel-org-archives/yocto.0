Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F4CBE00294
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 11:03:38 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id hq12so974609wib.0
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 11:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=DSEDC2EAvLlaF41ZHEFaV7iYZ9m2dUUWTCilAIZXf70=;
	b=hyBN6VjeO5HO1tTfrf7javOGx9juBDdRWdF71j33f6u0l3/w/bGKxdrbrDbOOXjooZ
	Qn+w61axPE4iLsW0e9O/ayemVt7sn019LfLAXulAgeIDgj7sz8HNtYiRWY3fToHUgmVM
	TWlwlvKvmtQw8IBkI0BepzwnR2AE2Hyp9tn3KlK9k000QACvEXBsmWF8Xlnr+Zn1Qhqy
	XwiV4xCFGpZlwkpJOdy6fvrmbxiy87qGoBtaki5VmxCy/xU7bAMuHnHZvSVnC85eHOqj
	NRkkmOFm9dBVpsgS8s5qTv0hSQEzJN0xXlQ7Pl79Z3tMyM0ydDxzDmFdlXKsjDzA9Smi
	SDhw==
MIME-Version: 1.0
X-Received: by 10.194.216.66 with SMTP id oo2mr17210623wjc.4.1359659016857;
	Thu, 31 Jan 2013 11:03:36 -0800 (PST)
Received: by 10.194.169.5 with HTTP; Thu, 31 Jan 2013 11:03:36 -0800 (PST)
Date: Thu, 31 Jan 2013 14:03:36 -0500
Message-ID: <CAE8H0+XKiAGXzTTbLd67CqC32rYBK4iNaDTkoJyjUx8xzkBj+w@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: lmsensors-apps builds, but not in final image?
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
X-List-Received-Date: Thu, 31 Jan 2013 19:03:38 -0000
Content-Type: multipart/alternative; boundary=089e013d1634b7278c04d49a480a

--089e013d1634b7278c04d49a480a
Content-Type: text/plain; charset=ISO-8859-1

I'm hoping someone can quickly spot my mistake.  I'm attempting to use this
recipe:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-extended/lm_sensors/lmsensors-apps_3.3.2.bb

with my meta-intel/crownbay build under denzil 7.0.1.

I put the recipe in my layer, and added "lmsensors-apps" to my
IMAGE_INSTALL_append in my layer's layer.conf.

The software builds, and I can see the files in
tmp/work/crownbay-poky-linux/lmsensors-apps-3.3.2-r2.

But it doesn't make it into tmp/work/core-image-minimal-1.0-r0/rootfs or
the .hddimage file.

Help, please?

John

--089e013d1634b7278c04d49a480a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m hoping someone can quickly spot my mistake. =A0I&#=
39;m attempting to use this recipe:<div><a href=3D"http://git.yoctoproject.=
org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-extended/lm_sensors/lmsensors-a=
pps_3.3.2.bb">http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/r=
ecipes-extended/lm_sensors/lmsensors-apps_3.3.2.bb</a><br>
</div><div><br></div><div style>with my meta-intel/crownbay build under den=
zil 7.0.1. =A0</div><div style><br></div><div style>I put the recipe in my =
layer, and added &quot;lmsensors-apps&quot; to my IMAGE_INSTALL_append in m=
y layer&#39;s layer.conf. =A0</div>
<div style><br></div><div style>The software builds, and I can see the file=
s in tmp/work/crownbay-poky-linux/lmsensors-apps-3.3.2-r2.</div><div style>=
<br></div><div style>But it doesn&#39;t make it into tmp/work/core-image-mi=
nimal-1.0-r0/rootfs or the .hddimage file.</div>
<div style><br></div><div style>Help, please?</div><div style><br></div><di=
v style>John</div></div>

--089e013d1634b7278c04d49a480a--
