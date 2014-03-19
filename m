Return-Path: <jonatan.magnusson@gmail.com>
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D41BE003C7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:40:48 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id q8so6190423lbi.28
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=nWipU3HG2k8nrJIaGLWrikeN1wflUTxXiP14xdfgML8=;
	b=BV8wKUb7bxSnAyrSHss/DfYMBm0J8KcQyH93wwQGuMRuCDQJqb2gkf0Y52tu2rNDX1
	O9tCaUhpTlwjEv3QnbGHToVLMOOpiCJ/RloA9R+YspHYQxvvt92T0I6Q3McIxwiQHHGA
	1OBNHY/OGbjXeL3En17Gl0+vxhwRYN28Om8c9iaxEKnGmieEX5+uvWtK2sE2FeZuc5bz
	C1e7vNXmxMRRV5VVhrW5gIdT9snq4IFrHfVNCI2zZhPzcrl9u1egHje353sSZbpY8+j1
	/g6ehHc2VoKQxZRBbceh5tnTxCuPIMkJF0OnJFS/VXlV13ClGmRRhI9z413bt4FimzfQ
	T1BQ==
X-Received: by 10.153.4.134 with SMTP id ce6mr26018226lad.21.1395243647572;
	Wed, 19 Mar 2014 08:40:47 -0700 (PDT)
Received: from [10.11.100.103] ([83.233.227.60])
	by mx.google.com with ESMTPSA id mk5sm20229078lac.6.2014.03.19.08.40.46
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Mar 2014 08:40:46 -0700 (PDT)
From: Jonatan Magnusson <jonatan.magnusson@gmail.com>
Message-Id: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
Date: Wed, 19 Mar 2014 16:40:45 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
Subject: Missing Python modules on target
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
X-List-Received-Date: Wed, 19 Mar 2014 15:40:49 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Hi

I am trying to use Python on my target.

I added =94python=94 to IMAGE_INSTALL. But then the "base64" module was =
not installed.
Very well, I added =94python-modules=94 to IMAGE_INSTALL, and now =
"base64" was installed.

But now "wsgiref" was missing. As far as I can see the only modules and =
packages that are/can be
installed are the ones listed in =
=94meta/recipes-devtool/python/python-2.7-manifest.inc=94 and =94wsgiref=94=
 is not
mentioned there.

What to do?

Is =94wsgiref=94 left out because it is incompatible with Yocto for some =
reason? Or can I add it myself in some way?
Is there perhaps a way to install *all* modules/packages of the Python =
standard library? Disk space is not a problem.

Regards,
Jonatan Magnusson=

