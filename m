Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A59E014BC
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 09:56:28 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id m1so623072ves.41
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 09:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=0g2yguGjOqaTEp78Lp3Z80BmNkj+/5vLHvbuHUTDNdo=;
	b=ZokNTO1AQTlXBunCR5J9KJRLVoWYEzVge6/ubVhiT/Y9WZG9PR+PWMr8xZQB3P4xxx
	Ha+wFSnTtuGLE6wvNw6NJ6HGWr3RCP4CA5X5BQ+/nxjVR73eZVsgvTRlS/WU/9/pdA2W
	uSS99DXLxeBCfzxtXjU3ZORZXgnTVMfrksn525DVXgV23v7SIEf7pSK94aF/LRuVtSh4
	qfMxKeo5AAw8WSikww6sCHB0/Hs3AYdjOupul6hndfj/AloRDr2eNP4XLPAugJhwzxD1
	dCkU6vZ4Jr6ju6/7sRmsrhUd4iU7DVVjPqsnffydLJ5pKkbNAltyZe5VnYw7u4rIwoXv
	56mA==
MIME-Version: 1.0
X-Received: by 10.58.214.231 with SMTP id od7mr2172833vec.44.1365612988284;
	Wed, 10 Apr 2013 09:56:28 -0700 (PDT)
Received: by 10.59.3.198 with HTTP; Wed, 10 Apr 2013 09:56:28 -0700 (PDT)
In-Reply-To: <cover.1365147946.git.stefanx.stanacar@intel.com>
References: <cover.1365147946.git.stefanx.stanacar@intel.com>
Date: Wed, 10 Apr 2013 09:56:28 -0700
Message-ID: <CAPhnLPAh8YPWrAEDx-yeDTvX09YYwEsFnO1G+8MLgguLKOf15Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQl3luut/bnxi1DcreTgZsKMw7trDTtcGgW90vvZDstF+xrYtNNX/pM9PriecPGRS/Q7SZed
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH v2 0/2] Add a new buildset
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
X-List-Received-Date: Wed, 10 Apr 2013 16:56:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm going to wait for 1.4 to come out before I pull this. Please keep
this around as we need it, but I don't want to mess around with what
gets built out until it's necessary.

-b

On Fri, Apr 5, 2013 at 12:49 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> The following changes since commit a9434f623752818e10e703a613ef65586c435bbd:
>
>   PublishArtifacts.py: poky-tiny deploy (2013-04-04 11:20:56 -0700)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib stefans/yab4
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab4
>
> Stefan Stanacar (2):
>   nightly-qa-extras.conf: add new buildset config
>   nightly.conf, yoctoAB.conf: enable the new nightly-qa-extras buildset
>
>  buildset-config/nightly-qa-extras.conf | 18 ++++++++++++++++++
>  buildset-config/nightly.conf           |  2 +-
>  buildset-config/yoctoAB.conf           |  3 ++-
>  3 files changed, 21 insertions(+), 2 deletions(-)
>  create mode 100644 buildset-config/nightly-qa-extras.conf
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

