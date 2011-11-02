Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44E2DE006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 13:07:15 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcdn13 with SMTP id n13so760769vcd.35
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 13:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=Xkj1DPH1CH7neo6/wmM2VO/vUQWcaEFIPE5ldLk6hp4=;
	b=DEkLzJffpQD9N6FNI7P35yy9vG/5XEa5Vj6jR2k6+Jhfb+NFQDKct6biex/JvtqC+5
	b7vAeQvlfXQliuEkt6o7D0bklEyXTaRkZb9FEVwFaNa7s/i7nBcSxAZgCHTEcFDQZ9Tr
	M6qfkQvAp2JH2KM48lSRy5I73Vabqk0xQp7Rk=
Received: by 10.52.69.235 with SMTP id h11mr6073502vdu.92.1320264434410;
	Wed, 02 Nov 2011 13:07:14 -0700 (PDT)
Received: from [10.0.1.36] ([67.239.164.153])
	by mx.google.com with ESMTPS id ey9sm4595323vdc.19.2011.11.02.13.07.13
	(version=SSLv3 cipher=OTHER); Wed, 02 Nov 2011 13:07:13 -0700 (PDT)
From: Jim Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320262596.6937.41.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
	<1320246467.13661.10.camel@jim-ubuntu-10>
	<1320248073.26655.86.camel@elmorro>
	<1320261498.13661.13.camel@jim-ubuntu-10>
	<1320262596.6937.41.camel@elmorro>
Date: Wed, 02 Nov 2011 16:07:25 -0400
Message-ID: <1320264445.13661.18.camel@jim-ubuntu-10>
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
X-List-Received-Date: Wed, 02 Nov 2011 20:07:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 14:36 -0500, Tom Zanussi wrote:

> And what kind of machine are you booting it on?
> 
> Tom

I'm building on Core i5 desktop with Ubuntu 10.10.  One of the odd
things I've noticed during the build is it takes the usual long time
(couple of hours) to build. However when it get to task ~4000, it jumps
quickly to 43xx close to the end. Not sure if it's missing something
critical and I've not set some parameter about the Root file system
somewhere.

Jim


