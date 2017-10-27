Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E499AE00D4E; Fri, 27 Oct 2017 14:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 282CCE00D48
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 14:42:29 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id l24so6199006pgu.11
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 14:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DaAtc+glDk871IeihKzRda0Y+kmxbwKxMf9RchOR4hE=;
	b=jcTu0Fz1T2Wz1rUJPvkTl1ScMDEhuK5xiBXHg5kakG0qPSfyMXu6lKfBNs/KihN3IX
	bF7lS9kVlNsMwejxq+9ar7LYgPFhJf8GBtUU26HCGMQwVygBiqvLz9smiiTlKqJ32yOG
	oo5lXAJVUchsmWhwzo1gEB1aePv3ZhHolX70+2RynW4ukgkQp811mmKxpIKfyb76TtSv
	pbhM0YhN66oY178k4Wh3zOCkHKtz9hlwkO89d3/MxOaEjf5J8Cma7euII/I9+uQfLIHf
	xQTRuj17kfR+1FT0wArE7wyKH2O3O4yY5rNqf6cTkD2jbdTuvAoCBHf0SqYSEMCIGupw
	iaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DaAtc+glDk871IeihKzRda0Y+kmxbwKxMf9RchOR4hE=;
	b=l6aLGcM0KSu2YGYXve97H8Gc4xnjfRbUj3mFB68du3xheajgXXuHQQO+s0zS2xn05Z
	9GwgGJOqMrp4zsJIDJa5ZOeulwPVIO5fDd2QvGpTUcPJYZ27P7be6CWM2yOC2kbZ1mPV
	B1unKmHb322BnFJohkEOafe2ZL6Asz3uj8Ckh+F65Aq17YBciKdNHdulMHQhwjGUbz3s
	/sYf6kX5sCN/vsSgmGH1Vu0JQxRvdeMf1F4nsNW7b5oF2WWky3vQ+rf5ViAKY74nMWTp
	c8fTwJDHdzicIjypWGFqgLSSPdiD7ZmMN3xmWa8uQC3hYhk7ZBsHiGrx2+SWx41b9+jA
	sHaw==
X-Gm-Message-State: AMCzsaWQBxXAo4/P/P4SfnHOQWCzfMETYYKXRzJGUrfDToP1TuQb6Zb+
	i5W23tBQouJ7iN4Ntd7mv7pG0idY/vML3huTTu8=
X-Google-Smtp-Source: ABhQp+TzdjmBUV8JfI520IJPpROHEeuYY0r6xCCoScdxQmZKUqCDJoR7reahfvcbz1nKnCndN6o1IO718LDa7MVXhUc=
X-Received: by 10.84.175.3 with SMTP id s3mr1344272plb.440.1509140549431; Fri,
	27 Oct 2017 14:42:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Fri, 27 Oct 2017 14:41:58 -0700 (PDT)
In-Reply-To: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
References: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 27 Oct 2017 14:41:58 -0700
Message-ID: <CAMKF1sqnUFWx2yXDovoRsyivNneBsmje1_cJ7+2NC99-_pxtYw@mail.gmail.com>
To: Pascal Bach <pascal.bach@siemens.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-mono][PATCH] mono-4.xx: compiling mono 4 with btls requires cmake
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
X-List-Received-Date: Fri, 27 Oct 2017 21:42:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 27, 2017 at 3:51 AM, Pascal Bach <pascal.bach@siemens.com> wrote:
> This was probably working before pyro and the recipes specific sysroots.
>
> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>  recipes-mono/mono/mono-4.xx.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
> index e06fac7..cf9170b 100644
> --- a/recipes-mono/mono/mono-4.xx.inc
> +++ b/recipes-mono/mono/mono-4.xx.inc
> @@ -4,7 +4,7 @@ HOMEPAGE = "http://mono-project.com"
>  BUGTRACKER = "http://bugzilla.xamarin.com/"
>  SECTION = "devel"
>
> -DEPENDS = "zlib"
> +DEPENDS = "zlib cmake-native"
>

perhaps this should inehrit cmake if its using cmake
or explain how cmake is used where abstactions
are not relevant


>  SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
>             file://dllmap-config.in.diff \
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

