Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72A64E013E8
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 01:22:19 -0800 (PST)
Received: by pbcup7 with SMTP id up7so757105pbc.35
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2012 01:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.68.222.194 as permitted sender) client-ip=10.68.222.194; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.68.222.194 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.68.222.194])
	by 10.68.222.194 with SMTP id qo2mr97234pbc.20.1330593739291 (num_hops
	= 1); Thu, 01 Mar 2012 01:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=tx4pUCfv+hgFY8nqvVeM027IS4R+nsQnQfpFNF/0Cks=;
	b=vANWWSSFX/KNIXqboWGiZhhpcQfXIJmAsBFsVK/Drc9tPh8AXjTmXJHNfapKcOpnnV
	1SSXMivmFVbrtlUKqa9hClDJiaG0YF6J6cXYcILRUgQ8aWvjV8meXPVRN/2m/G/ZlNuR
	tDZx7bHyVIf3QboOelWE53qVPKlr5oXkkeaao=
Received: by 10.68.222.194 with SMTP id qo2mr82257pbc.20.1330593739070;
	Thu, 01 Mar 2012 01:22:19 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id q8sm1629042pbi.1.2012.03.01.01.22.16
	(version=SSLv3 cipher=OTHER); Thu, 01 Mar 2012 01:22:17 -0800 (PST)
Message-ID: <4F4F3FC6.4060302@gmail.com>
Date: Thu, 01 Mar 2012 01:22:14 -0800
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
X-List-Received-Date: Thu, 01 Mar 2012 09:22:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/25/2012 08:29 AM, Darren Hart wrote:
> +# -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
> +# which breaks with tiny's minimal libc.
> +# -dev packages are not currently supported on poky-tiny.
> +ASSUME_PROVIDED += "pkgconfig$"
> +
what does $ at end signify ?

