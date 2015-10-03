Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 094D3E00E60; Sat,  3 Oct 2015 16:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63A5E00BBD
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 16:42:42 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so139859009pac.0
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 16:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:references:cc:to:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=LnG3Dc8I+ab/VCbykMT5WhLYwwixseWXa/1BNjTiESo=;
	b=r3dhhBhO3V6yy1ww2K/ZD2Fvv5o8lj94em/TUmsQZlqg9CuAO8ErQfVDCwTiAK6cLF
	rp68oHApg9jf3kOToaIzFc6FPW7KUFQxscBdZrNYinIX48jQ4EBCkixD68HE61lLB+L0
	in73PuFe6mwdGgj8vM/8KyMbqtDC1Rl9iOSxr9T/PqMK5nDBdRHTwoJsZJ0flTmVzMzQ
	9CxPlkcu5s//sQT5p9qo1Y3PsNiDeMDmYIXgEMbWjzM45Jawgk97nPY+H1k60t3Hn52s
	cUE4P7B3KYkVw/em/NufhYK6yXXeZeudFubb4HHuGL0x1dILbHyl96yDESx1uJ0aXbju
	wCOg==
X-Received: by 10.68.247.106 with SMTP id yd10mr23662239pbc.105.1443915762177; 
	Sat, 03 Oct 2015 16:42:42 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	bk8sm19504759pad.18.2015.10.03.16.42.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 16:42:40 -0700 (PDT)
References: <1440232418-4519-1-git-send-email-net147@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <561067EC.2090903@gmail.com>
Date: Sun, 4 Oct 2015 10:42:36 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1440232418-4519-1-git-send-email-net147@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: remove unrecognized configure option
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
X-List-Received-Date: Sat, 03 Oct 2015 23:42:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 22/08/2015 6:33 PM, Jonathan Liu wrote:
> The --with-egl-window-system=rpi configure option is not recognized
> in the current version.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>   recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index 39ded59..ab0280e 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -1,3 +1,2 @@
>   EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
> -                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
> -                                    --with-egl-window-system=rpi"
> +                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
Bump.

Regards,
Jonathan

