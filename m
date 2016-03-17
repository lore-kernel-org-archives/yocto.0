Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B5B4E00C23; Thu, 17 Mar 2016 08:47:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61BFAE00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:47:22 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id g184so46771081ioa.3
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jfiYOfttCfnu6s511URNyVOJj7RaG6GEpyPrMZKnykk=;
	b=fpmMMLJ72NFTjKRkxR+UfLWOUFz3GGURTJhMso2qPWMZpT6OkQfFkBs79higskq/dS
	GT1aqRz2OrfiPDn4s/K16FscCtrzjxvwRZmRrYvUYDyVJT0jX+3J7YSYBC/MXzntV6A4
	QTL7LAqmHvlSY37tXIPRH6CA7ooJlniWTiz/r9e/RTrtNZpK32tz7ufKitkkw2eJDvLY
	8J01RyYmYov3jHCxb40ZzAjT10e6JE+F0lOdTOYZ9RExU4BHGOpslk5JZ2OuAc/ojZER
	zG+7pKm/2apy89WltUZ/KZN631oUXeaMkaL3clCDSBMW/Ac+JQsI/7q+WmWUQVv0nEHE
	TK0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jfiYOfttCfnu6s511URNyVOJj7RaG6GEpyPrMZKnykk=;
	b=Hi9eSlwa2EwHNMsZ4GdtgayRJv1cI5zvYj5xjwb5XANarTJ+HH9r/Q4WqAPUOkAuau
	X/glGzlDwX4Lrb5yV7jUlkzWy5GG8d3oA+h7NxQ2dYtgzJWknmcyETYkC87E1FX6VndZ
	rckFv3+tMcSMc/hjUk1QMMYe3+uD64bWdW4HSQc7dS4cuerx0csZQAhcwEj2XlT0sXWK
	pKtGGN3t3zwJaeSwjp+8UJy7cQ4sORPMVqV7u0mFBq842dYPfKYf4Tg6ePJMxpmaRCiK
	ol5D00lWjeZjZOovFzoddWdPCFcFeb5FkeqdZb4fEAHhv5ONr/2MNL1gL+sc04gnrozX
	ZA5w==
X-Gm-Message-State: AD7BkJJ4Fu6fMBEOCj6LL/S523Yyqji2nWZXo7xVonzhErThXRzoGCAyY2cfOZoq1JWbptqIRlZVKyov7+B7kA==
X-Received: by 10.107.12.207 with SMTP id 76mr10944934iom.70.1458229641653;
	Thu, 17 Mar 2016 08:47:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
	<CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
	<CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
In-Reply-To: <CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 17 Mar 2016 15:47:11 +0000
Message-ID: <CABcZANmSfTOKbHH+Vx85r5OSJ0KagaEdxF37iJyw4jRqWLywAA@mail.gmail.com>
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
X-List-Received-Date: Thu, 17 Mar 2016 15:47:26 -0000
Content-Type: multipart/alternative; boundary=001a113eca06cabe77052e408b8d

--001a113eca06cabe77052e408b8d
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 17, 2016 at 8:43 AM Matt Hoosier <matt.hoosier@gmail.com> wrote:

> On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <matt.hoosier@gmail.com>
> wrote:
>
>>
>>
>> On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <clarson@kergoth.com>
>> wrote:
>>
>>> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com>
>>> wrote:
>>>
>>>> I've successfully built a Canadian-cross SDK using the meta-mingw
>>>> layer. Very nice!
>>>>
>>>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE}
>>>> is set to a MinGW host, though, the resulting SDK is not encapsulated into
>>>> the self-extracting tarball and the corresponding relocation logic (
>>>> relocate_sdk.py and so forth) is omitted.
>>>>
>>>> Any suggestions on how to do the last-mile work to use the SDK on
>>>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>>>> built into environment-setup-<arch>? Although that would be nice, I
>>>> think at least some installation-time adjustment is necessary though; when
>>>> I do:
>>>>
>>>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>>>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>
>>>> , the following happens during linking:
>>>>
>>>>     ld.exe: cannot find /lib/libc.so.6 inside
>>>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>
>>>
>> As it turns out, the immediate error here was simply that libc.so.6 did
>> not exist, so ld.exe was telling the truth in this case. The symbolic links
>> stored in the SDK tarball that would have created libc.so.6 aren't
>> meaningful on Windows, so tar just ignores them when unpacking. Presumably
>> some fancier handling of the tarball unpacking to simulate symlinks by
>> making copies of the pointed-to file would cure this.
>>
>>
>>>
>>> Mark Hatle's branch switches to batch files for environment setup and
>>> whatnot. I don't know if it addresses the reloc issue or not, but it's a
>>> substantial improvement over master. See
>>> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>>>
>>
>> Thanks, I'll try that.
>>
>
> Mark Hatle's branch does work much more nicely for that. There's still the
> problem of what to do with the symlink from the SDK tarballs. Are there any
> regular users of these mingw SDKs out there who know the right expectation
> on how to extract them?
>

