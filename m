Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32B85E0056A; Thu, 26 Jun 2014 16:39:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
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
	*      [209.85.128.171 listed in list.dnswl.org]
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA2C4E00563
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 16:39:05 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id jz11so4515129veb.16
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 16:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=iZ3YkwcyhzPWbe6KWc/nuEYdxDJYVAPaMBnYnD+1fQA=;
	b=RZqBWh/OazEstRz8nrH6HbyrygfDkl55E4bYNnYymzD1vFW7Rl2B9/7mgOJGWbPseL
	vVwkkXzVlHsi49IzDAS6GTY4kxxlAubQlFZzoV+DI2zRSfi6tqo9Kh2mCpX0SLxhMx5U
	6DxHyiPUfVNPTZHlhHO9loV36zWdFDv/xklRDWXqa1xad/VkbcVrGK25OcHgmZB50yrf
	Fs/nCmwu6J3MtY18xQ93mSdA9p0HQWUuprktmG6ZarNTVFVBBtXcGwt1ZEexQ6F9e4JL
	n3dKH5svs1TrTEzis0JgCHfR/BEaPseHUP+sNiRlE/WB+iIw+A9/Kcg//XFxWeGouV+5
	XRUQ==
MIME-Version: 1.0
X-Received: by 10.220.103.141 with SMTP id k13mr16483473vco.25.1403825944271; 
	Thu, 26 Jun 2014 16:39:04 -0700 (PDT)
Received: by 10.52.234.105 with HTTP; Thu, 26 Jun 2014 16:39:04 -0700 (PDT)
Date: Thu, 26 Jun 2014 16:39:04 -0700
Message-ID: <CAFeBWL4p+pD1bEhjfQNVWLUowd1FmQOc7Y5m4845462yJ22OFw@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
To: "openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Installing RPM packages in SDK sysroot
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
X-List-Received-Date: Thu, 26 Jun 2014 23:39:09 -0000
Content-Type: multipart/alternative; boundary=047d7b342d30bc206304fcc5b222

--047d7b342d30bc206304fcc5b222
Content-Type: text/plain; charset=UTF-8

Hello everyone, in the section 4.2. Configuring the PMS of the Yocto ADT
manual, it describes adding packages to a target sysroot using OPKG. This
method works well as documented. However my choice of package manager is
Yocto's default - RPM. And I was not able to successfully install RPM
packages in the SDK sysroot.

Ultimately, I think installing RPM packages using SmartPM fails because the
list of installed packages is not included in the SDK sysroot. A deployable
image contains a file called Packages in /var/lib/rpm. The SDK sysroot does
not have this file and shows 0 installed packages when I run `smart stats`.
Note that when I am using OPKG instead of RPM, I have the equivalent
package index file in /var/lib/opkg/lists for both sysroot and deployable
images.

I can still attempt to install a package, but it quite literally wants to
rebuild the entire rootfs. For example, running `smart install opencv-dev`
warns that it has to install 400 packages. These packages include
base-files, bash, m4, make, python-dev etc.

So this makes me think that either RPM is not supported in SDK sysroot or
the feature is incomplete. It's also possible that I have missed an
important detail.

I will be looking into the sdk class and the package manager class to see
what's really happening. In the meanwhile I'd appreciate if someone can
provide some pointers!

Thanks,

Adam

--047d7b342d30bc206304fcc5b222
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone, in the section 4.2. Configuring the PMS of=
 the Yocto ADT manual, it describes adding packages to a target sysroot usi=
ng OPKG. This method works well as documented. However my choice of package=
 manager is Yocto&#39;s default - RPM. And I was not able to successfully i=
nstall RPM packages in the SDK sysroot.<div>
<br></div><div>Ultimately, I think installing RPM packages using SmartPM fa=
ils because the list of installed packages is not included in the SDK sysro=
ot. A deployable image contains a file called Packages in /var/lib/rpm. The=
 SDK sysroot does not have this file and shows 0 installed packages when I =
run `smart stats`. Note that when I am using OPKG instead of RPM, I have th=
e equivalent package index file in /var/lib/opkg/lists for both sysroot and=
 deployable images.=C2=A0</div>
<div><br></div><div>I can still attempt to install a package, but it quite =
literally wants to rebuild the entire rootfs. For example, running `smart i=
nstall opencv-dev` warns that it has to install 400 packages. These package=
s include base-files, bash, m4, make, python-dev etc.=C2=A0</div>
<div><br></div><div>So this makes me think that either RPM is not supported=
 in SDK sysroot or the feature is incomplete. It&#39;s also possible that I=
 have missed an important detail.=C2=A0</div><div><br></div><div>I will be =
looking into the sdk class and the package manager class to see what&#39;s =
really happening. In the meanwhile I&#39;d appreciate if someone can provid=
e some pointers!</div>
<div><br></div><div>Thanks,</div><div><br></div><div>Adam</div></div>

--047d7b342d30bc206304fcc5b222--
