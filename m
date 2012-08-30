Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53F62E01438
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 04:42:01 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 30 Aug 2012 04:41:49 -0700
Received: by obbtb18 with SMTP id tb18so3803940obb.35
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 04:41:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ce49dJPMXfPatkg9CRzjRDP56oACdqJQ9LsL9LKKjBE=;
	b=g8Zv//Wn4XC0ulDlP87CNaZSQiAFIOv6+TZBAIqjTmox9WjS1AMdXrReOZ3+OSDq3v
	aUbSMvbzfSy0tM9cP1+/R1FOO8pmXCqfk8fwiCKgS2MaHDRo1OqoQukGYsnxizb3aoPr
	980yIS8G7XMCnlliJ3WF/wOoA9uJCo8laYnx/1pJWPqa9WokFPlEA1XqU+bAZz6/jW32
	RFa5ZYGM1uU0bYUTLPcF2AOnK/F77qjgUqhd3zUVVOGTLM6UyZcmLiQiyxDmc6GMWiZ6
	bPg1n2WjmxHQvATkWeztt1kHxZTROVjKQQNyySuLPZBbEtT/U0eYGEJA48iOfHV24NTp
	umsw==
Received: by 10.182.43.40 with SMTP id t8mr3928605obl.93.1346326909210; Thu,
	30 Aug 2012 04:41:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Thu, 30 Aug 2012 04:41:29 -0700 (PDT)
In-Reply-To: <CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
	<CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
	<CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Aug 2012 12:41:29 +0100
Message-ID: <CAJTo0LYvmRzYX0j2HU3eD1nXt6B5URcg6EfGGo_tWUcYz1W6uA@mail.gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQnYQha/SMLvKKRmzTvb1um8jOoL/LLXrwYEcEA+hdy/HOqY85mdDRRFrtO3hlFs2HTLM8az
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
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
X-List-Received-Date: Thu, 30 Aug 2012 11:42:01 -0000
Content-Type: text/plain; charset=UTF-8

On 29 August 2012 13:52, James Abernathy <jfabernathy@gmail.com> wrote:
> rtl8192ce:rtl92c_init_sw_vars():<0-0> Failed to request firmware!

You're missing firmware still.  Ensure that you've installed every
linux-firmware-* package first, and if that doesn't work dig around
the logs and hopefully you'll find the file it's after.

Ross

