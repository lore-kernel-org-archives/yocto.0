Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7C7E013B0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 06:40:55 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id lf11so460798vcb.12
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 06:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=QAtrNDTECwHuQZtEDt7HkGPV6ghTkYyWEA490nfThXE=;
	b=hT7jiZIOwjh0Q3lSw6ewW4NtL7J3KeeTWXXO3mUdrrYa+ftN04pmhD2wC3NtdSPDZV
	upM6kaGqG8ii8VT7F7+llgI3pUvLlcb14cha+EFjJI4aukZr4SF1l+zAvOe/i7Mjgmf+
	1GZYBnd0yi5x4fF8hYhWdmFZ4ENxBjeIbGo5n9aSPBX29fregy7I6jBqxOa+QRZDsNbH
	FsbK6tJtEwu3MC+ranQE4nJ0TeL2WDdOALR0wd1So9xANUbtNkTKIIqCd4s8pfgVKMwc
	aoN3O0JIgLLHvLxNrvqniTCTI8scaM8MHeq2Wj9qLw6sgq8MfyCEQdVegkio0/tGeQsC
	roTw==
X-Received: by 10.52.21.232 with SMTP id y8mr394242vde.6.1373982054474; Tue,
	16 Jul 2013 06:40:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Tue, 16 Jul 2013 06:40:34 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2013 14:40:34 +0100
Message-ID: <CAJTo0LagqKfV02QYFfaZKgQs8qZmf=-fUNjF-UYVHkd6_Oiy+w@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
X-Gm-Message-State: ALoCoQkQ14fmQCRmh1i5GFzhXkIw/SZc921rEuRQm28D+wvytqoj92Q+hIhT1N0C9FRbX9sZ1T3p
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Regarding offline build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Jul 2013 13:40:58 -0000
Content-Type: text/plain; charset=UTF-8

On 16 July 2013 12:21, Amit Kumar <Amit.Kumar@lntinfotech.com> wrote:
>             I have quarry regarding the Yocto Project build offline.
>
> Is that possible to build the Yocto Project with internet access?
>
> I have download the poky-<latest>.tar.bz2, now I wants to build it
> independently without having internet connection.
>
> Do I need to download any other packages also to build it offline?

If you know what you want to build (i.e. core-image-sato), then
telling bitbake to fetch the sources when you do have a connection
should be mostly sufficient:

$ bitbake core-image-sato -c fetchall

This will download all the sources and put them in the downloads
directory that you've configured in local.conf.

Ross

