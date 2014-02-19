Return-Path: <koansoftware@gmail.com>
Received: from mail-bk0-f41.google.com (mail-bk0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98D96E0074B
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 02:49:56 -0800 (PST)
Received: by mail-bk0-f41.google.com with SMTP id na10so152981bkb.28
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 02:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=oDGNzsxgKR0F2hDC8zTNAvBWcx71oYu1OiynC83u8gE=;
	b=g+lWr5yrnUIvoRHZT5EPYeh5hGRyStdLDQokiN6fNpHw/Gxje5evjKu5/uEZ3kBPK5
	gVST7NwrCQLwYMjSMm+Y3weN6idiqH4eQap9xCm1Gv2Ag7BlFMw40mnxrYrfUKF2a14j
	mZRWWc7JzinOTCeIwI7d43lL69yimxhnRkjED9CMdRJdcN2R/7oxecLHX7KGwINjw3E1
	WpB/FWDsIxeOwjnBZy4Q1Lps31R9GiMm+PsmBKnGrFb2zzGLbrco951ISycY0yMC3zLs
	5Bn61NxTKRj4PhFsMCdQh0jhqRoS1LPTEl6eC3R6siswsrLD6cTkCb03meUJfUfEtjUo
	bUJQ==
X-Received: by 10.204.64.65 with SMTP id d1mr29739bki.108.1392806994847;
	Wed, 19 Feb 2014 02:49:54 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id mc2sm164696bkb.12.2014.02.19.02.49.52
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Feb 2014 02:49:53 -0800 (PST)
Message-ID: <53048C4E.9050504@gmail.com>
Date: Wed, 19 Feb 2014 11:49:50 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
In-Reply-To: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
Subject: Re: problem with yocto behind http_proxy
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Feb 2014 10:49:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/02/2014 11:44, Federico Vitali ha scritto:
> Hi,
>
> I have problems using yocto behind a firewall. The firewall blocks git,
> so I've followed the instructions
> given here:
>
> http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-manual.html#how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server
>
> i.e. adding the following lines to my local.conf:
>
> PREMIRRORS_prepend = "\
>       git://.*/.*http://www.yoctoproject.org/sources/  \n \
>       ftp://.*/.*http://www.yoctoproject.org/sources/  \n \
>       http://.*/.*http://www.yoctoproject.org/sources/  \n \
>       https://.*/.*http://www.yoctoproject.org/sources/  \n"
>
> BB_FETCH_PREMIRRORONLY = "1"
>
>
> but I still get the following errors:
>
> ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git fetch -f --prune git://git.yoctoproject.org/yocto-kernel-tools.git  <http://git.yoctoproject.org/yocto-kernel-tools.git>  refs/*:refs/* (for url git://git.yoctoproject.org/yocto-kernel-tools.git  <http://git.yoctoproject.org/yocto-kernel-tools.git>)
> ERROR: Logfile of failure stored in: /home/vitalife/yocto/poky-dora-10.0.1/build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490
>
> It seems that bitbake is still trying to access the server with git.
>
> Any suggestion?
>
> Thank you in advance
>
> Federico
>
>


Remove
BB_FETCH_PREMIRRORONLY = "1"


-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

