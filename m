Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E6C1E00D6B; Fri, 26 Jul 2019 15:19:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1387AE00B33
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 15:19:33 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id x15so15042984pgg.8
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 15:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=9xy7Yw+MFzT2PPzPn4Jbh0K/TimBRrWkSQcH7oQcXao=;
	b=ylBrtu2ivqoMUMxNBkXI22t1alEOpEBfbDnoPzpn2WyBN9gIZkB4EyHJz7ZkqH8Zar
	ou/H/xbrPBqEu4+MRb6xkCg7XAqcY0DznnN0En5mzRi0Fv96FczyTFKVphsBJdd3BQ1K
	HQ2puT4iZgtIozFzjRdBp3AN3Gr/3+GJPsF41wqAtgJMGqQdNM9f1jQRKvJl+gWkAAOR
	RE23LcAffMb8ld2CECMWw9WT2ANXjJJtf83//lKvnuruRgBwiAvcr5O8j0o00ecbrx+L
	Ui5K0s+P8A0hdflDIPGkp40JvkjKmXa5Qcq7dxPQCFsU67M/sodHwXYN3m2n711ArNSR
	MI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=9xy7Yw+MFzT2PPzPn4Jbh0K/TimBRrWkSQcH7oQcXao=;
	b=WngIqv9GLNWNkogMaTe0EWRc3FPdT5TaxTCQQhkI+kvXfUnmV+X6Nc6Hp1TKhE84/y
	zgz9ZHrIkmqqR1hhsaHoBcFkZQLKfFKuNEd7Pj4vNUzpFU/6A7SvPaW8FSJxknFsWT2D
	ZpC/ltEWOse6e4xWOGVgRqzNayeZk60DnSSnrJcz8EWheEPZ8ya00SL2NrGS1FB7n5oS
	cUj/8ObMWDGlHjk10SNfr5MUnaZO5LSOGPJRsP5SrylFsysR4wvuIRMU4nbGaHYzE3Ny
	3gKMB2pQiyBMkc3nTOoFN1Of9Kdc47xAk42yNBKgbKOzLfbeZpdv9zHdieXwKGxUNRq1
	I6gg==
X-Gm-Message-State: APjAAAVmEn/iMj++h8dGjbFpeXsGBJ3A+pwavmfGsVzGmTK6NjGzto/A
	7C0144TitnE03rQAs2sChvHv8TDn
X-Google-Smtp-Source: APXvYqxikhiO4qGLsUa3HC0/p7GdidGQy/hELzN1Nmme7GDmdkywAEVcdYwZyr4Ag1ZEO+aFBKtnEg==
X-Received: by 2002:a17:90a:8c90:: with SMTP id
	b16mr99520103pjo.133.1564179572742; 
	Fri, 26 Jul 2019 15:19:32 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	j10sm19327375pfn.188.2019.07.26.15.19.30
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Jul 2019 15:19:31 -0700 (PDT)
To: Russell Peterson <peterson.russell@gmail.com>
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
	<352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
	<CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
	<2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
	<CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
	<4c4105c4-fdea-d8e0-2c02-11543baf55f5@ibeeto.com>
	<CAJxG=fmY6LcxMq9RF1Hikn1QvNe+Jr+C4EJvBqwmQZzhHwS6Tg@mail.gmail.com>
	<edce70c6-8b35-3e26-60e8-eb8c433e08fa@ibeeto.com>
	<CAJxG=fm2V2Yc1WdTh2b2psgqk7VVQu+5NJ3gWkvD1LpawUQZNw@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
	mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
	Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
	/Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
	cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
	3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
	AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
	IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
	3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
	txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
	lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
	Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
	zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
	5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
	RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
	w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
	svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
	tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
	GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
	s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
	fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
	Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
	P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
	ROZj4g==
Message-ID: <77cea630-b523-eb14-e606-226c8ce22346@ibeeto.com>
Date: Fri, 26 Jul 2019 15:19:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAJxG=fm2V2Yc1WdTh2b2psgqk7VVQu+5NJ3gWkvD1LpawUQZNw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: PREMIRROR
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
X-List-Received-Date: Fri, 26 Jul 2019 22:19:35 -0000
X-Groupsio-MsgNum: 46098
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="mDAfEvn0Mq30bpdcHzjNTy6dTiKyv2uGF"

