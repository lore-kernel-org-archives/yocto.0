Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88ADE01575
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 22:59:52 -0800 (PST)
Received: by mail-pb0-f47.google.com with SMTP id rr4so140906pbb.6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 22:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=tMdLDclP+4ZFD8WfxlM1MQEZUX5TNWCgMydF8Rd6wnQ=;
	b=c+xv+KN2bFgEKhu2Qqt6VkgNp/dHP7CQnaSG9qndbGw8edxph0+25J7S9KJUNJtq7a
	CWKM2Dopw1chf3ZeOghEy91xBHNILsoBV9hwwMsqQ56Tj9dtOqhR4FRTW8s3NsnCo1qe
	X05cHo7mi099MgZlcoEuOkssPE9DclwsVupRg5mLUYFJ9GrLrVi9QXWpABplgpZK1Vl/
	EzxC766OSgW8KZ0okQxKa0MxoAbpLwP3OoFwip+NZsFyhhxLjno/Xeqb49cIT7HRazVI
	n8CQh/Wxux8NYwZdqigNdPuWPKZ4/MC2MZDEoUHcSrRGqlpyG6OBhw7Q9nUWaXzNXw6r
	k86A==
X-Received: by 10.66.248.202 with SMTP id yo10mr5977478pac.177.1384412391520; 
	Wed, 13 Nov 2013 22:59:51 -0800 (PST)
Received: from kraj-sslvpn-nc.jnpr.net ([66.129.239.14])
	by mx.google.com with ESMTPSA id
	sd3sm49168643pbb.42.2013.11.13.22.59.50 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 13 Nov 2013 22:59:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.0 \(1822\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <52845CCD.6040901@benjammin.net>
Date: Wed, 13 Nov 2013 22:59:48 -0800
Message-Id: <CCE692CB-5E6D-49F6-8742-7FCBB8FCC843@gmail.com>
References: <52845CCD.6040901@benjammin.net>
To: ben <ben@benjammin.net>
X-Mailer: Apple Mail (2.1822)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Stalled with setting up Yocto 1.5 on CentOS 6.4 with Python 2.7.3
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
X-List-Received-Date: Thu, 14 Nov 2013 06:59:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On Nov 13, 2013, at 9:17 PM, ben <ben@benjammin.net> wrote:

> Hi all,
>=20
> This is my first foray into embedded linux Yocto-Style.
>=20
> I've got an RPM for Python2.7 installed that doesn't trash my system =
(which needs 2.6.6).

which one is default o system when you call just 'python'

>=20
> But the initial 'source oe-init-build-env' doesn't work=85


be explicit about errors, and attach them to your post so folks can get =
a better idea
to help you.


>=20
> Google is not helping me find a definitive page to instruct getting =
around this (looked on wiki too).
>=20
> Little help?
>=20
> Thanks
>=20
> --=20
> ben@benjammin.net
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


