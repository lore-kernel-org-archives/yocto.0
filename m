Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B421E01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 02:09:26 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id ha12so3699490vcb.9
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 02:09:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=7+j3CEilFyu6Ju7dbBT70aZuR9I9K09V5pVq7XAKEOE=;
	b=EuCm5EmLgCP18APt+zv9KPUJQ/GEHvYQgzHETp4lC+bJH7EDuJzBs90aDfwyixeh5P
	OJeziWOY0+MuYIe1AOjTMAqmwUbgfW725anVw6yahjCXw8BqhmoaPuYgrZM2eGlptg39
	6UzPg7+rqjCWJXT1E21b8XQRkKxZsB5ZY7lysjHp3xB+31SACIpnn9N5iW4Zz7PSoJmN
	wBaDe/EeehL5q/0WVvvBKEoSFFzEPZrQ21sIbJgGPD97v5BDZSpoitZPIpeUKuGQreqF
	SoZvysdSimzWFPg8E1sScKaKBdPCFtP07xF/qgLtJmIUIWkWzrYYsO4jfvSL8CZczYSM
	fDYw==
X-Gm-Message-State: ALoCoQnk9M7tJ2V58gof+O3zIUd05HyKMxY4cAOgcrgnTwtoKEGQeH9HaH3ofiTc43wzE7VzrelW
X-Received: by 10.52.117.79 with SMTP id kc15mr18729vdb.45.1376384965236; Tue,
	13 Aug 2013 02:09:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 13 Aug 2013 02:09:05 -0700 (PDT)
In-Reply-To: <F5407ED9-9AE1-4C40-A9E6-63E7D3B2FF8A@gmail.com>
References: <CAHwX21qDOwpi-ea2Eh4=EXJpEv7k9Em_2PMGvURVstK409MmpQ@mail.gmail.com>
	<CAJTo0LaQKN60TuMYnLe9e3V=LJzyeJCgNKNPtd_OGDb0GvdD5Q@mail.gmail.com>
	<F5407ED9-9AE1-4C40-A9E6-63E7D3B2FF8A@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Aug 2013 10:09:05 +0100
Message-ID: <CAJTo0LYX0HXYi9emcQGcKLO+d+WphvMR4iP8=Sfzj_Ffs5xPxQ@mail.gmail.com>
To: tom schuring <tomschuring@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: matchbox-keyboard documentation
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
X-List-Received-Date: Tue, 13 Aug 2013 09:09:29 -0000
Content-Type: text/plain; charset=UTF-8

On 13 August 2013 10:05, tom schuring <tomschuring@gmail.com> wrote:
> thanks Ross,
>
> is there an example that uses the API ? is it the matchbox-keyboard-im ?

The only example I'm aware of is a piece of closed source software,
sorry.  You can try contacting the maintainer of matchbox-keyboard,
tomas@sleepfive.com.

Ross

