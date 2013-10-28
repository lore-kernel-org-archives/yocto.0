Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED3AE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:07:06 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id l18so6183948wgh.18
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WqFdbNpFZPS5kj5v9kWTDdX1RJK1PAWKmvalPrMHdto=;
	b=nL2NJbdybSRaQSpuG+pqdGShoPcO4vsFbubT/rih4ENu3Cogy7VToxf6SVZBH+zchk
	zlOQXbxfBC7eNmkUGu9SWOZaP9OECJCrG4g7d6mszKgT+BGLoZdEV29gRJjN9es6uuUv
	tehAHpXirsxJDgoqm3s3+Uelk2/oVXR9DJu7svOMjn1cXdFLyJY93JCI01ONdLsta0N1
	UgQfSHGurB8eeDC/XBQ0QE9h5fJ6xRJzdGInhqOq37en4A8eYPoju043GwYpUhode/Eu
	Y4tngsoQDA9IJJDiZfP//MZuMMQNJi7LVC855jcXTfFurjigmVQ2DgXedLff7Kzx5xMO
	WpFQ==
MIME-Version: 1.0
X-Received: by 10.180.36.80 with SMTP id o16mr8391268wij.1.1382954825253; Mon,
	28 Oct 2013 03:07:05 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Mon, 28 Oct 2013 03:07:05 -0700 (PDT)
In-Reply-To: <526E24E2.1050006@linux.intel.com>
References: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
	<CABHD4K-WnaT3z5hGmbrfwy+=-d2rukK3+89L9m2feu8nHEZDsA@mail.gmail.com>
	<526E24E2.1050006@linux.intel.com>
Date: Mon, 28 Oct 2013 15:37:05 +0530
Message-ID: <CABHD4K_-LX4eFn=wh886xKYvEDg8mQQmsbhbiBfHdZGZqruHPg@mail.gmail.com>
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
X-List-Received-Date: Mon, 28 Oct 2013 10:07:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Jukka for the response

EXTRA_USERS_PARAMS="usermod -s /bin/false foobar;" where did you
define user(Is  foobar is usre here??).

Thanks,
Amit.

On Mon, Oct 28, 2013 at 2:18 PM, Jukka Rissanen
<jukka.rissanen@linux.intel.com> wrote:
> On 26.10.2013 20:15, Amit Tomer wrote:
>>
>> Running out of ideas
>>
>> Can I get some fresh ideas for this issue
>>
>
> I am using this in my distro conf file
> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/meta-eca/conf/distro/eca.conf)
> to change the root default password
>
> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS = "usermod -p 'enrcrypted-password' root;"
>
> So if you want to change the shell of a user, the command could look
> something like EXTRA_USERS_PARAMS="usermod -s /bin/false foobar;"
>
> --
> Cheers,
> Jukka

