Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25FAAE00995
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 07:28:23 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id f51so25996088qge.2
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 07:28:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ee5Fn2KCCD3/fJP2/lEyDYa7FiSU90beI8JnBEQqf7k=;
	b=f7aleiEbPSRF9pmkSUJk7nhLrU3RpTdwhGJ5IE9qPKnkXF6qXBrtOelvzLkreDSjgu
	13bas/TVaQFQmCw5Mbbev1LEr2Z2NN4B7iZURk7pqoiDtFcceysdoPhL2cvAgd5jDATv
	JhWJ+ANZ7N7kr1jTnl0SD328AzNBY6n+AVduG3pYKrGoTmtEeiuxWQmAZovyP4ROzjzy
	up+7X+yl/A0w6+u1tOJnGoAlRqXpaoVnX5SBLm0+R/sWRpnNEa5cBd8QB7mvpmxDruHi
	S7r/pr3d8bSDSG5vBU91j1XRIYCblZI9M/whT2OLljxky0WoK/AhZIcNzLyygWQMPOJe
	1nww==
X-Gm-Message-State: ALoCoQmezhQZVQyA1oMnwZUWt7UKLPXUW40FeE2CLh4+fPilI9UBW+w1L4YhrWN77Al8dsL9JaCN
X-Received: by 10.224.45.197 with SMTP id g5mr43439338qaf.52.1395239302427;
	Wed, 19 Mar 2014 07:28:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 19 Mar 2014 07:28:02 -0700 (PDT)
In-Reply-To: <1395237814.3808.118.camel@ted>
References: <1395237814.3808.118.camel@ted>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Mar 2014 14:28:02 +0000
Message-ID: <CAJTo0Lap6EmDrEcjermih=_=y5cg5gG_vX9tgnTSB8hG_=4pgw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] buildslave-janitor: Add in try/except handling to make calls robust against failure
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
X-List-Received-Date: Wed, 19 Mar 2014 14:28:27 -0000
Content-Type: text/plain; charset=UTF-8

Both patches look good, Reviewed-by: Ross Burton <ross.burton@intel.com>

Ross

On 19 March 2014 14:03, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> There is a suspicion that the command can fail causing the janitor trash
> removal process to exit. This adds in some exception handling to deal
> with this. It include a timeout to stop it entering nasty loops.
>
> This combined with the previous patch should let us figure out what
> error conditions its hitting.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  bin/buildslave-janitor | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/bin/buildslave-janitor b/bin/buildslave-janitor
> index 153f18d..2cfef86 100755
> --- a/bin/buildslave-janitor
> +++ b/bin/buildslave-janitor
> @@ -66,11 +66,16 @@ def trash_processor(trashdir):
>          print("Not prepared to use a trashdir of /")
>          return
>      while True:
> -        files = os.listdir(trashdir)
> -        if files:
> -            os.system("ionice -c 3 rm %s -rf" % trashdir)
> -        else:
> -            time.sleep(30*60) # 30 minutes
> +        try:
> +            files = os.listdir(trashdir)
> +            if files:
> +                os.system("ionice -c 3 rm %s -rf" % trashdir)
> +            else:
> +                time.sleep(30*60) # 30 minutes
> +        except Exception as e:
> +            print("Exception %s in trash cleaner" % str(e))
> +            time.sleep(60) # 1 minute timeout to prevent crazy looping
> +            pass
>      return
>
>  def mirror_processor(mirrordir):
>
>
>

