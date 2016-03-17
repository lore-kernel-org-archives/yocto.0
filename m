Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1058E00C38; Thu, 17 Mar 2016 08:48:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD47CE00C44
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:48:31 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id o5so19961859iod.2
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JUmpBaTR2TRuCnGIsnTfUz4yOPhscy00T9K1A+EWbMw=;
	b=ssUdfXX77iNSQ79nY2joHGPfk3OUqNa5+ivycpZkpfe6gdpZK1fQf6RqUO0HvTAWuc
	tbom4H0NP0p2YCMbCygu05zELFrK9a8LBuoXuxRdXKu2ZVwqINXxHkqE7tu5IQNbTCcM
	3knbNBxS1OXBLT66+hXFf+f7oT3HxkGnI66wDnCAdZkUgmhGSBPjnb8+mnUcHor4I2Lm
	nXG5sDoBZpNqEDyxS5tTdlIGQ8UeyEoPaAocjO6udAPNlPyMmRZlFKq3TTelkYy88Z/z
	bbdm3VUUd1//d9Nys8623FFd5oKql19arRDaZQv35BUMK08iFXmBthOci5jbKUqug9vG
	lZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JUmpBaTR2TRuCnGIsnTfUz4yOPhscy00T9K1A+EWbMw=;
	b=Tl89CNqQVk8N5BHfCMvz4VPVgYySMGGXsKilCh0Bhy5WoRrxW4OP1SNDDZQmHVgiUM
	z7jgYG0Y0WuB3Oh6s0oo/LsaoX/0q9OxEqsoRFoEXg3m9Dj/QuMhb+IoAKNREOr7JUNz
	xgJ2zUmTxZoHjU/Z8UwkZ9pHdZtFTIyb3y9IO4Q8mpPw4RAJFDLI9L6+QFVahU3WIOfo
	h9z2Mky0I/w07v2wSQ2CuVc9qssbHxUV58pV9hPipS49eNXbqJdPEf4CPJP0+8Jh6Sv0
	vEs1RSII5P8IsFiIKFsOEi4vAoB9z94/1CCc1S3FgSnP+Q+vEOmggk32R4ahjVnbB8wb
	Sbow==
X-Gm-Message-State: AD7BkJKROR1OXXGxIHyP+OTqUqxDHjvdSc7wMdEPQqwn3CFwC4kZ7+sINsTtLyth5GMnm0Ih5NadC65njKyohw==
X-Received: by 10.107.169.68 with SMTP id s65mr10562986ioe.126.1458229710896; 
	Thu, 17 Mar 2016 08:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
	<CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
	<CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
	<CABcZANmSfTOKbHH+Vx85r5OSJ0KagaEdxF37iJyw4jRqWLywAA@mail.gmail.com>
In-Reply-To: <CABcZANmSfTOKbHH+Vx85r5OSJ0KagaEdxF37iJyw4jRqWLywAA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 17 Mar 2016 15:48:21 +0000
Message-ID: <CABcZANng+D3xeBxm7guy7h1+goXe=oahUhNUS2oGOUaE+BiuRQ@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
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
X-List-Received-Date: Thu, 17 Mar 2016 15:48:52 -0000
Content-Type: multipart/alternative; boundary=001a11422688eb4975052e408f3b

--001a11422688eb4975052e408f3b
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 17, 2016 at 8:47 AM Christopher Larson <clarson@kergoth.com>
wrote:

> On Thu, Mar 17, 2016 at 8:43 AM Matt Hoosier <matt.hoosier@gmail.com>
> wrote:
>
>> On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <matt.hoosier@gmail.com>
>> wrote:
>>
>>>
>>>
>>> On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <clarson@kergoth.com
>>> > wrote:
>>>
>>>> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com>
>>>> wrote:
>>>>
>>>>> I've successfully built a Canadian-cross SDK using the meta-mingw
>>>>> layer. Very nice!
>>>>>
>>>>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when
>>>>> ${SDKMACHINE} is set to a MinGW host, though, the resulting SDK is not
>>>>> encapsulated into the self-extracting tarball and the corresponding
>>>>> relocation logic (relocate_sdk.py and so forth) is omitted.
>>>>>
>>>>> Any suggestions on how to do the last-mile work to use the SDK on
>>>>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>>>>> built into environment-setup-<arch>? Although that would be nice, I
>>>>> think at least some installation-time adjustment is necessary though; when
>>>>> I do:
>>>>>
>>>>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>>>>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>
>>>>> , the following happens during linking:
>>>>>
>>>>>     ld.exe: cannot find /lib/libc.so.6 inside
>>>>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>
>>>>
>>> As it turns out, the immediate error here was simply that libc.so.6 did
>>> not exist, so ld.exe was telling the truth in this case. The symbolic links
>>> stored in the SDK tarball that would have created libc.so.6 aren't
>>> meaningful on Windows, so tar just ignores them when unpacking. Presumably
>>> some fancier handling of the tarball unpacking to simulate symlinks by
>>> making copies of the pointed-to file would cure this.
>>>
>>>
>>>>
>>>> Mark Hatle's branch switches to batch files for environment setup and
>>>> whatnot. I don't know if it addresses the reloc issue or not, but it's a
>>>> substantial improvement over master. See
>>>> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>>>>
>>>
>>> Thanks, I'll try that.
>>>
>>
>> Mark Hatle's branch does work much more nicely for that. There's still
>> the problem of what to do with the symlink from the SDK tarballs. Are there
>> any regular users of these mingw SDKs out there who know the right
>> expectation on how to extract them?
>>
>
> tar has an option to resolve symlinks to the files, I'd expect you could
> just add that to the variable for the tar options for the sdk, and it'd
> just duplicate the symlinks. You'll have extra files, so it'd be larger,
> but at least it'd be functional.
>

