Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B34E8E0083D; Mon,  7 Mar 2016 14:19:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40814E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 14:19:37 -0800 (PST)
Received: by mail-yw0-f175.google.com with SMTP id h129so104512283ywb.1
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 14:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=ychXQ9Zd17eQEtfAlcd/1N6me7f86w9bBcoj2zYdnJ0=;
	b=aFLtThXMOo/w3+3c75u2iYnVRcVjSxjvElHcLW6Xl9odqyf6YpSVAhLa9ZGOg00m3T
	Ti5+6HjUOjiQYWeyNyQkHH0TbVFbOSU+PuLplEZZ29eaEfuMlMF9HSoTAcxI1r4+Hjp+
	TLn5DylWrSKJgWbsFgF9XNKu9QelGxhY3k62n8b3sxFPU4hKm6xYN0q+C0XNK4Whtibc
	vw5HQ1TDLzLDMHgImbZBMkynFw++b4MeZgBSm6KCEq9Mpok4uugpT8yJQ5wWLvy2tRVa
	zajnzplzyFxdVK6kYHwOkaohJxoxdsHQh/WhJtUOPRVUTK/koWGH6jcO2bVToTpcsnxE
	Gemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ychXQ9Zd17eQEtfAlcd/1N6me7f86w9bBcoj2zYdnJ0=;
	b=JyElf8759ID/YUz683fGOwHqgSXSKWIkZQ2MZQxuqFW/i9gZjiCiH9yVCnhy4/75a6
	txLPicxu/KZ8AallKe7r3t4WeBrWRuNQ9SzbH5aO78KOzbrIy0lUhwye1uOaP4YfnS0L
	7DrCn8iZcg2ed+0TdaufU0sS0PJpHRYrHILC0736Ix4KGukUNfPExt8As8+UrcQsXUPt
	M9cBQtADqUttKtccyP40hplOhCtEoE1LBM5xtAp7T5GpjS4v9s/0rNTfNC5xK9VQ6HBi
	nd3Z4f4WgjTzLqCF8YyioRvQzHBiMwofa3SEI4QyLJC1zTz/kZ/c/3Jb+iI9HtiZFWYv
	NfVA==
X-Gm-Message-State: AD7BkJLz4FzVZ/FPQV68ZiD34N0STkSjAfMyw+OOi/io5Z1gGSd16Hx97O1mSG1s58YGeA==
X-Received: by 10.13.201.131 with SMTP id l125mr14699137ywd.150.1457389177372; 
	Mon, 07 Mar 2016 14:19:37 -0800 (PST)
Received: from [10.43.100.29] ([64.2.3.194])
	by smtp.googlemail.com with ESMTPSA id
	o23sm13178743ywd.30.2016.03.07.14.19.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 07 Mar 2016 14:19:36 -0800 (PST)
To: Li xin <lixin.fnst@cn.fujitsu.com>
References: <1457322590-1882-1-git-send-email-lixin.fnst@cn.fujitsu.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56DDFE77.2090905@gmail.com>
Date: Mon, 7 Mar 2016 14:19:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1457322590-1882-1-git-send-email-lixin.fnst@cn.fujitsu.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] samhain-client: Erorr Fix
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
X-List-Received-Date: Mon, 07 Mar 2016 22:19:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

merged.

thanks
-armin

On 03/06/2016 07:49 PM, Li Xin wrote:
> The Error is as following:
>  # /usr/sbin/samhain -t init -p info
>  ......
>  Segmentation fault
>  # echo $?
>  139
> 
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
>  recipes-security/samhain/samhain.inc | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
> index 9525229..23bc8f5 100644
> --- a/recipes-security/samhain/samhain.inc
> +++ b/recipes-security/samhain/samhain.inc
> @@ -50,7 +50,12 @@ do_configure_prepend_aarch64() {
>  # recognized by Samhain's configure script and would invariably
>  # throw back the error "unrecognized option: --oldincludedir=/usr/include"
>  do_configure () {
> -    cd ${S}
> +    cat << EOF > ./config-site.${BP}
> +ssp_cv_lib=no
> +sh_cv_va_copy=yes
> +EOF
> +
> +    export CONFIG_SITE=./config-site.${BP}
>  	./configure \
>  	    --build=${BUILD_SYS} \
>  	    --host=${HOST_SYS} \
> 

