Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C3C7E0137F
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 14:53:55 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id cz11so2388991veb.35
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 14:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=789Jos7Bx1yeqxzyflULPMV/m8yYtGviLZmbny8lDsI=;
	b=hUpAdMN1XOQ5hQiP3lE9sSDpbEcCOISunm60LPo5hD+FgcNSOmCCH+a03gyAfbsFj0
	6UfVi6JpB1V3WI4a9aH13j3nMNMO10hd9QOaDcpOHzTusDZqM6RoIDYOVd1987QG4dEd
	QGFN9Q1KJ7UqQdL5JUovAKB0id4Rv9ExgtJMlCslFilpnYYVm8mtd7XmWZI5FaUBUKya
	2iklBYYQPOMGFbn9FBAe8BH3V/HBrQPME3eEGhLrhNm7/OuN2FJrNFTsL6VAfdj6zUuc
	BA08EchK4rPh/4bx2X4WbCZ1iwVZ/05JA2O6JWhO88tjLH2gxLBm8LVyk244fuTY7NUg
	LKQg==
MIME-Version: 1.0
X-Received: by 10.221.9.9 with SMTP id ou9mr11675409vcb.15.1367099634370; Sat,
	27 Apr 2013 14:53:54 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Sat, 27 Apr 2013 14:53:54 -0700 (PDT)
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
Date: Sat, 27 Apr 2013 14:53:54 -0700
Message-ID: <CAPhnLPAxNMeV0oDzH65jxoazDhMVhgn0f0dU+RrdhDwfqHdc0w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQnSZMe9tlFlR2seHdN84g+iHp/hcgbxoBaxGvTLqGD+K+XSrTKy1Lw3DsuoKOiwgJo4lQ21
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH 0/6] New buildsets and options for 1.5
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
X-List-Received-Date: Sat, 27 Apr 2013 21:53:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

Merged into eflanagan/yocto-autobuilder-refactor. Will deploy to
production this week. Thanks!

-b

On Wed, Apr 24, 2013 at 3:29 PM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> Hello Beth,
>
> Here are the new changes, I've fixed that small issue, hope it looks good now.
> After some more tests, I'll follow up with some builds for ipk only images :),
> but I'm getting ahead of myelf now.
>
> Regards,
> Stefan
>
>
> The following changes since commit 0178163efc6670c9acb982dd579671396cb24290:
>
>   PublishLayerTarballs.py: bad redirect. (2013-04-22 22:56:58 -0700)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib stefans/yab0
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab0
>
> Stefan Stanacar (6):
>   nightly-qa-extras.conf: add new buildset config
>   CreateAutoConf.py: add initmgr option
>   buildset-config/nightly-qa-systemd.conf: add a new target for systemd
>     images
>   nightly.conf, yoctoAB.conf: enable the new buildsets
>   buildsteps/RunSanityTests.py: add suport for custom steps
>   CreateAutoConf.py: add option for package types
>
>  buildset-config/nightly-qa-extras.conf             | 16 ++++++++++++++++
>  buildset-config/nightly-qa-systemd.conf            | 20 ++++++++++++++++++++
>  buildset-config/nightly.conf                       |  3 ++-
>  buildset-config/yoctoAB.conf                       |  3 ++-
>  .../autobuilder/buildsteps/CreateAutoConf.py       | 22 ++++++++++++++++++++--
>  .../autobuilder/buildsteps/RunSanityTests.py       |  3 +++
>  6 files changed, 63 insertions(+), 4 deletions(-)
>  create mode 100644 buildset-config/nightly-qa-extras.conf
>  create mode 100644 buildset-config/nightly-qa-systemd.conf
>
> --
> 1.8.1.4
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

