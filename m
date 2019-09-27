Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E980E00D67; Thu, 26 Sep 2019 21:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9698EE00D5F
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 21:34:08 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id n1so5654758qtp.8
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 21:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tyIyICKJH9e9M6c4mG3FI9qAf0haC8ysjCQu183ZZ90=;
	b=FnNlTxQ54B2TLxIgw/o78yJAgFRLpbzCVZd6BdhGj9gu4L39yVQDTPKI5SeGm9ngL4
	I81KO/ucvIJ+j0r8ZymShgIH4tPmmkVBujM6ZD1P1fsaZ0xiG5bp2sLqz4+Hkqc7Rq49
	zhDg+7LU5E0F/V7PcynRM2uaynMNTVlCcYD7Ojh6SBsYP744twYE+xNr0KCdV114ZNID
	W0p4Lt1BleoabbPJDuwlA7eW/cc43Q0dZzyb3pyR5Gk1SZvDXqVOGlQAwPAkig92/pTe
	jKVsNFH0Kex76QF9Smwbs2HBPFLwKfefLeHfrI9rAUW50VPmejispbWS7GObG0b5Kxny
	aJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tyIyICKJH9e9M6c4mG3FI9qAf0haC8ysjCQu183ZZ90=;
	b=ZOxMT+6CeveIJsbbeQAXjrvpXs80OQgTP5vaXw/MCyEFSb/DAec0s92efMwWXZ8H32
	GMB7Fg8sXPysUMNOXCMPNSmaw9qiJs0SNTRmD9YKagVwgi+8SBE3/evRrV+G45u+PYC0
	aivE4+9XIxC5MAqEsrprdT6onPzPrTljw3esGyNnv5sXet74jJ+MYDaHoVZGWXNZaSSj
	FCgXnqggh5E4cl66+Xr4DqMvjtmxZVOJR+XEPqFTzZ07Z1LJLb2dSiZQ+S8ZFKYEOA3A
	nWDMCh5neoPzuU/a3If4hbwMlO8tPQT/kDBtNkALoBkVlFYzwPwBSKtV+J387RgVu9/N
	0Bsg==
X-Gm-Message-State: APjAAAWBLqIOPHBf8tdw9Wyb4Nw9Kcnl/No4LBk1FINDQyiZD0WXdJf5
	gJzmFDgV/G1jM/ol3yuinELRNkEzdVZo3UD2Z/xhlQ==
X-Google-Smtp-Source: APXvYqx7cWngzSVoK8CTXyDvVSpbPPULqRqrZA7dMfEtKA9d22xvRkWjeBulf2NnAWgKTajeZG9xu0ZQodntWwznAfg=
X-Received: by 2002:ac8:1417:: with SMTP id k23mr1387184qtj.93.1569558847669; 
	Thu, 26 Sep 2019 21:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
	<d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
In-Reply-To: <d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 26 Sep 2019 21:33:56 -0700
Message-ID: <CAB=6tBSyrroOj3pQN-ftR=O3eP6n6JRNANnYqgyg0cFve6hZiw@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Downloading Git Archives
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
X-List-Received-Date: Fri, 27 Sep 2019 04:34:31 -0000
Content-Type: multipart/alternative; boundary="00000000000091cd8e0593816549"

--00000000000091cd8e0593816549
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for replying!

That is effectively what we have to do with the VM clone of the build
machine. We spin up the VM, do the build, see what is new in the downloads
directory, do our due diligence, and push the new stuff into the local
mirror behind the firewall. The primary build server must remain "sterile",
so everything has to be "hoisted" over the fence manually.

[Side Note: We also maintain a local clone of the openembedded and poky
repositories. Our build pins to a specific hash, which gets advanced after
we do our due diligence. This is when we discover that certain packages
need to be added to our ${LOCAL_MIRROR}. My desire is to automate as much
as possible, while exposing as little as possible.]