--mDAfEvn0Mq30bpdcHzjNTy6dTiKyv2uGF
Content-Type: multipart/mixed; boundary="Nxdcay5ewjTdbBs9YukcWRdNRGlWEGicp";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Russell Peterson <peterson.russell@gmail.com>
Cc: yocto@yoctoproject.org
Message-ID: <77cea630-b523-eb14-e606-226c8ce22346@ibeeto.com>
Subject: Re: [yocto] PREMIRROR
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
 <352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
 <CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
 <2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
 <CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
 <4c4105c4-fdea-d8e0-2c02-11543baf55f5@ibeeto.com>
 <CAJxG=fmY6LcxMq9RF1Hikn1QvNe+Jr+C4EJvBqwmQZzhHwS6Tg@mail.gmail.com>
 <edce70c6-8b35-3e26-60e8-eb8c433e08fa@ibeeto.com>
 <CAJxG=fm2V2Yc1WdTh2b2psgqk7VVQu+5NJ3gWkvD1LpawUQZNw@mail.gmail.com>
In-Reply-To: <CAJxG=fm2V2Yc1WdTh2b2psgqk7VVQu+5NJ3gWkvD1LpawUQZNw@mail.gmail.com>

--Nxdcay5ewjTdbBs9YukcWRdNRGlWEGicp
Content-Type: multipart/alternative;
 boundary="------------C2054C026912DC6875D5168F"
Content-Language: en-US

--------------C2054C026912DC6875D5168F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

You are very welcome. Enjoy working with YP.

:rjs

On 7/25/19 4:48 PM, Russell Peterson wrote:
> Just tried the externalsrc feature.=C2=A0 Works perfectly.=C2=A0 Exactl=
y what I
> was looking for.=C2=A0 Thanks so much, Rudolf!
>
> --Russ
>
>
> On Thu, Jul 25, 2019 at 4:59 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote:
>
>     Inlining below.
>
>     On 7/25/19 8:14 AM, Russell Peterson wrote:
>>     I think I have a somewhat better understanding of what is going on=
=2E
>>
>>     First off, I was confused by the fact that the original error
>>     message I saw from do_unpack referenced the file (URL) at
>>     DL_DIR/git2/original_github_url.=C2=A0 What I didn't understand at=
 the
>>     time was that while that file existed,/it was actually a link/ to
>>     DL_DIR/git2/local_url.=C2=A0 So, do_unpack wasn't looking at the w=
rong
>>     bare repository as I thought.=C2=A0 It was unhappy because it didn=
't
>>     see the git commit in the local repo that it was looking for.=C2=A0=
 I
>>     use AUTOREV for SRCREV.=C2=A0 Apparently, even with PREMIRROR set =
and
>>     matched, bitbake will still fetch the git HEAD commit hash from
>>     the original URL in the recipe.=C2=A0 The local git repo doesn't
>>     contain that commit.=C2=A0 When I sync the local git repo to the
>>     github repo things work as expected.
>     Correct. If the source repo or the correct commit cannot be found
>     from the PREMIRROR, bitbake will use SRC_URI from the recipe. You
>     can block that behavior by setting BB_NO_NETWORK =3D "1" in which
>     case bitbake will not be able to connect to any remote server.
>     However, that does not help if your PREMIRROR is a network server.
>     In this case use BB_ALLOWED_HOSTS to allow access to only the
>     servers you want.
>>
>>     Here is my problem.=C2=A0 What I am ultimately trying to do here i=
s
>>     have 2 git repos.=C2=A0 1 public, 1 private.=C2=A0 For internal de=
velopment
>>     we use the private git repo (a local gerrit server).=C2=A0 Just be=
fore
>>     we ship we update the public github repo.=C2=A0 The recipe always
>>     points to the github (public) repo so we don't need to mess with
>>     that before a release.=C2=A0 This way we can do nightly builds (I'=
m
>>     just talking nightly builds done by Jenkins... not developers
>>     using eSDK and devtool) and test.=C2=A0 Customers using yocto will=
 be
