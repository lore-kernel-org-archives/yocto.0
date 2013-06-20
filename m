Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A00E01400
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 19:06:25 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id jt11so5606923pbb.8
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 19:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=trkud65Zu82oWrSiWHtDT3h4mmFPllHoGUsYVPkr6n0=;
	b=WH5i/GzsWiWh8Y32IDpYnXkdpq7aTJu+5RRSmCHB20eIbK+QhLB2wLkTohIrg5lk7V
	WK6I6LkE8TvREnlQRA/9DIr+u9qt4g9rB/fC00TBc6/0OTdnMeVNgw3M4Bh1iycafVIA
	SiOodLFpOQgoZUCyIV1QZAJVmmZ8mM35tK2XnCn3rH31TxfRXPAAKYfTTILEFTV8T3qP
	wYF7mvcMplj8bxz03ev5BMqWcUeMNbVpRzqIFVxzkUG79eDciJJmWhijTqtWSAnE0PqM
	P3jnJAs1X1V+5lxlPjxoa6gro9E6xRz+4dyNK+4MVhNE9KMTEax/IC75vZ4I3PQWmTZO
	FRcg==
X-Received: by 10.68.211.36 with SMTP id mz4mr5221977pbc.191.1371693985465;
	Wed, 19 Jun 2013 19:06:25 -0700 (PDT)
Received: from bjupudi-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	qp4sm25434461pbc.41.2013.06.19.19.06.24 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Jun 2013 19:06:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
Date: Wed, 19 Jun 2013 19:06:22 -0700
Message-Id: <F99A80BE-ADC7-482B-95F6-F73A06409EAD@gmail.com>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing .deb file in Build
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
X-List-Received-Date: Thu, 20 Jun 2013 02:06:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Jun 19, 2013, at 12:10 AM, DAMARLA Satya Swaroop =
<swaroop.damarla@gmail.com> wrote:

> Hey,
>=20
> I have a .deb file which has to be installed. It installs properly on =
the target image but I want to install it at the build itself by =
creating a bitbake recipe.. Is it possible to install .deb files or not? =
If possible, please suggest me so that I can make it..
>=20


you can extract the contents of  deb by something like below

ar p <debfile> data.tar.gz | tar -xvz=20


> Greets,
> Satya
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


