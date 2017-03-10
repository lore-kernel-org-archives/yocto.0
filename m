Return-Path: <straka.derek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D349E00A0C; Fri, 10 Mar 2017 07:33:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (straka.derek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A440E009AA
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:33:11 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id m27so3124471iti.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xxd5fVka2LF2b2mtFC+ePnUk3vBJTHyGxhk7aM+w9Tw=;
	b=aIr294rlViA53yl+iEaw/KK80luOGHNPYBacW+SCZ7ApQ78PVyjT9w6YQ745BZsG6h
	TE2Jewr3QrOeo0mQpbbraobdancEvwnDuiuTTmZmF/rBxrDLMRdMwuqfvsNgahJ+DEjN
	mpczOpdNqsD0Kwgih+Hoo8CE9f3LHuXucg41CgyZa0d9V1wM2pjsaZOy/m5JEM2HMLko
	1ridPnKZDORs/MUuMQMAnkGmHM408Mk1x34gGf5iUTtesIuPJ/D67YFLneCDXaLLalqs
	/+82H+ud1SqybbSa5pAOT0KPhpjL7Fe09rR5EST/8N91cqxnCxkI0K5aI1R6IoXucKs0
	zljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xxd5fVka2LF2b2mtFC+ePnUk3vBJTHyGxhk7aM+w9Tw=;
	b=NcEHLjerwAdx+XKJshEFSxdSkqEbqnof7FF8dGYEeZxwIlnhVmprksBTq1ZgtQbFRP
	46N70nulyc0fUlvIJvYExMZhSB5rBVkCacPNapKqktm3B88I9+weNblGjhx169C0x7i0
	07xtKJ/DcyyJ0YBtFOc0LcpJYdSgg2AV6L48oykAuexEjdOTGuRbd+0eq7tMzp38K1AT
	xwFAegDMtXLYv8V9QRQ7KSLLhE5CgOX3JLDT+PVDP1HXuL27ii6KIuDc51UCfM0mA4ZD
	yCASNqggbtXsMNIQ7eR2+O511+1AFVWbH5A24hxc2aCtZs4scwhpnXgtO3TcD0whk8z9
	mEmg==
X-Gm-Message-State: AFeK/H2dyNDJabK2dA5bI9Wq6bWhG3rfyZhYukk2/c3pSwI2oqsswdb1yGDtQF3yFZV2mnaU6cYxxM9IYWz6DA==
X-Received: by 10.36.190.78 with SMTP id i75mr2602937itf.73.1489159991200;
	Fri, 10 Mar 2017 07:33:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.20.149 with HTTP; Fri, 10 Mar 2017 07:33:10 -0800 (PST)
In-Reply-To: <2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
	<2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
From: Derek Straka <straka.derek@gmail.com>
Date: Fri, 10 Mar 2017 10:33:10 -0500
Message-ID: <CADNbA1p-BM9NiEmXo8GpbiLLvykaR1crzN7a479D-y=vuuN0HA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailman-Approved-At: Mon, 13 Mar 2017 07:47:23 -0700
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Doug Goldstein <cardoe@cardoe.com>,
	Otavio Salvador <otavio.salvador@ossystems.com.br>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 15:33:14 -0000
Content-Type: multipart/alternative; boundary=94eb2c19e4264a18c3054a621469

--94eb2c19e4264a18c3054a621469
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 10, 2017 at 10:10 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 03/10/2017 04:58 PM, Otavio Salvador wrote:
>
>> I'd like to avoid generating entire separate recipes though, because that
>>> implies your custom-written tool would be figuring out where the
>>> dependency
>>> source came from in the first place, and what are its own dependencies,
>>> when
>>> creating the recipe, which can be tricky, breakage-prone guesswork.
>>>
>>
>> In fact not; as you generate the recipes for the dependencies, it goes
>> recursively and is always good.
>>
>
> Would it also be true for npm, Rust, Go, and other languages that will
> come along? In your specific case the metadata may be easily available to
> parse and convert to recipe form, but this many not hold in other
> situations.
>
> npm fetcher for instance was a nightmare to write, from what I've heard:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/
> lib/bb/fetch2/npm.py
>
> I want to use existing tools (like 'npm install') for getting the stuff
>>> from
>>> the network - we don't really need full recipes, we just want to know the
>>> licenses of the dependencies, and, if possible, lock them down to a
>>> specific
>>> version.
>>>
>>
>> Well we initially thought this would suffice but consider a security
>> flaw. As many apps may be using different versions of same package it
>> becomes a nightmare to figure which ones are affected. If using
>> dependencies it is fine, for free.
>>
>
> The lockdown files would list the versions of the dependencies (if it is
> possible, which is not always true), so you can inspect those to see if
> something is vulnerable. In node.js or Go worlds the libraries are not
> reused between apps anyway, so it really doesn't matter if they're packaged
> as separate recipes or not (I didn't have time to check Rust, but as it's
> also using lockdown files, I believe the libraries are not reused either).
>
> I can chime in on how we do things in meta-rust.  Right now, each
application is statically linked against the crate library versions it
calls out.  At this point, the rust ABI is not stable between versions of
the compiler, so we made the conscious decision to avoid dynamic libraries
for the time being.  We acknowledge this does increase the file system
size, but we didn't want to have to deal with users trying to perform
package updates on individual shared objects.  We have our own cargo module
that we maintain that helps users generate their bitbake recipe for a given
package [1].  There was a small bit of work done on trying to create so
files, but it became an unmanageable version nightmare isn't supported
moving forward[2].  We also maintain our own custom fetcher for crates [3]
and ran into some issues getting it totally supported without integrating
it into the set of bitbake fetchers [4][5].

-Derek

[1] - https://github.com/meta-rust/meta-rust
[2] - https://github.com/cardoe/cargo-bitbake
[3] - https://github.com/meta-rust/meta-rust/tree/master/recipes-core
[4] - https://github.com/meta-rust/meta-rust/blob/master/lib/crate.py
[5] - https://github.com/meta-rust/meta-rust/issues/136
[6] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=10867


Alex



>
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
>

--94eb2c19e4264a18c3054a621469
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Mar 10, 2017 at 10:10 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander=
.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><span class=3D"gmail-">On 03/10/2017 04:58 PM, Ota=
vio Salvador wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
I&#39;d like to avoid generating entire separate recipes though, because th=
at<br>
implies your custom-written tool would be figuring out where the dependency=
<br>
source came from in the first place, and what are its own dependencies, whe=
n<br>
creating the recipe, which can be tricky, breakage-prone guesswork.<br>
</blockquote>
<br>
In fact not; as you generate the recipes for the dependencies, it goes<br>
recursively and is always good.<br>
</blockquote>
<br></span>
Would it also be true for npm, Rust, Go, and other languages that will come=
 along? In your specific case the metadata may be easily available to parse=
 and convert to recipe form, but this many not hold in other situations.<br=
>
<br>
npm fetcher for instance was a nightmare to write, from what I&#39;ve heard=
:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/=
bb/fetch2/npm.py" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproj=
ect.org/cg<wbr>it/cgit.cgi/poky/tree/bitbake/<wbr>lib/bb/fetch2/npm.py</a><=
span class=3D"gmail-"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
I want to use existing tools (like &#39;npm install&#39;) for getting the s=
tuff from<br>
the network - we don&#39;t really need full recipes, we just want to know t=
he<br>
licenses of the dependencies, and, if possible, lock them down to a specifi=
c<br>
version.<br>
</blockquote>
<br>
Well we initially thought this would suffice but consider a security<br>
flaw. As many apps may be using different versions of same package it<br>
becomes a nightmare to figure which ones are affected. If using<br>
dependencies it is fine, for free.<br>
</blockquote>
<br></span>
The lockdown files would list the versions of the dependencies (if it is po=
ssible, which is not always true), so you can inspect those to see if somet=
hing is vulnerable. In node.js or Go worlds the libraries are not reused be=
tween apps anyway, so it really doesn&#39;t matter if they&#39;re packaged =
as separate recipes or not (I didn&#39;t have time to check Rust, but as it=
&#39;s also using lockdown files, I believe the libraries are not reused ei=
ther).<br>
<br></blockquote><div>I can chime in on how we do things in meta-rust.=C2=
=A0 Right now, each application is statically linked against the crate libr=
ary versions it calls out.=C2=A0 At this point, the rust ABI is not stable =
between versions of the compiler, so we made the conscious decision to avoi=
d dynamic libraries for the time being.=C2=A0 We acknowledge this does incr=
ease the file system size, but we didn&#39;t want to have to deal with user=
s trying to perform package updates on individual shared objects.=C2=A0 We =
have our own cargo module that we maintain that helps users generate their =
bitbake recipe for a given package [1].=C2=A0 There was a small bit of work=
 done on trying to create so files, but it became an unmanageable version n=
ightmare isn&#39;t supported moving forward[2].=C2=A0 We also maintain our =
own custom fetcher for crates [3] and ran into some issues getting it total=
ly supported without integrating it into the set of bitbake fetchers [4][5]=
.</div><div><br></div><div>-Derek</div><div><br></div><div>[1] - <a href=3D=
"https://github.com/meta-rust/meta-rust">https://github.com/meta-rust/meta-=
rust</a></div><div>[2] - <a href=3D"https://github.com/cardoe/cargo-bitbake=
">https://github.com/cardoe/cargo-bitbake</a></div><div>[3] - <a href=3D"ht=
tps://github.com/meta-rust/meta-rust/tree/master/recipes-core">https://gith=
ub.com/meta-rust/meta-rust/tree/master/recipes-core</a></div><div>[4] -=C2=
=A0<a href=3D"https://github.com/meta-rust/meta-rust/blob/master/lib/crate.=
py">https://github.com/meta-rust/meta-rust/blob/master/lib/crate.py</a></di=
v><div>[5] -=C2=A0<a href=3D"https://github.com/meta-rust/meta-rust/issues/=
136">https://github.com/meta-rust/meta-rust/issues/136</a></div><div>[6] -=
=C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10867"=
>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10867</a></div><div><b=
r></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Alex</blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
______________________________<wbr>_________________<br>
Openembedded-architecture mailing list<br>
<a href=3D"mailto:Openembedded-architecture@lists.openembedded.org" target=
=3D"_blank">Openembedded-architecture@list<wbr>s.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.or=
g/<wbr>mailman/listinfo/openembedded-<wbr>architecture</a><br>
</div></div></blockquote></div><br></div></div>

--94eb2c19e4264a18c3054a621469--
