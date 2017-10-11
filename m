Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 948F8E00C01; Tue, 10 Oct 2017 19:33:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2D1E00B53
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 19:33:13 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id k7so218394pga.3
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 19:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aNcvZXPKUc6BOmNnuYO57JggsNaxYzO90OjbcZRy8Hc=;
	b=eAFGpgudMnWqsRGA4N9eKrbz4Y1I0ttC5vq8JZSgyyf9QyFXtQ2u3I5jhmACWxKXLo
	Ghh6GOheCXnYfdTDxAA1h+/5qfmL5jV0je3052Sb1AzdaIZhCO06i+Tga3XEE/lm0bnR
	gS29R6AlA2MM/hhYOimVrg9r23I7rxZ2fX7pNw40hUMb/+hSLor+ttDfyw7ND6TgRFyh
	GiyMHZ0Dk98fQC6azc6cPJCv3wuccOydvV5HLvkFANkTChfgvDTi688Ai8JTVHN9ZuvC
	KjSB6Z8I5BwkjPKzvW3q8lXKN5LW5c0RUWiASwoP7T+7h1nASp8ODZHwqwgHWT1vXnle
	V/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aNcvZXPKUc6BOmNnuYO57JggsNaxYzO90OjbcZRy8Hc=;
	b=GXWvPRNutYs9bhDETfp1jma6IEVN4vZdF0/dDkJttx84TmdI6FD6J2rdWuX9jNA6ID
	MnHqCTalNHLk9/h3zAdSwW8fo64h21ZHfFVSsmn3H4TDe7Pfhws5X5ffGqXp9NHsBN5y
	joNAQnNQ3vDQP0BG41eFN0i6yYF+M6wEAkNb/mHnwPM3yVs4GKaF7esrZTs+07NVYWMs
	LGWsUSuFj4b/nMHrRr1EcOrvOzHlq6eddQ/fcx+BF3HTXjjMFsHdMALBfro4ZlmkzUA4
	667PLLQQr/hdIHJdIUP93eExlDpuOxfoJBii12HhioClWF/9WvxuU3j4bJLSQ9pcbFcr
	zuyQ==
X-Gm-Message-State: AMCzsaU7OxsbXYu3IVy/UVHruSCTIQTmo7VgPhNUG63hW5/9pRXJXkQ6
	3BPDWqKm3I2FPcsoYrGD9JawBk9ftRtoltfThN4=
X-Google-Smtp-Source: AOwi7QBiq9Gd17sRAAuWZn9ToesphiK5aMsZt8w+HUJC9kFDrYF+G1u+qh4T+HGkblYGaFh39yS5cMTJTopqHchchf0=
X-Received: by 10.84.204.133 with SMTP id b5mr13804629ple.440.1507689193197;
	Tue, 10 Oct 2017 19:33:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Tue, 10 Oct 2017 19:32:42 -0700 (PDT)
In-Reply-To: <CAFUEAPC5+B6JQZ6OZZd5sOFi0UPsySDs4ha-esSrDDw7xi0Rqw@mail.gmail.com>
References: <CAFUEAPC5+B6JQZ6OZZd5sOFi0UPsySDs4ha-esSrDDw7xi0Rqw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Oct 2017 19:32:42 -0700
Message-ID: <CAMKF1soGPOsH4wRZ8i2nNjDAik3oOgz77wGXY3f1MhWOWC-YEw@mail.gmail.com>
To: Siva Balasubramanian <siva.balasubramanian@timesys.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Openscap build fails while do_package_qa
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
X-List-Received-Date: Wed, 11 Oct 2017 02:33:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 4, 2017 at 3:47 AM, Siva Balasubramanian
<siva.balasubramanian@timesys.com> wrote:
> I tried building openscap from meta-security. It fails while do_package_qa.
>
> ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue:
> /usr/lib/openscap/ptest/tests/API/XCCDF/unittests/test_remediate_python_subs.sh
> contained in package openscap-ptest requires /bin/bash, but no providers
> found in RDEPENDS_openscap-ptest? [file-rdeps]
> ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue:
> /usr/lib/openscap/ptest/tests/xmldiff.pl contained in package openscap-ptest
> requires /usr/bin/perl, but no providers found in RDEPENDS_openscap-ptest?
> [file-rdeps]
> ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue:
> /usr/lib/openscap/ptest/tests/nist/test_worker.py contained in package
> openscap-ptest requires /usr/bin/python2, but no providers found in
> RDEPENDS_openscap-ptest? [file-rdeps]

you add

RDEPENDS_openscap-ptest += "bash perl python"

> ERROR: openscap-1.2.14-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
> ERROR: openscap-1.2.14-r0 do_package_qa: Function failed: do_package_qa
>
>
> --
> Siva Balasubramanian
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

