Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A2FE006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:44:08 -0700 (PDT)
Received: by mail-qe0-f52.google.com with SMTP id 1so1963601qec.39
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 08:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=j4KQaYAjYaG95O7aoNkq/CjC5mT/8FObrXvk225mdIo=;
	b=I1lBs+kg3jkPctfA+01lA6jIxNcS+vuxt7ixv+vX76aGgczXzYQ8ftyHUPRPFaTgUh
	n15R3AI//0PMRIQJPy99RwIsvc6us17+crPeuZ062yMrPKF1XO1uwQyAzL80XlN3E61Q
	Av2b6ZpFqyNz7neYX27XFKE/x3Nu3MRMWUUrMkliMCIRSSqlyKfdPKoY3Gq4q4H2cTXV
	rwlim3HJUerk6CN/v8y70SIVG/EN1/dyLCjpEXCqXM9Iy1jqNpWDADuxlpgCZ7+yeFiT
	NxfjQ0i0/3b5+mvUnNcBn4V1OqNz06WsXBNGJeXPf/7oCOKwyifGxzYhCEKcXCoKsV0o
	Xw6g==
MIME-Version: 1.0
X-Received: by 10.49.75.99 with SMTP id b3mr14164008qew.11.1369323847942; Thu,
	23 May 2013 08:44:07 -0700 (PDT)
Received: by 10.49.24.142 with HTTP; Thu, 23 May 2013 08:44:07 -0700 (PDT)
In-Reply-To: <CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
	<CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
Date: Thu, 23 May 2013 17:44:07 +0200
Message-ID: <CAFyqS9o013oYzJa6w1bUzZ-eW7RxTkGurn1u6S+2MmjU+Uy3EQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Thu, 23 May 2013 15:44:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Coming to think of it, since the .so requirement is only applicable to
small subset of our libraries, I guess we could make an init script
that creates the .so soft links according to what is currently the
latest version on the system. Otherwise we would need to update the
software doing dlopen() every time the library major version is
stepped. Since that software is not under our complete control that
could end up very difficult.

Otherwise, I fully agree that the .so files should not really be
needed if only ld is involved. Why can not things just be simple ;)

Hans

On Thu, May 23, 2013 at 5:25 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Thu, May 23, 2013 at 4:55 PM, Burton, Ross <ross.burton@intel.com> wro=
te:
>> On 23 May 2013 15:50, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>>> But in the rpm, the libs are packaged incorrectly (or at least not as e=
xpected)
>>
>> There (should) also be a linx-dev package, that contains the .so
>> symlinks.  .so symlink files are only needed at compilation time for
>> properly versioned libraries.
>>
>> Ross
> Well, yes and no ;) If I look in /lib there are plenty of libraries
> that comes with .so files so it seems they are needed in some cases,
> right? Also, since part of our system software is doing loading of
> dynamic libraries themselves using dlopen() it is *very* hard to
> enforce removal of .so files since that piece of software does not
> know what particular version of the library it should use. It should
> load whatever .so points to, most commonly the latest version. So, is
> there some way for us to make sure .so files are also part of the
> .rpm? we do not wish to install the -dev variant since it also
> pollutes the system with a lot of other not needed stuff. Since /lib
> is having a lot of of .so files it must be possible, or?
> Actually, I have never seen a system that does not include also the
> .so files? Not even embedded ones. They are only soft links so
> flash/ram/disk space is not really an issue here.
>
> Hans
>
>
> On Thu, May 23, 2013 at 4:55 PM, Burton, Ross <ross.burton@intel.com> wro=
te:
>> On 23 May 2013 15:50, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>>> But in the rpm, the libs are packaged incorrectly (or at least not as e=
xpected)
>>
>> There (should) also be a linx-dev package, that contains the .so
>> symlinks.  .so symlink files are only needed at compilation time for
>> properly versioned libraries.
>>
>> Ross

