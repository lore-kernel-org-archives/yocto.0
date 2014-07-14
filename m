Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78DEAE006C4; Mon, 14 Jul 2014 08:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34AEEE0030A
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 08:39:41 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id a108so3445626qge.2
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 08:39:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=WIxTW8OQ35m/4R3eZNZU+m0d7KiGBY0pEHJC2Djvxu8=;
	b=iiZSCkKWm0nqWgTBAyQXNNa6EAMvC+gW/kLKXJ53FY0Vu9gHfqeixhPaX2WZMZ34BO
	KFIMNoQ7iSVSkZsD18lFljGtRkAY+IB4WdiW/w/pwDTwViLEzf2tRd40IIYiv373dwSw
	de4rtofj0D54Jr45ZBV/mbbzj9RIhd2bJQrcUUkgwkTBLBlr5YtDvJQ9u1635UmGgWDr
	iLHOk5J7a6/heinHo4Vxu6luAxPkPYnUVEVvg+gqELSOeD4lp5pfFvtv8xcgdBHE4+s0
	xZzCmuulAeHUqF/Mgs2LQsCazFgi0ZdnwtQhR26eAeJV/Rdc09gdRbxg6YqvCPng6zeq
	+eUA==
X-Gm-Message-State: ALoCoQm+ipy+gNkVuTVjMtDOHgu6aSJ3Xyw4g18zc3AZUkL9hBnwfe6u7jJRjM+JHPmX1G6gPAjE
X-Received: by 10.140.89.197 with SMTP id v63mr24575988qgd.71.1405352380508;
	Mon, 14 Jul 2014 08:39:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Mon, 14 Jul 2014 08:39:19 -0700 (PDT)
In-Reply-To: <CAF_dkJD6GAqN3+Q1weyYO+9QGn-QP2m271AwXtQEN7z_=-RQHg@mail.gmail.com>
References: <CAF_dkJC4ZFULv93=PFhC-ZwO6Vp058OBZ1nDmLGyce4WFS=9rA@mail.gmail.com>
	<CAJTo0Lai=JgicnNi9U=UneTKGHsHrE=bR5BC7JDu3-6OnkoVLw@mail.gmail.com>
	<CAF_dkJD6GAqN3+Q1weyYO+9QGn-QP2m271AwXtQEN7z_=-RQHg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Jul 2014 16:39:19 +0100
Message-ID: <CAJTo0LYAZVQ-BQXv-jXDdVRjVT3=OkYMBTi=Lgo0vpfoXwqTwQ@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Make autotools use autogen.sh
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
X-List-Received-Date: Mon, 14 Jul 2014 15:39:50 -0000
Content-Type: text/plain; charset=UTF-8

On 14 July 2014 16:31, Patrick Doyle <wpdster@gmail.com> wrote:
> a) do_compile fails because make depends on INSTALL, because INSTALL
> is listed in the aravis_DATA list in Makefile.am.

That's silly.  Why would you ever need the install instructions to be
installed?  Personally I'd patch that out and send it to them.
INSTALL is implicitly included in tarballs and there's no purpose in
installing a generic installation document.

> b) It appears (subject to further investigation) that autoreconf
> --install doesn't create the INSTALL file because it is passed the
> --foreign flag (whereas autogen.sh passes the --gnu flag to automake).

That's right, for historical reasons we patch autoreconf to always use
automake --foreign.  It would be interesting to see if that isn't
required now.

> I'm going to continue poking around and see if there is some sort of
> OE_USE_GNU_INSTEAD_OF_FOREIGN flag I can set in my recipe :-)  In the
> mean time, I have established that I can override do_configure (for
> this specific case) with:

Sadly there isn't a flag to control the --foreign being passed to
automake in autoreconf.  If you don't want to patch out the mention of
INSTALL in the makefile, consider simply using do_configure_append()
to touch ${S}/INSTALL.

Ross

