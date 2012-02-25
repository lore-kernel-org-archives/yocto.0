Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2F9EE00AFC
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 08:00:57 -0800 (PST)
Received: by pbbrp8 with SMTP id rp8so2746808pbb.35
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 08:00:57 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.135.10 as permitted sender) client-ip=10.68.135.10; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.135.10 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.135.10])
	by 10.68.135.10 with SMTP id po10mr16616550pbb.121.1330185657841
	(num_hops = 1); Sat, 25 Feb 2012 08:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=s6hj+TXiq9yT/vDHs6yFaFPw2BcLoMp96yKil1494hY=;
	b=JaO40k0sfhhlU/xtz0+shBL7TYBhrVf3eOOs9994QaG2+HxmF2EuAl3F5otVRNKjBx
	Ge0n5hJzllnpxVDkxfAdzenKqkgJ9SpKr8zaK4S8o4rcw4D56iPVLDZUazy39tIvbBV3
	0nSywoa/ml/IMT+Xl1fVDjKjAprddYq/UYYKQ=
MIME-Version: 1.0
Received: by 10.68.135.10 with SMTP id po10mr13860876pbb.121.1330185657788;
	Sat, 25 Feb 2012 08:00:57 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Sat, 25 Feb 2012 08:00:57 -0800 (PST)
In-Reply-To: <CA+mikA8JgrtBFKJ0uTaAtpEWbdru59z_FbXDV=YvTk=+ahtacQ@mail.gmail.com>
References: <CA+mikA8JgrtBFKJ0uTaAtpEWbdru59z_FbXDV=YvTk=+ahtacQ@mail.gmail.com>
Date: Sat, 25 Feb 2012 11:00:57 -0500
Message-ID: <CADzUK1K+3VbBDT1j_aNYfzG=RHXOmaAbRBSHqwVpTqnkwhPVAg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: JINGZHE YU <jingzhe.yu@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: apt-native_0.7.14.bb failed
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
X-List-Received-Date: Sat, 25 Feb 2012 16:00:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> Hi,
>
> I tried to build image with:=A0bitbake -k core-image-sato,
> with=A0http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-ed=
ison-6.0.tar.bz2
>
> but it failed, here is error message:
>
> -------------------------------------------------------------------------=
------------------
> NOTE: Running task 5229 of 5288 (ID: 82,
> /home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/apt-native_=
0.7.14.bb,
> do_install)
> NOTE: package apt-native-0.7.14-r5: task do_install: Started
> ERROR: Function 'do_install_base' failed (see
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.1=
4-r5/temp/log.do_install.28773
> for further information)
> ERROR: Logfile of failure stored in:
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.1=
4-r5/temp/log.do_install.28773
> Log data follows:
> | oe_libinstall: cd bin
> | oe_libinstall: install -d
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.1=
4-r5/image/home/jingzhe/yocto/edison-6.0-build/tmp/sysroots/i686-linux/usr/=
lib//
> | ERROR: oe_libinstall: unable to locate shared library
> | ERROR: Function 'do_install_base' failed (see
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.1=
4-r5/temp/log.do_install.28773
> for further information)
> NOTE: package apt-native-0.7.14-r5: task do_install: Failed
> ERROR: Task 82
> (/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/apt-native=
_0.7.14.bb,
> do_install) failed with exit code '1'
> ERROR:
> '/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/apt-native=
_0.7.14.bb'
> failed
> -------------------------------------------------------------------------=
-------------------------------------------------
>
> does anybody know how to solve it?
>

To help understand the context, can you please include the the MACHINE
variable. Its in conf/local.conf

