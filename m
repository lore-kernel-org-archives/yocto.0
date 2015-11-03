Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D015AE00B88; Tue,  3 Nov 2015 06:15:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9476DE00AB5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 06:15:29 -0800 (PST)
Received: by igpw7 with SMTP id w7so69068776igp.1
	for <yocto@yoctoproject.org>; Tue, 03 Nov 2015 06:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=p6bQHmGDS/apxp1gRz+hLQ0D51bGgFal1u+sfeKHXYI=;
	b=U83ELJDWfFnAIanJBtMUwhd5h53eLGYWEwAo+IzCpntXvG2ALYK4FMXIR4uDN87J1F
	uOXNXvfWnUqNyJcIpnEYrmkz5MLqAzntq0SgHcSXrWwwvh7gfMhpT4NrtqKw2AAyK2n6
	OyAYWPmrVNIipLKdm5MOKRh9QYJzbXr7DgUd71JHKAjNuUOuibzhIRaUnxtfitzL/oUj
	j3k+p9Emo+0/Wa7N/Z6LPDf2J0kpf2YcI1SrF42XqNRlHcs3VsTDiaM7RdLcDcsFz1N4
	suUX5Pr3vZVCOXEDZO9B0nnqcZL/E/RmBvIa0nEMYr4WnAHE/gCxwoDv7bodIzeQ5Dlt
	pm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=p6bQHmGDS/apxp1gRz+hLQ0D51bGgFal1u+sfeKHXYI=;
	b=XYJ16hpWqdwUnRIedc4vPb6PR7lbi1UAqLClyuaMh2u5dHojLOPtfG+UbG60nyC2gW
	9u73zYtFJzv+DaWjaSKqYkeHiFLCwK1G6i0I8KjfiN7DbrPYVjq6fySd/X9qGIUFVi5T
	WDdeLR6TQSRQ7zVVFY9673SW9Xj603I79wJ5ZdlW3Y/Se5IAkvkEN5H5PCpImOC2qVr3
	7J0SAAGM3x9TRvm/Jw/vFw5S4bnhJJKcCulK7+nofwbJ2sC0L578TxSUoGzXIRS86Qvx
	rQC2scsimW1ZiyCIw6AAsq1LFAYVijHKt/V+ocR/BwqEGa9mYqdwtqyF8zQGcQ4PMqqB
	Yyiw==
X-Gm-Message-State: ALoCoQlUkOOteh8b34iJuCRESZATrgyPa0ude1D7BTy7AZjXSrZpy1AdFf/19Hva608sZ3ibX7ah
MIME-Version: 1.0
X-Received: by 10.50.138.73 with SMTP id qo9mr8493639igb.81.1446560129138;
	Tue, 03 Nov 2015 06:15:29 -0800 (PST)
Received: by 10.107.20.204 with HTTP; Tue, 3 Nov 2015 06:15:29 -0800 (PST)
Date: Tue, 3 Nov 2015 14:15:29 +0000
Message-ID: <CAPhnLPBh9=NWczokrL_O5ESzUWCdT0csgp2=bxccDCvLoHK-rQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
Subject: 2.0.rc3 status
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
X-List-Received-Date: Tue, 03 Nov 2015 14:15:32 -0000
Content-Type: text/plain; charset=UTF-8

All,

Last night I ran the rc3 build. We were all green, which was great.
Unfortunately we were missing some patches for SANITY_TESTED_DISTROS.
As these really should be in the release, we've decided to pull them,
rerun the one build this would effect (build-appliance) and regenerate
the poky tarball. So please, when testing rc3, utilise poky
fc45deac89ef63ca1c44e763c38ced7dfd72cbe1.

This isn't optimal, but I'm reluctant to spend 8 hours waiting for an
rc4 which wouldn't even be effected by these patches.

When the build-appliance artifacts are available, we will move them into place.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

