Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D510BE013DA
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 22:16:22 -0700 (PDT)
Received: by mail-pd0-f176.google.com with SMTP id q10so1051032pdj.35
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 22:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=B6MdTTL95L1k9/dqTx+JrQ0plh6/hWQ2A3TjNIPEBUE=;
	b=QrA0ud0wkqnYU/cvxVM4hwxMhyR857qcVZwj5P6S3zZVBZyhJzIKr37BaQ7n8JlNJJ
	jf7j22uNWvkayYFOIjh9z4rpsw7vZcFLOz2JG6Y5tejhKh0CY3dUQojnJqRrpvKHfy/J
	y7boKP2VneZj2hxpHylVQ2+VpSYbQywYNRa2hYLrM3g6Ngl6YKz5Q9N5SpZyOz21bcaM
	qWiMfs+S+qbB75Fkp03Ey996ZK4AcEvbskuOC41rAsjvTPlwOf0RCfpF6r9rRX02TI5D
	2okNb3kZaVTVECCYbOhsRC+L0MdLq5sU9Lzv7gXCbaKtpTC4aX91DW5Li88r8jB7tQdt
	f8zQ==
X-Received: by 10.66.156.229 with SMTP id wh5mr667604pab.156.1376889382683;
	Sun, 18 Aug 2013 22:16:22 -0700 (PDT)
Received: from sa-nc-finance-109.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id y6sm12649540pbl.23.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 18 Aug 2013 22:16:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5211843D.5060805@gna.org>
Date: Sun, 18 Aug 2013 22:16:29 -0700
Message-Id: <99393E6E-364E-486D-AAB3-6EB66BB9BF72@gmail.com>
References: <5211843D.5060805@gna.org>
To: Christian Gagneraud <chgans@gna.org>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: GCC SVN repo too slow?
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
X-List-Received-Date: Mon, 19 Aug 2013 05:16:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 18, 2013, at 7:34 PM, Christian Gagneraud <chgans@gna.org> wrote:

> Hi all,
>=20
> I'm having problems with the GCC SVN repo being so slow to checkout, =
that svn failed (and so my build too).
> I first suspected the proxy we have here, but i tried a checkout from =
an outside machine (but still in New Zealand) and it seems the problem =
comes from gcc.gnu.org.
>=20
> I am using the arago layer, which requires =
svn://gcc.gnu.org/svn/gcc/branches;module=3Dgcc-4_5-branch;protocol=3Dhttp=
 for gcc-crosssdk-intermediate.
>=20
> By slow, I really mean slow: 1 to 2 files are checkout per second!?!
>=20
> Has anyone encountered the same kind of problems?


thats a known issue and one of pressing reasons to not use svn version =
on later versions if you see new recipes
best case you could hit a mirror from yocto project and download the =
source mirror

>=20
> Regards,
> Chris
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


