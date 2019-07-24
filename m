Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2F7CE00DD7; Wed, 24 Jul 2019 12:55:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9525AE00D59
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 12:55:35 -0700 (PDT)
Received: by mail-pg1-f178.google.com with SMTP id i70so10996470pgd.4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 12:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=xl5v+dSDPen+pXwfZ5Vx7Shdy+zQfkHPuVadNUmDWCw=;
	b=hl7JLl4rPM3rxu1aA2kn7C7/mbhRERbNcCw7EH6VqAEuTLgZPMCeneyRLTxnDEB8Tq
	k0vLjDidXwN1Un6Y49SOHnsjSa5mxjqg+b4yCcjr/oQGaZ4lUQgQAVbpQ9642ucwC643
	vWF96wSxWtFiAn2AnBvQUMjiyZO1ajLNp2dOfK3CU2L7uQWmEG4kV3ZXaRflVe2wP8+3
	jjIqCCC+kC5K2Znv7cEynAyqL5NxJe5xn8AFNMSqvop+7sz++xIhqgFBzr0NyVWYuEkT
	5Pc6OEgmiv/l3BAeO58Xq6bwDVmHwjivST4lCBE0v1SrST7S0K+s/GKwYdiwFdAfBFqn
	qDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=xl5v+dSDPen+pXwfZ5Vx7Shdy+zQfkHPuVadNUmDWCw=;
	b=Nlz5JVuX9E6F7zKodyem7TiJzku15ypwhPdN1+2nFD2aHlaZL2SMJxKrsIqpxe7F7X
	E8Rg9JEDsER3EU6jTQejoPgH1pHt2279yKPoz6E//4BevISKSezF5Q381TZkQR0Dk/Sy
	HA+btiQTOdxm6KgHfzKdcKf5Ck8xroO1/OMauzIZKzEvEQ7MqOQMZ392CzIdnKq9ZO2a
	iTDyjay2ONxkE67gyjzUoSqKdnxyXeIZ6hVvVd/YqF7H4yrb2kuQRNh2DYj2l3iaMp4H
	GfJqrWl+h1nPq87ojV4NrPKE2MPQiukpksDp3T/PxuxMfngQu9zhPctUZYVBv+BoCAgB
	Dihg==
X-Gm-Message-State: APjAAAVSb4zNBIFyhxoaklZcAp5LHuOL55IuF6axKm6rVaoBsFi1s3CP
	qAwUXxTCOiwv3l7Gn0MQa29/iaQs
X-Google-Smtp-Source: APXvYqwGViewqZS8sEMQ0YKCnpFQVB1L7F5Chtx3Kc6QHgmgdquGVgqN1m0J1domwIFnKrxOMGTD2Q==
X-Received: by 2002:a62:28b:: with SMTP id 133mr12865265pfc.251.1563998134612; 
	Wed, 24 Jul 2019 12:55:34 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	l44sm41863829pje.29.2019.07.24.12.55.33
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Jul 2019 12:55:33 -0700 (PDT)
To: Russell Peterson <peterson.russell@gmail.com>
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
	<352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
	<CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
	<2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
	<CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
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
Message-ID: <4c4105c4-fdea-d8e0-2c02-11543baf55f5@ibeeto.com>
Date: Wed, 24 Jul 2019 12:55:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
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
X-List-Received-Date: Wed, 24 Jul 2019 19:55:36 -0000
X-Groupsio-MsgNum: 46073
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="YmhDBGLYP1eF6UDNPhk2AFHIs02KFjCRL"

--YmhDBGLYP1eF6UDNPhk2AFHIs02KFjCRL
Content-Type: multipart/mixed; boundary="yQdtg8napouYMJu4vHB6m1adxDnOHgmh2";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Russell Peterson <peterson.russell@gmail.com>
Cc: yocto@yoctoproject.org
Message-ID: <4c4105c4-fdea-d8e0-2c02-11543baf55f5@ibeeto.com>
Subject: Re: [yocto] PREMIRROR
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
 <352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
 <CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
 <2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
 <CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
In-Reply-To: <CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>

