Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24FCE013E8
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 01:26:15 -0800 (PST)
Received: by pbcup7 with SMTP id up7so761476pbc.35
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2012 01:26:15 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.68.72.138 as permitted sender) client-ip=10.68.72.138; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.68.72.138 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.68.72.138])
	by 10.68.72.138 with SMTP id d10mr183020pbv.15.1330593975790 (num_hops
	= 1); Thu, 01 Mar 2012 01:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=OdNRz+dhacOTyibxFjyrFBQ5GwPsIATXS18bVjmhNvo=;
	b=cP/W/ln/xT4bBEdBkT2eY7acHhXy+hO0PQyCCJzfrYj/+vf05x3pO+9MAVxIwa1FLB
	TnOA4P9YAyp5uDjh4eKazkSXp62NtIvFXogKYw+tpJIL/PCkar8Emg6A+RnqGffqB87I
	R1f/FTUpWabZ6GEqJticCnElo37Tq/YfyP/IQ=
Received: by 10.68.72.138 with SMTP id d10mr154980pbv.15.1330593975689;
	Thu, 01 Mar 2012 01:26:15 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id k6sm1621552pbl.27.2012.03.01.01.26.13
	(version=SSLv3 cipher=OTHER); Thu, 01 Mar 2012 01:26:14 -0800 (PST)
Message-ID: <4F4F40B4.4020200@gmail.com>
Date: Thu, 01 Mar 2012 01:26:12 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120224 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
In-Reply-To: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
Subject: Re: [PATCH] poky-tiny: Assume pkgconfig is provided
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
X-List-Received-Date: Thu, 01 Mar 2012 09:26:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/25/2012 08:29 AM, Darren Hart wrote:
> -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
> which breaks with tiny's minimal libc.
> 
> -dev packages are not currently supported on poky-tiny.
> 
> Proposed-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 411347a..6fa4c90 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -55,6 +55,11 @@ ENABLE_WIDEC="false"
>  # eglibc->bash->gettext->libc-posix-clang-wchar dependency.
>  USE_NLS="no"
>  
> +# -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
> +# which breaks with tiny's minimal libc.
> +# -dev packages are not currently supported on poky-tiny.
> +ASSUME_PROVIDED += "pkgconfig$"
> +

I see you only want to assume pkgconfig but not pkconfig-native

>  # Reconfigure eglibc for a smaller installation
>  # Comment out any of the lines below to disable them in the build
>  DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"


