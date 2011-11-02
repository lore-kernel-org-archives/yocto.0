Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D1EE006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 12:18:09 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcdn13 with SMTP id n13so693947vcd.35
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 12:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=7ro6wFvEdNBOTlV/0nvQod9qwnqKFG7iq4L/Lk1PP6Y=;
	b=eFsmzqSpryhfFlzyHgH8iXltL+QTA3TW2asPJ95bNbeMhrbvC9qyvSPQaCuo+bSQaK
	kapijfkVMxMkhB/eFuXJX/oZej9bdA3zhczKLE4JKWLcS5D3cA18cIQ6E1hF4lJ5QxFn
	oNWVdYcf+c/F4hudnd6TmZemBxuGNDP/cs7xs=
Received: by 10.52.90.228 with SMTP id bz4mr5862755vdb.74.1320261488723;
	Wed, 02 Nov 2011 12:18:08 -0700 (PDT)
Received: from [10.0.1.36] ([67.239.164.153])
	by mx.google.com with ESMTPS id cp16sm4422552vdb.20.2011.11.02.12.18.06
	(version=SSLv3 cipher=OTHER); Wed, 02 Nov 2011 12:18:07 -0700 (PDT)
From: Jim Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320248073.26655.86.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
	<1320246467.13661.10.camel@jim-ubuntu-10>
	<1320248073.26655.86.camel@elmorro>
Date: Wed, 02 Nov 2011 15:18:18 -0400
Message-ID: <1320261498.13661.13.camel@jim-ubuntu-10>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Wed, 02 Nov 2011 19:18:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit



Well, I finally got a "successful" build without erros of the Appendix A
example for Crownbay, but the image created was only 216MB in size and
kernel panic'ed because it couldn't find a valid root file system.

I'm going to try again from scratch and see if I missed anything. If
that fails, I'll report out.

Jim A


