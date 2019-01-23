Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A231EE00CF4; Wed, 23 Jan 2019 00:48:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.219.180 listed in list.dnswl.org]
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
	[209.85.219.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B0F7E00CED
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 00:48:32 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id e12so549660ybn.10
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 00:48:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=u/GmNFkPug2MGFDXKwdbX2PyzsuMEY5Ji+S5BiWBnjg=;
	b=aEbBGqOojB1AvqZfiZA1yCjAptDLjK+J0F6YMcW8XdpvgRYrhzyuCuUlxDbMEdRieI
	mlhOqEynYLFcUnLb4m9onD2LgllbYOi9uLT8lPrv1m4Fn/HPNiLcjWbEQBorqryaBe42
	8h+wJevIny+6X4mw7E9SJmqFWU1QeTggJc6Edc0kKIwTJ+fBaDq3oe0GfIb/WIH1Z64i
	vNEoL39k6Ct2D280JUgvWWX+vJ2iIoL4UCU/l/ngKl9d+zy7bTr5eRNHBQF6q4S6lFWu
	ge4YlEl4e/S6NymwJlhrU7W+/QymbXWYtrwJAOgwJto6NonYWqb+o1gF+7Ds+8Qu7apP
	72+g==
X-Gm-Message-State: AJcUukfPFE9d8Qw3vJHQbUYEElkzaAvhjRfzGFuG5ivPORmpwlwNHGGT
	EVkJiilo298CohGLMTXKV7XCetXTQJpeZhRywaCqgeah9M+k0g==
X-Google-Smtp-Source: ALg8bN7ohEu1k+enxbWPYuh03l/R54y4asUoCdD8lWDXrHNLctsIJDxq/97r231uN257cbZQR7pef0cRumvTkbMSs+M=
X-Received: by 2002:a25:8385:: with SMTP id t5mr1053849ybk.199.1548233311294; 
	Wed, 23 Jan 2019 00:48:31 -0800 (PST)
MIME-Version: 1.0
From: Einar Vading <yocto-ml@vading.se>
Date: Wed, 23 Jan 2019 09:48:20 +0100
Message-ID: <CAB6-VtJQs3-3epA6DQynBb3_ONkJygdvyHV7+Ji6qNxAr77q5A@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Parsing bug in packagegroup
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
X-List-Received-Date: Wed, 23 Jan 2019 08:48:33 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm having some problems with a packagegroup of ours.

It basically looks like this:

    inherit packagegroup

    RDEPENDS_${PN} = "\
        libdomain-somelib \
        libsomeotherlib \
        served-util \
    "

Where served-util also is a lib.

 Now depending on what I put in my RDEPENDS my build either succeeds
or fails with:

    Error:
      Problem: conflicting requests
      - nothing provides libserved-utilsoversion needed by
packagegroup-base-1.0-r0.0.noarch

I can go from a failing build to a successful build just by moving the
quote up to the served-util line:

    <same as before>
    served-util"

It also works if I swap served-util with the package above:

        served-util \
        libsomeotherlib \
    "

I realize this might be a bit vague but I'm happy to look around for
this bug if I could just get some pointers as to where I should be
looking. I have grepped for soversion in my packages image and
package* dirs in tmp/work and I have grepped for it in the
poky/bitbake dir without success.

But to me it looks like "soversion" in libserved-utilsoversion is
leaking in from some script somewhere

I'd love some pointers to which parts of bitbake is handling this stuff.

Best Regards,
Einar

