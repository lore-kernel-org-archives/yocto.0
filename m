Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5467E0049E
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 10:35:14 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1761526eek.35
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 10:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=/pI6IlT/PcKwzKkULKStCmfMlMnKGixQLzhT/iUOICw=;
	b=KcxskgYiiwaWInlWwlcJ+EQ4UuWUyrcsxkzaafaohVKuW8G5Gg8DX1KantAtk7YUH2
	qJhUGm5MBMcLb/A1yvy0ZCehBqjHX4qzhv32XmZw/Xjfzvc9buDZu2fvi88sBOGDgnjG
	VzUqtxNv8o5L9OsYmGGbUMnOKWN1RgH+/lB80tnbMDBwIpafvBC2G3cr9vjXOJoM/jA2
	V0Wr1X594+v72j/AIG0+VYXUqtfi5qL1f2+9trnvj212E+XsGgJOW97K0PhPM3Gh4Crw
	PPYef6VuqZGfr21jCP95nbKNf4LKmvzyPER0lId0qEz3+B4dYkrkoIkVKu/fXqNGOeJy
	JW4Q==
Received: by 10.14.202.66 with SMTP id c42mr18683370eeo.35.1346088913435; Mon,
	27 Aug 2012 10:35:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Mon, 27 Aug 2012 10:34:43 -0700 (PDT)
In-Reply-To: <7E445C71-70EB-4FF8-8D1E-4CA9404442EF@gmail.com>
References: <7E445C71-70EB-4FF8-8D1E-4CA9404442EF@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 27 Aug 2012 10:34:43 -0700
Message-ID: <CAMKF1sqbHB4wjYJZ_WnxxgSRdGQUo4s0ArYNgNACUoDY=mCzCQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Where is the poky version information stored?
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
X-List-Received-Date: Mon, 27 Aug 2012 17:35:15 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 27, 2012 at 8:36 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>        Is the poky version information stored in a particular file? I'd like to create a log tag in my git repo, and prefix it with the poky version.
>

I guess DISTRO_VERSION is what you can use, which is defined in
conf/distro/poky.conf but poky version and yocto version are two
different things
I dont know which one is more relevant

> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

