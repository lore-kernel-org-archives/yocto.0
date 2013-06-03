Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C9CCE014E2
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 09:36:09 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x17so1852061vbf.38
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 09:36:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=ARWTBKB/duU7qgmzJtcgJnKAcRaCtwVUbJRZ0Juvks0=;
	b=lz6tTNsMhO/s+tu5Erqi9tiuvf1E2JHaRRCIaqOv8zxSMaQPApsLeG389p7a+u+khp
	g3ZVw+hWmXqzqklOCFbgwbBDQXrNwcKcSkGMN6QrWS9yipk1IGOIQQ8N8tf2JkYZ/CXf
	KdvaFUS40ZNfOaGrqwnO1fBs9syqaYIL2+hT/46frNJJlorEO8f8q4qKmxCzLvfTeK+w
	ex1gwQS7oLUI+qtsad9Iwb7zRxT+AcePVhewQ6SMJTKbr9/bhVEHCjHGHFnx/eRpYZCV
	/rlCgzGApbRqFW+AjOmBLh3D9isdQKHGGHVPkZpfS+q34pBXuxRYPsqn39c7KFqtrcLL
	3RNQ==
MIME-Version: 1.0
X-Received: by 10.220.252.66 with SMTP id mv2mr8223178vcb.22.1370277368411;
	Mon, 03 Jun 2013 09:36:08 -0700 (PDT)
Received: by 10.52.99.129 with HTTP; Mon, 3 Jun 2013 09:36:08 -0700 (PDT)
In-Reply-To: <1370271136-28206-1-git-send-email-stefanx.stanacar@intel.com>
References: <1370271136-28206-1-git-send-email-stefanx.stanacar@intel.com>
Date: Mon, 3 Jun 2013 09:36:08 -0700
Message-ID: <CAPhnLPAs0YCXd7HEOSPx5Ehc1e_-WDOT_Lzx-qAirXOxFuYLdQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQlYLLeGl1exrKYNOV1wvR6v0eS7d/NcIQ8MTwdWW13oYs20iafNve9rf5Dph35KVNijPcDw
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] nightly-qa-extras: fix timeout arg
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
X-List-Received-Date: Mon, 03 Jun 2013 16:36:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Stefan,

I just pushed the exact same patch. Thank you!

-b

On Mon, Jun 3, 2013 at 7:52 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> This needs to be an integer, not a string.
> Fixes:
> http://autobuilder.yoctoproject.org:8011/builders/nightly-qa-extras/builds/32/steps/Running%20Sanity%20Tests/logs/stdio
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  buildset-config/nightly-qa-extras.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
> index 1bdb0f0..23c955c 100644
> --- a/buildset-config/nightly-qa-extras.conf
> +++ b/buildset-config/nightly-qa-extras.conf
> @@ -11,7 +11,7 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
> -        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : '2400'}},
> +        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : 2400}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
>          {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
> --
> 1.8.1.4
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

