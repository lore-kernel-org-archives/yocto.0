Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D156E0080D; Thu, 15 Sep 2016 06:32:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DD8DE0034A
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 06:32:05 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id h134so25878185vkd.2
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 06:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zcw4YVNXRhys7rSkx5cHyf7unuwR0w4iqmt2kQnN9X8=;
	b=eWs4rOWitTO1nLPFjsL0X2236KUUztue+lg7x1oILosXqOJ6ISB/10/eSs0YnYMVRt
	IbaTJLY1/YpKCWFS+i14IfkxtvcaWFXMPU192gJodyHCMMNFZB4qxLUb2gO+xXSCTOfc
	oRBbav6qQI/1ZzFWrirp2Y7kDaZMYbWpMzc2YZWMx9MT9wEWCDUzKs6MVFv7Dl4JEgS3
	nkJYWKMDOLx4aBBmrExWtZ8REL+hi0w4qD7o2TihaKfc8xNXEb+qQ0jeBQu68Gq2B4q/
	TKEoB539YaOp3lBfweQEWRFqhZW1ET3Y8WbB/HHn65JZWcKPVVAD1s1l7azunVxXCRfm
	jDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zcw4YVNXRhys7rSkx5cHyf7unuwR0w4iqmt2kQnN9X8=;
	b=VK1WK3ESF0khRe5xvvs08KHb38CkMUxB5A2HbTTxp/TyHhG0jp+E15YEPU4g3mJkf7
	7UuYZ8jP87d+qo/tqfsdmcgLqmbejVIQjMuXDqLkdOvLwndHj1oFKB4R5FfIVbk4DKXS
	GGKZZ3p+iOOW8pFwgcT9a0AhPrD/KrXfuKfTqo6rrb2NxTuwWXtIcM+okVMerWKJh392
	qVAZYdcB8y8GZ0MJXGOKN0dCzQ29LD4UNPddv0TY7Oz3Yq9uiVCB3noTQT/Z40EJiRA9
	qKMsUev6ubJFSFUkXLgtU29TJ9/fCy7q8zJsosaVWHY7SyL990RSnFcWOIjhwIyZnWRd
	+Xcw==
X-Gm-Message-State: AE9vXwOWDalUIV+3m+1jrWo9zzOrmZHT+YLquG0POyAiEJbWp93kPWZTbT2H8vFiGzdtFyxoGLdJWzqDAaTlPA==
X-Received: by 10.31.16.76 with SMTP id g73mr3300482vki.117.1473946322578;
	Thu, 15 Sep 2016 06:32:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Thu, 15 Sep 2016 06:32:02 -0700 (PDT)
In-Reply-To: <1a502d33-73a4-be2e-a3dd-eca4649bc34e@mlbassoc.com>
References: <1a502d33-73a4-be2e-a3dd-eca4649bc34e@mlbassoc.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Sep 2016 10:32:02 -0300
Message-ID: <CAF3SDA5NiRr=Fh4bHKVpSfYPVUHmGry7eO6nsg+nLhfZSjY0vQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] WiFi
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
X-List-Received-Date: Thu, 15 Sep 2016 13:32:11 -0000
Content-Type: text/plain; charset=UTF-8

Garry, if you are facing problems posting and detailed description of
your problem and by detailed I mean "I do X expecting Y but got Z"
being Z errors, logs, outputs etc would help a lot people to help you.

2016-09-15 10:07 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:
> Any hints on how to get the WiFi to go on the RaspberryPi-3?
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

