Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59696E01490
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 15:04:28 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id 11so1669069vbf.8
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2013 15:04:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=VmnYXYusDQQ3AZvrXcueDZGF4DuKCz+c1agpaibpg+M=;
	b=LcrUhD74E7TqfUJO6/7ZjKqZVDOX1FG3T2p4H9sMI6rQdoWcHnYPjQZjE635A4XN2o
	rWX8VmOV7zgQKcYGOxxYah9BvtDK+ruwEFbY1NHL4FhrYC2fzqcY8B8bK8P/u+ajN1qZ
	r+lh1avv9i+YN1fnjL/gcdK/i/xdwTqIzVTFoVvd5gLjvJ5V5XJanS374ZwuyrtEuu6Q
	Eb0ujeW9SYtNnZktB+t+E9ooJpxdqRXAYqyLlCpAADG+ep6ZSwr1bPsLpQFAzXyd/gZN
	C6LjfJ0Kfp+rV9kt+ZKyVKFxDOhVPkvIk/kb28X+IJzLi0U4If68xh7MXuF64G1qpL3J
	YLFw==
MIME-Version: 1.0
X-Received: by 10.220.223.202 with SMTP id il10mr6376494vcb.4.1365113067406;
	Thu, 04 Apr 2013 15:04:27 -0700 (PDT)
Received: by 10.52.230.226 with HTTP; Thu, 4 Apr 2013 15:04:27 -0700 (PDT)
In-Reply-To: <cover.1365095192.git.stefanx.stanacar@intel.com>
References: <cover.1365095192.git.stefanx.stanacar@intel.com>
Date: Thu, 4 Apr 2013 15:04:27 -0700
Message-ID: <CAPhnLPCojptMJRzDohn3qaK5u393v-P1CykMmyBxpRrgqY_uHA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQnjlaWGL5oXZ6YwJdqcDz+ZcRFED6ai7oO+Is+Cad5gKxM+XRgGZV83OIng04uQUKMzMeIM
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH 0/2] Add a new buildset
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
X-List-Received-Date: Thu, 04 Apr 2013 22:04:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Can we rename the buildtarget to something else? nightly-qa-extras or something?

On Thu, Apr 4, 2013 at 10:23 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> The following changes since commit 72198b128658049d1f07f0df999f7282a9c6535f:
>
>   PublishArtifacts.py: poky-tiny deploy (2013-04-03 23:44:07 -0700)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib stefans/yab4
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab4
>
> Stefan Stanacar (2):
>   QA1-nightly-extra.conf: add new buildset config
>   nightly.conf, yoctoAB.conf: enable the new QA1-nightly-extra buildset
>
>  buildset-config/QA1-nightly-extra.conf | 18 ++++++++++++++++++
>  buildset-config/nightly.conf           |  2 +-
>  buildset-config/yoctoAB.conf           |  3 ++-
>  3 files changed, 21 insertions(+), 2 deletions(-)
>  create mode 100644 buildset-config/QA1-nightly-extra.conf
>
> --
> 1.8.1.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

