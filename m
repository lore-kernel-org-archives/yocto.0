Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8FCE01474
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 21:02:01 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id fc21so4876517vbb.7
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 21:02:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:x-gm-message-state;
	bh=caX+bAEsjt+P2TkY9UrSxRqlQ9da5WolOuB0GultA5Y=;
	b=WeoEk/QryUOW7Dk0ORRCGWvapyLALSV/Nls7sgQ64Bym2Rh1PL/IBsTw8hkvxJquHf
	4qo5Q6sjY6ebENvWiDuLlyf1lHSU54ddiM8qWfbp0feCxHjOh0bjjTrcv7+fa+3jy9OT
	Oq2kuM4YW2x/Bpt/mwlUCF8glU2Mr46XWzKaMHe3uLLYlRs3HRxnZnVCsYQrhelJRTp3
	ipm82dfuCD78DVRIfYWpAylIHXX4ybSNpO8F9zAOU3Z+rhfUPCRJ1qe+gD02yLKIq62o
	EQhe97HNa+62GbamnDVpDUj+0UT4s1d44fKuaK4rYmOjCefpR+l9QXXY98LslHzAXJde
	GPBw==
MIME-Version: 1.0
X-Received: by 10.220.88.145 with SMTP id a17mr21784584vcm.66.1364356920912;
	Tue, 26 Mar 2013 21:02:00 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Tue, 26 Mar 2013 21:02:00 -0700 (PDT)
In-Reply-To: <CAPhnLPDAEG+scHdCFGvbV+n7hKOQysrcJ+yuZ=CnCdYHkdGvNQ@mail.gmail.com>
References: <CAPhnLPDAEG+scHdCFGvbV+n7hKOQysrcJ+yuZ=CnCdYHkdGvNQ@mail.gmail.com>
Date: Tue, 26 Mar 2013 21:02:00 -0700
Message-ID: <CAPhnLPCV0D4xW=MTjUqxd4okZ32PZWdKryKxBzM5G42FSy0P0A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkYsqjPiyatMIe8AE3KmBzEFhXCUGThiD1OazPHA+6bUqkGVCbmv/YsL/07PGL7dVewcr+m
Subject: Re: 1.4_M5.rc2 availability
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
X-List-Received-Date: Wed, 27 Mar 2013 04:02:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Mar 26, 2013 at 7:57 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> 1.4_M5.rc2 is currently building and will be available in a few hours at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130326-2

All,

I've found an error in the autobuilder code that caused the creation
of bblayers.conf to exclude meta-qt3. I've fixed the issue and have
restarted this build. It should be complete within the next 6-7 hours
or so. The new URL will be:

http://autobuilder.yoctoproject.org/pub/nightly/20130327-1

>
> meta-intel: 2e8760d272aa2c62b41cbf768445c99569604c5e
> meta-qt3: 4c27cce6688aa39852f3cba5e7b80ec279019605
> poky: bdca49274173153b1b0a72887de6321b4756b684
> meta-fsl-ppc: 29dece8008c3c6d48b09aeef37f85617cef5dce9
> meta-fsl-arm: 2ea1d2c944c63a078a1921cf8b8abfbc04d5adaa
> eclipse-poky: 5e20d3c32072ddd91dceb8b2b793ef13f25b915e
>
> -b
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

