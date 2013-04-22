Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f44.google.com (mail-qe0-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F17E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 00:58:48 -0700 (PDT)
Received: by mail-qe0-f44.google.com with SMTP id w7so510494qeb.17
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 00:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=tPp4Ojq6RrS4KvPJYll8dIarY2IsPtG3MYYtVxpwKpo=;
	b=AcjEsdchA9WPIxBtCv46synWXk5SwOzhI5IsSCjx/hxtObA53eSTLpqNQIFHGzFFJh
	+G5uC0Ye4ITS0uZS7nh6uN2aQfxoZYcsCOhr4Umi2pz7PqH3DGRe2AXgvC6JJ0ixPMsD
	gRNIb7bDSFVGqWQyMXS1ufr+84dg2V6AUV58L628HDAKbG08DIhQFmAtjP/pVCXATPrx
	1FOxdNlxN08MbknM5dinWhlUM02RXZegH+wojmsK/+0hd7VWIS1gJfYpjP29nF7rD2fu
	iLn0wMT+4TMz/I1rPDXiOAkTfK+jkcrpfM+38tXXnakSK1ZJ1ws97t7KTNVPYoxpQbWZ
	OGcA==
MIME-Version: 1.0
X-Received: by 10.224.188.134 with SMTP id da6mr11982043qab.69.1366617528231; 
	Mon, 22 Apr 2013 00:58:48 -0700 (PDT)
Received: by 10.49.38.195 with HTTP; Mon, 22 Apr 2013 00:58:48 -0700 (PDT)
In-Reply-To: <a2f752ad-070b-4b95-bf55-8ce4f031b199@email.android.com>
References: <CAFyqS9rXZcC9EWFsM=9MfXtrr--8QmRq9+5kn2rJ_TzeE6nEBg@mail.gmail.com>
	<a2f752ad-070b-4b95-bf55-8ce4f031b199@email.android.com>
Date: Mon, 22 Apr 2013 09:58:48 +0200
Message-ID: <CAFyqS9oR-s4Mo5a-OyU6=NynDKTy+FsprDjxe1ubbkKLFmK=Ug@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Anders Darander <anders@chargestorm.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gnupg vs gpgme
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
X-List-Received-Date: Mon, 22 Apr 2013 07:58:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 22, 2013 at 9:47 AM, Anders Darander <anders@chargestorm.se> wr=
ote:
> Hi,
>
> "Hans Beck=E9rus" <hans.beckerus@gmail.com> wrote:
>
>>Hello. I wish to bring in gnupg to our system but from what I can tell
>>gnupg is not part of Yocto nor OpenEmbedded. However, gpgme is. Is
>>gpgme to consider a complete replacement for gnupg? I have no need for
>>any gpg application libraries, but need the ability to sign and
>>perhaps encrypt/decrypt information. Is an option here to bring in
>>gnupg 1.4.13 myself or is this not something you should recommend?
>
> Well there are recipes for gnupg versions 1.4.7 and 2.0.19 in OE-Core, an=
d this in Yocto. See meta/recipes-support.
>

Ah. Yes, now I see it. I think my mistake was that I searched for gpg
not gnupg :( My bad.
Is there anything that should make me consider 1.4.7 before 2.x? I am
looking for something as lean as possible since there are very limited
resources on the target system. Also, 1.4.13 seems to be considered
current stable. I guess OE is lagging behind somewhat on this package?

Hans

On Mon, Apr 22, 2013 at 9:47 AM, Anders Darander <anders@chargestorm.se> wr=
ote:
> Hi,
>
> "Hans Beck=E9rus" <hans.beckerus@gmail.com> wrote:
>
>>Hello. I wish to bring in gnupg to our system but from what I can tell
>>gnupg is not part of Yocto nor OpenEmbedded. However, gpgme is. Is
>>gpgme to consider a complete replacement for gnupg? I have no need for
>>any gpg application libraries, but need the ability to sign and
>>perhaps encrypt/decrypt information. Is an option here to bring in
>>gnupg 1.4.13 myself or is this not something you should recommend?
>
> Well there are recipes for gnupg versions 1.4.7 and 2.0.19 in OE-Core, an=
d this in Yocto. See meta/recipes-support.
>
> Cheers,
> Anders
>
>>Hans
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Anders Darander
> ChargeStorm AB          Tel: +46 702 44 84 36
> Laxholmstorget 3        Email: anders@chargestorm.se
> 602 21 Norrk=F6ping       Web: www.chargestorm.se
>
> Sent from my Android phone with K-9 Mail. Please excuse my brevity.

