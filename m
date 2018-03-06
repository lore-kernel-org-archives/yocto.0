Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 375A2E00E83; Tue,  6 Mar 2018 12:07:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94AFCE00E79
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 12:07:34 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id u66so402160ith.1
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 12:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oseS9W6UOPorzxeiY0QsgVZsrtRvQ0zKkQdp6GYMAjo=;
	b=H1YRhOXipeLmmNxHZ5Ak5E4teIIkfrmEte3ZnGIUfb6n/H7xkmLBy8DxuJm3fqDoP/
	zLOr0G9RyCTCoA0YsVY0bTR9HGQym82P8ltJCrbvEWzytOqamrBNPYE3IA7DX6pgIciM
	ssTfG79IjEaoo4KNYzHjBGGxz6DE1+DjRtULI9a4oKMG8U3vDNe+o2WzJVpjOdjKJEel
	c6DDy6YvC4ggvzh7xf4XwzH3oQJbhtcOTI6YCEreJHhhPzsrR7LaEvGEtmPQKqs2bjWB
	abV6iB+cayJ12oqC5nY0Z90uQpihcu9cDI3aBXH0gJKc9KpdCwOtcp+KQoso0ju5fx9a
	YijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oseS9W6UOPorzxeiY0QsgVZsrtRvQ0zKkQdp6GYMAjo=;
	b=g/sWkxDkPY0BT7mQm4lGXB4lvP0jy9GChDKXwKu+AdG/VmvgRBGEd+kmWhQJ5ve56U
	Os7F4fBq8cwY3PIz3makpswBZpTHC7PbaHWLBXKJqfoZUfaIiVigdfzBJqwKA1R6P6lO
	/3YL6Kiu85rk3x1u08sZXT5hIoQiGhwaHWTjLld77XX7d1yfE6iqRfIdhqFX4QI6kUsX
	xpNFqzgWcrFqYesBefVuzJ2W+aA7/K3B39IoTgoj6t85rJLF0VCp88r9MFtBRb24pWmH
	6ss3ibdhPTE/92x15CIGblhmqgsgC5gTIGYzPjOOKN5u9ZpBUuhdI/5i2VWQi0eZEAYM
	bHdA==
X-Gm-Message-State: AElRT7GRHbNQ0Vvu5ToCq9ZwQvxWQpZIlBceAFz+eU2Cgby41gatmAk2
	W7QJjXgxRcUtP8I+o4CyWPpyWdW+SD94P/yhFn5LLQ==
X-Google-Smtp-Source: AG47ELtU/CTHTZOPrzaJ02azalMMLmsu1jaWk4vGqp/EVvIEy8GSklgnLrzVN7qFOL46N/I5rrO4+j8CC5qco78DR+8=
X-Received: by 10.36.185.24 with SMTP id w24mr19455511ite.127.1520366853785;
	Tue, 06 Mar 2018 12:07:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 12:07:13 -0800 (PST)
In-Reply-To: <CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 20:07:13 +0000
Message-ID: <CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
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
X-List-Received-Date: Tue, 06 Mar 2018 20:07:35 -0000
Content-Type: multipart/alternative; boundary="f403045d9a503fa5ad0566c3fe00"

--f403045d9a503fa5ad0566c3fe00
Content-Type: text/plain; charset="UTF-8"

On 6 March 2018 at 19:48, Giordon Stark <kratsg@gmail.com> wrote:

>
> where PV=0.2 (open62541_0.2.bb). And I see an error on install (full log:
> https://gist.github.com/kratsg/5c3740ab72403595d5b9e0e855a3697f)
>
> | CMake Error at cmake_install.cmake:40 (file):
> |   file INSTALL cannot find
> |   "/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/
> open62541/0.2-r0/build/open62541.h".
>
> So I'm wondering if I screwed up something by using the tarball instead of
> a clone. I thought I translated it relatively well, and the release matches
> the hash I was using.
>

You can drop the S assignment as that is the default value.

Github /archive/ tarballs can and do change over time, which gets very
annoying when you need to go and change the checksums.

If open62541 don't provide proper tarballs then keep it doing a git clone
of the sha of that tag.

My hunch without reading the upstream CMake files is that they don't
support out-of-tree builds.  If it worked from git then that's another
reason to switch back.

Ross

--f403045d9a503fa5ad0566c3fe00
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 6 March 2018 at 19:48, Giordon Stark <span dir=3D"ltr">=
&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com<=
/a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>whe=
re PV=3D0.2 (<a href=3D"http://open62541_0.2.bb" target=3D"_blank">open6254=
1_0.2.bb</a>). And I see an error on install (full log:=C2=A0<a href=3D"htt=
ps://gist.github.com/kratsg/5c3740ab72403595d5b9e0e855a3697f" target=3D"_bl=
ank">https://gist.github.com/<wbr>kratsg/<wbr>5c3740ab72403595d5b9e0e855a36=
9<wbr>7f</a>)</div><div><br></div><div><div><span style=3D"font-family:mono=
space">| CMake Error at cmake_install.cmake:40 (file):</span><br></div><div=
><font face=3D"monospace">|=C2=A0 =C2=A0file INSTALL cannot find</font></di=
v><div><font face=3D"monospace">|=C2=A0 =C2=A0&quot;/local/d4/gstark/poky/b=
uild/<wbr>tmp/work/aarch64-poky-linux/<wbr>open62541/0.2-r0/build/<wbr>open=
62541.h&quot;.</font></div><div><br></div></div><div>So I&#39;m wondering i=
f I screwed up something by using the tarball instead of a clone. I thought=
 I translated it relatively well, and the release matches the hash I was us=
ing.</div></div></blockquote><div><br></div><div>You can drop the S assignm=
ent as that is the default value.</div><div><br></div><div>Github /archive/=
 tarballs can and do change over time, which gets very annoying when you ne=
ed to go and change the checksums.</div><div><br></div><div>If open62541 do=
n&#39;t provide proper tarballs then keep it doing a git clone of the sha o=
f that tag.</div><div><br></div><div>My hunch without reading the upstream =
CMake files is that they don&#39;t support out-of-tree builds.=C2=A0 If it =
worked from git then that&#39;s another reason to switch back.=C2=A0</div><=
div><br></div><div>Ross</div></div></div></div>

--f403045d9a503fa5ad0566c3fe00--
