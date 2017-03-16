Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB809E0098A; Wed, 15 Mar 2017 23:21:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4471E0094C
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 23:21:40 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id f84so35460508ioj.0
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 23:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=26wWklWf5Ao2ZaW7x97AHAqljxUd99sP7Gp4ykotMN4=;
	b=c6QnLWZ3/2CsizX3nDXLd1SNh+l7TjyHa3tsCwaNcf9y+g23TphLaDlCUV9DMBY5JR
	LentBqtZi9OBnukhezeLgOK7TIg08BiB8LyHDh3bz2mimKV+wHXcHmODvAuC1Rv8fTFc
	SZ0X9M+nD0Fhr99qkhyTvvVkT3+r2Wjj05+8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=26wWklWf5Ao2ZaW7x97AHAqljxUd99sP7Gp4ykotMN4=;
	b=j0Faeq3wlZh2pdHSCeg1Ulk3oPwvDBUqEBSXaP6SYcVeCiSIJsWUtboSSx+xZZD6+B
	2lQmRg8amY3W/HkJIDqnlhvG5SGoM5EMV2WEKmOr4545lGutxr4ZWnkt6SPxZ/14yy/r
	/mNxCMi8GpJ0k4TbzV9rESf+vFnbj23pLMS+JBiaLiAj/qOtsvxT0MGaHbN9A14zQFlj
	ONoLvdzoj2kIIlTq94kJgjSF1znGwoOl8cib96+9pNnDlzAF20pUFuj6kJOqEIMTPU9j
	aK/KJ5vYQfr7K6NncOo4NhUYIVr9XblnqFmNUwEXovoJLUcFj+AeeMRRmkg9lSlpcXtZ
	hHLw==
X-Gm-Message-State: AFeK/H1OswIOqpQvH/Rcx8KvmMB6cUouZT1nLGDbWjwCWmPs6Ds7OWaGb50eua3xX3fVoVWxMjHXRGZRgUwG2Q==
X-Received: by 10.107.154.202 with SMTP id c193mr104042ioe.109.1489645299205; 
	Wed, 15 Mar 2017 23:21:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Wed, 15 Mar 2017 23:21:38 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Thu, 16 Mar 2017 11:51:38 +0530
Message-ID: <CALDHXtcQ6W_b8YtpsQyGNy+zx0ycDXEG9ADNmfu+TxKfVy2E2w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs:
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
X-List-Received-Date: Thu, 16 Mar 2017 06:21:42 -0000
Content-Type: multipart/alternative; boundary=001a1140e944e6a6c1054ad312c0

--001a1140e944e6a6c1054ad312c0
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I am able to build the* core-image-minimal-xfce* image with *rpm *package
management but ,
if i change the package-management from* rpm to deb* in local.conf file  i
am getting followling errors.




ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs: Unable to install
packages. Command
'/home/kamama-yocto/yocto/poky/build-xfce-deb/tmp/sysroots/x86_64-linux/usr/bin/apt-get
install --force-yes --allow-unauthenticated packagegroup-xfce-base
packagegroup-core-boot run-postinsts kernel-modules packagegroup-core-x11'
returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 packagegroup-core-x11 : Depends: packagegroup-core-x11-utils but it is not
going to be installed
E: Unable to correct problems, you have held broken packages.

ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/kamama-yocto/yocto/poky/build-xfce-deb/tmp/work/odroid_xu3-poky-linux-gnueabi/core-image-minimal-xfce/1.0-r0/temp/log.do_rootfs.162762
ERROR: Task
(/home/kamama-yocto/yocto/poky/meta-openembedded/meta-xfce/recipes-core/images/core-image-minimal-xfce.bb:do_rootfs)
failed with exit code '1'



How to solve this problem ?

--001a1140e944e6a6c1054ad312c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everybody,<br></div><div><br>I am able to build th=
e<b> core-image-minimal-xfce</b> image with <b>rpm </b>package management b=
ut ,<br></div><div>if i change the package-management from<b> rpm to deb</b=
> in local.conf file=C2=A0 i am getting followling errors.<br><br><br><br><=
br>ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs: Unable to install packa=
ges. Command &#39;/home/kamama-yocto/yocto/poky/build-xfce-deb/tmp/sysroots=
/x86_64-linux/usr/bin/apt-get=C2=A0 install --force-yes --allow-unauthentic=
ated packagegroup-xfce-base packagegroup-core-boot run-postinsts kernel-mod=
ules packagegroup-core-x11&#39; returned 100:<br>Reading package lists...<b=
r>Building dependency tree...<br>Reading state information...<br>Some packa=
ges could not be installed. This may mean that you have<br>requested an imp=
ossible situation or if you are using the unstable<br>distribution that som=
e required packages have not yet been created<br>or been moved out of Incom=
ing.<br>The following information may help to resolve the situation:<br><br=
>The following packages have unmet dependencies:<br>=C2=A0packagegroup-core=
-x11 : Depends: packagegroup-core-x11-utils but it is not going to be insta=
lled<br>E: Unable to correct problems, you have held broken packages.<br><b=
r>ERROR: core-image-minimal-xfce-1.0-r0 do_rootfs: Function failed: do_root=
fs<br>ERROR: Logfile of failure stored in: /home/kamama-yocto/yocto/poky/bu=
ild-xfce-deb/tmp/work/odroid_xu3-poky-linux-gnueabi/core-image-minimal-xfce=
/1.0-r0/temp/log.do_rootfs.162762<br>ERROR: Task (/home/kamama-yocto/yocto/=
poky/meta-openembedded/meta-xfce/recipes-core/images/core-image-minimal-xfc=
e.bb:do_rootfs) failed with exit code &#39;1&#39;<br><br><br><br></div><div=
>How to solve this problem ?<br></div><div><br><br></div></div>

--001a1140e944e6a6c1054ad312c0--
