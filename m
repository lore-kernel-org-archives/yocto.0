Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22D7EE0074B
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 00:21:29 -0700 (PDT)
Received: from mail-gh0-f200.google.com ([209.85.160.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 11 Sep 2012 00:21:28 -0700
Received: by ghbf13 with SMTP id f13so268856ghb.11
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 00:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=w7UkO/ABhAMG0TOL9C093LbkUBDVc/2FwceIHkJGNlo=;
	b=myDDev3pCBj/mVBilc4gFwZqxIw2F/U5B453TBrCeN3wJlAtLogRnceTYUIM3ck22N
	U19dV9qCok104rr8UBgU6JO3mimvXrQwXGhPYR9DEOQri7WZhpa09GBUfdvqDvs8UDT3
	oTz96G0vHRsG+dQjTOABZwlZwS0iqCMlTLsW0QJAEoqNV01UiPCqFBiyt1iLAfyjl7BD
	JmtSKFGRDh0e6gHulFQ6i0GKp1e3P1/Bq7TE6Wsf8S3dgUuJ+4XsMlnYXg0mHouCOhMF
	+bMdt4S3kRHVAapxADMqb1q47sG3PJHuDUr8s0EDwWJuMaA444ctXlJR3SD3NB4EZdhs
	dvsg==
Received: by 10.224.18.209 with SMTP id x17mr17619928qaa.15.1347348087218;
	Tue, 11 Sep 2012 00:21:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.18.209 with SMTP id x17mr17619925qaa.15.1347348087157;
	Tue, 11 Sep 2012 00:21:27 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Tue, 11 Sep 2012 00:21:27 -0700 (PDT)
In-Reply-To: <CAPhnLPCmAMkMqC6xHL-btgFwjtjSWPmEyPa84FOs1SbmS9Ci1w@mail.gmail.com>
References: <CAPhnLPCmAMkMqC6xHL-btgFwjtjSWPmEyPa84FOs1SbmS9Ci1w@mail.gmail.com>
Date: Tue, 11 Sep 2012 00:21:27 -0700
Message-ID: <CAPhnLPCCKsHtbrXaYoZeRrZmAivce3EAD5tsBhX5Ub60P5nmKQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmFefvzJvvWxDMsDYMFTNdCwGnD2GL3p2OekeTps+siW8WPuXo35nGaD9GocRfHnAItjVBzEitJXwhibfwR/jFx1aqnNhmAaFaO1ODUYp/4Yyi3URU1zsgYrs/NKioHkFn0ers7BXmJiKYJ2NKn52OomMVz1A==
Subject: Re: New autobuilder adt-repo functionality and known adt-installer issues.
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
X-List-Received-Date: Tue, 11 Sep 2012 07:21:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 10, 2012 at 11:36 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:

> After checking the M4.rc2 buildout tonight there is still an issue
> with the adt-installer. The opkg.conf files don't update to the
> correct adtrepo location. I'm working on a patch for it now, however
> to get around this for testing, you'll need to manually update
> ./opkg/conf/opkg-sdk-*.conf
> to either:

A bit more on this. The bug was in the autobuilder and should now be
patched. The adt-installer-QA tarball for 1.3_M4 has been updated
accordingly.

-b

> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

