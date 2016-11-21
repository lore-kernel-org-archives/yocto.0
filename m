Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 669DFE009BF; Mon, 21 Nov 2016 06:41:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A563E009A5
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 06:41:04 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id n6so205483304qtd.1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 06:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R51/19e4mweGzo4vqWHzfa01sVyNyilgyadALx5886I=;
	b=izKOvp4K9muerbMeGRwan7Yp9xT6UDePi0ebAAt5An9amxzrpdfNSG21SfTVkS+dYl
	rB/LBJxy9y7NEAw+imTcZDC+LkeXcvVNYjnygaYlqbJOBffWFQED1y0vMC86CKtSsTeN
	9WxREYdpVNDZ6RcxTfacPqF1fiD3VQjNRrQhUCA3iSz8wQWD3oBriQ8/Rw9ZM+BT8w5B
	8xbcLs5rXvRoxHLa+ivzuAm0mUFWr2ZRvVpuYzM/Ts5z9qSyvbq3NcRlBrBeihkFQkFN
	1/RHLZlaboSxeouwYDq4Io+D+zo+O7kjLeh5+QgAgl2k3Lw6XdWgXXZxoJwBb1Z+hqWL
	OCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=R51/19e4mweGzo4vqWHzfa01sVyNyilgyadALx5886I=;
	b=c1FtJvgv2xI9E8N71uv4PWbUI+ZOKQXjlsdMRD4cPHrxdSrq+bnvODwbTcrikcqfNr
	OHGzwzhFTwdYArXulRGiRbbJrIMT44uCO1a4flmprauE6CqCD7ZK70mwNlN/9zV4Q7qk
	8KupyLcZVzSLVI7fqCOIG9z/fBl23/3RZy/YlNnqx+MUzXepG/cfOtmM1raLQGifcowq
	7FwrLNGCpdWiRD8uYiblkqcLO58bFZ7N/wmIBxNTmZwE4caEJvovoeI4iyTASLYKXGeF
	Dc3Aq3NXkVp+PSYCaNzEmxY3rrwidF8DVTTzuhtVGPoGKtVlmcIcVPpT+pC9YxnAgP0E
	jjyQ==
X-Gm-Message-State: AKaTC03WQzgfo3NC6e4EuwqE1KtG2hUHiGLYgjzPRq/wwD3kci4Cg6l8I1WNWk4VS8/1IoDBFuGFQgwzNBfgUeVD
X-Received: by 10.237.37.77 with SMTP id w13mr9114115qtc.197.1479739263623;
	Mon, 21 Nov 2016 06:41:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Mon, 21 Nov 2016 06:40:43 -0800 (PST)
In-Reply-To: <20161118213046.GB26177@openSUSE-i7.site>
References: <20161118213046.GB26177@openSUSE-i7.site>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Nov 2016 14:40:43 +0000
Message-ID: <CAJTo0LaCgn_xvLvaNgZAiNC0AX3b1j_8Us7S3HMVRM790wpcyA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uninative workflow
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
X-List-Received-Date: Mon, 21 Nov 2016 14:41:11 -0000
Content-Type: multipart/alternative; boundary=001a114108ea2b3ba40541d0a5b3

--001a114108ea2b3ba40541d0a5b3
Content-Type: text/plain; charset=UTF-8

On 18 November 2016 at 21:30, Trevor Woerner <twoerner@gmail.com> wrote:

> To be honest, I'm not entirely sure what the uninative stuff is
> (explanations
> or pointers to explanations appreciated!) but I'm trying to figure out how
> to
> work with it.


It's a prebuild glibc designed to remove the differences between host
distros, meaning that native sstate objects can be shared between host
distros.  It used to be opt-in for convenience but there's a nasty build
failure.


> Previously, generating an eSDK didn't require a uninative-tarball, but now,
> apparently, it does? Any idea why?
>

