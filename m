Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23912E00747
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 03:23:23 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so2343625wgb.11
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 03:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=GhqOhvmDOFCICGgrroVWbmH+sPjqHgWYXuvLrK84MwU=;
	b=QxvBSR58E/6Q+wp2ISwE7p5ucLnUwN/1qGgWU1TUaqj+zG9fYSEpcdPExy4Pe7he42
	RQgbntJQ155cH2xsWo0cTz/80pQDjG/Plyx4SRtFUR99SWupwZlKvujiBG2E8Cy60TLl
	yvLMiIThImvvTBdo3q3ClSduWt0c/Qk4eRfMAqOda4zs59pus8juNuFZS620XZlnn332
	Qz+eOWISE8pVxmsKOjvr9AScqEiDWSoF9hF86fws2xjGFqMammGYg100NzuRXauiRhGl
	di+Ne6y9L1mExJeHvdXaILC1yXMCl+vdxifdz0wyFdWCmkQk8ihmvA58XHul1HoK7Gaz
	zHnQ==
Received: by 10.216.133.130 with SMTP id q2mr664332wei.24.1334312602903;
	Fri, 13 Apr 2012 03:23:22 -0700 (PDT)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id fl2sm6490732wib.2.2012.04.13.03.23.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Apr 2012 03:23:21 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F87F85F.8060108@r-finger.com>
Date: Fri, 13 Apr 2012 12:23:18 +0200
Message-Id: <A79CF0E1-B974-43C9-8BF3-5F921A0E1C2B@dominion.thruhere.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <4F87F85F.8060108@r-finger.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQk8wO6xBFEhWwtodKUwO+7raAP3Ib5pAOoKm6kXrj1R8KetOV94+KOUUDF0bART8BzztojC
Cc: yocto@yoctoproject.org
Subject: Re: Build time data
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
X-List-Received-Date: Fri, 13 Apr 2012 10:23:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 13 apr. 2012, om 11:56 heeft Tomas Frydrych het volgende geschreven:

> On 12/04/12 01:30, Darren Hart wrote:
>> Next up is storage.=20
>=20
> Indeed. In my experience by far the biggest limiting factor in the
> builds is getting io bound. If you are not running a dedicated build
> machine, it is well worth using a dedicated disk for the poky tmp dir;
> assuming you have cpu time left, this leaves the machine completely
> usable for other things.
>=20
>=20
>> Now RAM, you will want about 2 GB of RAM per core, with a minimum of =
4GB.
>=20
> My experience does not bear this out at all; building Yocto on a 6 =
core
> hyper threaded desktop machine I have never ever seen the system =
memory
> use to get significantly over a 2GB mark (out of 8GB available), doing
> Yocto build using 10 cores/threads.

Try building webkit or asio, the linker will uses ~1.5GB per object, so =
for asio you need PARALLEL_MAKE * 1.5 GB of ram to avoid swapping to =
disk.=

