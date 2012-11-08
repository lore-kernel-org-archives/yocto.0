Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D0C9E013D2
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2012 06:32:15 -0800 (PST)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 08 Nov 2012 06:32:14 -0800
Received: by mail-ie0-f200.google.com with SMTP id 10so8022628ied.11
	for <yocto@yoctoproject.org>; Thu, 08 Nov 2012 06:32:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=TdpHPMegFrCOVxYaWmORmoAs4reUPHIKdLW5vzq98k0=;
	b=cVafUjqC8h9DkW87lbBtou8+7jQGGSyXzAmqBNoF4eAYWxg5wMw+0n3Ir86VJ4FfEG
	DVEAP4za7/z8RGfrJ6ZhTr9DXnOZV7IBmDT3kG3iJHCxUU+NwafZd7Vg+ee9pcPo30qK
	CVUsx018eLAjSfuwZEUVSsMMf2B3lUn+63XcVrsFo4AOjTxjJdR1/Oh2JCIZpqVZmY7P
	aHfCE3JeDXJQhn5TNaeDFx2a+YUXYJcYcNi41EsVXyz+PrK6HwD75NW0idE5gLiACo/o
	V+WGCYG4xkQz938+3S9yV8ETThs4UQ028R7s33t3uxhwhLrQAuXrxrDDl8nIYkKi+ykx
	1kpA==
Received: by 10.182.1.72 with SMTP id 8mr5693141obk.61.1352385133847;
	Thu, 08 Nov 2012 06:32:13 -0800 (PST)
Received: by 10.182.1.72 with SMTP id 8mr5693130obk.61.1352385133734; Thu, 08
	Nov 2012 06:32:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Thu, 8 Nov 2012 06:31:53 -0800 (PST)
In-Reply-To: <CAC+6ctOu6rXA5wiYTabzrGFpt8wv4XBtfc=8u=OuNPpeVN=ZQg@mail.gmail.com>
References: <CAC+6ctOu6rXA5wiYTabzrGFpt8wv4XBtfc=8u=OuNPpeVN=ZQg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Nov 2012 14:31:53 +0000
Message-ID: <CAJTo0LY03Bgv7YXJnhN_iqLdgdxKU=AwzGZ9Pk7xW8xpy72pHg@mail.gmail.com>
To: Zhifan Nie <nzf1989@gmail.com>
X-Gm-Message-State: ALoCoQmJcwM9wl7TeMncNM6Q+PZg/uzv8KAmyHdTpfU5m4ToMtsERA+DtbM8dK5XBrKKT4QlAQNPCyHk7MCuuyB8QViMupHAFu8jbcBLrpMSE9T756Kk2qizjSMw7ZRPEWp6NF1rMX2tYq22Ae9WHWfwhOgrAdQGqw==
Cc: yocto@yoctoproject.org
Subject: Re: please patch runqemu
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
X-List-Received-Date: Thu, 08 Nov 2012 14:32:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi ,

On 8 November 2012 08:07, Zhifan Nie <nzf1989@gmail.com> wrote:
> please find the attached patch file to revise the runqemu script.

The patch looks good, but could commit it to your local repository
with a good commit message and signed-off-by, then re-send using git
format-patch?

Ross

