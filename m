Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D803E006C3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:18:43 -0800 (PST)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 12 Dec 2012 03:18:42 -0800
Received: by mail-ie0-f200.google.com with SMTP id k13so2471999iea.11
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:18:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=vYF1azQs2RFSXA0DSkdLRY4rrPS/4lTOutku4t63DnY=;
	b=nzbgsWmP52+fFB/ZLlIl8eH36iScBh47fuEUdG8YGqISrsm7iaNz32orkjaz+JGjHe
	603g86poyvmmF2NYfz6IYP2G9RE0Sl/TVvbW7M6vC1hGZ9UpqWiCmXRNIt/bcgAPVxLc
	ed8rsuhd9436XFJ2GOjrDTy35YKybbZdPa5Ov37dmC6s4g6XpUV1SZROvabUzs1S0gkk
	/ehzPA0wD2DwJapgA2lqgjKa75psozoqSSlP2lCWMXS7PKf5ONQZgiD1ZHQRsO8/DDsn
	Ho6uIY7e4uR5SGd272TOlbm0KpxgfKcS8Z4tVVKqfUjYfBc+g8BEuKJEh1xovCbesErZ
	Dgvw==
Received: by 10.60.31.131 with SMTP id a3mr290036oei.93.1355311122185;
	Wed, 12 Dec 2012 03:18:42 -0800 (PST)
Received: by 10.60.31.131 with SMTP id a3mr290029oei.93.1355311121980; Wed, 12
	Dec 2012 03:18:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Wed, 12 Dec 2012 03:18:21 -0800 (PST)
In-Reply-To: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Dec 2012 11:18:21 +0000
Message-ID: <CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
To: Tim Coote <tim+yoctoproject.org@coote.org>
X-Gm-Message-State: ALoCoQm6x9juUAEgqLK4vMVMjDmZFMo0pijyasLUa2gehSBbW6v7HLyKfyGTDNvoAZ0IysJ539FkMtWYx8FB+R5CmzyO4dX/4WT+4NDqyOeo0gFbIFJDHOjytcqfAYBHK6xPZOCvonOZbEf4ujPi39wFnKc+pVexeA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding package management
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
X-List-Received-Date: Wed, 12 Dec 2012 11:18:43 -0000
Content-Type: text/plain; charset=UTF-8

On 12 December 2012 11:13, Tim Coote <tim+yoctoproject.org@coote.org> wrote:
> I'm trying to add package management to a yocto build. My preference would be yum/rpm on a rh/centos/fedora distro (as that's the distro used elsewhere), but I don't think that's feasible.
>
> I've added:
> [code]
> IMAGE_FEATURES += "package-management"
> IMAGE_INSTALL_append += " apt perl"
> [/code]

Why are you adding apt when you said you wanted rpm?

Just ensure IMAGE_FEATURES has package-mangement and set
PACKAGE_CLASSES to "package_rpm".

Ross

