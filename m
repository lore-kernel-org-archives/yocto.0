Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 672C1E0059F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 17:27:46 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iagk10 with SMTP id k10so4621480iag.35
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 17:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=8k1psbpBAXlC23kHoawkrNyr+92KmUEX6ztqDbJk8zg=;
	b=S/Yxb6DLkCNWgduflDNgTQtqK1mZwkKNTk0enY9KvOGu70vv5+tQabwgyErxkhJJ/s
	d3Vo/DGBA/ekrUpH2fM+dQpMbohvxqfuHS+uZNvmBSyoMDhDc4sAzjC67oNJiwUc8Zhf
	W7/bIwz8k1OGTgBJp11Rs6hNDtKcfEHYW1UkU=
Received: by 10.50.94.231 with SMTP id df7mr11450887igb.9.1322789265513;
	Thu, 01 Dec 2011 17:27:45 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id ft1sm15017435igc.3.2011.12.01.17.27.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Dec 2011 17:27:42 -0800 (PST)
Date: Thu, 1 Dec 2011 17:35:54 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20111202013554.GA10127@sakrah.homelinux.org>
Mail-Followup-To: Trevor Woerner <twoerner@gmail.com>, yocto@yoctoproject.org
References: <CAHUNapSdefCpWo1DwBz3K0k=OX8WwXQH0tJDrAp42a+vAmagzw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapSdefCpWo1DwBz3K0k=OX8WwXQH0tJDrAp42a+vAmagzw@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: override SITEINFO_BITS?
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
X-List-Received-Date: Fri, 02 Dec 2011 01:27:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (01/12/11 18:16), Trevor Woerner wrote:
> Hi,
> 
> First time building Yocto (but have been using OE) on an openSUSE 11.4
> 64-bit host:
> $ bitbake core-image-minimal
> 
> One of the first steps is to build pseudo-native. As it turns out I
> have the glibc-devel-32bit package installed on my machine. This
> appears to confuse meta/classes/siteinfo.bbclass into thinking I'm on
> a 32-bit machine. Pseudo, as a consequence, gets misconfigured and
> fails to build. Removing the glibc-devel-32bit package solves the
> problem.

what errors do u get ? can you post the build configuration that bitbake
dumps at very beginning of your build.

probably its because of 
if [ "${SITEINFO_BITS}" == "64" -a -e "/usr/include/gnu/stubs-32.h" -a
"${PN}" == "pseudo-native" -a "${NO32LIBS}" != "1" ]; then

and when you have glibc-devel-32bit
/usr/include/gnu/stubs-32.h exists and the above check passes somehow

so whats NO32LIBS set to in your local.conf ?
-- 
-Khem

