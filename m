Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47F3CE0129D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:10:57 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id q13so30840vbe.22
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:10:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Y1kzxwjEOsm0TlcECxICXvndEaYKPXFA2PzeLVhGnBM=;
	b=j1s/2gSSjPcs+m8uITi7zzh7U+6IfjmS42LphyCmGrA0M06H2c+kL0n4BZB5jdk8QS
	1Ua+mFLF87Vi2fZSzXkgY9BbINLhDy0Mfxqaen7UtkFqFduRp+yfgJ7VhiktPWVWpSEE
	qYewioSshFwXj3z+HZD45acloYdHcPNxnGM3z4esq7VZQ6qhHoqGx1m3P6Y7WKFBP67S
	9WqpluG1zguLYK+xbm1S+Ca90IUHm2CrbLApgZhP3Y1OEA/EOAGxPCrGmSMOxp+UxJ8v
	75tDQ2XWo+wEPj+DufXg6I5UE3eeFlVRnxKN44iheTzpyjlJLFQldVAi4XCPhixnF+1M
	k+0g==
X-Received: by 10.220.176.71 with SMTP id bd7mr5515153vcb.12.1369321855504;
	Thu, 23 May 2013 08:10:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Thu, 23 May 2013 08:10:35 -0700 (PDT)
In-Reply-To: <CAGxOggHHLbwq7jVPnZVPmwhNdj9Fjixk8dfi7tZT0vKNy2BBJQ@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAJTo0LbaJ4ezpvobr6xGK6-=oPAh_H=Woh1uuY7pcrRZbmXHhg@mail.gmail.com>
	<CAGxOggEv1AJfZDo7_QPt8ZSXwVb4WGGrjf_JaOKH1VWKKocabQ@mail.gmail.com>
	<CAJTo0LZ_VTu6hWPUHN-xc1Xp-VBS8Ea9LwT_6ezg8NLROBkfeQ@mail.gmail.com>
	<CAGxOggHHLbwq7jVPnZVPmwhNdj9Fjixk8dfi7tZT0vKNy2BBJQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 May 2013 16:10:35 +0100
Message-ID: <CAJTo0Lat1mAf7UbtQ1aqSc-LZf0d7meUFxNM8ixkMWxz4Z3aGA@mail.gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
X-Gm-Message-State: ALoCoQkTTGNpaCO7/tdz2wBEqiVIC53t24lRIsVQvFaFEia2kC+00uktH94/lDiMMQAHXJm3hxjn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Thu, 23 May 2013 15:10:57 -0000
Content-Type: text/plain; charset=UTF-8

On 23 May 2013 16:08, varun bhatnagar <varun292006@gmail.com> wrote:
> But now I got one more problem......when I tried logging in I found out that
> my keyboard's key mapping got changed and it was not working. How can I fix
> this.... :(

It defaults to the US layout.  To be honest I'm not sure how to change
the default layout, sorry.

Ross