>>     given a recipe that points to github and, importantly, those
>>     customers that do NOT use yocto simply fetch the project from
>>     github and manually build it in their own environment with their
>>     own tools.
>>
>     That is a common problem. I do this all the time. To do this add
>     to your conf/local.conf file:
>
>     INHERIT +=3D "externalsrc"
>     EXTERNALSRC_pn-myrecipe =3D "/path/to/source/tree"
>
>     Alternatively, you could use a bbappend file for you recipe in a
>     development layer, myrecipe.bbappend:
>
>     inherit externalsrc
>     EXTERNALSRC =3D "/path/to/source/tree"
>
>     Now, that is exactly what devtool does for you but you can of
>     course do it manually.
>
>     :rjs
>
>
>
>>     I can't be the only one doing this.=C2=A0 Is there a best practice=
s
>>     here (private vs. public repo)?
>>
>>     --Russ
>>
>>
>>     On Wed, Jul 24, 2019 at 3:55 PM Rudolf J Streif
>>     <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote=
:
>>
>>         Russell,
>>
>>         That is exactly what devtool and the externalsrc class do.
>>         PREMIRROR is the wrong approach for that.
>>
>>         :rjs
>>
>>         On 7/24/19 12:53 PM, Russell Peterson wrote:
>>>         Hi, Rudolf.
>>>
>>>         I apologize for not being clear.=C2=A0 The idea here is that =
my
>>>         recipe points to github while, for my local development
>>>         environment, I set a premirror to match a specific github
>>>         repository and translate it to a local directory.=C2=A0 That
>>>         works.=C2=A0 The fetch matches the PREMIRROR and places a cop=
y of
>>>         the LOCAL git repo in my DL_DIR.=C2=A0 The problem is, the
>>>         do_unpack task is looking for the git repo in the DL_DIR
>>>         (git2/etc...)... but it's looking for the git repo from
>>>         github, not my local repo that the fetch task just put in
>>>         DL_DIR.
>>>
>>>         There are numerous reasons I'm doing this including the fact
>>>         that I cannot put a reference to my local repo in the bb
>>>         file since I ship that recipe to my customers and a local
>>>         pathname is meaningless to them.=C2=A0 I prefer to simply mod=
ify
>>>         my local.conf with a PREMIRROR value that has a specific
>>>         regular expression that matches this particular github repo
>>>         (and hence does NOT effect all recipes).=C2=A0 This is why I
>>>         wanted to use the PREMIRROR function.=C2=A0 Unfortunately, it=

