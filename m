Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBB2EE00CB9; Thu, 17 Jan 2019 06:09:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C216E00950
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 06:09:53 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id b23so7876539ios.10
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 06:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6jSa/2PoXPR0orUpZBN10J8M8ZjBCymGcp7SqshLCF4=;
	b=moHzZjMP9KP+f4DwJPYeS2LN74oQLv5uuwdhkE2jM8iVIvC7uPh0G5si4OL5SJIiG1
	HBaxViNvVQ3+jne++n+bK0bd3Ww7OULsvA7ABoI33hGIwLesmDboIrnCL5DxbseAVf7f
	sJV7/Pa+c5UtUIFrTwUs161lk4zvZ5NkRTpqfogOP69ibif9aRReDtQpM0Z2LBzGEYWp
	fDEXOWA7tOLax9uERPw1Txb2frsUgHwAWKLJH/lfYfLw9lCY6bnL+YMKh12G19p4JWWS
	epD15qwzK267NwtfpJm7jB2WbJF1UcmJNrGK88dJmBaGlVnUC3umRCMYwPkwlLaeKA6N
	pL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6jSa/2PoXPR0orUpZBN10J8M8ZjBCymGcp7SqshLCF4=;
	b=Ni1ghf8tB1Xr8cHESpubMmECqHjX9KZP5dq98KKz103kP/h4hPzCITRQ+M+sciXOK9
	F7HCWHNw1FJvIy6WdhyylGAdKLuXCIHBjsUq3gOZXciEA9UP3E65X2LMYyJIv/JKKO20
	3c3KSEiNlJbCDz/2fD6OGT6djfwo/euakJ6rN3mr0tDNd4PFPHc/e2U9JrKOF7nrSW/r
	oLUBmEg5oinXHvzCtWNwVVXohRobjHDZwrf9Jgn8N9hOQgg8w2xUgOC8J+jfbgEBX5d4
	BvS3N//SyGn2oTd5cG/Y+FiezYDymiubwpdkbRwouFijW0iSc+dCndq6lY+j8hzAWRic
	aZBA==
X-Gm-Message-State: AJcUukcSlZsnSCP1mVPz/+Ey6IsG5775YttZVUS7i73mCOrGyYPuTNY1
	Qf2eu8VET+4PxEJzuqnPBjoEb4pNz8xp+TZSlekq7oGT
X-Google-Smtp-Source: ALg8bN6Ih3Pjiy4U2LDmY7Y2wFzynQzEReK535SQrmTdWGYXrNsWLhWggTBuTATrQWd2dWpBeRX08p7DKb6TeMiEnJY=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr6857460iog.270.1547734192645; 
	Thu, 17 Jan 2019 06:09:52 -0800 (PST)
MIME-Version: 1.0
References: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
In-Reply-To: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Jan 2019 14:09:41 +0000
Message-ID: <CAJTo0LZKCdj6SSQ3iu9CCQjtSC6WakQmfxhwiKNk0occ7k6Ofg@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Fetch from git every bitbake
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
X-List-Received-Date: Thu, 17 Jan 2019 14:09:53 -0000
Content-Type: text/plain; charset="UTF-8"

Look up AUTOREV in the manual, that does exactly what you want.

Ross

On Thu, 17 Jan 2019 at 14:08, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> How can I force the pull from git repository of my app every time I do
>
> bitbake app
>
>
> Best regards,
>
>    MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

