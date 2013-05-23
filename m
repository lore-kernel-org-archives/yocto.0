Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CC4E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 10:16:43 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id m16so1890470qcq.19
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 10:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=feKis8qCc2+8pW1irtkQIZNoztbiDJjhasSQaKBNrpY=;
	b=uw3y5NhsrYx/G9FnGH7XuuDtvpdtdZe2299Q+rwF56v+Gwn1sbP4QnzyRhWk5WikBo
	wxUIb6Gh5stCCtcATPY4PFXC393cS5N3DOyp9YJUp7b9gnYoZ1xAf/KEFXYMbY7Rd6t1
	hzVbp+H23tmTWH16PWOmsp6BbGYDR1lSFiANK34qxDkWjTXIOWpCbBNHXhz1XTqd0lyx
	tit6fj+P0S9NQ6aMhqTkvd8g6wn5CV8+Zk+0Z7hyDaJ37+rqwaDuPGFbkqFTSlJuib93
	Eeuj4Jb+jYgJX0NDPkbFAiznym74ITWiYX6uL73WFjR3vQeyohZRaTZncePYIXZwHbfH
	dszw==
MIME-Version: 1.0
X-Received: by 10.224.78.193 with SMTP id m1mr12614603qak.79.1369329402740;
	Thu, 23 May 2013 10:16:42 -0700 (PDT)
Received: by 10.49.24.142 with HTTP; Thu, 23 May 2013 10:16:42 -0700 (PDT)
In-Reply-To: <CAFyqS9qtnGX03cD-1OmfiJEVkT0MhCuAW-=XPGRRcnCD9VorFQ@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
	<CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
	<CAJTo0Lbv6RmRN-dO_BRNmSRN49x5Pz8RqXOGf=kB5KcVz0MpyQ@mail.gmail.com>
	<CAFyqS9qtnGX03cD-1OmfiJEVkT0MhCuAW-=XPGRRcnCD9VorFQ@mail.gmail.com>
Date: Thu, 23 May 2013 19:16:42 +0200
Message-ID: <CAFyqS9oQmWmcZLBxYW=bYtsQMo70XzdWpP6vTme_BHkXSRtLyA@mail.gmail.com>
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
X-List-Received-Date: Thu, 23 May 2013 17:16:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, May 23, 2013 at 6:01 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Thu, May 23, 2013 at 5:47 PM, Burton, Ross <ross.burton@intel.com> wro=
te:
>> On 23 May 2013 16:25, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>>> Well, yes and no ;) If I look in /lib there are plenty of libraries
>>> that comes with .so files so it seems they are needed in some cases,
>>> right? Also, since part of our system software is doing loading of
>>> dynamic libraries themselves using dlopen() it is *very* hard to
>>> enforce removal of .so files since that piece of software does not
>>> know what particular version of the library it should use. It should
>>> load whatever .so points to, most commonly the latest version. So, is
>>> there some way for us to make sure .so files are also part of the
>>> .rpm? we do not wish to install the -dev variant since it also
>>> pollutes the system with a lot of other not needed stuff. Since /lib
>>> is having a lot of of .so files it must be possible, or?
>>> Actually, I have never seen a system that does not include also the
>>> .so files? Not even embedded ones. They are only soft links so
>>> flash/ram/disk space is not really an issue here.
>>
>> *Every* mainstream linux distribution will not ship .so symlinks
>> unless you've installed the development files, or they are needed for
>> some reason (generally, the .so won't be a symlink in that case).  If
>> a particular library is designed to be unversioned and dlopen'd using
>> a .so filename, then change the FILES as appropriate.  If your package
>> is dlopening arbitrary versioned libraries though libfoo.so filenames
>> then you can either do more work and find the real name, or mess
>> around with the packaging yourself.
>>
>> Ross
>
> Sure. I am not questioning mainstream decision not to ship the .so
> symlinks. I most likely have never encountered real mainstream
> embedded systems before ;) Only home-brewed (we-can-do-it-ourselves)
> things. What I needed was some sort of pointer on how to handle the
> case when you do need to violate the mainstream rules :(
> I will play around with the FILES setting to see if it will get us
> were we need to be. I really do not wish to tamper with the packaging
> routines. It does what it does, with an obviously good reason too :P
>
> Thanks!
> Hans
>
>
Hmm. I tried the FILES trick, but either I am doing something wrong or
FILES does not really affect whats getting into the .rpm? This is what
I tried in our recipe

FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libelinx.so"
FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libepmq.so"

But I see now that dev RPM in addition to the normal RPM is what we
need besides the .la files but I think we we can live with that  ;) Is
there some simple/clever trick to have both the standard and the dev
RPM being installed on the rootfs?