b59eee7bebd413c7abe5626f69508e1fe47dd0ac:
    classes/populate_sdk_ext: require uninative

    It seems that possibly due to OE-Core commit
    ac59063bee0e32d0737340974f657341717a6abe, binaries produced without
    uninative aren't compatible with the uninative glibc. I did try earlier
    to ensure that the eSDK could work without uninative since the default
    configuration in OE-Core does not enable it, but it seems like I didn't
    go far enough. Given the practical considerations, just give up and
    require uninative to be enabled in order to build the eSDK. I'm not
    particularly happy about this, but I don't seem much of an alternative.

    Fixes [YOCTO #10566].

ac59063bee0e32d0737340974f657341717a6abe:
    uninative: Add a fix for icu-native to use the correct ABI

    If no -std= option is passed to icu's configure, it defaults to CXX11.
    This isn't what we want for uninative, so pass an explicit option
    which selects an older ABI on newer versions of g++.

    This avoids the __cxa_bad_array_new_length@CXXABI_1.3.8 symbol
    being used.


> So now, in addition to building the uninative-tarball before being able to
> build an eSDK, it also appears that I have to edit my local.conf to tell
> the
> build that I'm using it, where to find it, and its md5sum. The weird thing
> is,
> I could do "bitbake uninative-tarball" all day long, and every invocation
> of
> that command will generate a tarball with a different md5sum even though
> the
> configuration for each build is exactly the same!
>

You're Doing It Wrong.  Generate the uninative tarball once, put it
somewhere central, update configuration file.

Or, just do what poky does:

require conf/distro/include/yocto-uninative.inc
INHERIT += "uninative"

That uses the uninative tarball that is hosted on the yoctoproject site, so
you only need to build your own if you don't want to trust external
binaries.

Ross

--001a114108ea2b3ba40541d0a5b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 November 2016 at 21:30, Trevor Woerner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;=
</span> wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-c=
olor:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><span style=
=3D"font-size:12.800000190734863px">To be honest, I&#39;m not entirely sure=
 what the uninative stuff is (explanations<br></span><span style=3D"font-si=
ze:12.800000190734863px">or pointers to explanations appreciated!) but I&#3=
9;m trying to figure out how to<br></span><span style=3D"font-size:12.80000=
0190734863px">work with it.</span></blockquote><div><br></div><div>It&#39;s=
 a prebuild glibc designed to remove the differences between host distros, =
meaning that native sstate objects can be shared between host distros.=C2=
=A0 It used to be opt-in for convenience but there&#39;s a nasty build fail=
ure.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div id=3D"gmail-:1zo" class=3D=
"gmail-a3s gmail-aXjCH gmail-m158795a05f407f1f">Previously, generating an e=
SDK didn&#39;t require a uninative-tarball, but now,<br>
apparently, it does? Any idea why?<br></div></blockquote><div><br></div><di=
v>b59eee7bebd413c7abe5626f69508e1fe47dd0ac:<br></div><div>=C2=A0 =C2=A0 cla=
sses/populate_sdk_ext: require uninative</div><div><br></div><div>=C2=A0 =
=C2=A0 It seems that possibly due to OE-Core commit</div><div>=C2=A0 =C2=A0=
 ac59063bee0e32d0737340974f657341717a6abe, binaries produced without</div><=
div>=C2=A0 =C2=A0 uninative aren&#39;t compatible with the uninative glibc.=
 I did try earlier</div><div>=C2=A0 =C2=A0 to ensure that the eSDK could wo=
rk without uninative since the default</div><div>=C2=A0 =C2=A0 configuratio=
n in OE-Core does not enable it, but it seems like I didn&#39;t</div><div>=
=C2=A0 =C2=A0 go far enough. Given the practical considerations, just give =
up and</div><div>=C2=A0 =C2=A0 require uninative to be enabled in order to =
build the eSDK. I&#39;m not</div><div>=C2=A0 =C2=A0 particularly happy abou=
t this, but I don&#39;t seem much of an alternative.</div><div><br></div><d=
iv>=C2=A0 =C2=A0 Fixes [YOCTO #10566].</div><div><br></div><div>ac59063bee0=
e32d0737340974f657341717a6abe:<br></div><div><div>=C2=A0 =C2=A0 uninative: =
Add a fix for icu-native to use the correct ABI</div><div><br></div><div>=
=C2=A0 =C2=A0 If no -std=3D option is passed to icu&#39;s configure, it def=
aults to CXX11.</div><div>=C2=A0 =C2=A0 This isn&#39;t what we want for uni=
native, so pass an explicit option</div><div>=C2=A0 =C2=A0 which selects an=
 older ABI on newer versions of g++.</div><div><br></div><div>=C2=A0 =C2=A0=
 This avoids the __cxa_bad_array_new_length@CXXABI_1.3.8 symbol</div><div>=
=C2=A0 =C2=A0 being used.</div></div><div>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<div id=3D"gmail-:1zo" class=3D"gmail-a3s gmail-aXjCH gmail-m158795a05f407f=
1f">
So now, in addition to building the uninative-tarball before being able to<=
br>
build an eSDK, it also appears that I have to edit my local.conf to tell th=
e<br>
build that I&#39;m using it, where to find it, and its md5sum. The weird th=
ing is,<br>
I could do &quot;bitbake uninative-tarball&quot; all day long, and every in=
vocation of<br>
that command will generate a tarball with a different md5sum even though th=
e<br>
configuration for each build is exactly the same!<br></div></blockquote></d=
iv><br>You&#39;re Doing It Wrong.=C2=A0 Generate the uninative tarball once=
, put it somewhere central, update configuration file.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Or, just do what poky does=
:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div=
 class=3D"gmail_extra">require conf/distro/include/yocto-uninative.inc</div=
><div class=3D"gmail_extra">INHERIT +=3D &quot;uninative&quot;</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">That uses the unin=
ative tarball that is hosted on the yoctoproject site, so you only need to =
build your own if you don&#39;t want to trust external binaries.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>=
</div>

--001a114108ea2b3ba40541d0a5b3--
