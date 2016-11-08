Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43963E007D3; Tue,  8 Nov 2016 06:47:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A52E0070F
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 06:47:16 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id 5so5553605vkf.0
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 06:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=K433M0gSK1i2bUDWmfhpCfPkSTHxaWZWEi8gfLn0u5Y=;
	b=FYvZpBkrpt98yXtF6/Tf423VKOFaKocMtGoubKvrfyFQH4T77yxEI4ZS4oF8UTA68k
	6AnVLVC2y71ZSK3RkT9vPuNT7B9YVQzhA26uWviBRGfkOQtg/WPJjfG2lL9Xw1zPvejo
	DjVyo1hdD2weMrrpbjHvGG3kAqEHJOdKWg1AqNJqYyqjq8a8CvOEhAKUanQSTOnANUPY
	eeemm+FHDedFabXE0H3QgVedkAq3b9x0NeF+DVHsBP59szQNenanrI7zKtf6iONz8AKK
	qyOyCC/dfY+63ZavDIX5uBZtMSNIkHTcCjAiazQvsI+29T8lZUFbZty4OYme9CARMqtp
	8Qpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=K433M0gSK1i2bUDWmfhpCfPkSTHxaWZWEi8gfLn0u5Y=;
	b=Q0QWkRj4mfL7kI10ngurvStbqlbf8bv3TwCCKEq/FhpGfu5zBwdJxZ5LVycNdqwzmf
	cVsRcU36UJOr9UJ8NOiwfX3Nsnb0OLVb5ibE7jGihbA9E20iDFb1Ax+vRd2FoYCMucfW
	a73xC/M4Lm1zXQY6g9TO+omlhUta2RtmxOFEh1E8AHq+0mhQnvJpiYStqHAtRWwNluNM
	8mxDHFgNqqKrEJXfNtubcXBFKU5UQWa2YBy5BjBDcUAU9XqqHbr76ISSJ+7Do6WL8XlA
	fsIGIVWs44vV/3/rpU/8tXyEvp+RhN7ltsK8P0Gj+76HgUXGRMp5G9JRwwqJE8w/Eh7Z
	KInQ==
X-Gm-Message-State: ABUngvdMAsAss5uMkgBQPbLZ8ftDi+TJV1gUzMGehpsdy1QYFV4cktMP21HLX2Y3RjK+C8nC+G4QTyQXyqKucg==
X-Received: by 10.31.244.9 with SMTP id s9mr8509037vkh.31.1478616435774; Tue,
	08 Nov 2016 06:47:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Tue, 8 Nov 2016 06:46:45 -0800 (PST)
In-Reply-To: <20161108113838.GC19379@carbonA>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
	<ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
	<20161108113838.GC19379@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Nov 2016 06:46:45 -0800
Message-ID: <CAMKF1spR5-PpjfkfDadP_8FqrGHt0-T34k=RjwrwPg9y2Bd0Hg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Tue, 08 Nov 2016 14:47:19 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 8, 2016 at 3:38 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Nov 08, 2016 at 12:35:47PM +0100, Gary Thomas wrote:
>> On 2016-11-08 12:16, Andrei Gherzan wrote:
>> > On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> > > This is a binary repo and its quite large in size
>> > > we do not need the whole history of this repo since
>> > > most of stuff needed is binaries, therefore switch
>> > > to release tarballs
>> > >
>> > > Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> > > ---
>> > >  recipes-bsp/common/firmware.inc | 12 +++++++-----
>> > >  1 file changed, 7 insertions(+), 5 deletions(-)
>> > >
>> > > diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
>> > > index ed0782f..8862f58 100644
>> > > --- a/recipes-bsp/common/firmware.inc
>> > > +++ b/recipes-bsp/common/firmware.inc
>> > > @@ -1,8 +1,10 @@
>> > > -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
>> > > -RPIFW_DATE ?= "20161030"
>> > > -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>> > > -RPIFW_S ?= "${WORKDIR}/git"
>> > > +RPIFW_DATE ?= "20161020"
>> > > +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
>> > > +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>> > >
>> > >  SRC_URI = "${RPIFW_SRC_URI}"
>> > > -SRCREV = "${RPIFW_SRCREV}"
>> > > +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
>> > > +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
>> > > +
>> > >  PV = "${RPIFW_DATE}"
>> >
>> > Merged to master. Thanks.
>>
>> Sadly, the firmware revision went backwards in this change.
>> Do you want a new patch to play catch-up?
>>
>
> Good catch. I'll fix it. Thanks.

ah sorry about that.
just hardcode PV = "20161030" for now. with next release we will get it right
since its already past oct 30.
>
> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

