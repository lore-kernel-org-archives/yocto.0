Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93944E00BBF; Mon, 29 Oct 2018 08:05:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB9C9E00A1A
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:05:26 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id x4so7852777otg.3
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=v/hJug11ndIaLt3E2MmDa4qf9RkI2u+E4AjoYK4WAag=;
	b=DdrFyTcW5sPVGcoZWc4pFYhLnsCMLSABqMkX3Xm0EAqgvLlsp9+n8Q3hFe2ylTUiQl
	KR6JnMeLYiYBsHlhdrrDFWKHQWfg/O0+/ptYkPiDjiblVv9Fu928bfahQDmOAJOvMsXp
	ZWQUwlO4bNWuWIHL2u7w+Q0M4roc0HppPkzbdlONuNPEfdImZ2S7LHos/Qqakth+JW3b
	69FWwcYIOFQympvs+qUP2z6McRhILFhOLFqa3fFBURMZaEdWakgxpOP9X393bUJ4XiKj
	DsSWNrTXkYkSwoivzqIEOJvQEMKviGNgdwggFpI9cEKm7BvMzDEqVpxhmoxdWdAMl5VF
	cl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=v/hJug11ndIaLt3E2MmDa4qf9RkI2u+E4AjoYK4WAag=;
	b=FXIJZa6kD5mwMHnC5En4CFKNjPb913BZPGSMspPSr/HcM+vFaXxzqDnk9MyCLDPN5C
	gxODx9ek8nkONBE/Sw0GRz10kZfKXtNWQVoeuhWbsANOdXlZsjdAaVmW3HETyeDvGGyk
	yVTONiGk2cceaR408SBkMl3OQ0AS3t/13NBq7yqZB0nXnUdRKPBqZnghQafQvfuKwrnU
	tQkswnLgVgBPFZCZMJDZmqSDkvmN4T1s94/OunOlAVledn83+gc/jnnj47A7zEKa48KV
	IDjM6jltawr/+2N785MJixvTbX9v3UK2ZZzTyGgALIf04b0z2OUgptZ1muchJRw25IB3
	vy8w==
X-Gm-Message-State: AGRZ1gJFjNPjepObYJRcsPgn4J46vk3oPS+ns3Nt/fkm/BBqXZels52P
	ZmkMZ6oosLhEB9knuYsTic/lZ9qTkLRoqU02VRo=
X-Google-Smtp-Source: AJdET5f7cnHCxxAvCMMEb3ncYhcwub70y8oZOLlX/pcWF/ftrqUePeDdZfq/D1OAh+2xCiJ2WfJiieiU/KH1u8y5tk8=
X-Received: by 2002:a9d:3c4f:: with SMTP id j15mr1618018ote.47.1540825526015; 
	Mon, 29 Oct 2018 08:05:26 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN2C-=XWKStypsyUHr0ddyPrLX9-y4qJGJ+zO98=-F9vWA@mail.gmail.com>
	<CAJTo0Lb_=1H7E9K7ykakQTERt4n9j5b58Q=GV3cQwDCDhpLwvg@mail.gmail.com>
	<CACKFPN1miuCkVJDGjAKTD8=dMZ-Qy+QTQHwYp+GMOX_2K0VQ1w@mail.gmail.com>
	<CAJTo0LaVNeL3QS5LZw40sA22G9Zx=fTOqu0hYd-vmU0sOr7fPg@mail.gmail.com>
In-Reply-To: <CAJTo0LaVNeL3QS5LZw40sA22G9Zx=fTOqu0hYd-vmU0sOr7fPg@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 29 Oct 2018 16:05:15 +0100
Message-ID: <CACKFPN3F4gJz+XZJq0+qgy8CNfmgA4zYebcZOyUJJSjC+AD7qw@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: nativesdk-libxcrypt-4.0.1 is failing
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
X-List-Received-Date: Mon, 29 Oct 2018 15:05:27 -0000
Content-Type: multipart/alternative; boundary="000000000000239ae005795f66e9"

--000000000000239ae005795f66e9
Content-Type: text/plain; charset="UTF-8"

Cool, thanks again Ross.

On Mon, Oct 29, 2018 at 4:01 PM Burton, Ross <ross.burton@intel.com> wrote:

