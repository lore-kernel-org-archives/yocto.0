Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FC53E006E9; Sat, 17 Mar 2018 08:18:50 -0700 (PDT)
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
	*      [209.85.160.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f49.google.com (mail-pl0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FEF9E006E9
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 08:18:48 -0700 (PDT)
Received: by mail-pl0-f49.google.com with SMTP id 61-v6so7606499plf.3
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 08:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qni6weyZyZiGPF0zsvBakGFC6nFj2pVt4+xieMlKchg=;
	b=pmtaQ3QWglJuDM4EufEbgG/gOgaTZmwFwuxqvSkmlBq2fMRQbY4OLgI3nYzEWoqoNu
	vGwMdLouhlxdt9bkKNCKYdWn3S/0KReAm9h9pZ5zgO81dmzxmcY3RXt0aY5vOh206W51
	2b0feTD8DWXPt7rFAmoQSD+7q3pluoui4JFeAgh1rj/pKkKURH16dK0NFeTZ3tBfb6QQ
	fRnAS3X9eAF+BqrtiR5zeJbupyGxh8cr2wUjiCgdFA1jpJm99X6Epzrfx/C8LGUoGyYh
	L3Sx0ik0F+H+Xk1/8Bj2BjVjY7iqX7iYnO/bBFqGZKv+b2UpsrTYGSFL/yiuwKpe6j06
	Ci/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qni6weyZyZiGPF0zsvBakGFC6nFj2pVt4+xieMlKchg=;
	b=sNIO606IMTbihrAYxyS6nExLXSZRkS+FRYOSMybo1RNwb85VohKl/6Hm7aMM6FREXR
	dUNELG3UA5/hVBB8PWrTNhn4U96YS2Drzd+MhZOEI2cie+tgUcetZAziRUXMLMhMCrcY
	JmoCKGVGsobso5Ha6saFSHjb1AtSDVos9JY+zXpQxJF2fe27KNxzsWqgIRTo39A9LI/n
	MfZ1d8Cyulz0Gq/EOfVjQdtZ6JitbPurVHBKCyx1e4ydh865MaJFsDNVTIzGPd15eRCG
	r7FHijbKVMVNr38t6kBy1AWWJqAKEtCi4QrWwyHr6ZZWttuz4nFgg/f2mea0kR03JM9a
	xbjw==
X-Gm-Message-State: AElRT7FBqrSaI3hVMM+BiRdh+63uPsRKv42XvX6Hq+P4zDcIev48fszb
	b6wLfjY5cqmlSHnGDEH0zsc+6r5Jzd7MDFp4Hko=
X-Google-Smtp-Source: AG47ELsMv5Ghs42Q1ZylpxYWUrbOnI88VR1EMAPABP6teXaUbJxyEKjKNWj0toXKSMNtgY78EtfCptP9L8RQrdysoe4=
X-Received: by 2002:a17:902:158b:: with SMTP id
	m11-v6mr5992975pla.300.1521299928046; 
	Sat, 17 Mar 2018 08:18:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.241.68 with HTTP; Sat, 17 Mar 2018 08:18:17 -0700 (PDT)
In-Reply-To: <CY4PR15MB11909218C6330B8DCA81AC98D0D60@CY4PR15MB1190.namprd15.prod.outlook.com>
References: <CY4PR15MB11909218C6330B8DCA81AC98D0D60@CY4PR15MB1190.namprd15.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 17 Mar 2018 08:18:17 -0700
Message-ID: <CAMKF1spuhiQnatoGx+CURFL0e-9_GqpFmmMOu-UfoNzpZEd_vQ@mail.gmail.com>
To: "Aravindhlal G.S.S" <aravindhlalgss@embedur.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Skip recipes ?
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
X-List-Received-Date: Sat, 17 Mar 2018 15:18:50 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 16, 2018 at 10:22 PM, Aravindhlal G.S.S
<aravindhlalgss@embedur.com> wrote:
> Yocto Gurus,
>
>
>
> I am trying to Skip running a recipe for a particular machine configuration
> and I am using the below statement in recipe to accomplish it, however I am
> getting the below errors.
>
>
>
> python () {
>
>     if <condition>:
>
>         raise bb.parse.SkipRecipe("Message")
>
> }
>


this will skip it however you have to ensure that there are no other
recipes needing
it otherwise they will break, seems that is whats happening

>
>
> Errors:
>
> NOTE: Runtime target 'arris-kmod-headers-dev' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['arris-kmod-headers-dev']
>
> ERROR: Nothing RPROVIDES 'arris-kmod-headers' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/arris-kmod/arris-kmod-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'arris-kmod-headers'
>
> NOTE: Runtime target 'arris-kmod-headers' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['arris-kmod-headers']
>
> ERROR: Nothing RPROVIDES 'mibleaf-docsis' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-docsis/docsis/mibleaf-docsis.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'mibleaf-docsis'
>
> NOTE: Runtime target 'mibleaf-docsis' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['mibleaf-docsis']
>
> ERROR: Nothing RPROVIDES 'mibleaf-docsis-dev' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-docsis/docsis/mibleaf-docsis.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'mibleaf-docsis-dev'
>
> NOTE: Runtime target 'mibleaf-docsis-dev' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['mibleaf-docsis-dev']
>
> ERROR: Nothing RPROVIDES 'arris-pcable-headers-dev' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-bin/voice/arris-pcable-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'arris-pcable-headers-dev'
>
> NOTE: Runtime target 'arris-pcable-headers-dev' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['arris-pcable-headers-dev']
>
> ERROR: Nothing RPROVIDES 'arris-pcable-headers' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-bin/voice/arris-pcable-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'arris-pcable-headers'
>
> NOTE: Runtime target 'arris-pcable-headers' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['arris-pcable-headers']
>
> ERROR: Nothing RPROVIDES 'libarris-rf-ds-calibration-headers' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rf-ds-calibration/libarris-rf-ds-calibration-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'libarris-rf-ds-calibration-headers'
>
> NOTE: Runtime target 'libarris-rf-ds-calibration-headers' is unbuildable,
> removing...
>
> Missing or unbuildable dependency chain was:
> ['libarris-rf-ds-calibration-headers']
>
> ERROR: Nothing RPROVIDES 'libarris-rf-ds-calibration-headers-dev' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rf-ds-calibration/libarris-rf-ds-calibration-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for
> 'libarris-rf-ds-calibration-headers-dev'
>
> NOTE: Runtime target 'libarris-rf-ds-calibration-headers-dev' is
> unbuildable, removing...
>
> Missing or unbuildable dependency chain was:
> ['libarris-rf-ds-calibration-headers-dev']
>
> ERROR: Nothing RPROVIDES 'libarris-extswt' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-extswt/libarris-extswt.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'libarris-extswt'
>
> NOTE: Runtime target 'libarris-extswt' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['libarris-extswt']
>
> ERROR: Nothing RPROVIDES 'libarris-extswt-dev' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-extswt/libarris-extswt.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'libarris-extswt-dev'
>
> NOTE: Runtime target 'libarris-extswt-dev' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['libarris-extswt-dev']
>
> ERROR: Nothing RPROVIDES 'libarris-rdkb-vendor-headers-dev' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rdkb-vendor/libarris-rdkb-vendor-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'libarris-rdkb-vendor-headers-dev'
>
> NOTE: Runtime target 'libarris-rdkb-vendor-headers-dev' is unbuildable,
> removing...
>
> Missing or unbuildable dependency chain was:
> ['libarris-rdkb-vendor-headers-dev']
>
> ERROR: Nothing RPROVIDES 'libarris-rdkb-vendor-headers' (but
> /export/asantharam/ws_xb6/syndication/cox/meta-rdk-oem-arris-intel-gw-xb6/meta-arrisxb6-arm/recipes-arris/libarris-rdkb-vendor/libarris-rdkb-vendor-headers.bb
> RDEPENDS on or otherwise requires it)
>
> ERROR: No eligible RPROVIDERs exist for 'libarris-rdkb-vendor-headers'
>
> NOTE: Runtime target 'libarris-rdkb-vendor-headers' is unbuildable,
> removing...
>
> Missing or unbuildable dependency chain was:
> ['libarris-rdkb-vendor-headers']
>
>
>
> Am I missing anything else ? or is there any alternate way to Skip the
> recipes ?
>
>
>
> Could you please guide me on this ?
>
>
>
> Thanks
>
> -Aravindh
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

