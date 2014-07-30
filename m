Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF79DE0081A; Wed, 30 Jul 2014 13:19:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD911E006B5
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 13:19:10 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id le20so2735295vcb.28
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 13:19:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ECKX6sy9gcpUIiioADgo/l2SlVPtarC0O7BBCk6OsDM=;
	b=EeLId9w83GGT29VeK/KiQlvAfMxNLKh8XYMVPO7AVc7YDVXFgJccISdOjSiA+BOU97
	WB9oKAZW/AbBRNipapoAaZWwfvueSYRCCx3Fxfvbsol/HZzdT65iFjTnxYBi6JyCIj0W
	7+p1DLCKtNN6gfIV1zOOizAopHScC9LDWXN7FTRYT9u6nEGGABIYpSXHYJSGeYZsTkJ0
	UK2+pvcrRXLBYX+E159qW8U2zLoQBx2CyG7/bYDzGDySPgELAvkGY5sCLJrexZ53lUYN
	9Sno91oBuF5EjLhasyRIdof8L2xZ2D85LxqU+jVOOrvg16/QN5l4TeYAEQPQ5CLtGidq
	Kiiw==
X-Gm-Message-State: ALoCoQlRMPiG/gIAfaUdaTSivzDkBnREGtpyjgnVtnkILrtpVfRQOd/rhHVo2EzwmLEDN5MjEw37
MIME-Version: 1.0
X-Received: by 10.52.117.209 with SMTP id kg17mr10720547vdb.28.1406751550242; 
	Wed, 30 Jul 2014 13:19:10 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Wed, 30 Jul 2014 13:19:10 -0700 (PDT)
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAAA4DD@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAAA4DD@G08CNEXMBPEKD01.g08.fujitsu.local>
Date: Wed, 30 Jul 2014 21:19:10 +0100
Message-ID: <CAPhnLPAe+NNPbXpqcVQPcRnuzDyZ0dZPWgfoSXK0Lrwbqb-yTg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>,
	Matt Germonprez <germonprez@gmail.com>, 
	"Hatle, Mark" <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: questions about spdx
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
X-List-Received-Date: Wed, 30 Jul 2014 20:19:15 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 28, 2014 at 4:57 AM, leimaohui@cn.fujitsu.com
<leimaohui@cn.fujitsu.com> wrote:
> Hello all,
>
> About yocto-spdx, I need some help.
> 1. I'm trying to use yocto(poky: 8f52c69183a6c2b50ed470c27383697ebc38efef) to get spdx information.
> I add " spdx " to the USER_CLASSES  in my local.conf, and configured my meta/conf/licenses.conf as below.
>
> But, in the generated *.spdx files,I do not get any license information. (the spdx file can be found in the end of the mail),
> Is there something wrong with my method?
>

If I'm remembering this right (Mark?), you need to have a Fossology
server to point to as Fossology will try to determine what the license
is to make sure they match the declared license.

> I noticed that in meta/conf/licenses.conf,the FOSS_SERVER is set to
> FOSS_SERVER = "http://localhost//?mod=spdx_license_once&noCopyright=${FOSS_COPYRIGHT}&recursiveUnpack=${FOSS_RECURSIVE_UNPACK}".
> Should I have to set up a FOSSologySPDX instance server in my localhost?
>

Yes, looking at the log, the spdx class requires a fossology instance
somewhere. I'd like to see it where it does not and it could spit out
just the declared license in the metadata (which honestly, should be a
trivial fix).

> 2. I noticed that from 4253671d46e3c350110bc73a1f55a054df0fc909(Wed Dec 4 11:47:02 2013),there is no update about spdx.
> In "Yocto 1.7 Schedule", I saw only two enhancements about spdx.
> Could someone explain the current progress and future work plan about spdx in detail?
>

I haven't touched any of the spdx code in a few months. There was work
being done by Matt Germonprez's team out of the University of Nebraska
Omaha, but I think that we need to discuss looking at some of what was
done and where we go from there. To be honest, not a lot of people
have asked for it so I've not worked on it.

> Any help would be appreciated.
>
> Lei Maohui
>
> ----------------------------------
> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
> index b1d5480..d94cb36 100644
> --- a/meta/conf/licenses.conf
> +++ b/meta/conf/licenses.conf
> @@ -116,15 +116,15 @@ SPDXLICENSEMAP[SGIv1] = "SGI-1"
>  # LICENSE_PATH += "${COREBASE}/custom-licenses"
>
>  # Set if you want the license.manifest copied to the image
> -#COPY_LIC_MANIFEST = "1"
> +COPY_LIC_MANIFEST = "1"
>
>  # If you want the pkg licenses copied over as well you must set
>  # both COPY_LIC_MANIFEST and COPY_LIC_DIRS
> -#COPY_LIC_DIRS = "1"
> +COPY_LIC_DIRS = "1"
>
>  ## SPDX Format info
>  SPDX_VERSION = "SPDX-1.1"
> @@ -144,7 +144,7 @@ DATA_LICENSE = "CC0-1.0"
>  #   information.
>  #
>
> -FOSS_COPYRIGHT = "true"
> +FOSS_COPYRIGHT = "false"
>
>  # A option defined as[FOSS_RECURSIVE_UNPACK] in ./meta/conf/licenses.conf. is
>  # used to control if FOSSology server need recursively unpack tar.gz file which
> @@ -158,14 +158,16 @@ FOSS_COPYRIGHT = "true"
>  #    FOSSology server recursively unpack components.
>  #
>
> -FOSS_RECURSIVE_UNPACK = "false"
> +FOSS_RECURSIVE_UNPACK = "true"
> $
> --------------------------------------------
> $ cat bluez5.spdx
> SPDXVersion: SPDX-1.1
> DataLicense: CC0-1.0
> DocumentComment: <text>SPDX for bluez5 version 5.21</text>
>
> ## Creation Information
> Creator: fossology-spdx
> Created: 2014-07-25T18:19:53
> CreatorComment: <text>UNO</text>
>
> ## Package Information
> PackageName: bluez5
> PackageVersion: 5.21
> PackageDownloadLocation: NOASSERTION
> PackageSummary: <text></text>
> PackageFileName: bluez5.tar.gz
> PackageSupplier: Person:NOASSERTION
> PackageOriginator: Person:NOASSERTION
> PackageChecksum: SHA1: b9667bcd50f9531dde17344cde1cc2afd10e3067
> PackageVerificationCode: 8967d6f42622f39d1833e758b67dc4378d3d6922
> PackageDescription: <text>bluez5 version 5.21</text>
>
> PackageCopyrightText: <text>NOASSERTION</text>
>
> PackageLicenseDeclared: NOASSERTION
> PackageLicenseConcluded: NOASSERTION
> PackageLicenseInfoFromFiles: NOASSERTION
>
> ## File Information
>
> FileName: tools/bccmd.1
>
> FileName: android/pts-avrcp.txt
>
> FileName: doc/heartrate-api.txt
>
> FileName: profiles/proximity/proximity.conf
>
> FileName: profiles/input/hog.c
> ......
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