Whenever the nightly build fails due to a missing package, and I see a URL
with a (for example) .tar.gz in the build error log, I know my job is a lot
easier. I can simply wget from any Internet connected host, instead of
spinning up the VM clone, waiting for a build to complete, and then
figuring out what is new in the downloads directory.

I was hoping that there was an equally simple way of grabbing git
repository packages from an Internet connected host without having a
bitbake build cache them for me.

I understand that these packages are effectively a bare clone, but there
seems to be some additional non-obvious (to me at least) "magic" that makes
it more complicated than doing a git repo bare clone and wrapping it up
into a .tar.gz.

I am happy to start trawling through source code and figure it out on my
own, but I figured this had to be common knowledge to someone on this list.

..Ch:W..

On Thu, Sep 26, 2019 at 8:50 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> Chuck,
>
> Unless I am missing something (which I cannot entirely rule out), the
> default PREMIRRORS should actually do what you want. For the poky distro
> configuration has this:
>
> PREMIRRORS ??=3D "\
> bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
> cvs://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
> git://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
> gitsm://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n \
> hg://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
> osc://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
> p4://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
> svn://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n"
>
> This causes the fetcher to intercept and translate all the SCM protocols
> into http downloads from the YP mirror. Since you are saying wget works f=
or
> you this should actually automatically work for you. If you build system
> can at least download using http then
>
> bitbake <target> --runall=3Dfetch
>
> should download all the sources for you. Then you can disconnect the box
> from the Internet and start the build offline.
>
> :rjs
> On 9/26/19 8:06 PM, Chuck Wolber wrote:
>
> Hi All,
>
> Our build environment is stuck behind a firewall with no access to the
> Internet. When a Yocto build requires a new package, we normally extract
> the URL from the failed build log and "wget" the package from the upstrea=
m
> source, do our due diligence (checksums, etc), and then add it to the
> server pointed to by ${LOCAL_MIRROR}.
>
> Obviously that procedure does not work so well when a git repository need=
s
> to be fetched. We have tried various methods, but nothing seems to work
> reliably. Our current method is an annoying hack involving a virtual
> machine clone of the build server.
>
> I have searched far and wide, and cannot find any sort of procedure. Can
> someone point me at a procedure for translating something like git://
> git.yoctoproject.org/pseudo into a file we can store in our
> ${LOCAL_MIRROR}?
>
> Thank you,
>
> ..Ch:W..
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>

--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--00000000000091cd8e0593816549
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for replying!</div><div><br></div>That is effe=
ctively what we have to do with the VM clone of the build machine. We spin =
up the VM, do the build, see what is new in the downloads directory, do our=
 due diligence, and push the new stuff into the local mirror behind the fir=
ewall. The primary build server must remain &quot;sterile&quot;, so everyth=
ing has to be &quot;hoisted&quot; over the fence manually.<div><br></div><d=
iv>[Side Note: We also maintain a local clone of the openembedded and poky =
repositories. Our build pins to a specific hash, which gets advanced after =
we do our due diligence. This is when we discover that certain packages nee=
d to be added to our ${LOCAL_MIRROR}. My desire is to automate as much as p=
ossible, while exposing as little as possible.]<br><br>Whenever the nightly=
 build fails due to a missing package, and I see a URL with a (for example)=
 .tar.gz in the build error log, I know my job is a lot easier. I can simpl=
y wget from any Internet connected host, instead of spinning up the VM clon=
e, waiting for a build to complete, and then figuring out what is new in th=
e downloads directory.<div><br></div><div>I was hoping that there was an eq=
ually simple way of grabbing git repository packages from an Internet conne=
cted host without having a bitbake build cache them for me.</div><div><br><=
/div><div>I understand that these packages are effectively a bare clone, bu=
t there seems to be some additional non-obvious (to me at least) &quot;magi=
c&quot; that makes it more complicated than doing a git repo bare clone and=
 wrapping it up into a .tar.gz.=C2=A0</div><div><br></div><div>I am happy t=
