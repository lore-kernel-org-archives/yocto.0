Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id EFCCDE00498
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 07:38:49 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id k14so4131288wer.25
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 07:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=o7hxOuUgcAu74Q6zA46PBQjjS2T/GG2YBHf9YL1lJMQ=;
	b=wA7xw0VNcwE8DJuTguiPNIQn5tD8p6jnZUCVbwlgFtLQYuadpkP/a3GOB6dARlMYEY
	Di0J3EF0AgjgdGJU07UEC9qEtlgzn6+Cpojaqi9OrtGRvTAU8b4GIUN+D6TJtKA0vXzJ
	6LseDHmtpJc1OZmtjdHHXEXUk0lR7aMAdwxsFjZYiun2weMIvTuRAQXjoDEtv2ZaCFLc
	fRMiuzVVEHCUMdnl0QlWzJMWslyZ9b3LPMpiI5g2jM5ONfdvuE9gL5RjJ9X7C0KfezhY
	RolN7Opcm1P8OStYEnS5e5cR9XeMyGAs2cOXeTzzpmbbQiOl1DHh0hiuquRIjV9rJ/c1
	293A==
MIME-Version: 1.0
X-Received: by 10.180.79.37 with SMTP id g5mr11429462wix.8.1360510727536; Sun,
	10 Feb 2013 07:38:47 -0800 (PST)
Received: by 10.194.36.228 with HTTP; Sun, 10 Feb 2013 07:38:47 -0800 (PST)
In-Reply-To: <CACW_hTbnHePNOS6Zw7dyBi860Gy0FGBzjnPSWFBNWpBLJkcnHg@mail.gmail.com>
References: <CACW_hTbnHePNOS6Zw7dyBi860Gy0FGBzjnPSWFBNWpBLJkcnHg@mail.gmail.com>
Date: Sun, 10 Feb 2013 10:38:47 -0500
Message-ID: <CAHUNapQa2yiyCJq+YVsxnwfrSvEM6Oaxcz0gSTd85ozRNrMBDg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Danny: default base_do_compile but no default base_do_install
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
X-List-Received-Date: Sun, 10 Feb 2013 15:38:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Frans,

On Fri, Feb 8, 2013 at 9:24 AM, Frans Meulenbroeks
<fransmeulenbroeks@gmail.com> wrote:
> There is also a default base_do_install() that is empty.
> Wouldn't it be more logical if the base_do_install would read:
>
> Currently people using only base, need to add a do_install to their recipe
> but no do_compile (which is somewhat odd; if there is a makefile it seems
> logical to use it for install too).

In my experience when someone manually generates a Makefile for their
project by hand it always includes an 'all' or default target but
almost never includes a 'check', 'uninstall', or 'install' target;
there's a 50/50 chance of it having a 'clean' target of some sort. So
I don't think it's a stretch for the Yocto system to assume a Makefile
doesn't contain an 'install' target. But even if you get lucky and it
does include an 'install' target, what are the chances it has been
designed to properly handle a 'PREFIX' or 'DESTDIR'?

So you're starting with a low probability that a hand-generated
Makefile includes an 'install' target, then coupling that with an even
lower probability that it can flexibly install somewhere other than
/usr/bin or /bin. Yocto's behaviour seems reasonable to me :-)

Best regards,
    Trevor

