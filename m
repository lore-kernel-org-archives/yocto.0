Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D30E01488
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 11:00:39 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id n3so2578167lbo.34
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 11:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=qFBc3O1/DD85/IWrCksf3+n9ky3z82/qD8TEsZd9pJM=;
	b=JsIvlxr/1pFTqgpQsXLiFSM7JW1xQ5z0L54ArdgQKKssP9R1v3Y8dplN+B/Neu1G8d
	aRwbjt2XPbO4IFKA1ugYwJlMAuWMxaNyMo259jZJv4z0ikPnnZ6hiT6vy4D7/wExiwnw
	qE2dWqseFRKXt8cWBPLnXFelB2EklnVXMZKhXsMVkaFrQt+ohZBtOMse7l+bqS0BIoF9
	fPqnecOvCk2SSDIVVxLWt+ANQzg/QnC8FPEfid9cdxuuBAEHwH6nF/l8/r7FgM7XqcHh
	e/OZpQmlsNs4nfjms9K0fMZvssy4EopV/NQt4L8Ty8GmrncLWWJTzruyO+dkhpODm2lT
	rc7A==
MIME-Version: 1.0
X-Received: by 10.112.8.9 with SMTP id n9mr3530577lba.71.1362938438385; Sun,
	10 Mar 2013 11:00:38 -0700 (PDT)
Received: by 10.112.61.3 with HTTP; Sun, 10 Mar 2013 11:00:38 -0700 (PDT)
In-Reply-To: <CAKdL+dTL=d2LPEV7mLzaNQ1tLiffpP6+SpHBruXFdXLV0NKgYQ@mail.gmail.com>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<CAKdL+dTL=d2LPEV7mLzaNQ1tLiffpP6+SpHBruXFdXLV0NKgYQ@mail.gmail.com>
Date: Sun, 10 Mar 2013 14:00:38 -0400
Message-ID: <CADkTA4NYAu_xxGvmbVAYa1eJBJTFRj9USi1do5rs69J4qvdBfA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: =?ISO-8859-1?Q?Fredrik_Markstr=F6m?= <fredrik.markstrom@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	David Mulder <dmulder@lasx.com>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Sun, 10 Mar 2013 18:00:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 10, 2013 at 7:42 AM, Fredrik Markstr=F6m
<fredrik.markstrom@gmail.com> wrote:
> The RT-throttling can be disabled with:
>
> echo -1 >/proc/sys/kernel/sched_rt_runtime_us
> echo -1 >/proc/sys/kernel/sched_rt_period_us
>
> But as mentioned in the other answers things like the system tick, ipi:s
> etc. will interfere. But significantly less then the rt-throttling :)

Absolutely! And as long as you really know what you are doing, you
won't kill the
system .. turning off the throttling definitely gives a bit more rope
to that end as
well :P

Cheers,

Bruce

>
> /Fredrik
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

