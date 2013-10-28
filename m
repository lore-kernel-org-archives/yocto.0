Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 731EAE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:41:12 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id ey11so3720750wid.1
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=z1PKVgbH2Xp0pwF+bcJgtjl0Z7kvKnbXwnbvvUDZt5E=;
	b=u/6S7n5s6hjmuM5fY3Rh09H51bI/HRGG6FecJ4C+ozi0x1y8nCk9qfTIbBNUmmdo1T
	pUh6fJ2FOxdojjpZaqNEFq9yOECOZe6MR8G1PjM3FvJuxZxWIzYLv/4wjmdanwbA1Aw6
	/2FVu6raIdD0QIcJNPzSiQ4knbREXw8F2/XhlbHS7G3YIaoKORVkx+zAu27BaqTrOGQK
	XrgAnfz8zfh7/5vOUXbxoZoGgOgfq2pC1HVsTIOGzUgu0ve1hbRQbVDpp+BGPgWzQ9FQ
	wIwELRKdkGi5TdOtVGOjbnlE4NP4VYKcOjh08u+usuaN3WWyAS/8Oe1pJTwshbcmRFeZ
	hiCA==
MIME-Version: 1.0
X-Received: by 10.194.83.6 with SMTP id m6mr232674wjy.83.1382956871880; Mon,
	28 Oct 2013 03:41:11 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Mon, 28 Oct 2013 03:41:11 -0700 (PDT)
In-Reply-To: <526E3842.1080707@linux.intel.com>
References: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
	<CABHD4K-WnaT3z5hGmbrfwy+=-d2rukK3+89L9m2feu8nHEZDsA@mail.gmail.com>
	<526E24E2.1050006@linux.intel.com>
	<CABHD4K_-LX4eFn=wh886xKYvEDg8mQQmsbhbiBfHdZGZqruHPg@mail.gmail.com>
	<526E3842.1080707@linux.intel.com>
Date: Mon, 28 Oct 2013 16:11:11 +0530
Message-ID: <CABHD4K_6HoLqGEPYvtKduPOhzzxQCBGWAjyBmcN5sWTLW+suKA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate or modify already existing usres in /etc/passwd in Yocto
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
X-List-Received-Date: Mon, 28 Oct 2013 10:41:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

Fine Jukka ,I got your point.

The way we changed shell of a user of the /etc/passwd fie is by
patching the passwd.master file(orignator of /etc/passwd).

How Do you review this method of modifying  shell of a user?

Thanks
Amit

On Mon, Oct 28, 2013 at 3:41 PM, Jukka Rissanen
<jukka.rissanen@linux.intel.com> wrote:
> On 28.10.2013 12:07, Amit Tomer wrote:
>>
>> Thanks Jukka for the response
>>
>> EXTRA_USERS_PARAMS="usermod -s /bin/false foobar;" where did you
>> define user(Is  foobar is usre here??).
>
>
> Yes, foobar is the username in this example. See manual page of usermod for
> details.
>
>
> --
> Cheers,
> Jukka