Hans


On Thu, May 23, 2013 at 6:01 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Thu, May 23, 2013 at 5:47 PM, Burton, Ross <ross.burton@intel.com> wro=
te:
>> On 23 May 2013 16:25, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>>> Well, yes and no ;) If I look in /lib there are plenty of libraries
>>> that comes with .so files so it seems they are needed in some cases,
>>> right? Also, since part of our system software is doing loading of
>>> dynamic libraries themselves using dlopen() it is *very* hard to
>>> enforce removal of .so files since that piece of software does not
>>> know what particular version of the library it should use. It should
>>> load whatever .so points to, most commonly the latest version. So, is
>>> there some way for us to make sure .so files are also part of the
>>> .rpm? we do not wish to install the -dev variant since it also
>>> pollutes the system with a lot of other not needed stuff. Since /lib
>>> is having a lot of of .so files it must be possible, or?
>>> Actually, I have never seen a system that does not include also the
>>> .so files? Not even embedded ones. They are only soft links so
>>> flash/ram/disk space is not really an issue here.
>>
>> *Every* mainstream linux distribution will not ship .so symlinks
>> unless you've installed the development files, or they are needed for
>> some reason (generally, the .so won't be a symlink in that case).  If
>> a particular library is designed to be unversioned and dlopen'd using
>> a .so filename, then change the FILES as appropriate.  If your package
>> is dlopening arbitrary versioned libraries though libfoo.so filenames
>> then you can either do more work and find the real name, or mess
>> around with the packaging yourself.
>>
>> Ross
>
> Sure. I am not questioning mainstream decision not to ship the .so
> symlinks. I most likely have never encountered real mainstream
> embedded systems before ;) Only home-brewed (we-can-do-it-ourselves)
> things. What I needed was some sort of pointer on how to handle the
> case when you do need to violate the mainstream rules :(
> I will play around with the FILES setting to see if it will get us
> were we need to be. I really do not wish to tamper with the packaging
> routines. It does what it does, with an obviously good reason too :P
>
> Thanks!
> Hans
>
>
> On Thu, May 23, 2013 at 5:47 PM, Burton, Ross <ross.burton@intel.com> wro=
te:
>> On 23 May 2013 16:25, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>>> Well, yes and no ;) If I look in /lib there are plenty of libraries
>>> that comes with .so files so it seems they are needed in some cases,
>>> right? Also, since part of our system software is doing loading of
>>> dynamic libraries themselves using dlopen() it is *very* hard to
>>> enforce removal of .so files since that piece of software does not
>>> know what particular version of the library it should use. It should
>>> load whatever .so points to, most commonly the latest version. So, is
>>> there some way for us to make sure .so files are also part of the
>>> .rpm? we do not wish to install the -dev variant since it also
>>> pollutes the system with a lot of other not needed stuff. Since /lib
>>> is having a lot of of .so files it must be possible, or?
>>> Actually, I have never seen a system that does not include also the
>>> .so files? Not even embedded ones. They are only soft links so
>>> flash/ram/disk space is not really an issue here.
>>
>> *Every* mainstream linux distribution will not ship .so symlinks
>> unless you've installed the development files, or they are needed for
>> some reason (generally, the .so won't be a symlink in that case).  If
>> a particular library is designed to be unversioned and dlopen'd using
>> a .so filename, then change the FILES as appropriate.  If your package
>> is dlopening arbitrary versioned libraries though libfoo.so filenames
>> then you can either do more work and find the real name, or mess
>> around with the packaging yourself.
>>
>> Ross

