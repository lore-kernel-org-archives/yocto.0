Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F700E003C7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:37:35 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id oz11so8840740veb.5
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=tyTgToK8Xk8mUW7QDEzbPUAT5a5WvnD+iXbuZoThUj0=;
	b=JdWb+eN7r1KqriGNd6OVcrC8W8dP8XyY3ily+h5zoR52Nyb9QCZGtjCrSpl3NwGWLD
	Jx1JQnscrX062gARlb7IjsZc3sGoiBvN6/Er2YVivz9LysFU6ljMr29+D63ag/m98H2X
	qYH0kHagL7LU24ZiiwB+tDFgqeEa+lFbeY2QriXkrn7UwJI8+B0vI0sjZSkX6yEC7QuF
	MH7UHnPYVOSe7IDlufr0wzRSc6ZpHySe4hlv0TEY0x5URk1FpAG6UgBuM3CfOQ0i+SOM
	goIFLK4xgAXPuNXAJ5MQV2DrNAcqc8N/AO80GarZ71uysMFg6nhQFbvMJBFxYJtubZeq
	wZPg==
X-Gm-Message-State: ALoCoQnXTIcskXEkAkNOzq6dyXzjUzy2HHYRhfAsHH3WMsaTMyvPaiY2tdgGVExAMcaW84N7kl+E
MIME-Version: 1.0
X-Received: by 10.220.109.1 with SMTP id h1mr17892146vcp.20.1395243455039;
	Wed, 19 Mar 2014 08:37:35 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 19 Mar 2014 08:37:34 -0700 (PDT)
In-Reply-To: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
References: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
Date: Wed, 19 Mar 2014 08:37:34 -0700
Message-ID: <CAPhnLPBf-265aQhXa7TVdyHwS0AxqdjO9_6moXNn3KRzV=ggwg@mail.gmail.com>
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
X-List-Received-Date: Wed, 19 Mar 2014 15:37:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

This looks good. I may switch these over to the no_wait scheduler, but
for now yes.

Reviewed-by: Beth Flanagan <elizabeth.flanagan@intel.com>

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

