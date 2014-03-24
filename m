Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E0EE00AEC
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 09:51:24 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id ld13so6079340vcb.33
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 09:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=NJAtepqktIX1y3EJNWXDhfHGzUliJMeT9GLW0fOtCaA=;
	b=KhNLPzoUbR6TzoqajF1eFsebMthuWIP7Q6kBxmBhdxk7FD3UKQVmSnVFYi7feh9+0f
	bkK96a0JocDr7isN3fvAQYL36dlIEt8gCMzvQ9oAZUuGRJnqZJTWqGCigIZ4GAl/BFV0
	Vn3/XZrHASTQt4LO42Dbts1EK9u/5AJHy+rPhOikjAFFQQ0C8ge8GdZ4u2B2poIVETii
	vca/WMAFk/IXugDVTLOr5EM934C8GoL2Vp5YMWLi5T7wPMNbS0fkD3e1v1lf4XmppRkT
	xiVtA9SbLV0jof7alz/NVpZrzeUQQkAQ7RvvI8dTGNWZ4Vee2lTcjpLcgdNr7MwCYctS
	6ZZA==
X-Gm-Message-State: ALoCoQl5REWigiMOljYeIum4V0izXYJqaDYlDtXaTxwpzDnvXMqws+jBzNOSdDUHtn8cnOw64TCU
MIME-Version: 1.0
X-Received: by 10.220.95.139 with SMTP id d11mr3331813vcn.21.1395679883817;
	Mon, 24 Mar 2014 09:51:23 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Mon, 24 Mar 2014 09:51:23 -0700 (PDT)
In-Reply-To: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
References: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
Date: Mon, 24 Mar 2014 09:51:23 -0700
Message-ID: <CAPhnLPB0mNwCqdKVKy2Y8vdcq3Tvf+c=xd2NuKTar_9CZtOJ=g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Lynn Cyrin <firemagelynn@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AUTOBUILDER 1/4] nightly.conf: added package image triggers
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
X-List-Received-Date: Mon, 24 Mar 2014 16:51:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Pulled into yocto-autobuilder master-next for testing. If it goes ok
in dev we'll pull into production next opening.

-b

On Tue, Mar 18, 2014 at 8:10 PM, Lynn Cyrin <firemagelynn@gmail.com> wrote:
> Added triggers for nightly-rpm, nightly-deb, nightly-ipk into nightly.conf
>
> reference #3140
>
> Signed-off-by: Lynn Cyrin <firemagelynn@gmail.com>
> ---
>  buildset-config.master/nightly.conf |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/buildset-config.master/nightly.conf b/buildset-config.master/nightly.conf
> index 085c25f..0bd68e3 100644
> --- a/buildset-config.master/nightly.conf
> +++ b/buildset-config.master/nightly.conf
> @@ -78,7 +78,8 @@ steps: [{'SetDest':{}},
>                             'nightly-multilib': {}, 'nightly-x32': {},
>                             'nightly-ppc': {}, 'nightly-ppc-lsb': {},
>                             'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
> -                           'nightly-x86': {}, 'nightly-x86-lsb': {}},
> +                           'nightly-x86': {}, 'nightly-x86-lsb': {},
> +                           'nightly-rpm': {}, 'nightly-deb': {}, 'nightly-ipk': {}},
>                             'schedulerNames_nowait' : {'build-appliance': {},
>                             'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
>                             'nightly-non-gpl3': {}, 'nightly-oecore': {},
> --
> 1.7.9.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

