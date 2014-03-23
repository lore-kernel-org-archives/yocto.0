Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7398DE00BA3
	for <yocto@yoctoproject.org>; Sun, 23 Mar 2014 15:44:34 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id w5so4635693qac.34
	for <yocto@yoctoproject.org>; Sun, 23 Mar 2014 15:44:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=K2iVAcOcByhKv6C0yRL95eoAOT43/YRWw+7oxPUHBa0=;
	b=C1LFk4ckHSiM/AlOVPfGUJmQgQ67bnx4uRtO99fR8u9J0gMB7SlB12uuJs4mV2Sku9
	fCCDIWwzul3yPP2lMUAUE60JzNUTMHTShSUc8xS+1CDwWzmTlUr8Ezm+gjpN98Nja2Wk
	Ah6a4hulnnLcmnYQLVS7tQ7lj4Pj1WUu95nJss6KcVApEUn4qcPhlauF+sGRfv91ogMq
	cGiGZAz1fKwueO7PGCvKlDbATRv205jhkhAZEdLAejWZ9BweDnEAl91oOye53U4XUWpD
	sLae/GBJ3S8BlDLLqISL+5MEJE2CgHVMCO681MJIDa3Jfk+Dlw+K1pRpwrvlcptuHKOo
	6/Cw==
X-Gm-Message-State: ALoCoQn21fnGf7u+UK115yOkFC9KfCev5/K8xHjwTFVv7fUm6Wmfg5CkQy0bbWnd+EITCmMQ1W47
X-Received: by 10.229.193.136 with SMTP id du8mr71532886qcb.11.1395614673439; 
	Sun, 23 Mar 2014 15:44:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Sun, 23 Mar 2014 15:44:13 -0700 (PDT)
In-Reply-To: <72621A4D-01B8-4143-BFBE-455F6FFAE6A4@keylevel.com>
References: <72621A4D-01B8-4143-BFBE-455F6FFAE6A4@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 23 Mar 2014 22:44:13 +0000
Message-ID: <CAJTo0LY7aHDN4EO9e7fwMfu5RK+XQd6B60YZNLnB-RDyMOt8Hg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: eglglessink from gstreamer 1.0 blacklisted
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
X-List-Received-Date: Sun, 23 Mar 2014 22:44:34 -0000
Content-Type: text/plain; charset=UTF-8

On 23 March 2014 14:21, Chris Tapp <opensource@keylevel.com> wrote:
> I've just added eglglessink to the image, but it's blacklisted. Running gst-inspect-1.0 on
> libeglglessink.so reports that eglDestroyImageKHR cannot be found.

I recommend you have a look at the source for the plugin and determine
if this check is runtime or build time.

Ross

