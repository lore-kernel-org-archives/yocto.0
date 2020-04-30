Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4518.1588243630262894878
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 03:47:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hCqygWeQ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: maillinglists18@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C99E6E01AA9; Thu, 30 Apr 2020 03:47:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E41DE01A27
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2020 03:47:07 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id r7so4082273edo.11
        for <yocto@yoctoproject.org>; Thu, 30 Apr 2020 03:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=2Abn6Gmzt6NnY33COuDSfki7EleWvotXJlIURnjqGYc=;
        b=hCqygWeQAAdubN4KwtzRboEtMswsyZu1sYzPFyxEkZuXwaQO/ddxCDs+shM8xDHUIf
         Ed3QIGoC3dQZ6Ir5F0e/YDRE0/vTQP4ufAHP9JAOZP+tOtY7B/8DG9wvaJ/ALV+VHP0i
         TVPqNf5IyBNz3zDhno7NM13LddJ8f6GLmGqUNPeJWwa+ODnDVATG7Beu3bUp06bjT33y
         5yII8ddNtgPLv//+83T6gjBhuJK3qI980LOK/YukZZzTil/cxPfe7yPb7LpDuk4cL4rF
         3pYGV+1lmPNT7Q7fIKZF2NBp9kxfQYuZwpbrUQRfN7Z7rWAGb/uIbx7Xj/hKaBux0ieu
         Nbcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2Abn6Gmzt6NnY33COuDSfki7EleWvotXJlIURnjqGYc=;
        b=lPQIv1NXeae2nQ/DTYi6cSqqsqyg4IqjOyDick9Lg7QGPUpcd1vOHWxyLacTg4eKeh
         T4/WjsiRi7ULsxoegbqwWbE2NmqjedANpT5cMHGfrRFUy/kJoks5oAjh15Ny+ar7VfVN
         JlL+Qvj6jHpIekYlO/pv3HPcUanaE9dEpfmJSkOifw//O7smddz3sMiSwTqHOl3E8tJ2
         yQpQbtUkCMRzLDFIWy4ORNpJWVMJTCE5eq4colI3sjVGWDQgJYHm2rt7Z3L/R8SDxHtO
         LUkATNpU/DDGmBJDsicDITTnJngkBFGBYi2308u3PwkG9OPF9DqncPMmuLVEgcDZqH/r
         MVpA==
X-Gm-Message-State: AGi0Pub3flGvhzyUJemR5XvDcImJVDx9/w5sy1nmhcsdOjLZCVDy0K3Z
	nxLwiyUHNukzW/b7BAmOvurwIn0ArHrnpBQKbGYh6g==
X-Google-Smtp-Source: APiQypKzRf+3Wg7LubQFqMcIM8/6XImHNlS7B2VylhNhvOvKQ+2bicN770HOVF222k8zs/7tWeG1YSk29SVTSNnB8Rw=
X-Received: by 2002:a50:c112:: with SMTP id l18mr2071188edf.37.1588243626533;
 Thu, 30 Apr 2020 03:47:06 -0700 (PDT)
MIME-Version: 1.0
From: "Teemu K." <maillinglists18@gmail.com>
Date: Thu, 30 Apr 2020 13:46:55 +0300
Message-ID: <CAAmVmrq7Aed+ZoA0_PVrh4puKObJteVDfGNC+VR5iYoeQkp6VQ@mail.gmail.com>
Subject: License files path
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there a way to determine where the license files are stored? It
would help a lot in automatizing build system when you'd know where to
copy licenses from.

They go to build/tmp/deploy/licenses, but then license.manifest
containing list of all the licenses in an image is under that
directory on directory that changes pretty much every time image is
built. Sometimes also the latest directory contains only
image_license.manifest, but license.manifest and package.manifest is
missing. I haven't been able to track down that issue either.

So  is there way to determine which path the licenses were stored in?
And how to generate image so that it will always generate
license.manifest and package.manifest as well?

I noticed that in that licenses - directory there is directory with
image name, but it's not link to latest directory so I can't use that.
Seems that it only lists license/version info for image recipe.

-Teemu
