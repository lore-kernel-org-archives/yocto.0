Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A1A3E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:44:18 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id i13so2408134qae.13
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Tu3uV4NEpRiRgghd7NPkH84vX3df4XiDLWfN6Dr3bD4=;
	b=nELwdXP9SBasKC7h1e6Ok2nKGyDAuRd+pIm4UeMOd+IUAIGML8brE+raDm2JkwIHFj
	GN9y25t21H8LTDwKPmAzfEdECeruzqsGkV/AQYwd0YGpeBEuxQnEgUDwy1iawTCMuATg
	SQ4c2wmMVafydfdDwBR/WT1A6nJxmMK99uPj91ctUll1gjEi2pnLQ8C/f2sNXY/5ye/M
	7vthDKRdGxc7YssvCS+Cs3qcJBzszsUpUwlPdDAWhYQFyVLJJL8WUit5rMUOsHb8ztzK
	8mzqYhmkX22owQof8wPwacI4o/MQLqkeiPyqa/ylt/goAssSQUCdv2kZ9CAjXSIJyIVP
	ittg==
MIME-Version: 1.0
X-Received: by 10.49.74.227 with SMTP id x3mr15616773qev.29.1372092258199;
	Mon, 24 Jun 2013 09:44:18 -0700 (PDT)
Received: by 10.49.97.68 with HTTP; Mon, 24 Jun 2013 09:44:18 -0700 (PDT)
In-Reply-To: <CANyK_8c=tZggF+KzGmkh=AHNpVMXnepRwZwZVnnurNm3RR=f_Q@mail.gmail.com>
References: <CAFyqS9q5Z283rVhuDkdM4AUGeyEdfvUqJjj4qG3diVf83JY6Tg@mail.gmail.com>
	<51C871A2.4030709@windriver.com>
	<CANyK_8c=tZggF+KzGmkh=AHNpVMXnepRwZwZVnnurNm3RR=f_Q@mail.gmail.com>
Date: Mon, 24 Jun 2013 18:44:18 +0200
Message-ID: <CAFyqS9oJ5uGvGQA=x8ky8=fpGNmoa+uZbxHMmTGLZfu40HEkbQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-libc-header version mismatch?
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
X-List-Received-Date: Mon, 24 Jun 2013 16:44:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 24, 2013 at 6:29 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 24 June 2013 17:19, Bruce Ashfield <bruce.ashfield@windriver.com> wrot=
e:
>> On 13-06-24 11:59 AM, Hans Beck=E9rus wrote:
>>>
>>> Hi. We are using a 3.6 based kernel in our builds using a custom
>>> kernel recipe. However, I can see that the linux-libc-headers built
>>> but based on a 3.8 kernel?
>>> Is this really how it should be? Are we supposed to also make a custom
>>> recipe for the linux-libc-headers? The image seems to be executing
>>> fine but I am a bit worried about the version mismatch :(
>>
>> Summary: you can match them if you want, but we are testing across
>> several kernel versions and haven't found any issues (yet).
>>
>
> Just to point out - this is pretty common across linux distros as
> well, otherwise all your software would have to be re-built every time
> you updated the kernel.
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk

Thanks Paul (and Bruce of course).
I now realize that this would break most systems after a major kernel upgra=
de ;)
From what I know/experienced so far is that the only thing that
usually breaks with a new major kernel version is our own kernel
drivers...

Hans


On Mon, Jun 24, 2013 at 6:29 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 24 June 2013 17:19, Bruce Ashfield <bruce.ashfield@windriver.com> wrot=
e:
>> On 13-06-24 11:59 AM, Hans Beck=E9rus wrote:
>>>
>>> Hi. We are using a 3.6 based kernel in our builds using a custom
>>> kernel recipe. However, I can see that the linux-libc-headers built
>>> but based on a 3.8 kernel?
>>> Is this really how it should be? Are we supposed to also make a custom
>>> recipe for the linux-libc-headers? The image seems to be executing
>>> fine but I am a bit worried about the version mismatch :(
>>
>> Summary: you can match them if you want, but we are testing across
>> several kernel versions and haven't found any issues (yet).
>>
>
> Just to point out - this is pretty common across linux distros as
> well, otherwise all your software would have to be re-built every time
> you updated the kernel.
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk

