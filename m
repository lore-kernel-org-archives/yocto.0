Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B5984E002AB
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 10:30:41 -0800 (PST)
Received: by mail-ve0-f181.google.com with SMTP id d10so4064373vea.12
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 10:30:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=sbX8jrYqMlSwjdTT8vYHSceW7wI/F7Nk6CLMOrypgJs=;
	b=Smqd/DxgmK4XWabWJFsSF6Z0Aa/QU6nv/l2JtFA0A5ALnoVCPxCb0mE8j2XAdjC71I
	AVjEPLOSvG/TkcYJvecDBcPGAq7huZmRNHhVtHBLSFolu0J7T+aHLri7wuG6Hw1TbZz7
	JRia9Fc8atTqgr/hs5YkkQcOaSEauiLV8Z0ucVuZz1jmctCtj/5hr/7vtsD8nWzLSqfv
	Y4zegTuBVXAU/5xZbrtKTYG6u/QDi150CcGiyQBWvt6bHatbw+u6Sx+kbTcLIRKOVom+
	ABrBZ9z8CsVUoSvE+J2mCDfg0G/zfGtZAv8+7NgX3f+vvBuOzU0UuCQRizcDaYgxqFB8
	WIJQ==
X-Received: by 10.58.229.69 with SMTP id so5mr12429324vec.6.1361903440340;
	Tue, 26 Feb 2013 10:30:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.77.105 with HTTP; Tue, 26 Feb 2013 10:30:19 -0800 (PST)
In-Reply-To: <512CF9FC.9060303@mlbassoc.com>
References: <512CE547.10600@mlbassoc.com>
	<CAJTo0LZaoP5i=Zf2UnX2435DeDmgSO0Zb4FZ7PnzQ9v1257Hfw@mail.gmail.com>
	<512CF9FC.9060303@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Feb 2013 18:30:19 +0000
Message-ID: <CAJTo0LadNQ1DEhKg6sHKt8M5-76xiijndMiDwY4E6Ratbw8OMA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlt4VsSoVm5lSTUiJsjvjD2cqGDm5H2epKt9cubJQqza7v7nrq7e2gv/tfKCo0bO818leNz
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X video extensions
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
X-List-Received-Date: Tue, 26 Feb 2013 18:30:42 -0000
Content-Type: text/plain; charset=UTF-8

On 26 February 2013 18:07, Gary Thomas <gary@mlbassoc.com> wrote:
> Here's what I get from xvinfo:
>   X-Video Extension version 2.2
>   screen #0
>   no adaptors present
>
> So I guess the extension is there but my display doesn't support it?
> How would I go about making that work?

XVideo has to be implemented by the drivers, what X video driver are you using?

Ross

