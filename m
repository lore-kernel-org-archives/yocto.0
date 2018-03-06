Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B2CAE00E4D; Tue,  6 Mar 2018 12:32:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC86E00971
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 12:32:18 -0800 (PST)
Received: by mail-it0-f52.google.com with SMTP id n7so461384ita.5
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 12:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ewCPYUDRp+jNDM+q3NSuOUfbQ7GgAHk7bwMckwYFL64=;
	b=Mmy5fw1GT8rNSd80Dpw/1KqlQHr1pgKawizgk/UGfz8De7z5UHAZ1kOZ6NP04GygWR
	83h7x4rnPKP6XYZJSxdpx2xNeYDLHqRHK8tdEXE+hyRUVf0y9vEd9YF0A+7bZDf51Mhh
	v0a3iWmyhe0cs8gay7iXautDeZ2si9Xa8Udyc71K93wUGO7/E/vhYFJyJCyJ8UQO8pED
	YIzMzq7Pf1N/IYUPtEWnggytnriCh8NL4i6+7PhEJRvA8O8w9gfDjMJJkE62K7ijdyee
	W32LAa6PTldM8mXCoBIntFWTm7Rug1Q7yX12qHUXFf8KSvYKRJRYu5vkcbofkzHPELAM
	epJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ewCPYUDRp+jNDM+q3NSuOUfbQ7GgAHk7bwMckwYFL64=;
	b=Ligzemae+m3MTHWb8Wk3XX/Tk1/XkJ8qr0h8pg0DJM7uibDj6c9CDOE/flmxcYV+oa
	0eS1Be5BTs5pOi5ZYtxXUiXIYaj+qxGa1baPt7n6dAIaRA6M5ku5SMYER/c1vmpBEEIq
	pe1lcVV1wxtP3N0Flp89LAnScH4syOvkq250HviyTJnWXf1X1HgoLSh9yF1zKAMb10dk
	WoKxsu3Jumb3vQ+QSicrc8gGew8Yt5XOpXmRSTJ57nQ8XJ422WgCd6EKf/lzRlBd4QqQ
	2Nh67U6azLr0ecVCiEdxeMWcd36+9fXANiAfAIgvboqnX2D8oT2oUolhLHMb7ph6kUCP
	CRrA==
X-Gm-Message-State: AElRT7G44ludyNjDLkRQv1/GCbhlCM4M1OIALqojZ/3dSdX1SDfbefcR
	vs9dkSJ/W1E4ouHoH+BDNWvpxVkh95C3lR3Hkp92VA==
X-Google-Smtp-Source: AG47ELs7xFQIyppK/VjO/5Uwts/FOYcG9jl14BkSVvTcxAbM4k1w3Nz50uMec9KtAO/ky2NINBDDM8CmmFsuIk3/res=
X-Received: by 10.36.185.24 with SMTP id w24mr19549490ite.127.1520368337655;
	Tue, 06 Mar 2018 12:32:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 12:31:57 -0800 (PST)
In-Reply-To: <CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 20:31:57 +0000
Message-ID: <CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 20:32:19 -0000
Content-Type: multipart/alternative; boundary="f403045d9a50b1a20a0566c456c2"

--f403045d9a50b1a20a0566c456c2
Content-Type: text/plain; charset="UTF-8"

On 6 March 2018 at 20:24, Giordon Stark <kratsg@gmail.com> wrote:

> You can drop the S assignment as that is the default value.
>>
>
> Didn't realize, neat. I knew I needed to set it for `git` clones since it
> always throws it into a ${WORKDIR}/git folder.
>

Yes, for git clones you need to override it.


>
>> Github /archive/ tarballs can and do change over time, which gets very
>> annoying when you need to go and change the checksums.
>>
>
> Really? Dang...
>

Yeah. :/  Took us ages to verify this happens but it definitely does.


> My hunch without reading the upstream CMake files is that they don't
>> support out-of-tree builds.  If it worked from git then that's another
>> reason to switch back.
>>
>
> It seems like this is the case here. I'm ok using git clones for now.
> Thanks.
>

It *shouldn't* matter here as the /archive/ tarball should have identical
contents to a clone of the same tag, but it's possible that the build
system looks for a .git/ directory and changes how it builds.  That's kind
of stupid but it wouldn't be the first time I've seen it break builds.

Ross

--f403045d9a50b1a20a0566c456c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 6 March 2018 at 20:24, Giordon Stark <span dir=3D"ltr">=
&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com<=
/a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quo=
te"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_extra"><div class=3D"gmail_quote"><div>You can drop the S ass=
ignment as that is the default value.</div></div></div></div></blockquote><=
div><br></div></span><div>Didn&#39;t realize, neat. I knew I needed to set =
it for `git` clones since it always throws it into a ${WORKDIR}/git folder.=
</div></div></div></blockquote><div><br></div><div>Yes, for git clones you =
need to override it.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr"><div class=3D"gmail_quote"><span class=3D""><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><div><br></div><div>Github /archive/ tarballs can and do change=
 over time, which gets very annoying when you need to go and change the che=
cksums.</div></div></div></div></blockquote><div><br></div></span><div>Real=
ly? Dang...</div></div></div></blockquote><div><br></div><div>Yeah. :/ =C2=
=A0Took us ages to verify this happens but it definitely does.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_quote"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>My hunch witho=
ut reading the upstream CMake files is that they don&#39;t support out-of-t=
ree builds.=C2=A0 If it worked from git then that&#39;s another reason to s=
witch back.=C2=A0</div></div></div></div></blockquote><div><br></div></span=
><div>It seems like this is the case here. I&#39;m ok using git clones for =
now. Thanks.</div></div></div></blockquote><div><br></div><div>It *shouldn&=
#39;t* matter here as the /archive/ tarball should have identical contents =
to a clone of the same tag, but it&#39;s possible that the build system loo=
ks for a .git/ directory and changes how it builds.=C2=A0 That&#39;s kind o=
f stupid but it wouldn&#39;t be the first time I&#39;ve seen it break build=
s.</div><div><br></div><div>Ross</div></div></div></div>

--f403045d9a50b1a20a0566c456c2--
