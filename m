Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CCE1E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 15:58:33 -0800 (PST)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 13 Dec 2012 15:58:32 -0800
Received: by mail-ie0-f200.google.com with SMTP id k13so11661497iea.11
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 15:58:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ws2Qrr5nK4wSLy/C5xNhWRUlmBSL/BUFYbYpxT6d/9w=;
	b=lO8R17NV+KwHctIsXr3AEm2L9/dIZhQa3A+EiYGQ24bHiCF+0CyhJb3oO4TNhtjZrz
	OjTvDg8lSZek+M8Uv+VB/ILBohOjWrhWVMzfki9b5IcTE2t2GCKDap/BMeb3bIGsccKI
	x7Gh5o5b1Fq0vhwB45aRrOkxa1jBzncy4rui6vFWe0JuoAi9aXJTi2rOsF1ub0yZ3pLk
	lvSszX4wu0GH2aQzHwuCJ8b+H5tcS2EA+j4mEaLe0DCJ/eYH5uEELExgY8h09iMxlSos
	mFG22AUxlsdm62uZSmPiMaBfqQs0tnkIkS7TBHVFyc42t13E8rBJqtCaCYgNH7XLfh1x
	o1Zw==
Received: by 10.60.31.49 with SMTP id x17mr3233066oeh.33.1355443111965;
	Thu, 13 Dec 2012 15:58:31 -0800 (PST)
Received: by 10.60.31.49 with SMTP id x17mr3233056oeh.33.1355443111782; Thu,
	13 Dec 2012 15:58:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Thu, 13 Dec 2012 15:58:11 -0800 (PST)
In-Reply-To: <A5D6B647-03DE-4ECD-9610-7FBE100684A7@keylevel.com>
References: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
	<03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
	<D082E3D9-189B-4C66-A272-F28BB743D309@keylevel.com>
	<6E2C4456B0C04C20952CCD8694B0B56F@intel.com>
	<BDB77FD9-2563-4703-BFA8-707101CA366D@keylevel.com>
	<A5D6B647-03DE-4ECD-9610-7FBE100684A7@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Dec 2012 23:58:11 +0000
Message-ID: <CAJTo0LYTdoSeuoCQXYn23Xn8oY+9kXq5Qm0G-yV=bzZ6UuwXtw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkLGmq1XjsKX2DV7wjc7TojBovJRB1ZR3uZR4P/cy1/KxTH/0ICGCtnpWVZgjraqYi1z+AYO0DFP4SjByDJ7HL/fAiVZ1FiIWV6+WQpO+6dt+5MAoeKV1Uhl/aepr0LGJg0MSWfdiZBuaadjflwDX4qdjyvmA==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: libva failing for mp4 using gstreamer under 'danny' with cedartrail BSP
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
X-List-Received-Date: Thu, 13 Dec 2012 23:58:33 -0000
Content-Type: text/plain; charset=UTF-8

On 13 December 2012 23:23, Chris Tapp <opensource@keylevel.com> wrote:
> Unfortunately, adding xvimagesink hasn't helped. I also still don't really understand why webm and flv work ok.

They're probably using ximagesink, but depending on your pipeline
you're probably doing the decode for mp4 using VAAPI, which has
special requirements on sinks.

I'd throw in some debugging to inspect the pipelines constructed for flv vs mp4.

Ross

