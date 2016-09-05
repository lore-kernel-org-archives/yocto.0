Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36629E00E2F; Mon,  5 Sep 2016 05:49:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.51 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA77DE00E1D
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 05:49:51 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id w124so75962592vkd.3
	for <yocto@yoctoproject.org>; Mon, 05 Sep 2016 05:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DGGUq49+pxvWu4WLbWZQxT8Lc8I9xuQrmAdYU3Ay/gY=;
	b=XfhExdw0M88PW9aLu74mNaa2Bchq8wkgXINeQ0p9LMA9VfocD2nHgEZUGzzdjBGq6+
	g3SD7FHndjAcVVfyH72Eq/nt0k/nrs4hh0KE8Az54iP97MXd4LZc6cct/o/21DYtitxM
	LFrBckg22ErRJw3yvjocHk6vy40KLWzxq+7h+jnJo37i7oK5gi6vn7FZIhlQT3R7lHe9
	mQuBGKIpawQ/EitJx9RpXrU8fUwkka1s/IrtLdApTWXUIlqezLyEybwpmW+Mri7tF+V6
	7ajHLHLOd38wLxVGucmw/HXUTpRk864W8goCY6Z77hlS3G9FgRgOTIgIV/37Lcmtl0Jr
	ltPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DGGUq49+pxvWu4WLbWZQxT8Lc8I9xuQrmAdYU3Ay/gY=;
	b=ZNSheCTFVjt7VhrQHEAtqQ3EnYwZxdcAxUCP578kMdxE5EB6TJjHIcV5IILh09dxOx
	bUpOURdc+3X4Y733TWdA422VEUo01KYa3t6e9s2V1KA22n5HpTg1LDC599KtlZHtj3zj
	7RnCegGxUV9uO3b21Vm1wBTUULzpEpLbI5AQD0rLXWv1ysKBGOUf3+oxW5riVnE1Fk7C
	fsEfNEqZOsI9o/f9w5CyrUWv4lkRVQwwXSgNyX5K5MqXQEgNJbDJBhpaWbwA+KOpxXIJ
	tAu9iY+DFKcHQ/dSHj+/OCiNnmooIKIOcxiiLLA7AwEmcSZo7WSRkRT1+C3LvUGMQ6X3
	g3JQ==
X-Gm-Message-State: AE9vXwN71qAAstLb6LL22uKXM6sicbQMPgcOPJajODfvd1adX8nQ9ZuV9UkDUZAuIlTKkdKwrfK8t8Ehla6Lpg==
X-Received: by 10.31.223.68 with SMTP id w65mr6902085vkg.123.1473079790652;
	Mon, 05 Sep 2016 05:49:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Mon, 5 Sep 2016 05:49:50 -0700 (PDT)
In-Reply-To: <52148e60-3e1c-5c7e-96c3-56b124c2fd64@gmail.com>
References: <52148e60-3e1c-5c7e-96c3-56b124c2fd64@gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 5 Sep 2016 09:49:50 -0300
Message-ID: <CAF3SDA4dyTKjjNaNZqFUCRrb=_Nc8uZCnRLM+TBdMTu4E6y1Cg@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Interested in Helping Out
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
X-List-Received-Date: Mon, 05 Sep 2016 12:49:53 -0000
Content-Type: text/plain; charset=UTF-8

https://bugzilla.yoctoproject.org/buglist.cgi?query_format=specific&order=relevance+desc&bug_status=__open__&product=&content=
:)

2016-09-02 18:00 GMT-03:00 nick <xerofoify@gmail.com>:
> Greetings All,
> I am interested in helping out here. In addition I do have some experience with the project
> so just giving me a heads up on where to start or what is the current focus would be great.
> Nick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

