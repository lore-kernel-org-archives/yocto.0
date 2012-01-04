Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F7AFE00748
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 21:04:22 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so42871379iap.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 21:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=db7l/ufVk1jvl9pM53S+UI9GlN/0GFDwxr4qVq2xS1U=;
	b=uTLoMWWzTxKpd9lUiy6Zykz1tfw0P0QSNsZZ/xfZxaYpmlwrWUygGRsHF1UgrTjQ42
	731/l0GAkfeuomGW53sEweyftoJ9FwiXyKedaU09FB7RwkgyXhP/0pb4qkQ4+XF1oN8c
	F8u3sr4WuvSYaEzMEQFcYnELJ1qpyHD5PmJN0=
Received: by 10.42.19.195 with SMTP id d3mr55477013icb.21.1325653461521;
	Tue, 03 Jan 2012 21:04:21 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id z22sm184948049ibg.5.2012.01.03.21.04.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 21:04:20 -0800 (PST)
Date: Tue, 3 Jan 2012 21:04:42 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
Message-ID: <20120104050442.GE31275@sakrah.homelinux.org>
Mail-Followup-To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D8373@POCITMSEXMB03.LntUniverse.com>
MIME-Version: 1.0
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D8373@POCITMSEXMB03.LntUniverse.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Related to eglibc
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
X-List-Received-Date: Wed, 04 Jan 2012 05:04:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (22/12/11 09:01), Navani Kamal Srivastava wrote:
> Hello,
> 
> We are having problem in running Qt applications. What I figured out is when we are putting eglibc-2.12 generated libraries (like libdl-2.12.1.so, libm-2.12.1.so), Qt applications are flickering or can say refreshing at every touch. On putting same libraries of version 2.11 taken from freescale rootfs ( libdl-2.11.1.so, libm-2.11.1.so) Qt applications are running fine. We tried compiling eglibc-2.11.1 through yocto but we didn't even succeeded to configure it. Can you please suggest some patch that we can apply to get the same libraries.
> 

can you try it with eglibc-2.13 or eglibc-2.14 ?
you can backport those recipes from oe-core master