--yQdtg8napouYMJu4vHB6m1adxDnOHgmh2
Content-Type: multipart/alternative;
 boundary="------------3A1A90B90F7C10F1F6E0A219"
Content-Language: en-US

--------------3A1A90B90F7C10F1F6E0A219
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Russell,

That is exactly what devtool and the externalsrc class do. PREMIRROR is
the wrong approach for that.

:rjs

On 7/24/19 12:53 PM, Russell Peterson wrote:
> Hi, Rudolf.
>
> I apologize for not being clear.=C2=A0 The idea here is that my recipe
> points to github while, for my local development environment, I set a
> premirror to match a specific github repository and translate it to a
> local directory.=C2=A0 That works.=C2=A0 The fetch matches the PREMIRRO=
R and
> places a copy of the LOCAL git repo in my DL_DIR.=C2=A0 The problem is,=
 the
> do_unpack task is looking for the git repo in the DL_DIR
> (git2/etc...)... but it's looking for the git repo from github, not my
> local repo that the fetch task just put in DL_DIR.
>
> There are numerous reasons I'm doing this including the fact that I
> cannot put a reference to my local repo in the bb file since I ship
> that recipe to my customers and a local pathname is meaningless to
> them.=C2=A0 I prefer to simply modify my local.conf with a PREMIRROR va=
lue
> that has a specific regular expression that matches this particular
> github repo (and hence does NOT effect all recipes).=C2=A0 This is why =
I
> wanted to use the PREMIRROR function.=C2=A0 Unfortunately, it does not
> appear to work or at least not work as I expected.
>
> --Russ
>
>
>
>
> On Wed, Jul 24, 2019 at 2:57 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote:
>
>     Hi Russell,
>
>     devtool and eSDK are different things. The purpose of PREMIRRORS
>     is to set a mirror for all recipes. It's a way for organizations
>     to control where their YP builds download sources from. It's not
>     intended to be used for a single recipe. There is no need for
>     that. You simply set SRC_URI in your recipe to your local git
>     repo. That is what devtool does after downloading the sources from
>     a remote repo. If you already have the remote repo cloned locally
>     you can just point devtool to it.
>
>     You can do it manually by creating your recipe and setting SRC_URI
>     like this:
>
>     SRC_URI =3D "git:///local/path/${PN};protocol=3Dfile"
>
>     SRCREV =3D "${AUTOREV}"
>
>     S =3D "${WORKDIR}/git"
>
>     PREMIRRORS is only relevant for do_fetch not for do_unpack.
>
>     :rjs
>
>
>     On 7/24/19 11:28 AM, Russell Peterson wrote:
>>     Hi, Rudolf.
>>
>>     Thanks for the reply.=C2=A0 Yes, I am aware of the eSDK functional=
ity,
>>     however, I have some unique requirements that I am trying to work
>>     around.=C2=A0 Regardless... what I am doing should work, no?=C2=A0=
 I simply
>>     want to use a local git repo (the directory itself hence
>>     protocol=3Dfile) instead of what the recipe specifies.=C2=A0 Looks=
 like
>>     the fetch is working but the do_unpack task is ignoring
>>     PREMIRRORS (or at least the localpath variable seems wrong).
>>
>>     --Russ
>>
>>
>>     On Wed, Jul 24, 2019 at 12:19 PM Rudolf J Streif
>>     <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote=
:
>>
>>         Russell,
>>
>>         You don't need PREMIRROR for this functionality. It's not
>>         exactly intended for that use.
>>
>>         The simplest way to achieve what you are looking for is to
>>         use devtool. If I understand you correctly you are
>>         downloading sources from a remote repo on GitHub but want to
>>         have them locally to make modifications? If so use:
>>
>>         devtool add myrecipe localsrc fetchuri
>>
>>         from your build environment (you have to source
>>         oe-init-build-env first). devtool then fetches the source
>>         from fetchuri into a directory localsrc as a git repo and
>>         automatically creates the recipe for it.
>>
>>         :rjs
>>
>>
>>         On 7/23/19 1:49 PM, Russell Peterson wrote:
>>>         Hello,
>>>
>>>         I am looking to have bitbake pick up files for a particular
>>>         recipe from a local git repository using the PREMIRROR
>>>         functionality.
>>>
>>>         Basically, the recipe (bb file) points to github but in my
>>>         local build I add PREMIRROR_prepend =3D "git://.*/.*=C2=A0
>>>         git:///local/path/BASENAME;protocol=3Dfile\n"
>>>
>>>         I will probably make the git regular expression more exact
>>>         for my specific github repo but this works for now.
>>>
>>>         This all works (as I deleted the github download from the
>>>         local download directory) because I can see in the do_fetch
>>>         log and the correct (local) repo was found and placed in the
>>>         DL_DIR.
>>>
>>>         Problem is, do_unpack fails because it appears to be looking
>>>         for the original (github) SRC_URI.=C2=A0 Then it complains ab=
out
>>>         "no up to date source found: clone or directory not
>>>         available or not up to date (shallow clone not enabled)"
>>>
>>>         Any help on what I am missing would be appreciated.
>>>
>>>         Regards,
>>>
>>>         Russell
>>>
>>>
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


