Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 39D1AE014B6
	for <yocto@yoctoproject.org>; Sat,  2 Mar 2013 08:47:38 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id x10so3424803wey.3
	for <yocto@yoctoproject.org>; Sat, 02 Mar 2013 08:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=65pN36aAAKt0d7mBB7MtPD9CG2tUSi1tfaiNOPK8VLU=;
	b=wsZk0w0s131vMnT3mjy3LsvbpBLicokW88ZViHD59h6QnuIRInUG0pIi9BvSdpcGu1
	LJR2RAPA756YHxoPfTewJyS50aoZDRUNXbF9aI6vB0vKSnoDLDX/QCm7iqfXr2Bn5ZlN
	Pp9+rbH6yk99/4Nhen7DGSBL8rI3oR2pOESCm3tbJ5LrSzKR2hsR5z6MjK89/OE0nQ7Q
	3JgOOP9WgjKR31fV0RiHIEyfOqsfeuWOPeUMfPDz89v41AeO6b2pJlW+zUDTec5lTa7O
	LhjVPFe8P5IEMh0KY1Frv4JaTj9T7rj5YxE63ryPCXP/piRUwUdx4Ks++Eo3TmdrUt3/
	sNKA==
MIME-Version: 1.0
X-Received: by 10.180.104.10 with SMTP id ga10mr3582823wib.23.1362242856298;
	Sat, 02 Mar 2013 08:47:36 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Sat, 2 Mar 2013 08:47:36 -0800 (PST)
Date: Sat, 2 Mar 2013 11:47:36 -0500
Message-ID: <CAHUNapRb8W=qiwysYo+iuBB6mBZxn88XEhXg8sx_=3tEOXonqg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SDK-only build
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
X-List-Received-Date: Sat, 02 Mar 2013 16:47:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've been really blown away by the breadth of the Yocto Project; not
only will it help you create a distribution for a device but it can
also help you create things like a -dev image or a self-extracting
SDK.

Sometimes I like to work with a "sub-Linux" device, something that is
too small to run Linux, or a device on which, for whatever reason,
I've decided I don't want to run Linux.

I've been wondering lately if, theoretically, it would be possible to
use yocto to create a development environment for such projects
(specifically an SDK). Sometimes these devices need specialized
software tools (e.g. flash programmers), or maybe you need to use the
vendor's special, hacked-up version of binutils/gcc.

Often these projects have instructions pages on how to setup your
environment, and for the most part these instructions work fine and
will produce something which with you can work. But sometimes the
development environments they create are... strange. For example,
they'll leave you having to provide long argument lists to gcc so they
can find all the relevant headers and libraries. Nothing tragic, but
just cumbersome.

It would be nice, I think, to be able to create a yocto layer and
provide recipes that would allow a user to very easily bitbake a
development environment for, say, an ST Discovery board. These
recipes, then, would follow the vendor's instructions, but using yocto
all these instructions could be performed with one simple step (which
would then make use of bitbake's powerful fetching, sstate, and
cross-building tools).

Is the concept of "I'm going to build a distribution/root-filesystem
for you" too deeply engrained in the logic of the Yocto Project that
it couldn't be used to only build -native tools and assemble an SDK?

