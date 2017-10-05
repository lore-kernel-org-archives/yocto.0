Return-Path: <hieberm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C23AE00D77; Wed,  4 Oct 2017 17:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hieberm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47275E00D72
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 17:31:49 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id r64so12989530qkc.1
	for <yocto@yoctoproject.org>; Wed, 04 Oct 2017 17:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+MDSLkmTZ+k3Scf3nL1y5KzvZtDnFl9xN8gwSPyXqU0=;
	b=B/PghUjAp3s6WnH61B06mqEY+2s65DYP6R8rUakjAF5lAcjE3sPys0dK8Knd9wixdp
	N1PzOwXt+vc3YTDUaUSM5ZwfaQuvGZ7OasutCoBTUWTJwxE3rOSRuEzGlern1vqiX/8D
	Kmvg++0/ZhR+GSSegcxRs3cIAAoXf/rpUfP6/pf3Di9pOap30SGksF1jk0B4hpGonNoM
	lvTpzGUODY+5tcAvId9IxZpMruiN4KTlnUDHNCrIg5H7fHU8Nq05yjMGM3LANoTjGEzV
	4e8/KIIJRmq5nrzykvsGhQoDFhRrrDqoen5A4IwbIfCK652b7npX4nuVxUMSxdMUcA5z
	tIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+MDSLkmTZ+k3Scf3nL1y5KzvZtDnFl9xN8gwSPyXqU0=;
	b=FXckqlSVwLtcwCZcRsfacjREUzZRCNawCk+W6LwTvZwaXIx/WNSvnpiT2joMbaKnZM
	oeyvF5XFaQH0b1IA+D8dWM4FMepTonN4nrH0oIhW0D75G2HeMBZDzAa9sQcPV+C6elGC
	CNAiXYoKfD0EIJLUN+S8rs5lXnp5Oy9jjpLQ6G1QHCIfA3ucttfAAaffklBInS7NiphQ
	hre7vJ++tAAvkQo1xZUYsXFo8bvSkft99ofvsoz34i1J/rVIXleWUlNJDl5ST0F/ol0O
	bYOg30SaUxNBA8klOKq4KCxGfd1U+GceRkYtHeSw/AyH7Z+PS9uv29Q9klqnKYVUNQoy
	fUVA==
X-Gm-Message-State: AMCzsaVDddIn994qPX3KuwV3+dpS6iLRw+7CDH4fz/FiR9HCVUcfqnXZ
	UB9XgX0+X2Ct0ULAmvy3qPGAlcATgCVRhZohr63ysg==
X-Google-Smtp-Source: AOwi7QD+fg4ihlIqevQORyxrozMnB7U/Q0/LJ9sAu8PD7Dz5MiUzePcsVwZdtZZqzPTWt3JYpZJODZ5hUdBp1JIaXGg=
X-Received: by 10.233.216.134 with SMTP id u128mr28639370qkf.127.1507163509011;
	Wed, 04 Oct 2017 17:31:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.96.34 with HTTP; Wed, 4 Oct 2017 17:31:48 -0700 (PDT)
From: Mark Hieber <hieberm@gmail.com>
Date: Wed, 4 Oct 2017 17:31:48 -0700
Message-ID: <CAPxJQ9G7zqCvSQ1M00y2md0TniEHK+QQssvAApVQWkAECnYArQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Another question about yocto
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
X-List-Received-Date: Thu, 05 Oct 2017 00:31:51 -0000
Content-Type: multipart/alternative; boundary="94eb2c04362c92bddc055ac1d9ab"

--94eb2c04362c92bddc055ac1d9ab
Content-Type: text/plain; charset="UTF-8"

I am trying to build
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/desktop-file-utils/
into my image.

My local.conf has IMAGE_INSTALL_append = " desktop-file-utils-native"

and bblayers.conf has
BBLAYERS ?= " \
  /yocto/poky/meta \
  /yocto/poky/meta-poky \
  /yocto/poky/meta-yocto-bsp \
  /yocto/poky/meta-openembedded/meta-oe \
  /yocto/poky/meta-openembedded/meta-python \
  /yocto/poky/meta-openembedded/meta-networking \
  /yocto/poky/meta-selinux \
  "

When I run bitbake core-image-full-cmdline, I get

ERROR: Task do_populate_sdk in /yocto/poky/meta/recipes-extended/images/
core-image-full-cmdline.bb rdepends upon non-existent task
do_package_write_rpm in
/yocto/poky/meta/recipes-devtools/desktop-file-utils/
desktop-file-utils-native_0.23.bb

ERROR: Command execution failed: 1


I have struggled to add packages to my image, is this the correct way to do
this? Is there something missing in desktop-files-utils-native_0.23.bb that
should be there? According to the error message, it is looking for a
non-existent do_package_write_rpm method.

Thanks,

Mark

--94eb2c04362c92bddc055ac1d9ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to build <a href=3D"http://git.yoctoproject.or=
g/cgit.cgi/poky/plain/meta/recipes-devtools/desktop-file-utils/">http://git=
.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/desktop-file-ut=
ils/</a> into my image.<br><br>My local.conf has IMAGE_INSTALL_append =3D &=
quot; desktop-file-utils-native&quot;<br><br>and bblayers.conf has<br>BBLAY=
ERS ?=3D &quot; \<br>=C2=A0 /yocto/poky/meta \<br>=C2=A0 /yocto/poky/meta-p=
oky \<br>=C2=A0 /yocto/poky/meta-yocto-bsp \<br>=C2=A0 /yocto/poky/meta-ope=
nembedded/meta-oe \<br>=C2=A0 /yocto/poky/meta-openembedded/meta-python \<b=
r>=C2=A0 /yocto/poky/meta-openembedded/meta-networking \<br>=C2=A0 /yocto/p=
oky/meta-selinux \<br>=C2=A0 &quot;<br><br>When I run bitbake core-image-fu=
ll-cmdline, I get<br><br>ERROR: Task do_populate_sdk in /yocto/poky/meta/re=
cipes-extended/images/<a href=3D"http://core-image-full-cmdline.bb">core-im=
age-full-cmdline.bb</a> rdepends upon non-existent task do_package_write_rp=
m in /yocto/poky/meta/recipes-devtools/desktop-file-utils/<a href=3D"http:/=
/desktop-file-utils-native_0.23.bb">desktop-file-utils-native_0.23.bb</a><b=
r><br>ERROR: Command execution failed: 1<br><br><div><br></div><div>I have =
struggled to add packages to my image, is this the correct way to do this? =
Is there something missing in <a href=3D"http://desktop-files-utils-native_=
0.23.bb">desktop-files-utils-native_0.23.bb</a> that should be there? Accor=
ding to the error message, it is looking for a non-existent do_package_writ=
e_rpm method.</div><div><br></div><div>Thanks,</div><div><br></div><div>Mar=
k</div></div>

--94eb2c04362c92bddc055ac1d9ab--
