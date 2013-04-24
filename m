Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DDCDE0054B
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 10:22:14 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id gf11so1343187vcb.8
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 10:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=eDsx+LKdpicsoVkOAF5P+OuR3NIo4gHQOjCViAYEW5Q=;
	b=AONC1sjyQWqb8v42E+sRITghlvEsKuEGw/cdHR2mCk6Zwe9DwHRSGeqY1i0JW+Wul4
	7DT9ZvV8vOOdqm2IFuaxc/upmtT+7iXo1Bqi3WBZp3NvAKRXW/WEjlWjDBRTtkBbPXsh
	bUgvQeP1ivsiuIr8SFTmwJFqBcm28/T5YOkR25F18BnHCswuwobxyHfnrZxfwTJX1GSp
	V22cVc5SG5b902tv+zQh/acUU8mdADOkfOjWtQ+2e7vgAv0EdudKWealMuKCmDlo9em1
	9EG+xAOnizYSKLZUK4s4IzTa2m8uq2O4iAKnK1SLVbAFHFNJY4FB6Ad6EEi2P5r8Jzmt
	Wrmg==
MIME-Version: 1.0
X-Received: by 10.52.100.193 with SMTP id fa1mr9489349vdb.46.1366824133395;
	Wed, 24 Apr 2013 10:22:13 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Wed, 24 Apr 2013 10:22:13 -0700 (PDT)
In-Reply-To: <f115de659e4266e23468935fe6a40addff926470.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
	<f115de659e4266e23468935fe6a40addff926470.1366742537.git.stefanx.stanacar@intel.com>
Date: Wed, 24 Apr 2013 10:22:13 -0700
Message-ID: <CAPhnLPBgBPxXc9i0Ss9Ba=+YSRnN__mBoAnHQyFM_qnuPSuxbg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQk20+vLD2Rja2zEKbOHTq1XEYs+oHIpX8YhqLS7hAHm2iNf4HQ8SORhn2Z7cawpGBSSN+k/
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][RFC 2/6] CreateAutoConf.py: add initmgr option
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
X-List-Received-Date: Wed, 24 Apr 2013 17:22:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 23, 2013 at 11:52 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> Add an option to set the init manager used. This is used
> for building images with systemd.
> The order is important as it decides the primary one.
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  .../site-packages/autobuilder/buildsteps/CreateAutoConf.py  | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
> index 3a4b9f9..4af9860 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
> @@ -36,6 +36,7 @@ class CreateAutoConf(ShellCommand):
>          self.adtdev=False
>          self.factory = factory
>          self.buildappsrcrev = "${AUTOREV}"
> +        self.initmgr=None
>          self.kwargs = kwargs
>          for k, v in argdict.iteritems():
>              if type(v) is bool:
> @@ -119,6 +120,18 @@ class CreateAutoConf(ShellCommand):
>                  else:
>                      adtrepo_url=os.environ.get("ADTREPO_URL")
>                      fout=fout+'ADTREPO = "' + adtrepo_url + '/' + self.getProperty("distroversion") + '"\n'
> +            if self.getProperty("branch_poky") != "danny" and self.initmgr:

Here we will probably want to do:

                if "danny" not in self.getProperty("branch_poky")....

That covers cases where we have "danny-next" or some other issue. I'm
sure I do what you do above, and if so, that should be fixed.

> +                # we don't neet to test sysvinit only, because that's the default
> +                if self.initmgr == "systemd":
> +                    fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
> +                    fout = fout + 'VIRTUAL-RUNTIME_init_manager = "systemd"\n'
> +                    fout = fout + 'DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"\n'
> +                if self.initmgr == "systemd sysvinit":
> +                    fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
> +                    fout = fout + 'VIRTUAL-RUNTIME_init_manager = "systemd"\n'
> +                if self.initmgr == "sysvinit systemd":
> +                    fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
> +                    fout = fout + 'VIRTUAL-RUNTIME_init_manager = "sysvinit"\n'
>          if self.atextappend:
>              fout = fout + self.atextappend
>
> --
> 1.8.1.4
>



--
Elizabeth Flanagan
Yocto Project
Build and Release