>>>         does not appear to work or at least not work as I expected.
>>>
>>>         --Russ
>>>
>>>
>>>
>>>
>>>         On Wed, Jul 24, 2019 at 2:57 PM Rudolf J Streif
>>>         <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>>
>>>         wrote:
>>>
>>>             Hi Russell,
>>>
>>>             devtool and eSDK are different things. The purpose of
>>>             PREMIRRORS is to set a mirror for all recipes. It's a
>>>             way for organizations to control where their YP builds
>>>             download sources from. It's not intended to be used for
>>>             a single recipe. There is no need for that. You simply
>>>             set SRC_URI in your recipe to your local git repo. That
>>>             is what devtool does after downloading the sources from
>>>             a remote repo. If you already have the remote repo
>>>             cloned locally you can just point devtool to it.
>>>
>>>             You can do it manually by creating your recipe and
>>>             setting SRC_URI like this:
>>>
>>>             SRC_URI =3D "git:///local/path/${PN};protocol=3Dfile"
>>>
>>>             SRCREV =3D "${AUTOREV}"
>>>
>>>             S =3D "${WORKDIR}/git"
>>>
>>>             PREMIRRORS is only relevant for do_fetch not for do_unpac=
k.
>>>
>>>             :rjs
>>>
>>>
>>>             On 7/24/19 11:28 AM, Russell Peterson wrote:
>>>>             Hi, Rudolf.
>>>>
>>>>             Thanks for the reply.=C2=A0 Yes, I am aware of the eSDK
>>>>             functionality, however, I have some unique requirements
>>>>             that I am trying to work around.=C2=A0 Regardless... wha=
t I
>>>>             am doing should work, no?=C2=A0 I simply want to use a l=
ocal
>>>>             git repo (the directory itself hence protocol=3Dfile)
>>>>             instead of what the recipe specifies.=C2=A0 Looks like t=
he
>>>>             fetch is working but the do_unpack task is ignoring
>>>>             PREMIRRORS (or at least the localpath variable seems
>>>>             wrong).
>>>>
>>>>             --Russ
>>>>
>>>>
>>>>             On Wed, Jul 24, 2019 at 12:19 PM Rudolf J Streif
>>>>             <rudolf.streif@ibeeto.com
>>>>             <mailto:rudolf.streif@ibeeto.com>> wrote:
>>>>
>>>>                 Russell,
>>>>
>>>>                 You don't need PREMIRROR for this functionality.
>>>>                 It's not exactly intended for that use.
>>>>
>>>>                 The simplest way to achieve what you are looking
>>>>                 for is to use devtool. If I understand you
>>>>                 correctly you are downloading sources from a remote
>>>>                 repo on GitHub but want to have them locally to
>>>>                 make modifications? If so use:
>>>>
>>>>                 devtool add myrecipe localsrc fetchuri
>>>>
>>>>                 from your build environment (you have to source
>>>>                 oe-init-build-env first). devtool then fetches the
>>>>                 source from fetchuri into a directory localsrc as a
>>>>                 git repo and automatically creates the recipe for it=
=2E
>>>>
>>>>                 :rjs
>>>>
>>>>
>>>>                 On 7/23/19 1:49 PM, Russell Peterson wrote:
>>>>>                 Hello,
>>>>>
>>>>>                 I am looking to have bitbake pick up files for a
>>>>>                 particular recipe from a local git repository
>>>>>                 using the PREMIRROR functionality.
>>>>>
>>>>>                 Basically, the recipe (bb file) points to github
>>>>>                 but in my local build I add PREMIRROR_prepend =3D
>>>>>                 "git://.*/.*=C2=A0
>>>>>                 git:///local/path/BASENAME;protocol=3Dfile\n"
>>>>>
>>>>>                 I will probably make the git regular expression
>>>>>                 more exact for my specific github repo but this
>>>>>                 works for now.
>>>>>
>>>>>                 This all works (as I deleted the github download
>>>>>                 from the local download directory) because I can
>>>>>                 see in the do_fetch log and the correct (local)
>>>>>                 repo was found and placed in the DL_DIR.
>>>>>
>>>>>                 Problem is, do_unpack fails because it appears to
>>>>>                 be looking for the original (github) SRC_URI.=C2=A0=

>>>>>                 Then it complains about "no up to date source
>>>>>                 found: clone or directory not available or not up
>>>>>                 to date (shallow clone not enabled)"
>>>>>
>>>>>                 Any help on what I am missing would be appreciated.=

>>>>>
>>>>>                 Regards,
>>>>>
>>>>>                 Russell
>>>>>
>>>>>
>>>>>
>>>>                 --=20
>>>>                 -----
>>>>                 Rudolf J Streif
>>>>                 CEO/CTO ibeeto
>>>>                 +1.855.442.3396 x700
>>>>
>>>             --=20
>>>             -----
>>>             Rudolf J Streif
>>>             CEO/CTO ibeeto
>>>             +1.855.442.3396 x700
>>>
>>         --=20
>>         -----
>>         Rudolf J Streif
>>         CEO/CTO ibeeto
>>         +1.855.442.3396 x700
>>
>     --=20
>     -----
>     Rudolf J Streif
>     CEO/CTO ibeeto
>     +1.855.442.3396 x700
>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------C2054C026912DC6875D5168F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>You are very welcome. Enjoy working with YP.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/25/19 4:48 PM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJxG=3Dfm2V2Yc1WdTh2b2psgqk7VVQu+5NJ3gWkvD1LpawUQZNw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Just tried the externalsrc feature.=C2=A0 Works
        perfectly.=C2=A0 Exactly what I was looking for.=C2=A0 Thanks so =
much,
        Rudolf!
        <div><br>
        </div>
        <div>--Russ</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, 2019 at 4:5=
9
          PM Rudolf J Streif &lt;<a
            href=3D"mailto:rudolf.streif@ibeeto.com"
            moz-do-not-send=3D"true">rudolf.streif@ibeeto.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=

          <div bgcolor=3D"#FFFFFF">
            <p>Inlining below.<br>
            </p>
            <div class=3D"gmail-m_-8746796073981798664moz-cite-prefix">On=

              7/25/19 8:14 AM, Russell Peterson wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">I think I have a somewhat better
                understanding of what is going on.
                <div><br>
                </div>
                <div>First off, I was confused by the fact that the
                  original error message I saw from do_unpack referenced
                  the file (URL) at DL_DIR/git2/original_github_url.=C2=A0=

                  What I didn't understand at the time was that while
                  that file existed,<i> it was actually a link</i> to
                  DL_DIR/git2/local_url.=C2=A0 So, do_unpack wasn't looki=
