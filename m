Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1EDBE00E07; Wed, 24 Jul 2019 12:53:13 -0700 (PDT)
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
	*      [209.85.222.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 938BFE00DD7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 12:53:12 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id s145so34689653qke.7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 12:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CSSfzwivDqmWXRg4XhLDsbngXgsDCTQY/6QS1iPgsME=;
	b=JVjU6LOb411uOj4Bocce0pP5ZgY5PKuWmRg6bW2KwgltCSsBV5anBlpFRU0vzpKW3f
	nooalhmvuPtwfbf/KPTj58AkCbpUMSkfZ94rySsn3B3m13B6uKRm4cr9Zwq2MAH+goHp
	K97WyuCdGuDsEGt/CFIZHBrKAEL2mPvYoc+Lwzo/b68h8w0CWCMxDYD9AHVaCH898cLF
	eSob8bA8RWuSIdA+8CvS/koz/77EBZ6294in7MM9qe1jeY0CVcJUI01DvPfTZbl/2HmR
	OPiynXxlDkWcSZQngUaZ4MaW20I7zTjUB4di0n+I68I692CnYZUPgAq+pAp9nJxwAYE2
	z/4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CSSfzwivDqmWXRg4XhLDsbngXgsDCTQY/6QS1iPgsME=;
	b=WaNRzUQUJJvMnZBJqBNmZZ74eY9WVXrAqIDeYyN2gnlfrUl9n3VnQMXMgW04Vq2pEY
	KsTutuCIazIXcY/ADvngEXYNELFXPgiUQM2mnwEjyyRpFe45cWnKWnQO6OJERkWVCRqt
	PufoXfo8qtHWRcWPqRq1+lXTRo5ikL+EKm752qQ+7sDC65DCHlKX87rAc37h/TWJLJw7
	7FXw4gyPEK+16a3QS41x8XTlGhV8uHI9CJ9dvF9lhUqhDcTB4TL6WulmBIWPk5JlhABc
	NsqNnMgPCllEMeRt/x7vat7jAfuKyysXu1+gfNEJr0t3BHTFG3qdgQjjAei9UHmfRS28
	V71g==
X-Gm-Message-State: APjAAAXfOzgFQIoiuBo4ceLICVRvEBZLAvDCZjq7t5TjgXR89ODaOhM8
	vcHT7LBLdUmY73HBj5Ug29fvT7P1lxoPNcxhmrp4aw==
X-Google-Smtp-Source: APXvYqxv+LfYR6QK20h/AvpJIryYNX2qPEuNB04K6tL4zEfws/TSJMOpF3iS8kPZLnUWeLEyZyhDjzrcanvYWOoDjT4=
X-Received: by 2002:a37:9d15:: with SMTP id g21mr51846150qke.343.1563997991901;
	Wed, 24 Jul 2019 12:53:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
	<352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
	<CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
	<2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
In-Reply-To: <2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
From: Russell Peterson <peterson.russell@gmail.com>
Date: Wed, 24 Jul 2019 15:53:00 -0400
Message-ID: <CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
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
X-List-Received-Date: Wed, 24 Jul 2019 19:53:13 -0000
Content-Type: multipart/alternative; boundary="000000000000bca1bb058e72a85b"

--000000000000bca1bb058e72a85b
Content-Type: text/plain; charset="UTF-8"

Hi, Rudolf.

I apologize for not being clear.  The idea here is that my recipe points to
github while, for my local development environment, I set a premirror to
match a specific github repository and translate it to a local directory.
That works.  The fetch matches the PREMIRROR and places a copy of the LOCAL
git repo in my DL_DIR.  The problem is, the do_unpack task is looking for
the git repo in the DL_DIR (git2/etc...)... but it's looking for the git
repo from github, not my local repo that the fetch task just put in DL_DIR.

There are numerous reasons I'm doing this including the fact that I cannot
put a reference to my local repo in the bb file since I ship that recipe to
my customers and a local pathname is meaningless to them.  I prefer to
simply modify my local.conf with a PREMIRROR value that has a specific
regular expression that matches this particular github repo (and hence does
NOT effect all recipes).  This is why I wanted to use the PREMIRROR
function.  Unfortunately, it does not appear to work or at least not work
as I expected.

--Russ




On Wed, Jul 24, 2019 at 2:57 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> Hi Russell,
>
> devtool and eSDK are different things. The purpose of PREMIRRORS is to set
> a mirror for all recipes. It's a way for organizations to control where
> their YP builds download sources from. It's not intended to be used for a
> single recipe. There is no need for that. You simply set SRC_URI in your
> recipe to your local git repo. That is what devtool does after downloading
> the sources from a remote repo. If you already have the remote repo cloned
> locally you can just point devtool to it.
>
> You can do it manually by creating your recipe and setting SRC_URI like
> this:
>
> SRC_URI = "git:///local/path/${PN};protocol=file"
>
> SRCREV = "${AUTOREV}"
>
> S = "${WORKDIR}/git"
>
> PREMIRRORS is only relevant for do_fetch not for do_unpack.
>
> :rjs
>
>
> On 7/24/19 11:28 AM, Russell Peterson wrote:
>
> Hi, Rudolf.
>
> Thanks for the reply.  Yes, I am aware of the eSDK functionality, however,
> I have some unique requirements that I am trying to work around.
> Regardless... what I am doing should work, no?  I simply want to use a
> local git repo (the directory itself hence protocol=file) instead of what
> the recipe specifies.  Looks like the fetch is working but the do_unpack
> task is ignoring PREMIRRORS (or at least the localpath variable seems
> wrong).
>
> --Russ
>
>
> On Wed, Jul 24, 2019 at 12:19 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
> wrote:
>
>> Russell,
>>
>> You don't need PREMIRROR for this functionality. It's not exactly
>> intended for that use.
>>
>> The simplest way to achieve what you are looking for is to use devtool.
>> If I understand you correctly you are downloading sources from a remote
>> repo on GitHub but want to have them locally to make modifications? If so
>> use:
>>
>> devtool add myrecipe localsrc fetchuri
>>
>> from your build environment (you have to source oe-init-build-env first).
>> devtool then fetches the source from fetchuri into a directory localsrc as
>> a git repo and automatically creates the recipe for it.
>>
>> :rjs
>>
>>
>> On 7/23/19 1:49 PM, Russell Peterson wrote:
>>
>> Hello,
>>
>> I am looking to have bitbake pick up files for a particular recipe from a
>> local git repository using the PREMIRROR functionality.
>>
>> Basically, the recipe (bb file) points to github but in my local build I
>> add PREMIRROR_prepend = "git://.*/.*
>> git:///local/path/BASENAME;protocol=file\n"
>>
>> I will probably make the git regular expression more exact for my
>> specific github repo but this works for now.
>>
>> This all works (as I deleted the github download from the local download
>> directory) because I can see in the do_fetch log and the correct (local)
>> repo was found and placed in the DL_DIR.
>>
>> Problem is, do_unpack fails because it appears to be looking for the
>> original (github) SRC_URI.  Then it complains about "no up to date source
>> found: clone or directory not available or not up to date (shallow clone
>> not enabled)"
>>
>> Any help on what I am missing would be appreciated.
>>
>> Regards,
>>
>> Russell
>>
>>
>>
>> --
>> -----
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3396 x700
>>
>> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
>

--000000000000bca1bb058e72a85b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Rudolf.<div><br></div><div>I apologize for not being c=
lear.=C2=A0 The idea here is that my recipe points to github while, for my =
local development environment, I set a premirror to match a specific github=
 repository and translate it to a local directory.=C2=A0 That works.=C2=A0 =
The fetch matches the PREMIRROR and places a copy of the LOCAL git repo in =
my DL_DIR.=C2=A0 The problem is, the do_unpack task is looking for the git =
repo in the DL_DIR (git2/etc...)... but it&#39;s looking for the git repo f=
rom github, not my local repo that the fetch task just put in DL_DIR.</div>=
<div><br></div><div>There are numerous reasons I&#39;m doing this including=
 the fact that I cannot put a reference to my local repo in the bb file sin=
ce I ship that recipe to my customers and a local pathname is meaningless t=
o them.=C2=A0 I prefer to simply modify my local.conf with a PREMIRROR valu=
e that has a specific regular expression that matches this particular githu=
b repo (and hence does NOT effect all recipes).=C2=A0 This is why I wanted =
to use the PREMIRROR function.=C2=A0 Unfortunately, it does not appear to w=
ork or at least not work as I expected.</div><div><br></div><div>--Russ</di=
v><div><br></div><div><br></div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019 at 2:57=
 PM Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.=
streif@ibeeto.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi Russell,</p>
    <p>devtool and eSDK are different things. The purpose of PREMIRRORS
      is to set a mirror for all recipes. It&#39;s a way for organizations
      to control where their YP builds download sources from. It&#39;s not
      intended to be used for a single recipe. There is no need for
      that. You simply set SRC_URI in your recipe to your local git
      repo. That is what devtool does after downloading the sources from
      a remote repo. If you already have the remote repo cloned locally
      you can just point devtool to it.</p>
    <p>You can do it manually by creating your recipe and setting
      SRC_URI like this:</p>
    <p>SRC_URI =3D &quot;git:///local/path/${PN};protocol=3Dfile&quot;</p>
    <p>SRCREV =3D &quot;${AUTOREV}&quot;</p>
    <p>S =3D &quot;${WORKDIR}/git&quot;</p>
    <p>PREMIRRORS is only relevant for do_fetch not for do_unpack.</p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <div class=3D"gmail-m_8158819649125888525moz-cite-prefix">On 7/24/19 11=
:28 AM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi, Rudolf.
        <div><br>
        </div>
        <div>Thanks for the reply.=C2=A0 Yes, I am aware of the eSDK
          functionality, however, I have some unique requirements that I
          am trying to work around.=C2=A0 Regardless... what I am doing
          should work, no?=C2=A0 I simply want to use a local git repo (the
          directory itself hence protocol=3Dfile) instead of what the
          recipe specifies.=C2=A0 Looks like the fetch is working but the
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019 at 12:19
          PM Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com=
" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p>Russell,</p>
            <p>You don&#39;t need PREMIRROR for this functionality. It&#39;=
s not
              exactly intended for that use.</p>
            <p>The simplest way to achieve what you are looking for is
              to use devtool. If I understand you correctly you are
              downloading sources from a remote repo on GitHub but want
              to have them locally to make modifications? If so use:</p>
            <p>devtool add myrecipe localsrc fetchuri</p>
            <p>from your build environment (you have to source
              oe-init-build-env first). devtool then fetches the source
              from fetchuri into a directory localsrc as a git repo and
              automatically creates the recipe for it.</p>
            <p>:rjs<br>
            </p>
            <p><br>
            </p>
            <div class=3D"gmail-m_8158819649125888525gmail-m_-6306057233364=
702931moz-cite-prefix">On
              7/23/19 1:49 PM, Russell Peterson wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hello,<br>
                </div>
                <div><br>
                </div>
                <div>I am looking to have bitbake pick up files for a
                  particular recipe from a local git repository using
                  the PREMIRROR functionality.</div>
                <div><br>
                </div>
                <div>Basically, the recipe (bb file) points to github
                  but in my local build I add PREMIRROR_prepend =3D
                  &quot;git://.*/.*=C2=A0
                  git:///local/path/BASENAME;protocol=3Dfile\n&quot;</div>
                <div><br>
                </div>
                <div>I will probably make the git regular expression
                  more exact for my specific github repo but this works
                  for now.</div>
                <div><br>
                </div>
                <div>This all works (as I deleted the github download
                  from the local download directory) because I can see
                  in the do_fetch log and the correct (local) repo was
                  found and placed in the DL_DIR.</div>
                <div><br>
                </div>
                <div>Problem is, do_unpack fails because it appears to
                  be looking for the original (github) SRC_URI.=C2=A0 Then =
it
                  complains about &quot;no up to date source found: clone o=
r
                  directory not available or not up to date (shallow
                  clone not enabled)&quot;</div>
                <div><br>
                </div>
                <div>Any help on what I am missing would be appreciated.</d=
iv>
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
              <fieldset class=3D"gmail-m_8158819649125888525gmail-m_-630605=
7233364702931mimeAttachmentHeader"></fieldset>
            </blockquote>
            <pre class=3D"gmail-m_8158819649125888525gmail-m_-6306057233364=
702931moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <pre class=3D"gmail-m_8158819649125888525moz-signature" cols=3D"72">--=
=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </div>

</blockquote></div>

--000000000000bca1bb058e72a85b--
