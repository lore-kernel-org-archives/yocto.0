Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97391E009AC; Wed, 24 Aug 2016 11:54:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-yb0-f173.google.com (mail-yb0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41FDBE00815
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 11:54:17 -0700 (PDT)
Received: by mail-yb0-f173.google.com with SMTP id z10so8787632ybh.2
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 11:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=0pWWIsKLcekucHAc+cb7ieZDeWzBiataTHHfYaDuRqE=;
	b=O8srkiqrhwqbVAklMrR4Kc6HOUr2KAb9o0lfx2XkJ9hZf0f6kdCESRGU2nNa5KiLh+
	4BuIu/mtTt2zZ38ARJ/K/47cDdMR+4Vtg9c5wGP1E6435rKXuSurHZrZhmz1T2jjQCH/
	9maN9D1OsNfBGUaS3ZqwexTRptzxBRpsTj4zAzNpBxIC2+jczP3knoPvHsJbo++w6OWY
	JiDlEBOHMaA0H7zbNwlDaCFaVPyM1O4KTtGknxMH30oaShgNBboLYuoljq3B1Wegk96c
	Ml04atAMb/vfn7Y5xGxaZDp+Mt1mgjs6k4KiDm+ebwIooM64WG4OTiaeJMnNNoB42OLG
	nBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0pWWIsKLcekucHAc+cb7ieZDeWzBiataTHHfYaDuRqE=;
	b=XDUs2OduwkpHTdorJWv6tZ8NqJnRZB0oHXgaKC2qoJKypF7Lghd2kumeBrXyOxf9Rb
	JEw3SW2zR97avCt6nVGMduTVhM+8+SqnWky8G2Zk0gUxvHLQUUWN1xcT1MWb/RSkr3kB
	iGseUftwRxvJ8f8PM50nRH8KR20eaZDocuMAwSVhksIOnL+axODLm3r2EWqYcVwcyZre
	oPEMXCXy67QabMK/NW8Kkin9J20eeLsyuYVm7qac/NwDmU4MnYopBsikm3kUrnATIEcT
	mvhjmWt8TguLk4IKrCEObR+5Iha99WahSqefatVN5ecFCrLUphMrpQXKFeRufN2natvk
	fOmA==
X-Gm-Message-State: AEkoouu9GRrmrWnjSp8oNU0MZoW/OLe0w9XLmmJbJv58tuvr5OM6YLOWQQ7undtwv9Obf6OxDfCNezBjXwLyXQ==
X-Received: by 10.37.219.6 with SMTP id g6mr3558640ybf.180.1472064856317; Wed,
	24 Aug 2016 11:54:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.86.70 with HTTP; Wed, 24 Aug 2016 11:54:15 -0700 (PDT)
From: Michael Habibi <mikehabibi@gmail.com>
Date: Wed, 24 Aug 2016 13:54:15 -0500
Message-ID: <CAOsp8o8fjX4eV3fwYHuN6QdXMN3ANi7K2ZRXDPHxrNBQ+TgVeQ@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Building applications and distributions separately, but integrate into final image
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
X-List-Received-Date: Wed, 24 Aug 2016 18:54:19 -0000
Content-Type: text/plain; charset=UTF-8

All,

I am looking at Yocto as a replacement for our embedded distribution.
Currently we build everything as a distribution. This includes
building the Linux kernel, open source packages, as well as our own IP
and applications.

As you can imagine, a vast majority of our build is taken up by
repeatedly building distribution components and not our actual IP,
which is a majority of what changes day to day.

In moving to Yocto, my first plan was to create all the necessary
layers and separate out what changes from what doesn't (in fact much
of what doesn't change is already included in Yocto or the many
freely-available layers online).

However, this would still require application developers to have to
learn and use Yocto to build the entire distribution. Ideally, I'd
like to separate the applications from the main build, so that
application developers have to learn less about Yocto, and more
importantly, save on build time when they make their changes.

I am exploring exactly how I can use the available SDK options as a
solution. If I create an image with the base distribution and required
applications, I'm wondering if I can create a separate tree for the
application developers. They would then build that entire tree with
the yocto SDK. I haven't quite figured out yet how I can then
integrate their applications into the Yocto image, and prepare it for
deployment. I'm also unclear how we can define new dependencies if the
base distribution is pre-built. For example, if we introduce a new
dependency (our custom application now requires zlib, for example), it
doesn't seem for there to be a way to then ensure zlib is built into
the final image with the SDK option.

Unfortunately, we can't build the distribution and then install the
applications directly onto the target. Based on how our codebase is
currently designed, it requires a fully-complete image to be installed
on the target as a whole, and not piecemeal. This is why I need to
integrate on the host/build environment first before we create the
deployable image.

Can anyone share any workflows that they use that may fit with what we
need? In the mean time I am continuing to play with Yocto and the SDK
to see what else I can come up with.

Thanks all for your time.