ng
                  at the wrong bare repository as I thought.=C2=A0 It was=

                  unhappy because it didn't see the git commit in the
                  local repo that it was looking for.=C2=A0 I use AUTOREV=
 for
                  SRCREV.=C2=A0 Apparently, even with PREMIRROR set and
                  matched, bitbake will still fetch the git HEAD commit
                  hash from the original URL in the recipe.=C2=A0 The loc=
al
                  git repo doesn't contain that commit.=C2=A0 When I sync=
 the
                  local git repo to the github repo things work as
                  expected.</div>
              </div>
            </blockquote>
            Correct. If the source repo or the correct commit cannot be
            found from the PREMIRROR, bitbake will use SRC_URI from the
            recipe. You can block that behavior by setting BB_NO_NETWORK
            =3D "1" in which case bitbake will not be able to connect to
            any remote server. However, that does not help if your
            PREMIRROR is a network server. In this case use
            BB_ALLOWED_HOSTS to allow access to only the servers you
            want.<br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div>Here is my problem.=C2=A0 What I am ultimately tryin=
g to
                  do here is have 2 git repos.=C2=A0 1 public, 1 private.=
=C2=A0
                  For internal development we use the private git repo
                  (a local gerrit server).=C2=A0 Just before we ship we
                  update the public github repo.=C2=A0 The recipe always
                  points to the github (public) repo so we don't need to
                  mess with that before a release.=C2=A0 This way we can =
do
                  nightly builds (I'm just talking nightly builds done
                  by Jenkins... not developers using eSDK and devtool)
                  and test.=C2=A0 Customers using yocto will be given a
                  recipe that points to github and, importantly, those
                  customers that do NOT use yocto simply fetch the
                  project from github and manually build it in their own
                  environment with their own tools.</div>
                <div><br>
                </div>
              </div>
            </blockquote>
            <p>That is a common problem. I do this all the time. To do
              this add to your conf/local.conf file:</p>
            <p>INHERIT +=3D "externalsrc"<br>
              EXTERNALSRC_pn-myrecipe =3D "/path/to/source/tree"</p>
            <p>Alternatively, you could use a bbappend file for you
              recipe in a development layer, myrecipe.bbappend:</p>
            <p>inherit externalsrc<br>
              EXTERNALSRC =3D "/path/to/source/tree"</p>
            <p>Now, that is exactly what devtool does for you but you
              can of course do it manually.<br>
            </p>
            <p>:rjs<br>
            </p>
            <p><br>
            </p>
            <p><br>
            </p>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>I can't be the only one doing this.=C2=A0 Is there a=

                  best practices here (private vs. public repo)?</div>
                <div><br>
                </div>
                <div>--Russ</div>
                <div><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 201=
9
                  at 3:55 PM Rudolf J Streif &lt;<a
                    href=3D"mailto:rudolf.streif@ibeeto.com"
                    target=3D"_blank" moz-do-not-send=3D"true">rudolf.str=
eif@ibeeto.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=

                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <p>Russell,</p>
                    <p>That is exactly what devtool and the externalsrc
                      class do. PREMIRROR is the wrong approach for
                      that.</p>
                    <p>:rjs<br>
                    </p>
                    <div
class=3D"gmail-m_-8746796073981798664gmail-m_-8900245222760043816moz-cite=
-prefix">On
                      7/24/19 12:53 PM, Russell Peterson wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Hi, Rudolf.
                        <div><br>
                        </div>
                        <div>I apologize for not being clear.=C2=A0 The i=
dea
                          here is that my recipe points to github while,
                          for my local development environment, I set a
                          premirror to match a specific github
                          repository and translate it to a local
                          directory.=C2=A0 That works.=C2=A0 The fetch ma=