o start trawling through source code and figure it out on my own, but I fig=
ured this had to be common knowledge to someone on this list.</div><div><br=
></div><div>..Ch:W..</div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 26, 2019 at 8:50 PM Rudolf J St=
reif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@ibeeto.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Chuck,</p>
    <p>Unless I am missing something (which I cannot entirely rule out),
      the default PREMIRRORS should actually do what you want. For the
      poky distro configuration has this:</p>
    <p>PREMIRRORS ??=3D &quot;\<br>
      bzr://.*/.*=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359moz-t=
xt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sources/=
" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/</a> \=
n
      \<br>
      cvs://.*/.*=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359moz-t=
xt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sources/=
" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/</a> \=
n
      \<br>
      git://.*/.*=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359moz-t=
xt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sources/=
" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/</a> \=
n
      \<br>
      gitsm://.*/.* <a class=3D"gmail-m_-2831024795406922359moz-txt-link-fr=
eetext" href=3D"http://downloads.yoctoproject.org/mirror/sources/" target=
=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/</a> \n
      \<br>
      hg://.*/.*=C2=A0=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359=
moz-txt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sou=
rces/" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/<=
/a> \n
      \<br>
      osc://.*/.*=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359moz-t=
xt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sources/=
" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/</a> \=
n
      \<br>
      p4://.*/.*=C2=A0=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359=
moz-txt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sou=
rces/" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/<=
/a> \n
      \<br>
      svn://.*/.*=C2=A0=C2=A0 <a class=3D"gmail-m_-2831024795406922359moz-t=
xt-link-freetext" href=3D"http://downloads.yoctoproject.org/mirror/sources/=
" target=3D"_blank">http://downloads.yoctoproject.org/mirror/sources/</a>
      \n&quot;<br>
    </p>
    <p>This causes the fetcher to intercept and translate all the SCM
      protocols into http downloads from the YP mirror. Since you are
      saying wget works for you this should actually automatically work
      for you. If you build system can at least download using http then</p=
>
    <p>bitbake &lt;target&gt; --runall=3Dfetch</p>
    <p>should download all the sources for you. Then you can disconnect
      the box from the Internet and start the build offline.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"gmail-m_-2831024795406922359moz-cite-prefix">On 9/26/19 8=
:06 PM, Chuck Wolber wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi All,</div>
        <div><br>
        </div>
        <div>Our build environment is stuck behind a firewall with no
          access to the Internet. When a Yocto build requires a new
          package, we normally extract the URL from the failed build log
          and &quot;wget&quot; the package from the upstream source, do our=
 due
          diligence (checksums, etc), and then add it to the server
          pointed to by ${LOCAL_MIRROR}.</div>
        <div><br>
        </div>
        <div>Obviously that procedure does not work so well when a git
          repository needs to be fetched. We have tried various methods,
          but nothing seems to work reliably. Our current method is an
          annoying hack involving a virtual machine clone of the build
          server.</div>
        <div><br>
        </div>
        <div>I have searched far and wide, and cannot find any sort of
          procedure. Can someone point me at a procedure for translating
          something like git://<a href=3D"http://git.yoctoproject.org/pseud=
o" target=3D"_blank">git.yoctoproject.org/pseudo</a> into
          a file we can store in our ${LOCAL_MIRROR}?</div>
        <div><br>
        </div>
        <div>Thank you,</div>
        <div><br>
        </div>
        <div>..Ch:W..</div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-2831024795406922359mimeAttachmentHeader">=
</fieldset>
    </blockquote>
    <pre class=3D"gmail-m_-2831024795406922359moz-signature" cols=3D"72">--=
=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challenge anyo=
ne here to think of a question upon which we once had a scientific=C2=A0ans=
wer, however inadequate, but for which now the best answer is a religious o=
ne.&quot;=C2=A0 -Sam Harris</div></div>

--00000000000091cd8e0593816549--
