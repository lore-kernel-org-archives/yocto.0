Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 559DDE00D90; Wed, 24 Jul 2019 11:29:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (peterson.russell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57531E00D5D
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 11:29:07 -0700 (PDT)
Received: by mail-qk1-f177.google.com with SMTP id d15so34469995qkl.4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 11:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e0mmMv4OEC8s4ZCVfKyUCYTifqfvI93s6r7DPB0IojY=;
	b=dxJ6/JXJ3fWyHQ84Ih5RGAo8FoYnvbGDpMtwKe56UOFd1JmVwHPCApw+ArP6l8qOAS
	IQf4hzWLRKQ5sha3xFt9VKA6998eFbGTTPSDH5ae0mv5XCtUo+iQWh8pvxichgdh0cQ/
	YVbG65VDOq47dmrHEpitFTM752WV2yBsQ/U75c1vLpUXlbst8Zvk/lmCnjbUmcOlWpJU
	tqcVyMXe402TptG2JVNqy5tPal1zM53up5remHZx23+QaqWKTqfgQ1poR3r53EQPBzo2
	VWJzsz6z3mM1pbcZ8/XlesKvym8EVLZfZQkgL3TCplbr/rcCEK9MWgxlhx1WEJTXLH7O
	O9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e0mmMv4OEC8s4ZCVfKyUCYTifqfvI93s6r7DPB0IojY=;
	b=Gjfw4mQ4S5hAQGjKtrfXXPjSSNv+A4pKcg+oB+X+2V2sUvE7TiyH81kTpxBah31trT
	FhrFZEE/N65Wxl/Umce7sckr8AXj5ouPrEh+wg/+mOf1WpALBm/McFBvLyfTMAARCB3q
	vaD9ME6DaTCTlwl/y/xw6J7aUpQ8TzCmHMkcO1Bc3BpITiohLeAExg7YbwgAzCrQsMCH
	w8tHD9WQVZ7yv4EXaNXKg/ekGPbxHddYHXad3nrM48gFdkwlQH52igCko5BPnTXtDIdi
	ULwMirAUiVuah47fyGfOL0HyqE+k3Iy8TpKkkGWtcdZW3l+lANR5SM49vLN/88x2ypHf
	+rlg==
X-Gm-Message-State: APjAAAUZHCGUwiDoQnShaE+H+fiqogTSsBsv/QoFu2mNIqlUOrflu8Wk
	qnHyejwFtEfXDqkKno3+b7f9Fx5tG9b2KMSqEFu9Ow==
X-Google-Smtp-Source: APXvYqz6KPS0hWwQRtR7FCrr+xhjDQoYJQ5e4NVKeMHSiM8Jq/r+lLY2+/whREXG4CADKXV0Wrtu9S4daFJVOcxwTZ0=
X-Received: by 2002:a37:9d15:: with SMTP id g21mr51644523qke.343.1563992946580;
	Wed, 24 Jul 2019 11:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
	<352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
In-Reply-To: <352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
From: Russell Peterson <peterson.russell@gmail.com>
Date: Wed, 24 Jul 2019 14:28:55 -0400
Message-ID: <CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
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
X-List-Received-Date: Wed, 24 Jul 2019 18:29:08 -0000
Content-Type: multipart/alternative; boundary="0000000000000320ce058e717c74"

--0000000000000320ce058e717c74
Content-Type: text/plain; charset="UTF-8"

Hi, Rudolf.

Thanks for the reply.  Yes, I am aware of the eSDK functionality, however,
I have some unique requirements that I am trying to work around.
Regardless... what I am doing should work, no?  I simply want to use a
local git repo (the directory itself hence protocol=file) instead of what
the recipe specifies.  Looks like the fetch is working but the do_unpack
task is ignoring PREMIRRORS (or at least the localpath variable seems
wrong).

--Russ


On Wed, Jul 24, 2019 at 12:19 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> Russell,
>
> You don't need PREMIRROR for this functionality. It's not exactly intended
> for that use.
>
> The simplest way to achieve what you are looking for is to use devtool. If
> I understand you correctly you are downloading sources from a remote repo
> on GitHub but want to have them locally to make modifications? If so use:
>
> devtool add myrecipe localsrc fetchuri
>
> from your build environment (you have to source oe-init-build-env first).
> devtool then fetches the source from fetchuri into a directory localsrc as
> a git repo and automatically creates the recipe for it.
>
> :rjs
>
>
> On 7/23/19 1:49 PM, Russell Peterson wrote:
>
> Hello,
>
> I am looking to have bitbake pick up files for a particular recipe from a
> local git repository using the PREMIRROR functionality.
>
> Basically, the recipe (bb file) points to github but in my local build I
> add PREMIRROR_prepend = "git://.*/.*
> git:///local/path/BASENAME;protocol=file\n"
>
> I will probably make the git regular expression more exact for my specific
> github repo but this works for now.
>
> This all works (as I deleted the github download from the local download
> directory) because I can see in the do_fetch log and the correct (local)
> repo was found and placed in the DL_DIR.
>
> Problem is, do_unpack fails because it appears to be looking for the
> original (github) SRC_URI.  Then it complains about "no up to date source
> found: clone or directory not available or not up to date (shallow clone
> not enabled)"
>
> Any help on what I am missing would be appreciated.
>
> Regards,
>
> Russell
>
>
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
>

--0000000000000320ce058e717c74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Rudolf.<div><br></div><div>Thanks for the reply.=C2=A0=
 Yes, I am aware of the eSDK functionality, however, I have some unique req=
uirements that I am trying to work around.=C2=A0 Regardless... what I am do=
ing should work, no?=C2=A0 I simply want to use a local git repo (the direc=
tory itself hence protocol=3Dfile) instead of what the recipe specifies.=C2=
=A0 Looks like the fetch is working but the do_unpack task is ignoring PREM=
IRRORS (or at least the localpath variable seems wrong).</div><div><br></di=
v><div>--Russ</div><div><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019 at 12:19 PM Rudolf J=
 Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@ibeet=
o.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Russell,</p>
    <p>You don&#39;t need PREMIRROR for this functionality. It&#39;s not ex=
actly
      intended for that use.</p>
    <p>The simplest way to achieve what you are looking for is to use
      devtool. If I understand you correctly you are downloading sources
      from a remote repo on GitHub but want to have them locally to make
      modifications? If so use:</p>
    <p>devtool add myrecipe localsrc fetchuri</p>
    <p>from your build environment (you have to source oe-init-build-env
      first). devtool then fetches the source from fetchuri into a
      directory localsrc as a git repo and automatically creates the
      recipe for it.</p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <div class=3D"gmail-m_-6306057233364702931moz-cite-prefix">On 7/23/19 1=
:49 PM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hello,<br>
        </div>
        <div><br>
        </div>
        <div>I am looking to have bitbake pick up files for a particular
          recipe from a local git repository using the PREMIRROR
          functionality.</div>
        <div><br>
        </div>
        <div>Basically, the recipe (bb file) points to github but in my
          local build I add PREMIRROR_prepend =3D &quot;git://.*/.*=C2=A0
          git:///local/path/BASENAME;protocol=3Dfile\n&quot;</div>
        <div><br>
        </div>
        <div>I will probably make the git regular expression more exact
          for my specific github repo but this works for now.</div>
        <div><br>
        </div>
        <div>This all works (as I deleted the github download from the
          local download directory) because I can see in the do_fetch
          log and the correct (local) repo was found and placed in the
          DL_DIR.</div>
        <div><br>
        </div>
        <div>Problem is, do_unpack fails because it appears to be
          looking for the original (github) SRC_URI.=C2=A0 Then it complain=
s
          about &quot;no up to date source found: clone or directory not
          available or not up to date (shallow clone not enabled)&quot;</di=
v>
        <div><br>
        </div>
        <div>Any help on what I am missing would be appreciated.</div>
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
      <fieldset class=3D"gmail-m_-6306057233364702931mimeAttachmentHeader">=
</fieldset>
    </blockquote>
    <pre class=3D"gmail-m_-6306057233364702931moz-signature" cols=3D"72">--=
=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </div>

</blockquote></div>

--0000000000000320ce058e717c74--
