Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36CC3E00BAB; Tue,  1 Mar 2016 05:53:49 -0800 (PST)
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
	*      [209.85.160.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB41E00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:53:48 -0800 (PST)
Received: by mail-yk0-f175.google.com with SMTP id u9so77052590ykd.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=GYuFRspcb6gAy6+nSte0wilCpfPlnm+RPoAbFFZfwTs=;
	b=dsLUXDjlAEs6DO+NnU4H/tpuyxej7V0ZGfXhKBwtay/i9aoh2rVVhOroD0CchxWcee
	93OzpnfgGL3Xl51l/LTQGbzA7LFKyJZjAweRxDjX9c9nx8xgKxHTK932s+nREHfkA/X6
	3Nje+r+BENNoXsjyIrJ40Diy2q90DE4xeIg94yxfslmtvQbaBK/JuhS5zM4Lz8EDSRE4
	Tk5Lrdq/mCzAXwA9e2hX0Fh9nNx4Fff/9hHZuqwB/JyjPvo6PrkhUn14lfTky/TNHvVB
	fZ4xK4hxRREOdEY2Q9J65v89RbEXO4u4SnxFAY34dEJfT77UtpBfLSenghC/6lyLAypf
	J8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=GYuFRspcb6gAy6+nSte0wilCpfPlnm+RPoAbFFZfwTs=;
	b=is1gDtzYartIdRXHz5nnLz7fr1F937aRoAw8LsgQXm6Ao65ZTJBBJPFy4JppA41H6N
	jQ0O0ha77+vGiY+SNmEhren4vAauQzEXy/yuudTIbhuZeMFZpDUB1AEcEVebZlFeP9HL
	cX7Y+vr+56OASLAKn4B9/+eFCb+oOwHxNbRXG0YOgwrVfvhxW2TI3THA9YEvjkSrkg7R
	ar+NI5MrnQMFpAh3a/Rie3+dpo9C27mLdtxFlfOTic7KbG+G2hmkKuNCBaPCBf7Wxll1
	nkygGdd88vk1mD36hWlPKVxUs4WGMkVdIRtTObHTc3eQaOq7ACzJWpe3q2yDOWDPKMOw
	UrjA==
X-Gm-Message-State: AD7BkJJFqZGAnOYAz9Fmix7Nsb43BArb3d7NfEU4pj0AaCkXdg49kwcu72aQ/9ARVjlGqZnf+yit3KGQYfmKrg==
MIME-Version: 1.0
X-Received: by 10.37.1.194 with SMTP id 185mr12531252ybb.178.1456840427606;
	Tue, 01 Mar 2016 05:53:47 -0800 (PST)
Received: by 10.129.155.136 with HTTP; Tue, 1 Mar 2016 05:53:47 -0800 (PST)
In-Reply-To: <CAF3SDA4gQSQNBdS5sVpb0E+iwBKPZ9jiO9ZM422A=+xxMmK0JA@mail.gmail.com>
References: <CAF3SDA4gQSQNBdS5sVpb0E+iwBKPZ9jiO9ZM422A=+xxMmK0JA@mail.gmail.com>
Date: Tue, 1 Mar 2016 10:53:47 -0300
Message-ID: <CAF3SDA4ibk2Ee2_4Z4910Fy=3bZq_bZL-Up=CTjU8RYMa=8new@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cronie not executing jobs
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
X-List-Received-Date: Tue, 01 Mar 2016 13:53:49 -0000
Content-Type: text/plain; charset=UTF-8

Got it,

It should be
42 10 * * * /sbin/reboot
instead of
42 10 * * * root /sbin/reboot

Google tricked me

Regards

2016-03-01 10:46 GMT-03:00 Daniel. <danielhilst@gmail.com>:
> Hi everybody,
>
> I get cronie installed from Poky but I can't get it working. I simply
> don't execute the job.
> Here is my crontab:
> root@enlace-imx6:~# crontab -l
> 42 10 * * * root /sbin/reboot
>
> I need this machine to reboot once each day. I'm using the Daisy
> release and the cronie recipe version is: cronie_1.4.11.bb.
>
> Is anybody facing this problem too?
>
> Best regards,
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

