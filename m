Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DF8E008D6
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 15:53:03 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id oy12so7598969veb.4
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 15:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=OuQC/aKu87jAgvPuu/MrcO30dhPneQoh/BAAoKWNwIA=;
	b=GEkmNHOaXRFOQnVip6VVYeMC6ex9dic5nJ8ps0Py1v244CP2SEm5GnyTclm9d+vd0T
	ELKcEky+TtWmeV4cby20FTX7NVH+HimO0Ne7nQ7OTX8EpZKJ8N3mN6RGr0lguPWREtPx
	nMR5jd9nR/QSmzTIgApnvesQ1FLbHGvR2eUFa2Nlz8GlWCpD9+umh1QG56ii8oCcWLU+
	Z9oFWsMNESvMtKBqXZVCXgeLpko66+68HTpceWNh0PhmIAB3CsMvPzmqxqhKde/O4dex
	qnslZCxLn28DqkafnniEOxlsH9mVEWCdtnbzaaHu19pAU84MZiY7ZpIQbV9LjLTHJ9Z/
	BmoA==
X-Gm-Message-State: ALoCoQnX2nc1BWDpKZdPixQKKsCeTIEDKPhu+RR07u+6KfUH2L9txx2MLOiFB9tCVJGLEt3KyEDU
MIME-Version: 1.0
X-Received: by 10.52.189.33 with SMTP id gf1mr4913054vdc.26.1394491982846;
	Mon, 10 Mar 2014 15:53:02 -0700 (PDT)
Received: by 10.52.76.201 with HTTP; Mon, 10 Mar 2014 15:53:02 -0700 (PDT)
In-Reply-To: <1394475262-12061-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1394475262-12061-1-git-send-email-elizabeth.flanagan@intel.com>
Date: Mon, 10 Mar 2014 15:53:02 -0700
Message-ID: <CAPhnLPCGn0ttpVdm_8NORcRZQnwm-wc=OQ0akQ8kR2Kx4SsxDA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AUTOBUILDER][PATCH] BuildImages.py: core-image-basic name change support
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
X-List-Received-Date: Mon, 10 Mar 2014 22:53:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

ignore this. updated patch in the works.

On Mon, Mar 10, 2014 at 11:14 AM, Elizabeth Flanagan
<elizabeth.flanagan@intel.com> wrote:
> Supports http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b7f1cca517bbd4191828c6bae32e0c5041f1ff19
>
> Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  .../site-packages/autobuilder/buildsteps/BuildImages.py          | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
> index 2dc72dd..664b65b 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
> @@ -34,7 +34,16 @@ class BuildImages(ShellCommand):
>
>      def start(self):
>          self.layerversion_yoctobsp = self.getProperty("layerversion_yoctobsp")
> +        self.layerversion_core = self.getProperty("layerversion_core")
>          self.machine = self.getProperty("MACHINE")
> +        # core-image-basic rename
> +        # See: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b7f1cca517bbd4191828c6bae32e0c5041f1ff19
> +        # I hate making people change their configs, so support both.
> +        if self.layerversion_core < "4":
> +            self.images.replace("core-image-full-cmdline", "core-image-basic")
> +        elif self.layerversion_core > "3":
> +            self.images.replace("core-image-basic", "core-image-full-cmdline")
> +
>          if self.layerversion_yoctobsp is not None and int(self.layerversion_yoctobsp) < 2 and self.machine is not None and self.machine == "genericx86-64":
>              self.command = "echo 'Skipping Step.'"
>          else:
> --
> 1.8.1.2
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

