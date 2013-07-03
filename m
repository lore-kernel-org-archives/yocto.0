Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD409E0141B
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 20:18:23 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id p14so5248323vbm.32
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 20:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=qJ7b3r8W6uGwYeRRnZ+TcRxz2qBC6uVWV09MRSCe4q8=;
	b=FvmMUVuHxYaeZzgOscNwvdqwDiJ7dofH72EllQfSXOoblbbbacQQV7sLcM3w2pA8ra
	tTK/HIEBqYjBUHOO7nJlZJLOGjR+NtCe2l9DJwGjMQiimZuWsTuohYnHYGGMTNzT0/Wq
	0rNo+pngx1MllmMnqosbyXYzIlHQ2zoOGaEeyf1e4ushxif3ve0lByXYuoNIamdNfe5Q
	Qu4Q4nXJLChbdsSVXMY4lMFjosEu+i66EUe9JO6FWSDKq7YlwIwD7uq5ZE1s0+/yOuWO
	yhCpdVjIKC/3mMgo0TzTW+k4r8CBH960xp9sIaxWlE/jUxwUWJVRpGG400pCf6VlvBQJ
	YP4Q==
MIME-Version: 1.0
X-Received: by 10.220.42.147 with SMTP id s19mr12246894vce.46.1372821502173;
	Tue, 02 Jul 2013 20:18:22 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 2 Jul 2013 20:18:22 -0700 (PDT)
In-Reply-To: <51D39006.5000000@yoctoproject.org>
References: <51D39006.5000000@yoctoproject.org>
Date: Tue, 2 Jul 2013 20:18:22 -0700
Message-ID: <CAPhnLPD_zjkhzUZrO2pJdT2rxPRUL9tixtXY1zWBys4FMUMZZQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Michael Halstead <michael@yoctoproject.org>
X-Gm-Message-State: ALoCoQlQmgGDY/I1hwiKb9MjtnOLNO/h20gCvkFxTlK7vjEBSQfofHqUPnR4ZB0oolpRddNPauHD
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Project 1.5_M2.rc1 build underway
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
X-List-Received-Date: Wed, 03 Jul 2013 03:18:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm going to have to restart this build. A slight issue on the
autobuilder this afternoon that I didn't catch is causing it to fail.
I'll have it restarted momentarily and will resend out the hashes.

-b

On Tue, Jul 2, 2013 at 7:44 PM, Michael Halstead
<michael@yoctoproject.org> wrote:
> The Yocto Project 1.5_M2.rc1 build is underway. As tasks complete artifacts
> will start appearing at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130703-1
>
> poky                	eaa5df34af42b6a37f6506847d0f3ef6ba0d298a
> meta-fsl-arm    	daf582c93a7283fb0af3b25fe2ada48f4c9985c4
> meta-fsl-ppc    	b889029dca03fcb7e55c671aa5006fe8be1eefb0
> meta-intel        	e0d6134ed2e2687ff9f2ee77701666447842bf33
> meta-minnow  		286a72ba3f5e29432be1dd77127de5bdc2d988c3
> meta-qt3         	b73552fb998fd30a01dbee5a172e432a16078222
> eclipse-poky    	e35dfd79e3970f88a8273125890a54f75f108b97
>
> Please begin QA as soon as possible. Thank you.
>
> --
> Michael Halstead
> Yocto Project / Sys Admin
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