tar has an option to resolve symlinks to the files, I'd expect you could
just add that to the variable for the tar options for the sdk, and it'd
just duplicate the symlinks. You'll have extra files, so it'd be larger,
but at least it'd be functional.

--001a113eca06cabe77052e408b8d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Mar 17, 2016 at 8:43 AM Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@g=
mail.com">matt.hoosier@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote">On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <span dir=3D"ltr">&=
lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><spa=
n>On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <span dir=3D"ltr">&lt=
;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><span>On Wed,=
 Mar 16, 2016 at 2:32 PM, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt=
;</span> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_qu=
ote"><span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;ve successfully built a =
Canadian-cross SDK using the meta-mingw layer. Very nice!<div><br></div><di=
v>Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} i=
s set to a MinGW host, though, the resulting SDK is not encapsulated into t=
he self-extracting tarball and the corresponding relocation logic (<span st=
yle=3D"font-family:monospace,monospace">relocate_sdk.py</span>=C2=A0and so =
forth) is omitted.</div><div><br></div><div>Any suggestions on how to do th=
e last-mile work to use the SDK on Windows? Or perhaps nothing is needed at=
 all, except adjusting the prefixes built into <font face=3D"monospace, mon=
ospace">environment-setup-&lt;arch&gt;</font>? Although that would be nice,=
 I think at least some installation-time adjustment is necessary though; wh=
en I do:</div><div><br></div><div><font face=3D"monospace, monospace">=C2=
=A0 =C2=A0 arm-poky-linux-gnueabi-gcc -o foo foo.c --sysroot=3Dd:/projects/=
yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div><d=
iv><br></div><div>, the following happens during linking:</div><div><br></d=
iv><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 ld.exe: cannot fi=
nd /lib/libc.so.6 inside d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-n=
eon-poky-linux-gnueabi</font></div></div></blockquote></span></div></div></=
div></blockquote><div><br></div></span><div>As it turns out, the immediate =
error here was simply that libc.so.6 did not exist, so ld.exe was telling t=
he truth in this case. The symbolic links stored in the SDK tarball that wo=
uld have created libc.so.6 aren&#39;t meaningful on Windows, so tar just ig=
nores them when unpacking. Presumably some fancier handling of the tarball =
unpacking to simulate symlinks by making copies of the pointed-to file woul=
d cure this.<br></div><span><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-col=
or:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"l=
tr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><div><br></=
div></span><div>Mark Hatle&#39;s branch switches to batch files for environ=
ment setup and whatnot. I don&#39;t know if it addresses the reloc issue or=
 not, but it&#39;s a substantial improvement over master. See <a href=3D"ht=
tps://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dmgh/meta-mingw" t=
arget=3D"_blank">https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=
=3Dmgh/meta-mingw</a> <br></div></div></div></div></blockquote><div><br></d=
iv></span><div>Thanks, I&#39;ll try that.</div></div></div></div></blockquo=
te><div><br></div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_ex=
tra"><div class=3D"gmail_quote"><div>Mark Hatle&#39;s branch does work much=
 more nicely for that. There&#39;s still the problem of what to do with the=
 symlink from the SDK tarballs. Are there any regular users of these mingw =
SDKs out there who know the right expectation on how to extract them?</div>=
</div></div></div></blockquote><div>=C2=A0</div><div>tar has an option to r=
esolve symlinks to the files, I&#39;d expect you could just add that to the=
 variable for the tar options for the sdk, and it&#39;d just duplicate the =
symlinks. You&#39;ll have extra files, so it&#39;d be larger, but at least =
it&#39;d be functional.</div></div></div>

--001a113eca06cabe77052e408b8d--