tches the
                          PREMIRROR and places a copy of the LOCAL git
                          repo in my DL_DIR.=C2=A0 The problem is, the
                          do_unpack task is looking for the git repo in
                          the DL_DIR (git2/etc...)... but it's looking
                          for the git repo from github, not my local
                          repo that the fetch task just put in DL_DIR.</d=
iv>
                        <div><br>
                        </div>
                        <div>There are numerous reasons I'm doing this
                          including the fact that I cannot put a
                          reference to my local repo in the bb file
                          since I ship that recipe to my customers and a
                          local pathname is meaningless to them.=C2=A0 I
                          prefer to simply modify my local.conf with a
                          PREMIRROR value that has a specific regular
                          expression that matches this particular github
                          repo (and hence does NOT effect all recipes).=C2=
=A0
                          This is why I wanted to use the PREMIRROR
                          function.=C2=A0 Unfortunately, it does not appe=
ar
                          to work or at least not work as I expected.</di=
v>
                        <div><br>
                        </div>
                        <div>--Russ</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul=

                          24, 2019 at 2:57 PM Rudolf J Streif &lt;<a
                            href=3D"mailto:rudolf.streif@ibeeto.com"
                            target=3D"_blank" moz-do-not-send=3D"true">ru=
dolf.streif@ibeeto.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div bgcolor=3D"#FFFFFF">
                            <p>Hi Russell,</p>
                            <p>devtool and eSDK are different things.
                              The purpose of PREMIRRORS is to set a
                              mirror for all recipes. It's a way for
                              organizations to control where their YP
                              builds download sources from. It's not
                              intended to be used for a single recipe.
                              There is no need for that. You simply set
                              SRC_URI in your recipe to your local git
                              repo. That is what devtool does after
                              downloading the sources from a remote
                              repo. If you already have the remote repo
                              cloned locally you can just point devtool
                              to it.</p>
                            <p>You can do it manually by creating your
                              recipe and setting SRC_URI like this:</p>
                            <p>SRC_URI =3D
                              "git:///local/path/${PN};protocol=3Dfile"</=
p>
                            <p>SRCREV =3D "${AUTOREV}"</p>
                            <p>S =3D "${WORKDIR}/git"</p>
                            <p>PREMIRRORS is only relevant for do_fetch
                              not for do_unpack.</p>
                            <p>:rjs<br>
                            </p>
                            <p><br>
                            </p>
                            <div
class=3D"gmail-m_-8746796073981798664gmail-m_-8900245222760043816gmail-m_=
8158819649125888525moz-cite-prefix">On
                              7/24/19 11:28 AM, Russell Peterson wrote:<b=
r>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">Hi, Rudolf.
                                <div><br>
                                </div>
                                <div>Thanks for the reply.=C2=A0 Yes, I a=
m
                                  aware of the eSDK functionality,
                                  however, I have some unique
                                  requirements that I am trying to work
                                  around.=C2=A0 Regardless... what I am d=
oing
                                  should work, no?=C2=A0 I simply want to=
 use
                                  a local git repo (the directory itself
                                  hence protocol=3Dfile) instead of what
                                  the recipe specifies.=C2=A0 Looks like =
the
                                  fetch is working but the do_unpack
                                  task is ignoring PREMIRRORS (or at
                                  least the localpath variable seems
                                  wrong).</div>
                                <div><br>
                                </div>
                                <div>--Russ</div>
                                <div><br>
                                </div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Wed, Jul 24, 2019 at 12:19 PM Rudolf J
                                  Streif &lt;<a
                                    href=3D"mailto:rudolf.streif@ibeeto.c=
om"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">rudolf.strei=
f@ibeeto.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div bgcolor=3D"#FFFFFF">
                                    <p>Russell,</p>
                                    <p>You don't need PREMIRROR for this
                                      functionality. It's not exactly
                                      intended for that use.</p>
                                    <p>The simplest way to achieve what
                                      you are looking for is to use
                                      devtool. If I understand you
                                      correctly you are downloading
                                      sources from a remote repo on
                                      GitHub but want to have them
                                      locally to make modifications? If
                                      so use:</p>
                                    <p>devtool add myrecipe localsrc
                                      fetchuri</p>
                                    <p>from your build environment (you
                                      have to source oe-init-build-env
                                      first). devtool then fetches the
                                      source from fetchuri into a
                                      directory localsrc as a git repo
                                      and automatically creates the
                                      recipe for it.</p>
                                    <p>:rjs<br>
                                    </p>
                                    <p><br>
                                    </p>
                                    <div