--------------3A1A90B90F7C10F1F6E0A219
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Russell,</p>
    <p>That is exactly what devtool and the externalsrc class do.
      PREMIRROR is the wrong approach for that.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/24/19 12:53 PM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJxG=3Df=3D2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi, Rudolf.
        <div><br>
        </div>
        <div>I apologize for not being clear.=C2=A0 The idea here is that=
 my
          recipe points to github while, for my local development
          environment, I set a premirror to match a specific github
          repository and translate it to a local directory.=C2=A0 That
          works.=C2=A0 The fetch matches the PREMIRROR and places a copy =
of
          the LOCAL git repo in my DL_DIR.=C2=A0 The problem is, the
          do_unpack task is looking for the git repo in the DL_DIR
          (git2/etc...)... but it's looking for the git repo from
          github, not my local repo that the fetch task just put in
          DL_DIR.</div>
        <div><br>
        </div>
        <div>There are numerous reasons I'm doing this including the
          fact that I cannot put a reference to my local repo in the bb
          file since I ship that recipe to my customers and a local
          pathname is meaningless to them.=C2=A0 I prefer to simply modif=
y my
          local.conf with a PREMIRROR value that has a specific regular
          expression that matches this particular github repo (and hence
          does NOT effect all recipes).=C2=A0 This is why I wanted to use=
 the
          PREMIRROR function.=C2=A0 Unfortunately, it does not appear to =
work
          or at least not work as I expected.</div>
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019 at 2:5=
7
          PM Rudolf J Streif &lt;<a
            href=3D"mailto:rudolf.streif@ibeeto.com"
            moz-do-not-send=3D"true">rudolf.streif@ibeeto.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=

          <div bgcolor=3D"#FFFFFF">
            <p>Hi Russell,</p>
            <p>devtool and eSDK are different things. The purpose of
              PREMIRRORS is to set a mirror for all recipes. It's a way
              for organizations to control where their YP builds
              download sources from. It's not intended to be used for a
              single recipe. There is no need for that. You simply set
              SRC_URI in your recipe to your local git repo. That is
              what devtool does after downloading the sources from a
              remote repo. If you already have the remote repo cloned
              locally you can just point devtool to it.</p>
            <p>You can do it manually by creating your recipe and
              setting SRC_URI like this:</p>
            <p>SRC_URI =3D "git:///local/path/${PN};protocol=3Dfile"</p>
            <p>SRCREV =3D "${AUTOREV}"</p>
            <p>S =3D "${WORKDIR}/git"</p>
            <p>PREMIRRORS is only relevant for do_fetch not for
              do_unpack.</p>
            <p>:rjs<br>
            </p>
            <p><br>
            </p>
            <div class=3D"gmail-m_8158819649125888525moz-cite-prefix">On
              7/24/19 11:28 AM, Russell Peterson wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi, Rudolf.
                <div><br>
                </div>
                <div>Thanks for the reply.=C2=A0 Yes, I am aware of the e=
SDK
                  functionality, however, I have some unique
                  requirements that I am trying to work around.=C2=A0
                  Regardless... what I am doing should work, no?=C2=A0 I
                  simply want to use a local git repo (the directory
                  itself hence protocol=3Dfile) instead of what the recip=
