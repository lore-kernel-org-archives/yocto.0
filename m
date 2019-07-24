Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F5D5E00D5D; Wed, 24 Jul 2019 11:30:41 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44996E00920
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 11:30:40 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id n11so46473669qtl.5
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 11:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OeMrN5qeBXhFA4ajMeN+znlOf4ogn3aJf3OOUu7j4mA=;
	b=RGKlDM7fg3BzA7YJOWgvijmvNctnztJ+jEqtra18QgQ1e/hDZGLXkH6dmOEZ3Maqls
	3npDNSLyYVi8CKQg9pOLANCPl3OT632b255RqXrhLOcS+asyrR2F2yDsXYVfC14pu1J2
	AuaifLlt958NIX9xlzMRVjJ7kd68hWtxS0qYpnrDL29xQZgicTBHSTmfALD8D9wB6Acq
	6P063REDF0j/MCip8Oe3ZhUJs7ccK6dYmQ3K0ryLu6N7Fb/zWXXTR7IIg52V8aeth5Sv
	Fvd3umZvUhytmmKxEc8+/cRnGea0obHfURosIbrngVhu1AyHsKxoCRS7rT0LS2L4BoZ4
	mbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OeMrN5qeBXhFA4ajMeN+znlOf4ogn3aJf3OOUu7j4mA=;
	b=oYEChJXiH/V/oK9YvaeaTXH9nwJFPdicmb0Ou1boDynPZKnbSQd6TkUaPXV/EVQkV6
	mFYswlrEv8ZnO1t1Wx+GbxcNz1bw6NKo3uYvr17/eYh/GRsZpw5f2dsBgwbH4t/A7o3c
	itmcS8tpYnabZqtR5nWD1O1otwAyItPMp6NkCWJSRjfilfqmvCi/rdaAtlpcpnLc7knR
	HJ478B/OSensbVnUzPn5gPdKsr14KeDviQMc2iJbD5jdowaRpBgJ0ScnOtsKhJYoqgS/
	p3viFSZ1mqKNYU8EnAKIw2C0S68jh9OCDGKt+VntRgBphFRExBctPnNXiij4lkey9V6u
	bLoA==
X-Gm-Message-State: APjAAAVyZRQNNG3QbgFHyin95NwGMQtamGF+MvZeqpR23bBy0Twcqter
	/3cETrnVOzqAIaXOk8kWiI8TPw2yEy4YtLYMbc0=
X-Google-Smtp-Source: APXvYqzkeiHk9uiXkBAZkp96CU5hQrk4vIDuAIELoqnQpkrUYJcfmjZklHdJin2O65qED1LExzHT2bsmz+N1lLTg/Zg=
X-Received: by 2002:ac8:25b1:: with SMTP id e46mr59361614qte.36.1563993039619; 
	Wed, 24 Jul 2019 11:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
	<fba9017e-ffd3-f44c-c75a-8be6e46d10b9@windriver.com>
In-Reply-To: <fba9017e-ffd3-f44c-c75a-8be6e46d10b9@windriver.com>
From: Russell Peterson <peterson.russell@gmail.com>
Date: Wed, 24 Jul 2019 14:30:28 -0400
Message-ID: <CAJxG=fmQosVzrmmPv9ab5C5BkUVnM=Wryy+dUPXvA1_+XC+b5w@mail.gmail.com>
To: Yi Zhao <yi.zhao@windriver.com>
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
X-List-Received-Date: Wed, 24 Jul 2019 18:30:41 -0000
Content-Type: multipart/alternative; boundary="0000000000008eca81058e71813a"

--0000000000008eca81058e71813a
Content-Type: text/plain; charset="UTF-8"

Thanks, Yi.  I did try that and I see the tar file is created... but again,
the do_unpack function seems to ignore it and go directly to the github
repository.

--Russ


On Wed, Jul 24, 2019 at 4:28 AM Yi Zhao <yi.zhao@windriver.com> wrote:

>
> On 7/24/19 4:49 AM, Russell Peterson wrote:
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
>
> Maybe you can use BB_GENERATE_MIRROR_TARBALLS to generate git repo tarball
> and put it to your download mirror.
>
> See:
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-bb-BB_GENERATE_MIRROR_TARBALLS
>
>         and
>
>
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DL_DIR
>
>
> Regards,
>
> Yi
>
>
>
> Any help on what I am missing would be appreciated.
>
> Regards,
>
> Russell
>
>
>
>

--0000000000008eca81058e71813a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Yi.=C2=A0 I did try that and I see the tar file is=
 created... but again, the do_unpack function seems to ignore it and go dir=
ectly to the github repository.<div><br></div><div>--Russ</div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Jul 24, 2019 at 4:28 AM Yi Zhao &lt;<a href=3D"mailto:yi.zhao@wi=
ndriver.com">yi.zhao@windriver.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"gmail-m_5147416499914025504moz-cite-prefix">On 7/24/19 4:=
49 AM, Russell Peterson
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
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Maybe you can use BB_GENERATE_MIRROR_TARBALLS to generate git
      repo tarball and put it to your download mirror.<br>
    </p>
    <p>See:
<a class=3D"gmail-m_5147416499914025504moz-txt-link-freetext" href=3D"https=
://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-bb-BB_=
GENERATE_MIRROR_TARBALLS" target=3D"_blank">https://www.yoctoproject.org/do=
cs/latest/mega-manual/mega-manual.html#var-bb-BB_GENERATE_MIRROR_TARBALLS</=
a></p>
    <p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and<br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<a class=3D"gmail-m_5147416499914025504moz-txt-link-freetext" href=3D"https=
://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DL_DIR=
" target=3D"_blank">https://www.yoctoproject.org/docs/latest/mega-manual/me=
ga-manual.html#var-DL_DIR</a><br>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Yi</p>
    <p><br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
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
      <fieldset class=3D"gmail-m_5147416499914025504mimeAttachmentHeader"><=
/fieldset>
    </blockquote>
  </div>

</blockquote></div>

--0000000000008eca81058e71813a--