> Yes, it needs to be backported.
>
> Ross
> On Mon, 29 Oct 2018 at 14:58, Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > Hi Ross,
> >
> > thanks for the reply. Shouldn't these kind of fixes that break a poky
> branch (like Sumo now,
> > which is still in use) be merged also to the affected branches and not
> only future branches
> > like Thud?
> >
> > Also, for the record anyone who has this issue, just create this file in
> you layer:
> > recipes-core/libxcrypt/libxcrypt_%.bbappend
> >
> > And then add this single line:
> > SRCBRANCH = "develop"
> >
> > Regards,
> > Dimitris
> >
> > On Mon, Oct 29, 2018 at 3:46 PM Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >> The fix is already queued in master-next, so will be n master/thud
> shortly.
> >>
> >> Ross
> >> On Mon, 29 Oct 2018 at 13:44, Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >> >
> >> > Hi all,
> >> >
> >> > it seems that the libxcrypt recipe in poky is failing because the git
> repo
> >> > doesn't have a master branch anymore. The default branch has changed
> >> > to `develop` and the recipe can't fetch the repo when I'm building
> the SDK
> >> > for my image.
> >> >
> >> > A temporary solution is to override the URL with a bbappend, but in
> general
> >> > this has broken the recipe. This is the error that I'm getting.
> >> >
> >> > WARNING: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Failed to fetch URL
> git://github.com/besser82/libxcrypt.git;branch=master, attempting MIRRORS
> if available
> >> > ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure: Unable
> to find revision 089479bb24acd168613757a6f12d63caa95416b4 in branch master
> even from upstream
> >> > ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure for
> URL: 'git://github.com/besser82/libxcrypt.git;branch=master'. Unable to
> fetch URL from any source.
> >> > ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Function failed:
> base_do_fetch
> >> > ERROR: Logfile of failure stored in:
> /rnd/yocto/nativeos/build/tmp/work/x86_64-nativesdk-nativeosmassdk-linux/nativesdk-libxcrypt/4.0.1-r0/temp/log.do_fetch.19081
> >> > ERROR: Task
> (virtual:nativesdk:/rnd/yocto/nativeos/sources/poky/meta/recipes-core/libxcrypt/libxcrypt_4.0.1.bb:do_fetch)
> failed with exit code '1'
> >> >
> >> > P.S another good reason to enable the own mirrors early in the
> development phase.
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000239ae005795f66e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Cool, thanks again Ross.</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Mon, Oct 29, 2018 at 4:01 PM Burton, Ross &lt;<a hre=
f=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Yes, it needs to be backported.<br>
<br>
Ross<br>
On Mon, 29 Oct 2018 at 14:58, Dimitris Tassopoulos &lt;<a href=3D"mailto:di=
mtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Ross,<br>
&gt;<br>
&gt; thanks for the reply. Shouldn&#39;t these kind of fixes that break a p=
oky branch (like Sumo now,<br>
&gt; which is still in use) be merged also to the affected branches and not=
 only future branches<br>
&gt; like Thud?<br>
&gt;<br>
&gt; Also, for the record anyone who has this issue, just create this file =
in you layer:<br>
&gt; recipes-core/libxcrypt/libxcrypt_%.bbappend<br>
&gt;<br>
&gt; And then add this single line:<br>
&gt; SRCBRANCH =3D &quot;develop&quot;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Dimitris<br>
&gt;<br>
&gt; On Mon, Oct 29, 2018 at 3:46 PM Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; The fix is already queued in master-next, so will be n master/thud=
 shortly.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt; On Mon, 29 Oct 2018 at 13:44, Dimitris Tassopoulos &lt;<a href=3D"=
mailto:dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; it seems that the libxcrypt recipe in poky is failing because=
 the git repo<br>
&gt;&gt; &gt; doesn&#39;t have a master branch anymore. The default branch =
has changed<br>
&gt;&gt; &gt; to `develop` and the recipe can&#39;t fetch the repo when I&#=
39;m building the SDK<br>
&gt;&gt; &gt; for my image.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; A temporary solution is to override the URL with a bbappend, =
but in general<br>
&gt;&gt; &gt; this has broken the recipe. This is the error that I&#39;m ge=
tting.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; WARNING: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Failed to fet=
ch URL git://<a href=3D"http://github.com/besser82/libxcrypt.git;branch=3Dm=
aster" rel=3D"noreferrer" target=3D"_blank">github.com/besser82/libxcrypt.g=
it;branch=3Dmaster</a>, attempting MIRRORS if available<br>
&gt;&gt; &gt; ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure=
: Unable to find revision 089479bb24acd168613757a6f12d63caa95416b4 in branc=
h master even from upstream<br>
&gt;&gt; &gt; ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure=
 for URL: &#39;git://<a href=3D"http://github.com/besser82/libxcrypt.git;br=
anch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">github.com/besser82/lib=
xcrypt.git;branch=3Dmaster</a>&#39;. Unable to fetch URL from any source.<b=
r>
&gt;&gt; &gt; ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Function failed=
: base_do_fetch<br>
&gt;&gt; &gt; ERROR: Logfile of failure stored in: /rnd/yocto/nativeos/buil=
d/tmp/work/x86_64-nativesdk-nativeosmassdk-linux/nativesdk-libxcrypt/4.0.1-=
r0/temp/log.do_fetch.19081<br>
&gt;&gt; &gt; ERROR: Task (virtual:nativesdk:/rnd/yocto/nativeos/sources/po=
ky/meta/recipes-core/libxcrypt/libxcrypt_4.0.1.bb:do_fetch) failed with exi=
t code &#39;1&#39;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; P.S another good reason to enable the own mirrors early in th=
e development phase.<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div>

--000000000000239ae005795f66e9--
