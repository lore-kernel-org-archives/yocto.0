Return-Path: <gizero@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A93E0E00559
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 08:22:47 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so1409952eek.35
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 08:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ie98gtj5BBkQLGhXWmAwf+rx67r+vLHjcijbWhoFBhA=;
	b=dOVM1WIcLt0T8GuYOX+b+6TtBWnxXCzWX/WkhuV/OMXKY7t9+biDwiaL7sBVH1BXOn
	CdO1N9aA2IDKLH0SDAL5NWPu4n5zc8nDFaDphAF6tY0iIgkTb5wsopvpiQ0eqsQgtPrU
	cH3qVXZWT55PCxbb0OzzJNg0QDKWVcekEeK4ObKrdJMFvqV1H119bi0qHFOL0lB5eclB
	3f9PBq63HZfMfsfgyveFg8+rLiHlwqxbE2v8MKiNRNRgZ5Q+89i0/Z/3nQ+GedGjFkrt
	A9LZTp314T7DUjzH/6w44EZu2Q5RsGGHJ7wOyDyKhFXC1Skq5YC0FiNFsXdXBMsTBSsH
	IeUA==
MIME-Version: 1.0
Received: by 10.14.219.72 with SMTP id l48mr6534003eep.37.1355415766466; Thu,
	13 Dec 2012 08:22:46 -0800 (PST)
Received: by 10.14.53.5 with HTTP; Thu, 13 Dec 2012 08:22:46 -0800 (PST)
Date: Thu, 13 Dec 2012 17:22:46 +0100
Message-ID: <CAC+thW247JHyVxtyeFKyOtv3EHhwPf4JWucx5vDrjVmkfBUg0A@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: AUTOREVing with legacy recipe fetching from cvs
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
X-List-Received-Date: Thu, 13 Dec 2012 16:22:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

In a custom layer I maintain, which is based on Yocto denzil, there is
a recipe that fetches sources from a cvs repository. Since there is
still some development of such a software, for testing reasons, I need
to be able to automate the generation of an image with the latest
revision of a given branch of such a repository (say a nightly build).

After reading the manual I understand that the ${AUTOREV} method is
not working with cvs. Is there an alternative approach to instruct the
fetcher to always perform an update/checkout from the repository?

At moment I can force re-fetching and re-building with:

bitbake -c cleansstate myrecipe && bitbake myrecipe

but I'm looking for a cleaner approach, if it does exist. The goal
being to simply run:

bitbake myimage

...and get the latest myrecipe sources fetched from cvs.

TIA,
Andrea