Erm, I meant duplicate the files, not the symlinks :) The symlinks would be
resolved to files. Clearly I haven't had enough caffeine yet today.

--001a11422688eb4975052e408f3b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Mar 17, 2016 at 8:47 AM Christopher Larson &lt;<a href=3D"mailto:clarson@=
kergoth.com">clarson@kergoth.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Thu, Mar 17, 2016 at 8:43 AM Matt Hoosier &lt;<a href=3D"mailto:matt.hoo=
sier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_e=
xtra"><div class=3D"gmail_quote">On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoos=
ier <span dir=3D"ltr">&lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=
=3D"_blank">matt.hoosier@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote"><span>On Wed, Mar 16, 2016 at 4:40 PM, Christopher Lars=
on <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_=
blank">clarson@kergoth.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div d=
ir=3D"ltr"><span>On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <span dir=3D=
"ltr">&lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.=
hoosier@gmail.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_extra=
"><div class=3D"gmail_quote"><span><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39=
;ve successfully built a Canadian-cross SDK using the meta-mingw layer. Ver=
y nice!<div><br></div><div>Because the layer lobotomizes the SDK_PACKAGING_=
FUNC when ${SDKMACHINE} is set to a MinGW host, though, the resulting SDK i=
s not encapsulated into the self-extracting tarball and the corresponding r=
elocation logic (<span style=3D"font-family:monospace,monospace">relocate_s=
dk.py</span>=C2=A0and so forth) is omitted.</div><div><br></div><div>Any su=
ggestions on how to do the last-mile work to use the SDK on Windows? Or per=
haps nothing is needed at all, except adjusting the prefixes built into <fo=
nt face=3D"monospace, monospace">environment-setup-&lt;arch&gt;</font>? Alt=
hough that would be nice, I think at least some installation-time adjustmen=
t is necessary though; when I do:</div><div><br></div><div><font face=3D"mo=
nospace, monospace">=C2=A0 =C2=A0 arm-poky-linux-gnueabi-gcc -o foo foo.c -=
-sysroot=3Dd:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux=
-gnueabi</font></div><div><br></div><div>, the following happens during lin=
king:</div><div><br></div><div><font face=3D"monospace, monospace">=C2=A0 =
=C2=A0 ld.exe: cannot find /lib/libc.so.6 inside d:/projects/yocto-sdk/sysr=
oots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div></div></blockquo=
te></span></div></div></div></blockquote><div><br></div></span><div>As it t=
urns out, the immediate error here was simply that libc.so.6 did not exist,=
 so ld.exe was telling the truth in this case. The symbolic links stored in=
 the SDK tarball that would have created libc.so.6 aren&#39;t meaningful on=
 Windows, so tar just ignores them when unpacking. Presumably some fancier =
handling of the tarball unpacking to simulate symlinks by making copies of =
the pointed-to file would cure this.<br></div><span><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_=
quote"><span><div><br></div></span><div>Mark Hatle&#39;s branch switches to=
 batch files for environment setup and whatnot. I don&#39;t know if it addr=
esses the reloc issue or not, but it&#39;s a substantial improvement over m=
aster. See <a href=3D"https://git.yoctoproject.org/cgit.cgi/poky-contrib/lo=
g/?h=3Dmgh/meta-mingw" target=3D"_blank">https://git.yoctoproject.org/cgit.=
cgi/poky-contrib/log/?h=3Dmgh/meta-mingw</a> <br></div></div></div></div></=
blockquote><div><br></div></span><div>Thanks, I&#39;ll try that.</div></div=
></div></div></blockquote><div><br></div></div></div></div><div dir=3D"ltr"=
><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Mark Hatle&#39;=
s branch does work much more nicely for that. There&#39;s still the problem=
 of what to do with the symlink from the SDK tarballs. Are there any regula=
r users of these mingw SDKs out there who know the right expectation on how=
 to extract them?</div></div></div></div></blockquote><div>=C2=A0</div></di=
v></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>tar has an option =
to resolve symlinks to the files, I&#39;d expect you could just add that to=
 the variable for the tar options for the sdk, and it&#39;d just duplicate =
the symlinks. You&#39;ll have extra files, so it&#39;d be larger, but at le=
ast it&#39;d be functional.</div></div></div></blockquote><div><br></div><d=
iv>Erm, I meant duplicate the files, not the symlinks :) The symlinks would=
 be resolved to files. Clearly I haven&#39;t had enough caffeine yet today.=
=C2=A0</div></div></div>

--001a11422688eb4975052e408f3b--
