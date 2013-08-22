Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7C26E013D1
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 08:41:56 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id tb18so3973068obb.30
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 08:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Do1UJOSwIynWsbbwRW8ridxjs0vp2rnx2q3l5Zjujww=;
	b=ovw13B99RIbpnk6x8G5XYy2Y3Cfwt/KaNdn4yeYFeiCJYOjiqpntNg9bSX6wAXZkPl
	0pxSj0GGS5eqYDnpM++gTBN8+UzoTULRuriQKrgjPZJE+7BK+kqqQ/tp9BIpsY4nSm8i
	YKvgzIHGFh4+JodWfMfHGDnHh0OsrENuQ0Iq3kxV/de70StR3sXrOwapHM9rmT0Jv/hG
	0TCjcFeQUst5KCl5lsb0Sl6O/7+75Zu6rA5qQWleHGbqMOWI7fTdvJ2HX+a8JgOu0zuA
	4rjxd4hBay08FPYTyKrJFfCTC1uq6HJ+KuU++96XMFFgVZXWonQ0sJ4zk7yiN8Pyp37x
	A3iw==
MIME-Version: 1.0
X-Received: by 10.60.115.226 with SMTP id jr2mr1992722oeb.95.1377186115381;
	Thu, 22 Aug 2013 08:41:55 -0700 (PDT)
Received: by 10.182.109.36 with HTTP; Thu, 22 Aug 2013 08:41:55 -0700 (PDT)
In-Reply-To: <CAMvUbCyNcRYvwWzFTQ0YUb7XcciWxx_bO4OsksUyF-4cBJvS4Q@mail.gmail.com>
References: <CAFyqS9pM4d+HffKvW9NfFBSnqYVkTRuNMTx_pU2BsdOdwFd-_g@mail.gmail.com>
	<CAMvUbCyNcRYvwWzFTQ0YUb7XcciWxx_bO4OsksUyF-4cBJvS4Q@mail.gmail.com>
Date: Thu, 22 Aug 2013 17:41:55 +0200
Message-ID: <CAFyqS9q8eS79byN-M3caXgayStMT5mah=mov-XFLPZNQwmxK+g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cross-compilation of kernel does not work with the generated toolchain?
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
X-List-Received-Date: Thu, 22 Aug 2013 15:41:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2013 at 5:19 PM, Leon Woestenberg
<sidebranch.openembedded@gmail.com> wrote:
>
> Hello Hans,
>
> On Thu, Aug 22, 2013 at 5:10 PM, Hans Beck=E9rus <hans.beckerus@gmail.com=
>
> wrote:
>>
>> Hi. I am trying to build a kernel using our bitbaked and populated
>> toolchain. It works fine for user-space application but when trying to
>> compile the kernel we get
>> ...
>>
>>   HOSTCC  scripts/dtc/srcpos.o
>> In file included from scripts/dtc/dtc.h:25,
>>                  from scripts/dtc/srcpos.c:24:
>> /usr/include/string.h:546: error: expected declaration specifiers or
>> '...' before '__locale_t'
>> /usr/include/string.h:547: error: nonnull argument with out-of-range
>> operand number (argument 1, operand 3)
>> /usr/include/string.h:550: error: expected declaration specifiers or
>> '...' before '__locale_t'
>> /usr/include/string.h:551: error: nonnull argument with out-of-range
>> operand number (argument 1, operand 4)
>> make[2]: *** [scripts/dtc/srcpos.o] Error 1
>> make[1]: *** [scripts/dtc] Error 2
>> make: *** [scripts] Error 2
>>
>> /usr/include/string.h ??? That must be wrong, or? I expected it to
>> pickup the standard headerfiles from our toolchain, not the ones on
>> the build host. That will surely clash with the version of the
>> compiler being used.
>>
>> Any ideas what might be wrong here?
>>
> Note that the scripts/dtc/dtc tool is not built for the target, but is a
> build host native tool to compile a device tree.
>
Yes, you have a point there ;) That's it of course! It is my host
compiler that is incorrectly setup not the Yocto toolchain. Thanks for
the pointer! Funny how easy it is to overlook the obvious :)

> So it is expected it uses host includes.
>
> Just to be sure, you are building the kernel outside  of Yocto, just usin=
g
> the cross toolchain from Yocto?
>
> Regards,
>
> Leon.

