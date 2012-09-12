Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD4DE002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 08:08:51 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1356252lag.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 08:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=aaqKCtgWHr6o4NpyFcs1XknfS7cfhbESLDNpxyCsHWk=;
	b=m4l2217DIEd4TImiLGM6mVKCzwUKEWFnQtYOODJeEvIM2JrVkVETgi6sH8/IBafrh7
	I3tXF0D6nfFyR5EIOr9ptyq4RBl/MKjJrz6msL+S3rJWGMzAxc3JMJn/CKZ90zMj056y
	PthFF0Qrv/GurjsSoKAUuKfjPmLw0u9IuguoJZsam/mWTdhs0/lq88lvrBP5Ect4gOCZ
	3eTZ7S+nhdpenPUExypMrCqGeRRmPVxpVrBVvR+sOCYSu5a4POWDjGcgo5qk7PzL/CYa
	Zkanm5kIBz9nFyMfFOP9s96v/LCnFar0WHvALgV1cO3n49lU9d7akNRZ5vtpgmT/5EpV
	JxCQ==
Received: by 10.112.87.164 with SMTP id az4mr7572591lbb.73.1347462528404; Wed,
	12 Sep 2012 08:08:48 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Wed, 12 Sep 2012 08:08:28 -0700 (PDT)
In-Reply-To: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 12 Sep 2012 08:08:28 -0700
X-Google-Sender-Auth: kjHdf4ALhHcolVbeLG2PVIlss70
Message-ID: <CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8saP4Prrmg@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 15:08:52 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif <rudolf.streif@linux.com> wrote:
> bitbake linux-yocto -c compile -f
> bitbake linux-yocto
>
> worked perfectly fine. The tasks after compile were rerun and the new kernel
> copied to tmp/deploy/images
>
> In Edison 7.0.1 this does not seem to work anymore. The tasks do not rerun
> and the kernel image is not deployed.

I'd suggest using bitbake's new -C argument. Run bitbake -C compile linux-yocto.
-- 
Christopher Larson

