Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7AE5E00C49; Fri, 29 Apr 2016 13:46:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8819E00C2E
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 13:46:29 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id n63so51092000qkf.0
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 13:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=QVBfMhnW7KvEaKp1cZ+06JKgZTKYSHV701pD+v5HjcI=;
	b=LuPYep0LW848h9Ru7zKruG9Mm9FCvLEcTGsxFRsv98zq0vpi8vAvDcu7kzf9F3pFh4
	rXfSRUzYBMHqQrmt7De8fwoBNaPANEacyD3LvshRhaOnQrVnK6uqlH40vJPBWh+slB8R
	jJADLOUQLsltbyPhRMRCHNf4iEfVt7vFBZhXIFkQF6QZCr+O7FDJowL0XXsxhdaFMybw
	n3FDGJOX3eXeoZOFCwWCe3LOtovbbkvhaft1g6rGV2OgNdBbKr4owGhBfL1lTmwWXfJG
	UeHaiJgb1veQl1aEbC+7ubJiccjRjzLVjA4d2Ui+tRMIxGE4LvFPU/2YXQVnTOG3vLQ8
	kHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=QVBfMhnW7KvEaKp1cZ+06JKgZTKYSHV701pD+v5HjcI=;
	b=coUMBu+2tVvYBwOFFUHmLjmzhWT7enI37+gMCiGpLH5MC/H7DPPqp+UXHZoa6RbBY0
	YhlSVGSEoDPpJh/MOM6iTOx/gg9M6wyjFmIbbaGJLIML8rYNIChHt3xE/4kVzQOKfsiW
	ByqBUCB8HBQgjT3YbHXWLvkLbyKt2Wglrr1F81uJn9UUJleon/AoEyoH2O2J+Gq24lN7
	pvCS4zNoKrbWyEQB/ddHc1DesaxEbCHOQMWd0ZACx0DjKqWAfSMl0oxMWHzdvLnOjOGP
	ZcQoI0wUD/mEycX0nwNkvFHKAwEK/Nv9w9vyANE8cckf6wg1DDFUTtzcL9PeQyhQRIUd
	mbXg==
X-Gm-Message-State: AOPr4FXcPI/9Cumbijpb6oFm/IysyG8f+dowPoFIivsaPOJ0o0lt/yM/kA4ngTS0CVXuwMfetzB2nuR6Pysdyg==
X-Received: by 10.55.200.137 with SMTP id t9mr22939949qkl.41.1461962788638;
	Fri, 29 Apr 2016 13:46:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 29 Apr 2016 13:45:59 -0700 (PDT)
In-Reply-To: <5720A4B2.2060509@visionweeding.com>
References: <5720A4B2.2060509@visionweeding.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Apr 2016 13:45:59 -0700
Message-ID: <CAMKF1spSa84Kw_9RL-o4pxc=22rMHCTn1voGEE0R4YF_qUFB0Q@mail.gmail.com>
To: Lars Larsen <lars@visionweeding.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Manipulating code and Building in offline environment
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
X-List-Received-Date: Fri, 29 Apr 2016 20:46:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 27, 2016 at 4:38 AM, Lars Larsen <lars@visionweeding.com> wrote=
:
> Hello
>
> I have 2 questions
>
> I have finally managed to build an image like I want it.
>
>
> I consists of a kernel.
>
> The ROS framework.
>
> And our proprietary software under git control
>
>
> What I want to achieve is the following:
>
> When online it should fetch the latest commit (or what ever branch/tag) f=
rom
> our git repo.
>
> It should be possible to take a laptop with a fresh checkout of all the
> software, go to the field where the is NO INTERNET access, and be able to
> patch our code on the spot ,and build fresh images, for the target.
>
> When online in our office environment all our own software is correctly
> checked out from our git repo. and build. Beautifully.....
>
> But when offline ( I disconnect the LAN ) I continually gets errors like
> =E2=80=9CFailure expanding variable SRCPV=E2=80=9D on our software module=
s.
>
> I have following in build/conf/local.conf
>
>
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>
> INHERIT +=3D "own-mirrors"
>
> SOURCE_MIRROR_URL =3D "file://${DL_DIR}"
>
>
> and I experimented with BB_FETCH_PREMIRRORONLY =3D "1"
>
> with no appearent effect
>
>
> So question 1:
>
> How do I achieve the offline building. ?
>
> Is should be possible - right ?

Change your BB_SRCREV_POLICY =3D "cached" in local.conf
see if that helps.

>
>
> Question 2:
>
> Where in the tree is the checked out source code located, that bitbake
> compiles from.
>
>
>
> Kind regards
>
> Lars Larsen
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

