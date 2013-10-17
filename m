Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2EF9E016B3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:52:52 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id oy12so1524649veb.13
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:52:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=bHWYc9x+DdqL+8MiMAhfTYYs9IcYGZ9ap26IiHvmtos=;
	b=JBsU/K/Xoj30jGqJhX8eXHDnhP2dPka6Rt3vu5V4VuvDoVP4I9GMUJTkXo2Ru1Ne8x
	IpKVbvXlbm5dSpOyK49u9CiOly4InVadXwg9sV548Du+qw0Gn1NshNnHipNgm4Ov5cTt
	hMQMvhpT9kqfBl4TLBv4w4hVirv0Kzkg9Gvp4kW3RN2eSf/o92yiuDlxi8Jn/UrO7290
	5AIOVMl/CwnTRTnR3Dw369c6avnVGXYtrqk0vo1HI+askL9T8HXt8sdt3jgkfr5zckBX
	j6aMf3kZ7iD3h+M7m/wn3+rb7SR5842PE2K+w6M0lC5qjGOyuEWseX+CXY4kVY+HWHKi
	ZZxw==
X-Gm-Message-State: ALoCoQlomDssn4ILx4lCiFRUb8h9DRz3k1HpeWA86E2fXG7A4088GbXer/szh/acK5JO6LRUItDJ
MIME-Version: 1.0
X-Received: by 10.220.196.66 with SMTP id ef2mr8303805vcb.7.1382039571461;
	Thu, 17 Oct 2013 12:52:51 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Thu, 17 Oct 2013 12:52:51 -0700 (PDT)
In-Reply-To: <1381411082-14579-1-git-send-email-stefanx.stanacar@intel.com>
References: <1381411082-14579-1-git-send-email-stefanx.stanacar@intel.com>
Date: Thu, 17 Oct 2013 12:52:51 -0700
Message-ID: <CAPhnLPCvoiEXbL_22DsUWi+KuVj3RbXmS0rU0iaJ0gD9yAqFfQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] buildsteps/CheckOutLayers: use a commit object for git rev-parse
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
X-List-Received-Date: Thu, 17 Oct 2013 19:52:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

Stefan,

I'm pulling this patch, as this is part of our override of
parseGotRevision in buildbot/steps/source/git.py, but I'd also suggest
that this get suggested to the buildbot project for the original
parseGotRevision.

-b

On Thu, Oct 10, 2013 at 6:18 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> When the object passed to git rev-parse is a tag, we need to dereference
> the tag until a commit id is found or the object cannot be dereferenced
> anymore hence add ^0. (<rev>^0 is a short-hand for <rev>^{commit})
>
> This avoids confusing tarballs like
> http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.0/poky-319e24a8b1e100e950b07bbcad5fc81c42396845.tar.bz2
> which have the SHA-1 hash of the tag instead of the commit.
> It was first mentioned here
> https://lists.yoctoproject.org/pipermail/yocto/2013-October/018607.html
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
> index f7b7d6e..46f9b25 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
> @@ -128,7 +128,7 @@ class CheckOutLayers(Git):
>
>      @defer.inlineCallbacks
>      def parseGotRevision(self, _=None):
> -        stdout = yield self._dovccmd(['rev-parse', self.commit], collectStdout=True)
> +        stdout = yield self._dovccmd(['rev-parse', self.commit + "^0"], collectStdout=True)
>          revision = stdout.strip()
>          if len(revision) != 40:
>              raise buildstep.BuildStepFailed()
> --
> 1.8.3.1
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

