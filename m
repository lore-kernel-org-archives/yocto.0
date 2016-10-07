Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FAD3E00CC0; Fri,  7 Oct 2016 16:22:15 -0700 (PDT)
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
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2F82E00A54
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 16:22:11 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id 2so22614010vkb.3
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 16:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Gt81LkpYX4N3FkhDnyk91/+R1HVtyE32XYrcQ5tI1kI=;
	b=GD+UgeiJ2rnRnCPM2FbVZK5gOEyVWR7Z//hXeh3r4JR1uvlFmqUswlwmsXy2TqYz4u
	/LW1hTSyfFrEsnmo5CuReyE8jx6GY3I6c5M7p6meFV1W+rfEW1Y3uEbT5+MXbSSsH7kk
	A212+GeJHaZGIoUt8506UJeSQpgukC/NIOwagUnNqJLxQAggoi06BC66rX3Hp7UY+pIU
	o3CNRX77kndukZFlHn6bFll3ARNaWt/VNStvhkitT8PnRfrHQ1tvP0kWGzSDFH3ZuIzU
	hpMfHDwNArIIVqAbyetPLheTvdOn2s45GHnglp+EKhpPiKas4diy3EGAYSQoOiVRdPVO
	CaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Gt81LkpYX4N3FkhDnyk91/+R1HVtyE32XYrcQ5tI1kI=;
	b=djFC0BZuepLcfUA3xf4c64l9VeLo5ySwr9pbIFPEMsSR9C8No8OFW5wNqbPFsztWZU
	xcJtghXSAnv3sIFXdSIkyE3Df5mJ37TurZy3QsLwV2xV5vvJrUHeV07sVgqgFJRzP1SR
	6trdzKmoliV5AAdteDFeo4P3P7ige6xjapxVS7wvO+bOkcWQ1ZBc9YQ+ianwjVfB7fmK
	h9jKHGzBJQSYRvBdqFZhs4WdF9IgtbTcw97cSi6lFNzmfZmld0kfUprFMG1M0MrD1lbB
	O/O1DBA0OU5aYNEI6ROx2YuTV52SJezD06ra85mCUsRp9EfM6ntF+nToQdXqhYGAf9U/
	AfSw==
X-Gm-Message-State: AA6/9RnHE1xoFiGLpE1m1MSU1XStcC/TViSuTK6RaoVUlBZuh4x2WAyEK7byk7CVKone4b3Z+u8xG9TiHLyp4g==
X-Received: by 10.31.15.207 with SMTP id 198mr14095346vkp.93.1475882531124;
	Fri, 07 Oct 2016 16:22:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Fri, 7 Oct 2016 16:21:40 -0700 (PDT)
In-Reply-To: <4BCD9DA4-5C88-4A54-A0A6-01C8BC565283@gmail.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
	<A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
	<0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
	<C0308C46-B222-46A6-BF18-90D853C7B627@sierrawireless.com>
	<A7265EA8-CB91-4D1B-987B-6FE4EBE52417@gmail.com>
	<FB4B6E4F-AA20-4156-958E-EB1C80F3726D@gmail.com>
	<4BCD9DA4-5C88-4A54-A0A6-01C8BC565283@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 7 Oct 2016 16:21:40 -0700
Message-ID: <CAMKF1sp0Q0Qfzf4HWEDGkQ7KOT9mktmXDmS29WvJcMXkpk2-TQ@mail.gmail.com>
To: Randy Mortensen <randy.mort@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Fri, 07 Oct 2016 23:22:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 7, 2016 at 4:14 PM, Randy Mortensen <randy.mort@gmail.com> wrot=
e:
>
> On Oct 6, 2016, at 8:35 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Oct 6, 2016, at 7:07 PM, Randy Mortensen <randy.mort@gmail.com> wrote:
>
>
> On Oct 5, 2016, at 7:14 PM, Darcy Watkins <dwatkins@sierrawireless.com>
> wrote:
>
>
>
> On Oct 5, 2016, at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Oct 5, 2016, at 4:45 PM, Randy Mortensen <randym@stratagemsystems.com>
> wrote:
>
> On Oct 5, 2016, at 5:04 PM, Darcy Watkins <dwatkins@sierrawireless.com>
> wrote:
>
> From what I gleaned from recent discussions of fetcher errors, this is
> somehow connected with rollout of Python related security fixes to variou=
s
> Linux distributions and/or some ...-native recipes.
>
> It was a bunch of tar balls that are named as mercurial hashes from withi=
n
> iced tea rather than the yocto fetch. I worked around it by grabbing the
> tarballs from a different checkout since I didn't have time to dig into i=
t.
>
> It affected a fresh checkout I was building from scratch.
>
> Thanks for the response. This also happened to me when trying to build fr=
om
> scratch.
> For my clarification, did you already have the tar balls downloaded or we=
re
> you able to download them from a previous (icedtea) commit somehow?
>
>
> I had the tar balls in a different build that I had around for some time.
> The reason I never cached these ones in a shared location on our server w=
as
> I felt that tar balls with small hashes as filenames was too prone to
> collisions, especially without a package name as a prefix.  I don't know =
if
> that is a convention of iced tea, or how the fetcher handles mercurial.
>
> Can you check if the tarballs have been rebuilt upstream ? if so we shoul=
d
> try to find out what changed.
> It could also be an oversight that a recipe update forgot or updated the
> checksums wrongly. but we should try to root cause it
>
>
> I agree here.  We should root cause it.
>
>
> I=E2=80=99m not sure how this is all supposed to work, but I managed to g=
et past the
> fetch failures by changing the md5sum and sha256sum checksums in
> icedtea7-native_2.1.3.bb.
> I used the the checksums helpfully suggested by bitbake when it reported =
the
> errors.
>
> I compared one of the problematic tar balls with a =E2=80=9Cgood=E2=80=9D=
 one from a
> previous download and the only change I could identify was 3 extra lines
> added to a hidden file .hgtag  (which I presume maps a tag to a commit). =
Not
> sure why requesting the same hg commit results in a different tarball
> output.
>
>
> could it be that its generating the tarballs from mercurial directly and
> thats flawed somehow ?
>
> That seems likely but I don=E2=80=99t know how to fix that.
>
> I also don=E2=80=99t understand why the configure task fails after the fe=
tch task
> successfully downloads the tarballs.
>
>
>
> Now however iced tea fails to configure due to checksum errors. The
> configure task seems to re-download each tarball and check the sha256sum
> which is failing.
>

I wonder if this failure will still happen again when it rebuilds the
tarball internally. I have
a hunch that might happen again

> I=E2=80=99m not sure where to go from here to try and resolve so any more=
 help is
> welcome.
>
>

