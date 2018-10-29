Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41F40E00BC2; Mon, 29 Oct 2018 06:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69245E00A1A
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:58:08 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id r63-v6so8345038wma.4
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mw6E+RH7BiBRvuUfIgK5qAdI43ExTqgdO/TwVKt/Ios=;
	b=PJWuu7Kkykb+UyOrNBdCzwqSGFsGSOcu5Iq2Cg6/UsNdBl6rEHQlMU/98T4yB2uM6h
	E0ZxU2QzYsQPzprb4tAMQ8m4fj1KNRJIhDq/l4oKlg9y9QQV0DYStXnbxq1kAVzEepyj
	apYYPEhU4sJNdEYtUVnqa+LdaME0R4YAXFyy9VR/CQsuFqnYAOOrZB8Yq2hzXKEzVDA9
	Xu6aVga5oM3i9p60nYLFgbwlmFFkToU7/uf4T061SDQYec5NmWjBZDvRG56jnj3SFBBh
	fG0TfiQxJAsJqMDS6pitu1JmiRIGpc1yabQ/4JBJpER2ksk+/ZOAysCkYnn0fhettTGa
	6SCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mw6E+RH7BiBRvuUfIgK5qAdI43ExTqgdO/TwVKt/Ios=;
	b=sZ6J7JSGOtkmSz+n1FhnYioDdslkPujMUb3++fwVA6rxM3P8zH/82sjkW2kzcAAOfJ
	Rj/Eoln0xBB19Ar+l97Of34mehwWA8U20g8cW8hCavEafmW7iqMjb7y2sB3p6pJT4JdO
	es4o1FophW8H90f7SAGpqnpZ6KT62PYqa0lQYSgAavqHsQiYVJhI0rCeD4A3IlRusB0E
	qkvqvrbEz9nOFbc2dx6EOV80w/4BE6VsMbgGon9fO8WbQ1KvlvcugQsqGWSRjNfF+CVw
	LavK0mhRGY2VaDxuWAtRm0ZkrqB44ThlE4OlsVg4QXHEdhH9hSRRXQ5dkZemLdOKDQc0
	gEEQ==
X-Gm-Message-State: AGRZ1gJrKVZUrdIHaWw9SlHfMS88quepGdekNU6IrF6FEgb6e6yN2Q6m
	qoVG8icky4LlhTNzalwjowwFOiNFAaxGY6EKa2I=
X-Google-Smtp-Source: AJdET5c9ZcWpvbtoRf0O1I28ogGRuT/eL6/LdHpM0OLOm3zcjh9jt2Iro7IESW8xvvgrmxP54lqnyZryFXOx+jQ8wSs=
X-Received: by 2002:a1c:3584:: with SMTP id
	c126-v6mr14341267wma.120.1540821487191; 
	Mon, 29 Oct 2018 06:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
	<87woq0kgqr.fsf@snkmail.com>
In-Reply-To: <87woq0kgqr.fsf@snkmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Mon, 29 Oct 2018 20:57:30 +0700
Message-ID: <CAKYr3zyAsSdRvuFaH4N6t7cNVQ3A+t8JXci_3KrKbTPaTsvfWQ@mail.gmail.com>
To: jrswdnan22@snkmail.com
Cc: yocto@yoctoproject.org
Subject: Re: adding own shell script to the image
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
X-List-Received-Date: Mon, 29 Oct 2018 13:58:09 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 29, 2018 at 8:47 PM Uwe Geuder <jrswdnan22@snkmail.com> wrote:
>
> On Mon, Oct 29, 2018 at 3:28 PM Zolee K zoleelikesdebian-at-gmail.com  wrote:
>
> > The error message:
> >
> > /home/..../recipes-z/testing/testing.bb: Unable to get checksum for testing
> > SRC_URI entry testscript: *file could not be found*
> > Which I don't understand, since the file is definitaly there:-(
> > Could you please help me out with this?


my working recipe


cat eventmanager_0.0.5.bb
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""
PR="r1"

RDEPENDS_${PN} = " \
python3-sdnotify \
"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI = " \
file://${BPN}_${PV}.7z \
"

inherit bin_package systemd

do_unpack[depends] += "p7zip-native:do_populate_sysroot"

S = "${WORKDIR}"

do_install() {

------------------SNIP-------------------------------

 ~/Yocto/meta-event/recipe-event/eventmanager ls -al
total 16
drwxrwxr-x.  3 dingo dingo 4096 Sep 30 07:48 .
drwxrwxr-x. 10 dingo dingo 4096 Oct 19 14:49 ..
-rw-r--r--.  1 dingo dingo 1147 Sep 30 00:37 eventmanager_0.0.5.bb
drwxrwxr-x.  2 dingo dingo 4096 Oct 20 10:30 files

 ls -al files/
total 144
drwxrwxr-x. 2 dingo dingo   4096 Oct 20 10:30 .
drwxrwxr-x. 3 dingo dingo   4096 Sep 30 07:48 ..
-rw-------. 1 dingo dingo 128273 Oct 20 10:30 eventmanager_0.0.5.7z




>
> Bitbake uses a search path to locate the files, see
>
> https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-FILESEXTRAPATHS
>
> Either extend the path or move your file to a location on the path.
>
> If you are unsure what your current search path is you can always check
> from the output of
>
>   bitbake -e <recipe-name>
>
>
> Regards,
>
> Uwe Geuder
> Neuro Event Labs Oy
> Tampere, Finland
> uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

