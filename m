Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F4F2E00A27; Wed, 16 Mar 2016 14:40:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A5AE007D2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 14:40:32 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id ig19so55557401igb.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 14:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=juc4QtX/fXx2A9SxsIEUWVvB8dqjnFatgSklxGqxqLU=;
	b=ZIVCfR9U1mOp8BYDYAOXMoYATK4wmyhRGU0mZYjXHXkuS9/yk0i/PxZd2oSu094zmR
	aVV4cZRsGnnYYHB2Aj2uOK7h4Q767UCYKm+x3Np8GS+vB8WbAuHTBJt5wJWk4cyuJoix
	PXnJtqAAW6uro4bEccF80zf6f3IBrefHWv5qi1cUm7oS+ZDGE9dcwchucSRpqVxkWuXs
	Ubvfoa5iTVDECMc5Owjswl+n6yAz3xFDjSW7krKZrgsAX2peS0HStZ5QioXaEp76+tKm
	HdJYT6sA8yy7G7tCsrBwxXRoYE3evPIyCpUfwrpBB66rS5cbw3itidL0w/YQDwLEV3VE
	nyAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=juc4QtX/fXx2A9SxsIEUWVvB8dqjnFatgSklxGqxqLU=;
	b=UDYSZFeCWIqdqMu4vowy9lXcr6bcIHRP+QlnC++oQOkMfgHLuo5Au6COeDZAevjtK4
	O20i5cwh3a8+zyeTHPv9B8z33jSTYV/dbT4IPihXy4QIo8tGNk6m0BeAtQ3Db93bzqvL
	7jCBYBFE8ehWqGbITa631Vk1jCQm4iT+SCZlcS35jbuaoNHkcYjuKUVN3tx25Ukkm5kM
	zeEyNwoowSj9uSPLGergPCMxjtAXKvTnZJT78dFSIzWVUBi+kCeVfVLGsS58/qH02uNU
	/nAJdP1th8KHrQpHhGFhocPhPEtJPLFnVZQ20aWsLbOliRQgdnhtBviI04J7L8nUmmHk
	oAMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=juc4QtX/fXx2A9SxsIEUWVvB8dqjnFatgSklxGqxqLU=;
	b=aFUoVwQEdzOk9r0UAcMMVqXOq71Y4RZcdrgnboAS8+M+f8FLLz+IXctmipdE79dOsP
	uNqGeVXS5SkbN+be0bclVXL308K1sVMhvdC5zRZmTZAdpGX8/mpxSH67Ljcd/GWZE5su
	OREtW6kScVbrr0MhAxuosiTGRsYWU/fjEzrWSdMUbUQs9breCTCIDG9ViGIigAilIwek
	xWB2DFrLYVo2X8l4IRD97AmNcJO4PfWp8dvkAz/kpVm4RBsV4mlDTsvwKezWoyWan9VM
	fO4dBwQno80cCYIE0rF9yClt8Ctu3jjh6IK5yy+K/nL/utfGWUDQ5GFPvFItzfwc3pJN
	mwuA==
X-Gm-Message-State: AD7BkJKLDZojsvIoc6fj6W/i1D2MpDJoJry3RDuBZ6jz2FTtL0I0v59guVMawxf3h/6AljvJbuD0IzkjFGIStQ==
X-Received: by 10.51.17.34 with SMTP id gb2mr33610525igd.13.1458164431972;
	Wed, 16 Mar 2016 14:40:31 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.67.70 with HTTP; Wed, 16 Mar 2016 14:40:12 -0700 (PDT)
In-Reply-To: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 16 Mar 2016 14:40:12 -0700
X-Google-Sender-Auth: EZ7wv09lKORzgd6-8QdiZvi4trk
Message-ID: <CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
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
X-List-Received-Date: Wed, 16 Mar 2016 21:40:37 -0000
Content-Type: multipart/alternative; boundary=001a1135ed32fdeee1052e315c0c

--001a1135ed32fdeee1052e315c0c
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com>
wrote:

> I've successfully built a Canadian-cross SDK using the meta-mingw layer.
> Very nice!
>
> Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} is
> set to a MinGW host, though, the resulting SDK is not encapsulated into the
> self-extracting tarball and the corresponding relocation logic (
> relocate_sdk.py and so forth) is omitted.
>
> Any suggestions on how to do the last-mile work to use the SDK on Windows?
> Or perhaps nothing is needed at all, except adjusting the prefixes built
> into environment-setup-<arch>? Although that would be nice, I think at
> least some installation-time adjustment is necessary though; when I do:
>
>     arm-poky-linux-gnueabi-gcc -o foo foo.c
> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>
> , the following happens during linking:
>
>     ld.exe: cannot find /lib/libc.so.6 inside
> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>

Mark Hatle's branch switches to batch files for environment setup and
whatnot. I don't know if it addresses the reloc issue or not, but it's a
substantial improvement over master. See
https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1135ed32fdeee1052e315c0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <span dir=3D=
"ltr">&lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.=
hoosier@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">I&#39;ve successfully built a Canadian-cross SDK using the me=
ta-mingw layer. Very nice!<div><br></div><div>Because the layer lobotomizes=
 the SDK_PACKAGING_FUNC when ${SDKMACHINE} is set to a MinGW host, though, =
the resulting SDK is not encapsulated into the self-extracting tarball and =
the corresponding relocation logic (<span style=3D"font-family:monospace,mo=
nospace">relocate_sdk.py</span>=C2=A0and so forth) is omitted.</div><div><b=
r></div><div>Any suggestions on how to do the last-mile work to use the SDK=
 on Windows? Or perhaps nothing is needed at all, except adjusting the pref=
ixes built into <font face=3D"monospace, monospace">environment-setup-&lt;a=
rch&gt;</font>? Although that would be nice, I think at least some installa=
tion-time adjustment is necessary though; when I do:</div><div><br></div><d=
iv><font face=3D"monospace, monospace">=C2=A0 =C2=A0 arm-poky-linux-gnueabi=
-gcc -o foo foo.c --sysroot=3Dd:/projects/yocto-sdk/sysroots/cortexa15t2hf-=
vfp-neon-poky-linux-gnueabi</font></div><div><br></div><div>, the following=
 happens during linking:</div><div><br></div><div><font face=3D"monospace, =
monospace">=C2=A0 =C2=A0 ld.exe: cannot find /lib/libc.so.6 inside d:/proje=
cts/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></di=
v></div></blockquote><div><br></div><div>Mark Hatle&#39;s branch switches t=
o batch files for environment setup and whatnot. I don&#39;t know if it add=
resses the reloc issue or not, but it&#39;s a substantial improvement over =
master. See <a href=3D"https://git.yoctoproject.org/cgit.cgi/poky-contrib/l=
og/?h=3Dmgh/meta-mingw">https://git.yoctoproject.org/cgit.cgi/poky-contrib/=
log/?h=3Dmgh/meta-mingw</a> <br></div></div>-- <br><div class=3D"gmail_sign=
ature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics</div>
</div></div>

--001a1135ed32fdeee1052e315c0c--
