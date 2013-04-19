Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29425E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:03:10 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id hz11so3918748vcb.10
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:03:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ugWGlSlf7IVhX9NMO3+28WGoWP0fs5a+fFYAzPoKtDE=;
	b=oe2GSmE1Er3SoKNOntD0WaSbItgWv3CW9Yj1ryD2u+9R5Yn+ndcahveRxQw0FgZszj
	M/hJ/h6Irq9nNqpZEBoZX50dF9j5WUSchYhLxcRXcUCgM7yOYa8761NSajdc/Qg4fAqE
	nBQ+1z1RbFiuqGAZIPU9jiACcsCt3H+KAfY/7kyd7kzGlvvjTEclCrC6Ld1kD+vFSfOu
	kKgD5mRTeQkzCS2wcVhufiKit+9YicGuMg/S1Oc4hUb4jkeuyYbY8eFrB8l4Mv+o4c24
	Z8tpgoDRIixMNoRb4bB9hjIR2EBgc7n6l/t4vb4AaH1ST4Ap+kvK3uzUwssyM1ayhWjn
	e9kg==
X-Received: by 10.52.16.233 with SMTP id j9mr9965364vdd.29.1366380189250; Fri,
	19 Apr 2013 07:03:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Fri, 19 Apr 2013 07:02:49 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304190945410.5102@oneiric>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 19 Apr 2013 15:02:49 +0100
Message-ID: <CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQlaEqMsdTHu7R8fBYdHX/WuNFfBOWWXdgBoY9zQgFu71echtXJmH5fYCy66zCPORwNlbyJx
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any point in a single machine recipe using a machine-specific file?
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
X-List-Received-Date: Fri, 19 Apr 2013 14:03:10 -0000
Content-Type: text/plain; charset=UTF-8

On 19 April 2013 14:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   but in the case of the rpi, is there any value in putting the files
> under a machine-named subdirectory? of course it won't hurt, but is
> there any point to it?

You could argue the clarity that it will bring if another machine is
added to the BSP - the maintainer will be forced to decide if it's
common across all machines that the BSP will service, or truly is
specific to a particular machine.

Ross

