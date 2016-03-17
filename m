Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB57CE00C23; Thu, 17 Mar 2016 08:43:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAED6E00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:43:15 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id p65so123220686wmp.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4mN7qOZnY52dPfEIwZNsunR9LXaF4g1LMkimS1s8kfA=;
	b=weh7a3pkAR5UAGwrSPK6/gV0/ZlRcH7pdUsSkKKzt49Gzv7OeOaAIVloTsFHxclHjM
	j2iKAGh/147spfGe0vIL7EMwe+dXwfhXfb9qfibXChRzXLl9nPnFI0p0/13klzzcYzOJ
	7dcCSErAb1KR9j+ZSurESzv/B2dhYGRwPtNuNsmLFR0kDxRqfJHwB0+gxyH74qHC/SIt
	hRXLIR3PCmDXX2OWdirdMEPmNgJWPSQ6qGPQ5eO6w991rAij4b558G/O+Ufmj8us/od4
	+n7cXuwtBg0uDrqSfGlLoZcMb9ZFOJB9Gt8wqrJSZ873ucsBFCm2LImp+dNhSChPx5o9
	cOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4mN7qOZnY52dPfEIwZNsunR9LXaF4g1LMkimS1s8kfA=;
	b=HhhxqhuXOEHogEts+bzu63ZQG/ulva9i6Ff8neZmIXReo/7C6pxsrjRrGH3Xh6xnQD
	2m8+wm972gHIL9793omRyJPNszpO1zSjGARflTl6MFKW/0JuN+ivfElzsck0A1YP9byi
	4Ir6CdvKjUxb/9VduWSKit2uHw5+s4C1gmj3JiqHZcPU8GcGDwYLarCrL7UxqRFU/AHI
	QkCY2tR82yaZKJv1+TciPMIUhGrSgPqwTeI8HtVqNtk5AqVNXF85F9hVZtGdNE2O3HyM
	VKZvtQG59pskwFrQqFN8gwEJxRztQH4Z3D8/lhq2Ls1hE3gfxZ3RBNLr2EFdZq72VqL7
	bTKQ==
X-Gm-Message-State: AD7BkJK9p4eVTzep57AF6/EGEXS15Q2S1fIKGfzAvHxxXF8zHQyycFiZBymJt4H63SEiGh+TvtxYpuxIzeca/w==
X-Received: by 10.194.216.99 with SMTP id op3mr10993985wjc.26.1458229394352;
	Thu, 17 Mar 2016 08:43:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.0.83 with HTTP; Thu, 17 Mar 2016 08:42:34 -0700 (PDT)
In-Reply-To: <CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
	<CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Thu, 17 Mar 2016 10:42:34 -0500
Message-ID: <CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Installing the SDKs made with meta-mingw
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
X-List-Received-Date: Thu, 17 Mar 2016 15:43:18 -0000
Content-Type: multipart/alternative; boundary=089e0141a1900d312e052e407daa

--089e0141a1900d312e052e407daa
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <matt.hoosier@gmail.com>
wrote:

>
>
> On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <clarson@kergoth.com>
> wrote:
>
>> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com>
>> wrote:
>>
>>> I've successfully built a Canadian-cross SDK using the meta-mingw layer.
>>> Very nice!
>>>
>>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE}
>>> is set to a MinGW host, though, the resulting SDK is not encapsulated into
>>> the self-extracting tarball and the corresponding relocation logic (
>>> relocate_sdk.py and so forth) is omitted.
>>>
>>> Any suggestions on how to do the last-mile work to use the SDK on
>>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>>> built into environment-setup-<arch>? Although that would be nice, I
>>> think at least some installation-time adjustment is necessary though; when
>>> I do:
>>>
>>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>
>>> , the following happens during linking:
>>>
>>>     ld.exe: cannot find /lib/libc.so.6 inside
>>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>
>>
> As it turns out, the immediate error here was simply that libc.so.6 did
> not exist, so ld.exe was telling the truth in this case. The symbolic links
> stored in the SDK tarball that would have created libc.so.6 aren't
> meaningful on Windows, so tar just ignores them when unpacking. Presumably
> some fancier handling of the tarball unpacking to simulate symlinks by
> making copies of the pointed-to file would cure this.
>
>
>>
>> Mark Hatle's branch switches to batch files for environment setup and
>> whatnot. I don't know if it addresses the reloc issue or not, but it's a
>> substantial improvement over master. See
>> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>>
>
> Thanks, I'll try that.
>

Mark Hatle's branch does work much more nicely for that. There's still the
problem of what to do with the symlink from the SDK tarballs. Are there any
regular users of these mingw SDKs out there who know the right expectation
on how to extract them?

--089e0141a1900d312e052e407daa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"=
mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"">O=
n Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><span>On Wed, Ma=
r 16, 2016 at 2:32 PM, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"mailto=
:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt;</=
span> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote=
"><span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">I&#39;ve successfully built a Can=
adian-cross SDK using the meta-mingw layer. Very nice!<div><br></div><div>B=
ecause the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} is s=
et to a MinGW host, though, the resulting SDK is not encapsulated into the =
self-extracting tarball and the corresponding relocation logic (<span style=
=3D"font-family:monospace,monospace">relocate_sdk.py</span>=C2=A0and so for=
th) is omitted.</div><div><br></div><div>Any suggestions on how to do the l=
ast-mile work to use the SDK on Windows? Or perhaps nothing is needed at al=
l, except adjusting the prefixes built into <font face=3D"monospace, monosp=
ace">environment-setup-&lt;arch&gt;</font>? Although that would be nice, I =
think at least some installation-time adjustment is necessary though; when =
I do:</div><div><br></div><div><font face=3D"monospace, monospace">=C2=A0 =
=C2=A0 arm-poky-linux-gnueabi-gcc -o foo foo.c --sysroot=3Dd:/projects/yoct=
o-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div><div><=
br></div><div>, the following happens during linking:</div><div><br></div><=
div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 ld.exe: cannot find /=
lib/libc.so.6 inside d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-=
poky-linux-gnueabi</font></div></div></blockquote></span></div></div></div>=
</blockquote><div><br></div></span><div>As it turns out, the immediate erro=
r here was simply that libc.so.6 did not exist, so ld.exe was telling the t=
ruth in this case. The symbolic links stored in the SDK tarball that would =
have created libc.so.6 aren&#39;t meaningful on Windows, so tar just ignore=
s them when unpacking. Presumably some fancier handling of the tarball unpa=
cking to simulate symlinks by making copies of the pointed-to file would cu=
re this.<br></div><span class=3D""><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div d=
ir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><div=
><br></div></span><div>Mark Hatle&#39;s branch switches to batch files for =
environment setup and whatnot. I don&#39;t know if it addresses the reloc i=
ssue or not, but it&#39;s a substantial improvement over master. See <a hre=
f=3D"https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dmgh/meta-m=
ingw" target=3D"_blank">https://git.yoctoproject.org/cgit.cgi/poky-contrib/=
log/?h=3Dmgh/meta-mingw</a> <br></div></div></div></div></blockquote><div><=
br></div></span><div>Thanks, I&#39;ll try that.</div></div></div></div></bl=
ockquote><div><br></div><div>Mark Hatle&#39;s branch does work much more ni=
cely for that. There&#39;s still the problem of what to do with the symlink=
 from the SDK tarballs. Are there any regular users of these mingw SDKs out=
 there who know the right expectation on how to extract them?</div></div><b=
r></div></div>

--089e0141a1900d312e052e407daa--