class=3D"gmail-m_-8746796073981798664gmail-m_-8900245222760043816gmail-m_=
8158819649125888525gmail-m_-6306057233364702931moz-cite-prefix">On
                                      7/23/19 1:49 PM, Russell Peterson
                                      wrote:<br>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div dir=3D"ltr">
                                        <div>Hello,<br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div>I am looking to have
                                          bitbake pick up files for a
                                          particular recipe from a local
                                          git repository using the
                                          PREMIRROR functionality.</div>
                                        <div><br>
                                        </div>
                                        <div>Basically, the recipe (bb
                                          file) points to github but in
                                          my local build I add
                                          PREMIRROR_prepend =3D
                                          "git://.*/.*=C2=A0
                                          git:///local/path/BASENAME;prot=
ocol=3Dfile\n"</div>
                                        <div><br>
                                        </div>
                                        <div>I will probably make the
                                          git regular expression more
                                          exact for my specific github
                                          repo but this works for now.</d=
iv>
                                        <div><br>
                                        </div>
                                        <div>This all works (as I
                                          deleted the github download
                                          from the local download
                                          directory) because I can see
                                          in the do_fetch log and the
                                          correct (local) repo was found
                                          and placed in the DL_DIR.</div>=

                                        <div><br>
                                        </div>
                                        <div>Problem is, do_unpack fails
                                          because it appears to be
                                          looking for the original
                                          (github) SRC_URI.=C2=A0 Then it=

                                          complains about "no up to date
                                          source found: clone or
                                          directory not available or not
                                          up to date (shallow clone not
                                          enabled)"</div>
                                        <div><br>
                                        </div>
                                        <div>Any help on what I am
                                          missing would be appreciated.</=
div>
                                        <div><br>
                                        </div>
                                        <div>Regards,</div>
                                        <div><br>
                                        </div>
                                        <div>Russell</div>
                                        <div><br>
                                        </div>
                                        <div><br>
                                        </div>
                                      </div>
                                      <br>
                                      <fieldset
class=3D"gmail-m_-8746796073981798664gmail-m_-8900245222760043816gmail-m_=
8158819649125888525gmail-m_-6306057233364702931mimeAttachmentHeader"></fi=
eldset>
                                    </blockquote>
                                    <pre class=3D"gmail-m_-87467960739817=
98664gmail-m_-8900245222760043816gmail-m_8158819649125888525gmail-m_-6306=
057233364702931moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
                                  </div>
                                </blockquote>
                              </div>
                            </blockquote>
                            <pre class=3D"gmail-m_-8746796073981798664gma=
il-m_-8900245222760043816gmail-m_8158819649125888525moz-signature" cols=3D=
"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <pre class=3D"gmail-m_-8746796073981798664gmail-m_-89=
00245222760043816moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <pre class=3D"gmail-m_-8746796073981798664moz-signature" cols=
=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------C2054C026912DC6875D5168F--

--Nxdcay5ewjTdbBs9YukcWRdNRGlWEGicp--

--mDAfEvn0Mq30bpdcHzjNTy6dTiKyv2uGF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl07fHEACgkQjYyoKScz
m3VVewgAkpxIWlPTG/o3JgPb3WPO2dscHlnseEnkxDf/kfDsXZDeyYBiFxl4yeWP
vZyqCGatcdlXA+nLB7TVb3jfBgTarIPssDuKgNlyiMgYBVDXTgdBeIdLPF/cXh05
59cvv3HMjIjWil3TvivlDg53+87MIF/YUEBqcVgHUIhiFlnVSnnoYduorw5IcVAS
TjBB2wTizv0KBI3ygzT6Qi3PQiCm9PAEZ02JegeK3yBi4uSN5X7rKVCJi5BHufxq
4zXIOw3OIgN3qqR1kP3NniFtsJpc7/kio50ZR9qzCT835w8rfjYY/RLbI0mg73aC
N/94nK0TBq7cTRI/OgiUmPpvjbFY4g==
=GCb1
-----END PGP SIGNATURE-----

--mDAfEvn0Mq30bpdcHzjNTy6dTiKyv2uGF--
