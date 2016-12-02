Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F434E00CAE; Fri,  2 Dec 2016 08:53:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957DAE00B74
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 08:53:00 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id n204so284746098qke.2
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 08:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=uT5ZB+bWhNAb9bx2XJWUOT6py14bQY1+Po0NqMpoNEw=;
	b=CYePCBAs3Iq6mop6UTSRbuRnZnDow6muJ1gNfCuzH2S4vcZM6sSDNqtGLQ8Rdyw6cs
	zEIfK5TF/0BypqL+hvDncsTUCKgUj5SySdEC9rXa78opFz2YxdxwOw6q3e5ZHys7bxp5
	PYO/cWIBTQlkCRZQrDfaUStHqtRSvs5Wi+KmL3dFHbPjgHMrurT4Xn7EiGQHodWd2sbV
	7j1XT/XMWNuSbBJ5VM2YiTPkN05q1wt9pWQpbs7YhWIJZedZ3CFIpzyitjeJKeo6Vs08
	fNxz6/u4HM031YLb5dWNa2GgMaANE1zwVTVXLOP2mLeF0El/x7k5Td5ikjf8ujFIjvXV
	NIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=uT5ZB+bWhNAb9bx2XJWUOT6py14bQY1+Po0NqMpoNEw=;
	b=kXN4ZRZoLiGeZbf4GbpihtSbtxXCoClAmlwP223/vW3vTRsg/bfXAZVBqYUMEBlG2M
	yWZM1Kl5iuYKYbv4sD3gsZPDX2GDhTqSu7SxulRkKFCVuN6YnGWyPxR2WMDVkZdzXQFG
	sWAJ3D1YNwLlA2JONveMiUWspXt/qV6oaV5AB3OobzFJ/pAd0qkZzUNmRIGlJI7wHFpr
	5FKCRU61Zw2jMj3xHOpMxDQu4VFmi4gnipR4jVbCtbm/GbvipARl4zB1uCDvLZMjekdm
	9brqlwCTbstPX3BoeKPF3WvjMfXsztgbiecVDHLXHPj6OeoweG/KmYHlVc8wc1wxeoLL
	7CPw==
X-Gm-Message-State: AKaTC01DaFPPfN1YoaasRIPrAl4unnuutHT8gOhHGOJguZUz8pMdjKcdyebOpuNhLLHYKNemHCTQ2nHnDw1xNw==
X-Received: by 10.55.66.73 with SMTP id p70mr43831175qka.63.1480697580065;
	Fri, 02 Dec 2016 08:53:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Fri, 2 Dec 2016 08:52:59 -0800 (PST)
In-Reply-To: <CAF3SDA47z8VNPgXpcC6AsceWkLmjmLbjt-2x_xyhzLXZqb5K8w@mail.gmail.com>
References: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
	<CAF3SDA47z8VNPgXpcC6AsceWkLmjmLbjt-2x_xyhzLXZqb5K8w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 2 Dec 2016 14:52:59 -0200
Message-ID: <CAF3SDA4WnhTY+HXr5+BaCa=tuqAfgKjYuhiOTq1WN6f4pJmwRQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Krogoth rpm-native download gives me 404, can anybody confirm?
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
X-List-Received-Date: Fri, 02 Dec 2016 16:53:03 -0000
Content-Type: text/plain; charset=UTF-8

Shame on me, the real link was:
http://rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm

Sorry

2016-12-02 14:51 GMT-02:00 Daniel. <danielhilst@gmail.com>:
> Rectifying: http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm;name=srpm;extract=rpm-5.4.15.tar.gz
>
> 2016-12-02 14:50 GMT-02:00 Daniel. <danielhilst@gmail.com>:
>> Hi every
>>
>> I'm trying to build rpm-native and getting this error[1]
>>
>> Can anybody confirm if this link[2] is returning not found (404)?
>>
>> [1] https://gist.github.com/gkos/9a3596452bd00d6ebba5780e7987fd47
>> [2] http://rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm%3bname=srpm%3bextract=rpm-5.4.15.tar.gz
>>
>> Regards,
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

