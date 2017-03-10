Return-Path: <bounce+03ddee.3a5685-yocto=yoctoproject.org@asterius.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DD2CE00A16; Fri, 10 Mar 2017 07:40:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.130.122.4 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 07:40:13 PST
Received: from mail4.static.mailgun.info (mail4.static.mailgun.info
	[104.130.122.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5316E009DA
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:40:13 -0800 (PST)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=asterius.io; q=dns/txt;
	s=mailo; t=1489160412; h=Content-Type: To: Subject: Message-ID: Date:
	From: References: In-Reply-To: MIME-Version: Sender;
	bh=PcM1myA+3dAyUcisBaJFFXw7ybLZSkoa+WGIARPxoCE=;
	b=NxSCX3F2GmvUb1g62HZLiQak5zx7Mzm1i5pMr97f0qmDSlgDww0+o69LgUY1PGRl2pBnXtzK
	tk46BCWJ/m3Ynd/zqmEilKoEW5RhHfdIBG6KF8Y6Yh0KKijK32WcwZOrqBaIRJGyHo+oHSEh
	OXiYnwxyBWsOoVgYcIxkvxAqMAE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=asterius.io; s=mailo;
	q=dns; h=Sender: MIME-Version: In-Reply-To: References: From: Date:
	Message-ID: Subject: To: Content-Type;
	b=BvppRCmmGtfWX98wT95XELSvqD//+QfGPdiEjSDtAkHIHnHFDPXBJ0LNubOMT+nYoeJlyE
	XPOenZTKF2vjMmZjrpOi6zTiq5Gtr1h4lLrQ3BYZ7PRwMFITl8YZrYO1C7ydNM2plLkksCi6
	g/791j8E01f2EBQqoXHL424iOMKQg=
Sender: derek@asterius.io
X-Mailgun-Sending-Ip: 104.130.122.4
X-Mailgun-Sid: WyJhMjkyYSIsICJ5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiwgIjNhNTY4NSJd
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by mxa.mailgun.org with ESMTP id 58c2c7a9.7f0cf86c39f0-smtp-out-n01;
	Fri, 10 Mar 2017 15:35:05 -0000 (UTC)
Received: by mail-io0-f174.google.com with SMTP id g6so50525698ioj.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:35:05 -0800 (PST)
X-Gm-Message-State: AMke39l0VY9icGzwm6nlqwgpGE6JD/P4OQ7E9qx6wWui3j1/Igp4v0gghTAe2f7Iu/2CRcskzN5teNojf4su+Q==
X-Received: by 10.107.138.14 with SMTP id m14mr18779521iod.235.1489160105150; 
	Fri, 10 Mar 2017 07:35:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.20.149 with HTTP; Fri, 10 Mar 2017 07:35:04 -0800 (PST)
In-Reply-To: <2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
	<2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
From: Derek Straka <derek@asterius.io>
Date: Fri, 10 Mar 2017 10:35:04 -0500
X-Gmail-Original-Message-ID: <CADNbA1pXRMX0OWHS+=rqg+eq20NoViUtBa1BrAidDxoU2wXX5g@mail.gmail.com>
Message-ID: <CADNbA1pXRMX0OWHS+=rqg+eq20NoViUtBa1BrAidDxoU2wXX5g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
X-Mailman-Approved-At: Mon, 13 Mar 2017 07:47:23 -0700
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
X-List-Received-Date: Fri, 10 Mar 2017 15:40:17 -0000
Content-Type: multipart/alternative; boundary=001a113fe8ae14de86054a621ba3

--001a113fe8ae14de86054a621ba3
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



> Alex
>
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
>

--001a113fe8ae14de86054a621ba3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Mar 10, 2017 at 10:10 AM, Alexander Kanavin <span dir=3D"ltr">&=
lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">a=
lexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><span class=3D"gmail-">On 03/10/2017 04:58=
 PM, Otavio Salvador wrote:<br>
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
<br></blockquote><div><div style=3D"font-size:12.8px">I can chime in on how=
 we do things in meta-rust.=C2=A0 Right now, each application is statically=
 linked against the crate library versions it calls out.=C2=A0 At this poin=
t, the rust ABI is not stable between versions of the compiler, so we made =
the conscious decision to avoid dynamic libraries for the time being.=C2=A0=
 We acknowledge this does increase the file system size, but we didn&#39;t =
want to have to deal with users trying to perform package updates on indivi=
dual shared objects.=C2=A0 We have our own cargo module that we maintain th=
at helps users generate their bitbake recipe for a given package [1].=C2=A0=
 There was a small bit of work done on trying to create so files, but it be=
came an unmanageable version nightmare isn&#39;t supported moving forward[2=
].=C2=A0 We also maintain our own custom fetcher for crates [3] and ran int=
o some issues getting it totally supported without integrating it into the =
set of bitbake fetchers [4][5].</div><div style=3D"font-size:12.8px"><br></=
div><div style=3D"font-size:12.8px">-Derek</div><div style=3D"font-size:12.=
8px"><br></div><div style=3D"font-size:12.8px">[1] -=C2=A0<a href=3D"https:=
//github.com/meta-rust/meta-rust" target=3D"_blank">https://github.com/meta=
-rust/<wbr>meta-rust</a></div><div style=3D"font-size:12.8px">[2] -=C2=A0<a=
 href=3D"https://github.com/cardoe/cargo-bitbake" target=3D"_blank">https:/=
/github.com/cardoe/<wbr>cargo-bitbake</a></div><div style=3D"font-size:12.8=
px">[3] -=C2=A0<a href=3D"https://github.com/meta-rust/meta-rust/tree/maste=
r/recipes-core" target=3D"_blank">https://github.com/meta-rust/<wbr>meta-ru=
st/tree/master/recipes-<wbr>core</a></div><div style=3D"font-size:12.8px">[=
4] -=C2=A0<a href=3D"https://github.com/meta-rust/meta-rust/blob/master/lib=
/crate.py" target=3D"_blank">https://github.com/meta-<wbr>rust/meta-rust/bl=
ob/master/<wbr>lib/crate.py</a></div><div style=3D"font-size:12.8px">[5] -=
=C2=A0<a href=3D"https://github.com/meta-rust/meta-rust/issues/136" target=
=3D"_blank">https://github.com/meta-<wbr>rust/meta-rust/issues/136</a></div=
><div style=3D"font-size:12.8px">[6] -=C2=A0<a href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D10867" target=3D"_blank">https://bugzilla.<=
wbr>yoctoproject.org/show_bug.cgi?<wbr>id=3D10867</a></div></div><div style=
=3D"font-size:12.8px"><br></div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
Alex<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
______________________________<wbr>_________________<br>
Openembedded-architecture mailing list<br>
<a href=3D"mailto:Openembedded-architecture@lists.openembedded.org" target=
=3D"_blank">Openembedded-architecture@list<wbr>s.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.or=
g/<wbr>mailman/listinfo/openembedded-<wbr>architecture</a><br>
</div></div></blockquote></div><br></div></div>

--001a113fe8ae14de86054a621ba3--
