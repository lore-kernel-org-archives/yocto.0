Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDB48E0044C
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 15:23:42 -0800 (PST)
Received: by dadp13 with SMTP id p13so1669169dad.35
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 15:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=T+pebl8iD+ls0SnDDlQhwIpEhk1iyffKyeLV1ioJWuM=;
	b=CSh2Kfa/Z2uLEYbQ0e5+PCgwTQc+w8sH/OG5Z57a30aE3V1sb8xrzQbF5NEZaRjg5P
	SnzZXXc9tUGecZKHn+TWAio+5gMI8vFH67tMlCyyzfeSGvQ8d1gTfnB3kGv1m11hM5UF
	ayI6fG2ucOfonAZAqs5MQ5Wn62kG3LWJGoyYU=
MIME-Version: 1.0
Received: by 10.68.189.39 with SMTP id gf7mr2198276pbc.142.1329348222608; Wed,
	15 Feb 2012 15:23:42 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Wed, 15 Feb 2012 15:23:42 -0800 (PST)
In-Reply-To: <1329321197.30001.6.camel@babel.joshhome>
References: <1329290581.3039.18.camel@babel.joshhome>
	<CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
	<1329321197.30001.6.camel@babel.joshhome>
Date: Wed, 15 Feb 2012 18:23:42 -0500
Message-ID: <CADzUK1+rXrSNS91NURP9=T_SoKm1a3xg4tmijoU134wUmQhnOg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
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
X-List-Received-Date: Wed, 15 Feb 2012 23:23:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Hello Khem Raj,
>
> On Wed, 2012-02-15 at 07:28 -0800, Khem Raj wrote:
>> the .a files are going into -static package and I guess
>> there is .so and not .so.X which means .so goes into
>> -dev package and hence your libharu package is empty
>> so you have to redirect the files into correct package
>> with the help of FILES_${PN} = "libharu.so ...." etc.
>
> You were right. Thanks for the tip.
>
> Adding FILES_${PN} = "${libdir}/lib*.so" made bitbake to create an
> non-empty libharu package thereby fixing the problem.

Heads up - if you are using 1.2 M2 - you may have to add the following
line in your recipe:

INSANE_SKIP_{PN} = "dev-so"

