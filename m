Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 426E2E00DC6; Thu, 18 Jan 2018 06:46:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83CACE00B5F
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:46:36 -0800 (PST)
Received: by mail-lf0-f53.google.com with SMTP id t79so11617017lfe.3
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=cIDOiBoKWeXJFadutJAEgNtjTAdfbO3KdAaseB/wK1Y=;
	b=mxFvPhqLo2MnXUSc0jh5eQdQrmcd6Ykpgsfl0temj1cdlXPaVR8tYgE5qcU6mmGIXh
	/ZeKITv9dcZOJ70K3hkDcZMz4Yqfwf+Yb+3iUxorQOeOWszsoq8Ys0Eq2BCuV1h6yNsG
	vJf9eOYnyvHexFhP2M0LpHhlb79s+h6MiV2yFvPzK/40hQXylWlh8dNCp5SSMClcKpOp
	zguZbtP1x7Uhxb0vIPp5Ds4Y4ZRG3pqqoiCSifZ34bRudjdAlGJgT4bet1x59UlheyD/
	WeKv0HqMPhVOkPYO6/WAQUyP6qVqnXDuhHDo4bli9+WX1CSA3pvzB8rXAacqXZ5b32YA
	RW/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cIDOiBoKWeXJFadutJAEgNtjTAdfbO3KdAaseB/wK1Y=;
	b=JWo0+CC7Ll3Jmj6v3JnpObYI9IkKG76lQY985i6SjW/rOYS1zb/rmkeI/XroNPDZYX
	bvV152RqkGGldoS0ABNnTmPWXyFmehefQIKH7JKQmS++nr3mW7nQ6BPSsDtYCJTR3cMo
	A+hYvWF5HYo1TrwKxfak3g1VCsaLdGvoUhaqiVh4JD+vLRDaFgoLz/DB0WNS7oMf/q6i
	9TBfXDWOqQXw5CE3UEdmexnyBU0JNq8FP+aJwFBWIO9rAoQH0SAPxLDFq2eZBRojo8cR
	pznI1g5+3TQCeiHcukkC8X3aAvgyxFl9wzXdc8PSLda/76YRkiawL7Ze1wDL519zx8dH
	Pvvg==
X-Gm-Message-State: AKwxyteEZGSDE3XO7Is/gZEs9C9qGdJwxe4FFwEqWCXTvyqkXwbQwwea
	U18jW3ii8ZJREWKGWuLAv2rgAP1paDltootlDVKISTrI
X-Google-Smtp-Source: ACJfBotTlRZQuB6bYQxn6kPazjpbzv29N0w5Int2eud4iXUoQQjZugIumBwtopzr1uwiQIBXZ+/9TwBAOjUZIjxfre4=
X-Received: by 10.46.116.13 with SMTP id p13mr17274281ljc.41.1516286794895;
	Thu, 18 Jan 2018 06:46:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.27.193 with HTTP; Thu, 18 Jan 2018 06:46:34 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 18 Jan 2018 15:46:34 +0100
Message-ID: <CAOT_U5b3f-S98tpuhOuB6W7R8Cv+J4qph1ObXh+5dgETMh2cNg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: do_roots braking after a SRCREV update for non master branch
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
X-List-Received-Date: Thu, 18 Jan 2018 14:46:37 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I've updated my recipe to use a review from a non master branch:

Old version [python3-senichub_git.bb]:

    inherit setuptools3

    PROVIDES += "python3-senic-hub"
    RPROVIDES_${PN} += "python3-senic-hub"

    S = "${WORKDIR}/git"
    SRC_URI = "git://github.com/getsenic/senic-hub.git;"
    SRCREV = "01fd5bd8725add5e73d3cc35a169f0dc837daefa"
    PV = "git-${SRCPV}"

    RDEPENDS_${PN} = "python3-nuimo python3-lightify"

New version [python3-senichub_git.bb]:

    inherit setuptools3

    PROVIDES += "python3-senic-hub"
    RPROVIDES_${PN} += "python3-senic-hub"

    S = "${WORKDIR}/git"
    SRC_URI = "git://github.com/getsenic/senic-hub.git;branch=improve-logging;"
    SRCREV = "ad6c082a8a990291c6128f54ea0c0d185081704e"
    PV = "git-${SRCPV}"

    RDEPENDS_${PN} = "python3-nuimo python3-lightify"


So the only changes is the SRCREV, and a specific
branch in the SRC_URI.
The package alone builds successfully.
But when building the image it fails on the do_rootfs:

    opkg_prepare_url_for_install: Couldn't find anything to satisfy
'python3-senic-hub'.

I can't really make the causes of it. There are some legacy
naming inconsistencies with a dash, but there is an explicit
PROVIDES and RPROVIDES in both recipes, one fails the
other passes.

Any ideas?

