Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E402BE0033F
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 07:19:20 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id 13so4641593iea.35
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 07:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=zzGeLvLcDME2d1i57J2hUz8oJ8JrPiNcyuohgvc51Lg=;
	b=kuobgzITN6AukPXx3HOhLE+0GYmyZPjsRjvUVsR/tAdnW05oEPWg5vBSKlGyTbEZyL
	wmB2AUl651oKwJqrn/UJJKqjHIFJ+FY3EdD2JALCgXaiL/aDU8ONL7QuC5t2nltAwu2c
	NgR/M0Iuj7CapkDmsbK/8RVtB8KfLSLSfThzRO+w1zL1XtxILLu39iPvCN6EKFrw6r07
	Nth0MJKqJPyyr5WZNbQcmpdFZ0hV3NAgs4OV48Lo1AOy2W9W7aONGe6/HXXgXUsSCFnp
	H8zdKFqlh4PFQ2WsKRxpuuG49llkhwCBJLhIGGELmF5GqtncnKNpZ0sWpKlGyH1UjtDR
	2l4w==
Received: by 10.50.152.196 with SMTP id va4mr6748303igb.13.1354547960585; Mon,
	03 Dec 2012 07:19:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Mon, 3 Dec 2012 07:19:00 -0800 (PST)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Mon, 3 Dec 2012 10:19:00 -0500
Message-ID: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Disabling PREMIRRORS and upstream sources
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
X-List-Received-Date: Mon, 03 Dec 2012 15:19:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Is there a simple way to disable the use of PREMIRRORS and MIRRORS
within a recipe?

(Perhaps the answer here might be worth mentioning in Section 12.23 of the
Poky Reference  Manual?)

My use case for this is the situation where the code hasn't been released yet,
so there's no point in checking mirrors.

Thank you,
Jon

