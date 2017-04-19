Return-Path: <martin.marcantoine@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFE5BE00B5E; Wed, 19 Apr 2017 09:55:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.marcantoine[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F78AE00B28
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:55:25 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id r190so27784958wme.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5hu738hVsNtAcymXd0LFhytEyJgpLUxpqFJi8ur8rKk=;
	b=jbYI37Ro5GbkojeP4zBBnrgVmGMW1WaQ+4UR4rZcKXvIAcfr00pIOSfYPCjllOtrlx
	YOuxuyONJZNy/FchEI1zTL2lVqXqi8cYZFiHeoWavzD6GCFAjap+oko4ctZ2e4cmrKEh
	9NQAjurYxo0Pv5mCCtYDsUC8XhRsPFNp5zuSoUNqQCh4kE05gpPrXyknF5fnJ9JUiIsw
	2YUYMxHyJwK3VlatjE4auQDSOgcSop77gjvByxhNCU7PHnUH9A23oobrABYYC/GLLY9T
	7x8YaVf6HceY7Uyx+cl83wgihsqDgpuBzDNJozI1GMYk6IO1SQpcd3fQlSt+R8mBtCR5
	ngLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5hu738hVsNtAcymXd0LFhytEyJgpLUxpqFJi8ur8rKk=;
	b=fCOXBptKYcDSvuRDEy242mBBFVpUHzr3mRKpC7nLkooUKrzaELPFRl1RgeFyBYSt6H
	yKSGb6aNlNowX9RB2IaYXcbvuNcjmqx0oPzbWMAXvTBJ7+PS3uQP0j3UCG4UT5jln8rj
	V6gNoWKCcSknhzuSP7fOF+V+HMDLjEsGNMWyYrzd/0Uz5xBmjvcQZah6YvKk79l3YpJf
	Dl+dh4opLwZ7mGPKB08RV1NOhFI+rgSO+v2vY2N1z+nkZuByaeFWYSiA6zGzIQWAT4sT
	WvbXBh6yNjC5dbZMTqwsqHQG6WM4WXaxgczW6SO9eMmyk2Iwfp6PZ8d3MJFKLLNzACmQ
	iP4Q==
X-Gm-Message-State: AN3rC/4b4iBEVlmhSfQT6p5E1Ns/iqol0E6lnk9tBctn6ByN0C22jdHw
	Z4DhtgONdWHIhpWe85Ex3puWSOvMWQ==
X-Received: by 10.28.15.14 with SMTP id 14mr4005673wmp.106.1492620924321; Wed,
	19 Apr 2017 09:55:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.145.21 with HTTP; Wed, 19 Apr 2017 09:55:03 -0700 (PDT)
From: Marc-Antoine Martin <martin.marcantoine@gmail.com>
Date: Wed, 19 Apr 2017 18:55:03 +0200
Message-ID: <CAMafisYkjYi-Z4iYFKX365Si1hwxwN7e+SrkypfYhPxmaBO5bw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 21 Apr 2017 08:52:36 -0700
Subject: Installing shared libraries ncurses for custom application
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
X-List-Received-Date: Wed, 19 Apr 2017 16:55:38 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I've have some trouble to add ncurses shared libraries to my recipe.
I want to add a software to my dist and it uses the ncurses shared libraries.

I wrote a recipe for this software but each time I try to build it
with bitbake I have the same issue:
----
QA Issue: /usr/bin/mySoft contained in package mysoft requires
libtinfo.so.5(NCURSES_TINFO_5.0.19991023), but no providers found in
RDEPENDS_mysoft? [file-rdeps]
----

My recipe is quite simple:
----
[...]
SECTION = "console/utils"

DEPENDS = "ncurses glibc"
RDEPENDS_${PN} = "ncurses-libform"

do_compile () {
        oe_runmake
}

do_install () {
       install -d ${D}${bindir}
       install -m 0755 ${WORKDIR}/${PN}-${PV}/nInvaders ${D}${bindir}/
}
----

I tried to use different RDEPENDS like "ncurses-libtinfo
ncurses-libncurses" or "ncurses-terminfo" but each time it stops at
the do_rootfs() process and I get the error:
----
Can't install mysoft-0.1.1-r0@i586: no package provides
libtinfo.so.5(NCURSES_TINFO_5.0.19991023)
----

Depending on the RDEPENDS I set, I may have the variant:
----
Can't install mysoft-0.1.1-r0@i586: no package provides
libncurses.so.5(NCURSES_TINFO_5.0.19991023)
----

I don't understand why bitbake cannot find the libs provider. I
checked in the working dir of ncurses and the sysroots dir, the libs
are there. It also well-creates the rpm libtinfo-xxx.rpm and
libncurses-xxx.rpm.

I thank you in advance for any assistance.

Sincerely,
Marc-Antoine Martin