e
                  specifies.=C2=A0 Looks like the fetch is working but th=
e
                  do_unpack task is ignoring PREMIRRORS (or at least the
                  localpath variable seems wrong).</div>
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
                  at 12:19 PM Rudolf J Streif &lt;<a
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
                    <p>You don't need PREMIRROR for this functionality.
                      It's not exactly intended for that use.</p>
                    <p>The simplest way to achieve what you are looking
                      for is to use devtool. If I understand you
                      correctly you are downloading sources from a
                      remote repo on GitHub but want to have them
                      locally to make modifications? If so use:</p>
                    <p>devtool add myrecipe localsrc fetchuri</p>
                    <p>from your build environment (you have to source
                      oe-init-build-env first). devtool then fetches the
                      source from fetchuri into a directory localsrc as
                      a git repo and automatically creates the recipe
                      for it.</p>
                    <p>:rjs<br>
                    </p>
                    <p><br>
                    </p>
                    <div
class=3D"gmail-m_8158819649125888525gmail-m_-6306057233364702931moz-cite-=
prefix">On
                      7/23/19 1:49 PM, Russell Peterson wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>Hello,<br>
                        </div>
                        <div><br>
                        </div>
                        <div>I am looking to have bitbake pick up files
                          for a particular recipe from a local git
                          repository using the PREMIRROR functionality.</=
div>
                        <div><br>
                        </div>
                        <div>Basically, the recipe (bb file) points to
                          github but in my local build I add
                          PREMIRROR_prepend =3D "git://.*/.*=C2=A0
                          git:///local/path/BASENAME;protocol=3Dfile\n"</=
div>
                        <div><br>
                        </div>
                        <div>I will probably make the git regular
                          expression more exact for my specific github
                          repo but this works for now.</div>
                        <div><br>
                        </div>
                        <div>This all works (as I deleted the github
                          download from the local download directory)
                          because I can see in the do_fetch log and the
                          correct (local) repo was found and placed in
                          the DL_DIR.</div>
                        <div><br>
                        </div>
                        <div>Problem is, do_unpack fails because it
                          appears to be looking for the original
                          (github) SRC_URI.=C2=A0 Then it complains about=
 "no
                          up to date source found: clone or directory
                          not available or not up to date (shallow clone
                          not enabled)"</div>
                        <div><br>
                        </div>
                        <div>Any help on what I am missing would be
                          appreciated.</div>
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
class=3D"gmail-m_8158819649125888525gmail-m_-6306057233364702931mimeAttac=
hmentHeader"></fieldset>
                    </blockquote>
                    <pre class=3D"gmail-m_8158819649125888525gmail-m_-630=
6057233364702931moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <pre class=3D"gmail-m_8158819649125888525moz-signature" cols=3D=
"72">--=20
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

--------------3A1A90B90F7C10F1F6E0A219--

--yQdtg8napouYMJu4vHB6m1adxDnOHgmh2--

--YmhDBGLYP1eF6UDNPhk2AFHIs02KFjCRL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl04t7QACgkQjYyoKScz
m3VV4ggAjMjNHHzlyN5nK6ki+890eZphJjjn4S/d/OxbhIGMtjCSBf3kaWR6KvTv
viWH5hNU+byCTCSii2KngxvNrzKRG4a6RmfnP205j0QYOWlLTCMtFNq5C2A2TEjk
vJPiOEzCbQSXkddWa7KnSL2WeIyf+KjWiiikmzEPbWgWtTKuH6ft9n94Etf5K66n
AasXEG2qaOT7N2g+pt2H/Kjn8BW4QA7AHyaogoJti5Mf+JQEKojOBjI/UvMDh4vx
JIeC7m4MGt3uyZOiSSQNIMdi/GyD+7Bp7yk6HCs61u1xq/xjjB+rbTYilqBHsyUN
weoZaUYMLw8r8rL887I0VXc1FqC8OQ==
=OiUE
-----END PGP SIGNATURE-----

--YmhDBGLYP1eF6UDNPhk2AFHIs02KFjCRL--
