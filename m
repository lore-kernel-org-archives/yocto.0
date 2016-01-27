Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4FE2E0088B; Wed, 27 Jan 2016 10:46:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE39E0079A
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 10:46:03 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id 1so28993837ion.1
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 10:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8ZiDeAYqTOKfMGQeN9+9lpwalkrIk6Dkf93ItoP7Qxo=;
	b=zEQf24AmEo6BOkcpX5PHW/E7peEzk9YXw9KOtsZ0UTJ1gU2kaEpcyMik4y7dqeD3m3
	k79kmvL+HXT87OruyXbKlKZ5MiDw+gcUiAg+azlZO+m6Nuj49nRxwvIZ7GOoQ5tun5qP
	PbuJI1VVw9KzBWnDIlo1av/7XS9kRYgK/GK4dKGo1H14wbyrU7lL/Y+d0p+QVe86Qvw+
	p2xfhf/yvj+00nB1e+1bxOqj9AC2C1kpb5GYWhKblS9bYQj5rDVthxta+ZdpZf1Y4/cs
	VQxkD037VRNiRtoLUl52JFtfvS5DPoLGazcNkivWS98MV0uhC3HX0VbYcG+dzqE0+f7o
	XAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8ZiDeAYqTOKfMGQeN9+9lpwalkrIk6Dkf93ItoP7Qxo=;
	b=UPSx28FGV1UM9bd8TDNWrTMsrvhgKWruNKEuxVAkZ29zIi5Cpg6HYlnIqt5Pn4DNgn
	/foEbl8ucvoD+LXI6tjmqfXhDTZtzHdoFr4ZC0bGTglo+utmEz+sCLE2J+cHGgXwGY1P
	rIqaqvR2+gW6Dd9dBU21ilIdBuO/A7c9vlGIeNxqsIwjgFiF9hiskJQr37+Wj8RxpYu8
	LsGlcMEbl+2FMI8p6HeeX2g3BGUpYts4e+0LfCIG55PwvJzem/B3rpoUcQ7hhWrZF3I2
	J6iF3zRsLvC5vQrEIzj8Zgsf2HluFzy+kb9rssCiqN7dNBk4g0C8sUJ5PaP38Xy+WI9G
	0mCw==
X-Gm-Message-State: AG10YOQvMeM79dV2z/p9d86yaS+LWJjKzlwuRHuglKz6jf9Q85J3DT0JkZmuk6nzhN6yHtmSQoVNFqKmczbj2PlL
X-Received: by 10.107.165.71 with SMTP id o68mr3751950ioe.94.1453920362670;
	Wed, 27 Jan 2016 10:46:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.140.10 with HTTP; Wed, 27 Jan 2016 10:45:23 -0800 (PST)
In-Reply-To: <1453910071-17477-1-git-send-email-ross.burton@intel.com>
References: <1453910071-17477-1-git-send-email-ross.burton@intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 27 Jan 2016 18:45:23 +0000
Message-ID: <CAPhnLPAyboonGofBUqL+S+O2G+L2yicQXq6Ef7Qb0HQdnufoBw@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] nightly-checkuri.conf: exclude lsof, run against universe
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
X-List-Received-Date: Wed, 27 Jan 2016 18:46:06 -0000
Content-Type: text/plain; charset=UTF-8

On 27 January 2016 at 15:54, Ross Burton <ross.burton@intel.com> wrote:
> The lsof recipe needs to be excluded from our checkuri tests because the
> upstream FTP server refuses to let the autobuilder machines connect to it.
>
> Also run checkuri against universe instead of world to catch more variations on
> recipe permuatations.
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  buildset-config.controller/nightly-checkuri.conf | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/buildset-config.controller/nightly-checkuri.conf b/buildset-config.controller/nightly-checkuri.conf
> index 232f62c..b571429 100644
> --- a/buildset-config.controller/nightly-checkuri.conf
> +++ b/buildset-config.controller/nightly-checkuri.conf
> @@ -16,6 +16,7 @@ steps: [{'SetDest':{}},
>          {'GetDistroVersion' : {'distro': 'poky'}},
>          {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
>                              'distro': 'poky',
> -                            'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n'}},
> +                            'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n',
> +                            'atextappend': 'do_checkuri_pn-lsof = ""\n'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> -        {'BuildImages': {'images': 'world -c checkuri'}}]
> +        {'BuildImages': {'images': 'universe -c checkuri'}}]
> --
> 2.6.4
>

Pulled. Expect production later this evening.


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

