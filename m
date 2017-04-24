Return-Path: <martin.marcantoine@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C8D8E0083D; Mon, 24 Apr 2017 02:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.marcantoine[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95FFE00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 02:02:43 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id z52so46137275wrc.2
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 02:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fAJ8BOV/LXnILLn3kRjYP5rHPeedORMzUg9Tc76sW8A=;
	b=lvdHJXbM2Y+BQhopIjjnjfuB0zfU+rGXKlnCBV1oakgDjQOwP4FoHYYNYmpULo7dZa
	tAtszXfJ/xH3Jq7dxzPMurBXSMl+OSBRRLtbZa7WR2IJGz81741pLAdNLbZspZt14Y6Q
	b9qn1LgyJ19rUeAbToWpLzJjgJ8BWC7E10C6as5StbApsgcw7URtUMhXMTje5R8xv4wJ
	OPPMhEQEmFIdhbpbPn3iKdZa2zpTnwW5b6QiFpN/ypi3NITYr8s9viGuwlEOH32tOhzf
	yy8nkBQ0/qUdpu12gPsKl7Y4rSlsGb02Fwzf/wiEwzRVmYbNBIImL45Q0JYdHOqpvjAS
	Ij9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fAJ8BOV/LXnILLn3kRjYP5rHPeedORMzUg9Tc76sW8A=;
	b=qynJFxMnaZKusiy+yJGoryw0AwU+ayzv8J1nFoN9CNcI0yCOgHODlm3dT2rjHg4wTx
	rY0w9yRBYKV1weYgmNPvWrlUvIT8D82y+aa2Fx8VFG5JFM0sbRd9199NB1El+uyiLqKU
	F8ufmMaHe2Ny3g1xmRkhRoOX26x6Iv52MFijHkMpWehasFAFz6bwmhD6t/ouOtX2R94f
	jmTB2tT0Nq+I1dUzYbfoTSn40udl6fZZ5fI04ashiuah3qv/ZDDUNFfXHyWAvDIBHRvx
	m/Fbt2gZT9sKHlD29+hlpKjs4l7GzGTBQ3YJ+jD7JXb0heERQ5OaVjDNbus5tUPOjYy/
	Wglg==
X-Gm-Message-State: AN3rC/6J5yKCmyWqmGk2hBvEP/RHVOMd7GHZxHgzvzHS5uwUT5YNGfuJ
	TcVr3rsOUFzKGmPD59HX4JX6uZkaGgCw
X-Received: by 10.223.164.148 with SMTP id g20mr5211449wrb.89.1493024562397;
	Mon, 24 Apr 2017 02:02:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.66.148 with HTTP; Mon, 24 Apr 2017 02:02:22 -0700 (PDT)
In-Reply-To: <CAJTo0Lb0r7BK=Duhn4KXjq5ynVdvHEeA+jaqDAgu6_rf-JmF8w@mail.gmail.com>
References: <CAMafisYkjYi-Z4iYFKX365Si1hwxwN7e+SrkypfYhPxmaBO5bw@mail.gmail.com>
	<CAJTo0Lb0r7BK=Duhn4KXjq5ynVdvHEeA+jaqDAgu6_rf-JmF8w@mail.gmail.com>
From: Marc-Antoine Martin <martin.marcantoine@gmail.com>
Date: Mon, 24 Apr 2017 11:02:22 +0200
Message-ID: <CAMafisZxn7eV7zzkMTWMtb5QAypqw1rS9pbkSbhBNZrD3P8N5A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing shared libraries ncurses for custom application
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
X-List-Received-Date: Mon, 24 Apr 2017 09:02:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ross,

Thank you for your personalized reply.
I've changed my receipe with your recommandations and clean the
receipe with "bitbake -c cleanall myapp"

But I still have an issue when compiling with "bitbake myapp":

WARNING: myapp-0.1.1-r0 do_package_qa: QA Issue: /usr/bin/myApp
contained in package myapp requires
libtinfo.so.5(NCURSES_TINFO_5.0.19991023), but no providers found in
RDEPENDS_myapp? [file-rdeps]

Sometimes I also have the same issue with libncurses.so lib. I assume
the problem is common for both ncurses libs.

Hereafter is my receipe header:

SUMMARY =3D "myApp"
SECTION =3D "console/utils"

DEPENDS =3D "ncurses"

SRC_URI =3D ".../myApp/${PN}/${PV}/${PN}-${PV}.tar.gz"

do_compile () {
        oe_runmake
}

do_install () {
       install -d ${D}${bindir}
       install -m 0755 ${WORKDIR}/${PN}-${PV}/myApp ${D}${bindir}/
}

LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://gpl.txt;md5=3D393a5ca445f6965873eca0259a17f833=
"

SRC_URI[md5sum] =3D "97b2c3fb082241ab5c56ab728522622b"

FYI: I use the branch morty of Yocto Project. And I didn't add any
layer other than default ones. I juste want to add this app to the
qemu core minimal image for tests purpose.

Thank you for your assistance.
Sincerely.
Cordialement,
Marc-Antoine Martin
Ing=C3=A9nieur - Thales Services
Thales Services - Machine Software Engineer
tel: +33 7 77 38 18 65

Fiche contact / eCard contact:


2017-04-21 18:46 GMT+02:00 Burton, Ross <ross.burton@intel.com>:
>
> On 19 April 2017 at 17:55, Marc-Antoine Martin
> <martin.marcantoine@gmail.com> wrote:
>>
>> DEPENDS =3D "ncurses glibc"
>> RDEPENDS_${PN} =3D "ncurses-libform"
>
>
> glibc is a default dependency so you can remove that.  You can remove the
> explicit RDEPENDS as bitbake will automatically add library runtime
> dependencies for you.  Just have DEPENDS=3Dncurses, and see if that does =
the
> right thing.
>
> Ross

