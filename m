Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0453E00799; Fri, 12 Sep 2014 17:57:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F0B9E006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 17:57:45 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id bs8so1471086wib.2
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 17:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+8KJug7M+NLlt5eWZ2ztT3IoKYbe+EvcmQT7cg9ICtI=;
	b=yaizTn9MNRXSr3Tj6a5okzs/LGY5s7Xkc0nIN986yi1qGw0Tg6Bo+V/EW+qyRfZ7fB
	LlYT/Qdb2S3Llyapf/YhRYzhBxJdb37stbilw6mZ0MN9zpjtrwV1Ukc6ubefR+wyk0by
	/y9YaUTJYC9MUamEPCpckIDsDGp8OlrTtausCEPmrWj+iTP/431Ph9r46t6gqoQizj+o
	ByKkrCMXIU4m9hAodUoIjCOtTpOd5tlxk2k0hc6ckHeIrQyAjluGexMiNWAC0SYG0gls
	t0w0zM1+kROLj4fxje/IaKG4fs8SkavIi0phfZz87dAlfRF/tCItqLJTVaFJE0qD45o/
	PGpw==
MIME-Version: 1.0
X-Received: by 10.180.187.76 with SMTP id fq12mr6629581wic.4.1410569864515;
	Fri, 12 Sep 2014 17:57:44 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Fri, 12 Sep 2014 17:57:44 -0700 (PDT)
In-Reply-To: <5413487C.4050707@mindchasers.com>
References: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
	<CAMSG=xXmfOnQJwkQ5qHsSendSRX+xSHRH94jc5kJKGqqNV0gAg@mail.gmail.com>
	<5413487C.4050707@mindchasers.com>
Date: Fri, 12 Sep 2014 17:57:44 -0700
Message-ID: <CAMSG=xXsUOLFFRgqihdGdXMEKiGwZ3AgO+d85rp2Q1GhDLq-uQ@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
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
X-List-Received-Date: Sat, 13 Sep 2014 00:57:55 -0000
Content-Type: multipart/alternative; boundary=001a11c37f80b496860502e7e30a

--001a11c37f80b496860502e7e30a
Content-Type: text/plain; charset=UTF-8

Yes - I can source the script, and I do successfully get my path updated.
That's unfortunate.  I can run the toolchain on the command line, but the
developers I am working with need to use Eclipse. The plug-in seems like
the right solution, so I would very much like to get this to work.

It occurred to me that these issues might be because I'm using an older
version of bitbake:
$ bitbake --version
BitBake Build Tool Core version 1.20.0, bitbake version 1.20.0

Could that have something to do with the failure?

On Fri, Sep 12, 2014 at 12:24 PM, Bob Cochran <yocto@mindchasers.com> wrote:

> On 09/12/2014 12:57 PM, Nemicolopterus Crypticus wrote:
>
>>  >Just double checking that you are specifying the "toolchain root
>> location" as your top level build directory (the one above
>> /conf/local.conf - the directory where you run bitbake).
>>
>> Yes that occurred to me too, since the phrasing is a bit unclear. I
>> tried both.  Here's a depiction of my directory structure:
>>
>> oe-core
>>       |---- build
>>            |---- conf (including local.conf)
>>            |---- downloads
>>            |---- tmp-eglibc
>>               |---- environment-setup-blahblah
>>               |---- <etc.>
>>            |---- <etcc>
>>       |---- bitbake
>>       |---- gcc-toolchain
>>       |---- meta
>>       |---- <etc. lots more>
>>
>> I tried with the root at build, and in build/tmp-eglibc with no luck.
>>
>> Is it possible the toolchain didn't get built?
>>
>
> What happens when you source your environment script?  You should have
> your path set up to find your cross toolchain.  If that's the case, you
> should be able to run the toolchain on the command line.
>
> I work with the powerpc toolchain, so I can cross-compile a simple test
> app after sourcing my env script:
>
> powerpc64-poky-linux-gcc main.c -o tst
>
> and verify I have generated a 64-bit powerpc ELF executable with
>
> file tst
>
>
>
>
>
> I'm just wondering since
>
>> that's what the error claims. Is there any way to confirm that the
>> toolchain did indeed get built?  I ran bitbake meta-ide-toolchain, but
>> our system is large and I'm not familiar with every aspect of it. Is it
>> possible some other settings elsewhere got changed in a way that would
>> prevent the toolchain from building?
>>
>
>

--001a11c37f80b496860502e7e30a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes - I can source the script, and I do successfully get m=
y path updated. That&#39;s unfortunate. =C2=A0I can run the toolchain on th=
e command line, but the developers I am working with need to use Eclipse. T=
he plug-in seems like the right solution, so I would very much like to get =
this to work.<div><br></div><div>It occurred to me that these issues might =
be because I&#39;m using an older version of bitbake:</div><div><div>$ bitb=
ake --version</div><div>BitBake Build Tool Core version 1.20.0, bitbake ver=
sion 1.20.0</div></div><div><br></div><div>Could that have something to do =
with the failure?</div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Fri, Sep 12, 2014 at 12:24 PM, Bob Cochran <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:yocto@mindchasers.com" target=3D"_blank">yocto@mindc=
hasers.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On 09/12/2014 12:57 PM, Nemicolopterus Crypticus wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
=C2=A0&gt;Just double checking that you are specifying the &quot;toolchain =
root<br>
location&quot; as your top level build directory (the one above<br>
/conf/local.conf - the directory where you run bitbake).<br>
<br>
Yes that occurred to me too, since the phrasing is a bit unclear. I<br>
tried both.=C2=A0 Here&#39;s a depiction of my directory structure:<br>
<br>
oe-core<br>
=C2=A0 =C2=A0 =C2=A0 |---- build<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- conf (including local.conf)<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- downloads<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- tmp-eglibc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |---- environment-setup-bl=
ahblah<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |---- &lt;etc.&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- &lt;etcc&gt;<br>
=C2=A0 =C2=A0 =C2=A0 |---- bitbake<br>
=C2=A0 =C2=A0 =C2=A0 |---- gcc-toolchain<br>
=C2=A0 =C2=A0 =C2=A0 |---- meta<br>
=C2=A0 =C2=A0 =C2=A0 |---- &lt;etc. lots more&gt;<br>
<br>
I tried with the root at build, and in build/tmp-eglibc with no luck.<br>
<br>
Is it possible the toolchain didn&#39;t get built?<br>
</blockquote>
<br></span>
What happens when you source your environment script?=C2=A0 You should have=
 your path set up to find your cross toolchain.=C2=A0 If that&#39;s the cas=
e, you should be able to run the toolchain on the command line.<br>
<br>
I work with the powerpc toolchain, so I can cross-compile a simple test app=
 after sourcing my env script:<br>
<br>
powerpc64-poky-linux-gcc main.c -o tst<br>
<br>
and verify I have generated a 64-bit powerpc ELF executable with<br>
<br>
file tst<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<br>
<br>
I&#39;m just wondering since<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
that&#39;s what the error claims. Is there any way to confirm that the<br>
toolchain did indeed get built?=C2=A0 I ran bitbake meta-ide-toolchain, but=
<br>
our system is large and I&#39;m not familiar with every aspect of it. Is it=
<br>
possible some other settings elsewhere got changed in a way that would<br>
prevent the toolchain from building?<br>
</blockquote>
<br>
</div></div></blockquote></div><br></div>

--001a11c37f80b496860502e7e30a--
