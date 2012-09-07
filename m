Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2890FE01507
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 02:29:39 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 07 Sep 2012 02:29:38 -0700
Received: by obbtb18 with SMTP id tb18so5340218obb.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 02:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=DJAFtzHCUs2F97Q3uoOvKg4yI3vroYjWFRrrm/m0Z9Q=;
	b=JyzK06/SKzfYAw22XwFCtKDuuI3S6Z9P5R/SzMXek+xSfoGfubvk6+Z9bOYI316dQR
	VEmc5IoGDELnQa86ldOvYXCW2sjLF2opdd20C3Z63KZf0tTRbZUmiH3zjVX5pB5pxySn
	WIdgxRNpTFrqdV36jfXQgXCDf9lEM4yfutnr8kwiE0uMB7nSGTN/zUonT8W60sMjSr+D
	9GIBABTM7NKebcbA9oezFyZPH2Os4PUCZ+4ygnzveBH4rUg+DAlXsbDsaJCq048SGAcK
	rGg/oGKTJeXXAJur2GMDSUjvdrPZEmsf6FJMdq+Y6sJySCsFYmfOxopXEbBTvG/CmsVU
	U/aA==
Received: by 10.182.50.68 with SMTP id a4mr5061120obo.59.1347010177278; Fri,
	07 Sep 2012 02:29:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Fri, 7 Sep 2012 02:29:17 -0700 (PDT)
In-Reply-To: <30372536d05d69007337ef870f3c960b5647b63d.1346893078.git.nitin.a.kamble@intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<30372536d05d69007337ef870f3c960b5647b63d.1346893078.git.nitin.a.kamble@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Sep 2012 10:29:17 +0100
Message-ID: <CAJTo0LaQsen6Swn7kHnjM=F7dTerKZ-btPr09z=82kDJz_ORww@mail.gmail.com>
To: nitin.a.kamble@intel.com
X-Gm-Message-State: ALoCoQmhAJ4lUJoMtsdgfA5ULvC2WkgCNIlrJiFZJUxaMnxdqKlPamH0+6mMB89E4pm/ZJcFldvN
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 1/1] emgd-driver-bin: Fix package naming issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Sep 2012 09:29:39 -0000
Content-Type: text/plain; charset=UTF-8

On 6 September 2012 01:59,  <nitin.a.kamble@intel.com> wrote:
> emgd-driver-bin is generating rpm package with name libegl1.
> This name clashes with a package of mesa-dri recipe. This name
> clash blocks installation of emgd user land binaries in the
> image. And due to missing emgd user land components X fails start
> on BSPs like crownbay.
>
> Fix this problem by specifying package names in the recipe with the
> PKG_ vars.

Could we name the packages with a -emgd suffix, such as libegl-emgd?
I'm going to fix mesa to name it's packages libegl-mesa and so on, so
consistency would make everything a lot easier (see my mail to oe-core
yesterday about GL).

Ross

