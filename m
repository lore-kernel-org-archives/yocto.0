Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0392EE006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 08:07:38 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so315566vws.35
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 08:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=Fx9Rfy4ZnHB00RFmBJRdgziuymIoQ4PeEwI3Q2QgxSg=;
	b=cueH3BMQ52u2pADkZoOi99DW3VmyoX57MC9fUn7NM29UBXzPvJ3lAt32ALsZBgskoa
	trXofToKqGVrHHNL5oNNhS2RESjepGXLMMZzq2rliVtTSwmqemyAVqfivFl7ZdjDPcRc
	jfbOrCp7V4+QewzR1VIT26lN7uh7YW0T84QC4=
Received: by 10.52.35.70 with SMTP id f6mr4849066vdj.84.1320246458370;
	Wed, 02 Nov 2011 08:07:38 -0700 (PDT)
Received: from [10.0.1.36] ([67.239.164.153])
	by mx.google.com with ESMTPS id id7sm3583400vdb.21.2011.11.02.08.07.36
	(version=SSLv3 cipher=OTHER); Wed, 02 Nov 2011 08:07:37 -0700 (PDT)
From: Jim Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320244912.26655.61.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
Date: Wed, 02 Nov 2011 11:07:47 -0400
Message-ID: <1320246467.13661.10.camel@jim-ubuntu-10>
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
X-List-Received-Date: Wed, 02 Nov 2011 15:07:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


> > Second, I looked at your cat of the same file containing the SRCREV
> > commit strings and I don't see that they agree with the commits on the
> > website even just this morning.  Can you explain that? Should I just use
> > the ones in  your cat output or eventually the corrected Dev. Manual?
> > 
> 
> I got these commits from the kernel .bb and .bbappends captured in the
> edison branch, as mentioened above.


That's a lot clearer now.  So does this mean that If I'm working with
edison branch, should I have to change the commits strings at all???

Because the commit strings from your cat'ing of the your file don't
agree with what is in my clone of the edison branch for poky or
meta-intel. Or am I missing something else (likely).

Jim A


