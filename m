Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A65DE01409
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 22:13:20 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so748076pdj.17
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 22:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=vbYRIG/vse0poxfgck5BECB/A0ghVKMRQT6bmF/0/tw=;
	b=M8oK2MKIK34rFtFnYY3cNkcKk3JCZOJkbhrngwsSWhPrRUF53IlqRKiZJ76R3r0ESh
	7s81c7gh4GjZs13/RAkMHpETam2YKOfTL/8JCp50lQGYoufEiQaWGyu4j9PMUgNEumXF
	23NJo4x3JLqPFixFTfBOxplsl5hfwlmDLq/0hvtyNmQcFYMNZRO92q4tGmvkkzOBvpAu
	0O80jAukD4F6ZeUhdUKb9AjfRk0Y9pUlwOVj+71SiiS/xYCfijfj/71Wm1Re5qOsAB8U
	bvb7aS5nrhl5vTDdpJ3Y+PWCJnXmvi/lvDcgRds5LeuZwzLaYhJpAjz9eY9p3XSdGPP0
	p4yA==
X-Received: by 10.66.224.73 with SMTP id ra9mr5505171pac.163.1372914800185;
	Wed, 03 Jul 2013 22:13:20 -0700 (PDT)
Received: from kosborne-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id mr3sm1277705pbb.27.2013.07.03.22.13.18
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 03 Jul 2013 22:13:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALmOhgkzZGa2YDYpkC7znMAikeJJGubUUMWnGv8gwUwaRNBoLw@mail.gmail.com>
Date: Wed, 3 Jul 2013 22:13:19 -0700
Message-Id: <FA8AB326-A1B9-4F57-AF8F-E89B3B78AE01@gmail.com>
References: <CALmOhgkzZGa2YDYpkC7znMAikeJJGubUUMWnGv8gwUwaRNBoLw@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate-cache clobbering
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
X-List-Received-Date: Thu, 04 Jul 2013 05:13:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 3, 2013, at 10:06 PM, Trevor Woerner <trevor.woerner@linaro.org> =
wrote:

> Let's say I have two build machines (A and B), both running the exact
> same version of a given distribution. Also assume both machines have a
> fully populated "downloads" directory but otherwise have not performed
> any OE/Yocto builds.
>=20
> On machine A I perform a fresh "bitbake core-image-minimal" and end up
> with a sstate-cache of 733MB and I receive a message saying 324/1621
> tasks didn't need to be (re)run.
>=20
> I then take this sstate-cache directory, copy it to machine B and
> perform a "bitbake core-image-minimal". This build takes under 5
> minutes, and didn't need to run 1374/1621 tasks.
>=20
> So far this makes good sense. The sstate-cache is getting hit quite a
> lot and the performance of the second build shows considerable
> improvement (relative to the first build on machine A) to reflect this
> fact.
>=20
> Now I wipe machine B then get it ready for a fresh build (i.e. put the
> "downloads" directory in place, make sure it has all the necessary
> host packages, etc). Then on machine A I perform a "bitbake
> core-image-minimal -c populate_sdk". Now, on machine A, I end up with
> a sstate-cache that is 1.6GB in size. I take machine A's 1.6GB
> sstate-cache and copy it to machine B. Then on machine B I perform a
> "bitbake core-image-minimal".
>=20
> I would have expected this build on machine B to take the same "under
> 5 minutes, and didn't need to run 1374/1621 tasks". But instead I find
> this build takes 27 minutes and only 781/1621 tasks didn't need to be
> run.

hmm you need to compare signatures( bitbake-diffsigs is your friend),
may be there is a variable that should be added
to ignore list which is causing unnecessary rebuilds.

secondly, why are you copying sstate, set up a nfssever/http on machine =
A
and let it server sstate to machine B via NFS or http


>=20
> Doesn't it seem strange that a larger sstate-cache involving the same
> base image has such a lower sstate-cache hit rate?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


