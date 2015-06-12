Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C79DBE009D6; Thu, 11 Jun 2015 23:26:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43D67E00982
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 23:26:25 -0700 (PDT)
Received: by lbbqq2 with SMTP id qq2so14324440lbb.3
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 23:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bEs/HJsboecXWmw6qA7pI/2gP4/42N1G8eAlZGazGf4=;
	b=sFQ26wXvGg/jvCLEQjNVUhYMAyjPFXays7ihQ4rtCNTHQKXtOkOn3ZfFmBmtwei2XL
	dztgCoHOZFBPfZkIX0LLWeA7sYQvKJPySjkUaDije0vOB1ForXy7g8ynIv+eP5TRnMVC
	TtSt1NGuPp9UXPhb7zJCoCax//rjEnJlOdhfnMwxW8yV8QkLLY/fQRk1BJXyypLkSR6e
	iazSXVRyMJmjmkvQ1h5QuLj6ZUCzdOVjJCUT3+XefVv3DZmvdpP8JW2CYVH/+n0sj/lX
	gmAxkLCFj5jvGG0uzmRXNe9KFZNTsClRecQ5ki+XLvkiVFLEYHjPBSLLyYiaC38dcUGZ
	GKjg==
MIME-Version: 1.0
X-Received: by 10.152.4.98 with SMTP id j2mr13626591laj.42.1434090383013; Thu,
	11 Jun 2015 23:26:23 -0700 (PDT)
Received: by 10.25.29.200 with HTTP; Thu, 11 Jun 2015 23:26:22 -0700 (PDT)
In-Reply-To: <CAKjpqyKKepJMGvi2zBJK8zFP4F0VxLckh6ZEwwqAvYZH56sKxw@mail.gmail.com>
References: <CAKjpqyKKepJMGvi2zBJK8zFP4F0VxLckh6ZEwwqAvYZH56sKxw@mail.gmail.com>
Date: Fri, 12 Jun 2015 08:26:22 +0200
Message-ID: <CAALGJZZE=vc448p_6UCvDuxDOxTZidPU17uojjxhHPx4R9faoA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Mayank Agarwal <mayank77fromindia@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Generate iso image
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
X-List-Received-Date: Fri, 12 Jun 2015 06:26:29 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

2015-06-11 12:49 GMT+02:00 Mayank Agarwal <mayank77fromindia@gmail.com>:
> Hi,
>
> I have configured the yocto project and i am getting vmdk.ext3 image
> I want to configure that iso image should also be generated.
> I have changed IMAGE_FSTYPE in qemux86.conf to iso.
>
> But on building i am getting do_configure failure in grub_0.xx recipe.
> and the error is: cannot link at address 7C00
Can you please provide a more detailed error log?
>
> I think i am missing some setting in which i have to configure kernel
> to generate
> an iso image.
>
Regards,
Christian
>
> Regards,
> Mayank
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
http://ch.ege.io/

