Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F377E00D46; Thu, 25 Jul 2019 16:48:09 -0700 (PDT)
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
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34AD2E00C27
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 16:48:08 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id h21so50813703qtn.13
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 16:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=L+zJDE0onefwTO5KHvUCHxVEEemeTlD1n81dv/UQhoc=;
	b=Rgt08AJJKUgxOVO3Im6a7QAYxfFWLLScntZbWygCkgf0fgSRzeU1IS2Iw4EeA70FBc
	UUMc+8rs3ScfiXxcwQ1eZDHJTNNVRXt+wJCZ4ybpkpff9sNGjJPmxNAHWyzw4dtFUxNM
	2FZ5gobVj5fU1W49AKJyBlWWrJ+KUE+UOftvMt/P7pVPsZ4xD0wtJocQbpLyfHqpnjMR
	kMGj3iwb3Sm24/L7E9dMzPOKHwaJt+S29Nhfq5SKcbOTrD57Dp4wg24Kjn8mG5WHFcdu
	hNlxlziEHSxhRpb2RJhRtwPmb9Eeldqqcw3XJKfvUjk4l2fr9VkutISV8Ah+UBjmIETu
	o5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=L+zJDE0onefwTO5KHvUCHxVEEemeTlD1n81dv/UQhoc=;
	b=VVVBJlEMiRjobVfhEnPMzo9VFfl2wkNGWic8UIHp14eyHL/WSpLE8YfkvoQsregzTP
	hT4PSKy/xuYJPQ7h78E355vPqp3YNdY/mquWVXcplqBkJDAzse8mDJ8P8GZXKsO26Vx7
	Xjxm4kEzS10Wb5zKqRCuI/baexGVY2KoHbI271ZR9q2tnex7Yy+BElXXDufmVLOZEimW
	Mo1l2+iGjSJYJdNrDFF7l0EL4zfvb9csPO9ZwT3LkqizKYNZSbG87fpJV5ptz0B4A3yJ
	1cApsdeNfGl0g/8sux9kgmx9LiXil9Rs8pKuHrElLIctdMhR4T1hbYDEkLXGBsBXt5KN
	7OUQ==
X-Gm-Message-State: APjAAAX6cciZ0CMdmXDDRrKs9/l5L2nmq4MqhOCfkSwbkox8/TkOfyij
	ilVStsaI8IMLIokiDTYM5yP34dM3IjnvQI/masq0pg==
X-Google-Smtp-Source: APXvYqyAY18QGvlQ6RJlSHwXklZvzKrOJTaONExFBhC+LoMrFAx2thV0OBSsOvtOFEJQDmHU/l6N1cJBcGFsZQ3oBbs=
X-Received: by 2002:ac8:28e2:: with SMTP id j31mr64342571qtj.274.1564098487501;
	Thu, 25 Jul 2019 16:48:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
	<352d8e79-5b16-b711-0051-e3dc27e90f75@ibeeto.com>
	<CAJxG=fnT7e=Hi_-iyDzbut0Re_8s-Di=M4Tenfpr+rNAuNbSrg@mail.gmail.com>
	<2297ce7c-f2a5-406e-2b0a-d0aa82fbcf0a@ibeeto.com>
	<CAJxG=f=2M-gPijCZOgCi2j_fa3FF+TCMOZKUHvtLL9gz9mQiWw@mail.gmail.com>
	<4c4105c4-fdea-d8e0-2c02-11543baf55f5@ibeeto.com>
	<CAJxG=fmY6LcxMq9RF1Hikn1QvNe+Jr+C4EJvBqwmQZzhHwS6Tg@mail.gmail.com>
	<edce70c6-8b35-3e26-60e8-eb8c433e08fa@ibeeto.com>
In-Reply-To: <edce70c6-8b35-3e26-60e8-eb8c433e08fa@ibeeto.com>
From: Russell Peterson <peterson.russell@gmail.com>
Date: Thu, 25 Jul 2019 19:48:18 -0400
Message-ID: <CAJxG=fm2V2Yc1WdTh2b2psgqk7VVQu+5NJ3gWkvD1LpawUQZNw@mail.gmail.com>
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
X-List-Received-Date: Thu, 25 Jul 2019 23:48:09 -0000
Content-Type: multipart/alternative; boundary="000000000000bdc9b8058e8a0e7e"

--000000000000bdc9b8058e8a0e7e
Content-Type: text/plain; charset="UTF-8"

Just tried the externalsrc feature.  Works perfectly.  Exactly what I was
looking for.  Thanks so much, Rudolf!

--Russ


On Thu, Jul 25, 2019 at 4:59 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> Inlining below.
> On 7/25/19 8:14 AM, Russell Peterson wrote:
>
> I think I have a somewhat better understanding of what is going on.
>
> First off, I was confused by the fact that the original error message I
> saw from do_unpack referenced the file (URL) at
> DL_DIR/git2/original_github_url.  What I didn't understand at the time was
> that while that file existed,* it was actually a link* to
> DL_DIR/git2/local_url.  So, do_unpack wasn't looking at the wrong bare
> repository as I thought.  It was unhappy because it didn't see the git
> commit in the local repo that it was looking for.  I use AUTOREV for
> SRCREV.  Apparently, even with PREMIRROR set and matched, bitbake will
> still fetch the git HEAD commit hash from the original URL in the recipe.
> The local git repo doesn't contain that commit.  When I sync the local git
> repo to the github repo things work as expected.
>
> Correct. If the source repo or the correct commit cannot be found from the
> PREMIRROR, bitbake will use SRC_URI from the recipe. You can block that
> behavior by setting BB_NO_NETWORK = "1" in which case bitbake will not be
> able to connect to any remote server. However, that does not help if your
> PREMIRROR is a network server. In this case use BB_ALLOWED_HOSTS to allow
> access to only the servers you want.
>
>
> Here is my problem.  What I am ultimately trying to do here is have 2 git
> repos.  1 public, 1 private.  For internal development we use the private
> git repo (a local gerrit server).  Just before we ship we update the public
> github repo.  The recipe always points to the github (public) repo so we
> don't need to mess with that before a release.  This way we can do nightly
> builds (I'm just talking nightly builds done by Jenkins... not developers
> using eSDK and devtool) and test.  Customers using yocto will be given a
> recipe that points to github and, importantly, those customers that do NOT
> use yocto simply fetch the project from github and manually build it in
> their own environment with their own tools.
>
> That is a common problem. I do this all the time. To do this add to your
> conf/local.conf file:
>
> INHERIT += "externalsrc"
> EXTERNALSRC_pn-myrecipe = "/path/to/source/tree"
>
> Alternatively, you could use a bbappend file for you recipe in a
> development layer, myrecipe.bbappend:
>
> inherit externalsrc
> EXTERNALSRC = "/path/to/source/tree"
>
> Now, that is exactly what devtool does for you but you can of course do it
> manually.
>
> :rjs
>
>
>
> I can't be the only one doing this.  Is there a best practices here
> (private vs. public repo)?
>
> --Russ
>
>
> On Wed, Jul 24, 2019 at 3:55 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
> wrote:
>
>> Russell,
>>
>> That is exactly what devtool and the externalsrc class do. PREMIRROR is
>> the wrong approach for that.
>>
>> :rjs
>> On 7/24/19 12:53 PM, Russell Peterson wrote:
>>
>> Hi, Rudolf.
>>
>> I apologize for not being clear.  The idea here is that my recipe points
>> to github while, for my local development environment, I set a premirror to
>> match a specific github repository and translate it to a local directory.
>> That works.  The fetch matches the PREMIRROR and places a copy of the LOCAL
>> git repo in my DL_DIR.  The problem is, the do_unpack task is looking for
>> the git repo in the DL_DIR (git2/etc...)... but it's looking for the git
>> repo from github, not my local repo that the fetch task just put in DL_DIR.
>>
>> There are numerous reasons I'm doing this including the fact that I
>> cannot put a reference to my local repo in the bb file since I ship that
>> recipe to my customers and a local pathname is meaningless to them.  I
>> prefer to simply modify my local.conf with a PREMIRROR value that has a
>> specific regular expression that matches this particular github repo (and
>> hence does NOT effect all recipes).  This is why I wanted to use the
>> PREMIRROR function.  Unfortunately, it does not appear to work or at least
>> not work as I expected.
>>
>> --Russ
>>
>>
>>
>>
>> On Wed, Jul 24, 2019 at 2:57 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
>> wrote:
>>
>>> Hi Russell,
>>>
>>> devtool and eSDK are different things. The purpose of PREMIRRORS is to
>>> set a mirror for all recipes. It's a way for organizations to control where
>>> their YP builds download sources from. It's not intended to be used for a
>>> single recipe. There is no need for that. You simply set SRC_URI in your
>>> recipe to your local git repo. That is what devtool does after downloading
>>> the sources from a remote repo. If you already have the remote repo cloned
>>> locally you can just point devtool to it.
>>>
>>> You can do it manually by creating your recipe and setting SRC_URI like
>>> this:
>>>
>>> SRC_URI = "git:///local/path/${PN};protocol=file"
>>>
>>> SRCREV = "${AUTOREV}"
>>>
>>> S = "${WORKDIR}/git"
>>>
>>> PREMIRRORS is only relevant for do_fetch not for do_unpack.
>>>
>>> :rjs
>>>
>>>
>>> On 7/24/19 11:28 AM, Russell Peterson wrote:
>>>
>>> Hi, Rudolf.
>>>
>>> Thanks for the reply.  Yes, I am aware of the eSDK functionality,
>>> however, I have some unique requirements that I am trying to work around.
>>> Regardless... what I am doing should work, no?  I simply want to use a
>>> local git repo (the directory itself hence protocol=file) instead of what
>>> the recipe specifies.  Looks like the fetch is working but the do_unpack
>>> task is ignoring PREMIRRORS (or at least the localpath variable seems
>>> wrong).
>>>
>>> --Russ
>>>
>>>
>>> On Wed, Jul 24, 2019 at 12:19 PM Rudolf J Streif <
>>> rudolf.streif@ibeeto.com> wrote:
>>>
>>>> Russell,
>>>>
>>>> You don't need PREMIRROR for this functionality. It's not exactly
>>>> intended for that use.
>>>>
>>>> The simplest way to achieve what you are looking for is to use devtool.
>>>> If I understand you correctly you are downloading sources from a remote
>>>> repo on GitHub but want to have them locally to make modifications? If so
>>>> use:
>>>>
>>>> devtool add myrecipe localsrc fetchuri
>>>>
>>>> from your build environment (you have to source oe-init-build-env
>>>> first). devtool then fetches the source from fetchuri into a directory
>>>> localsrc as a git repo and automatically creates the recipe for it.
>>>>
>>>> :rjs
>>>>
>>>>
>>>> On 7/23/19 1:49 PM, Russell Peterson wrote:
>>>>
>>>> Hello,
>>>>
>>>> I am looking to have bitbake pick up files for a particular recipe from
>>>> a local git repository using the PREMIRROR functionality.
>>>>
>>>> Basically, the recipe (bb file) points to github but in my local build
>>>> I add PREMIRROR_prepend = "git://.*/.*
>>>> git:///local/path/BASENAME;protocol=file\n"
>>>>
>>>> I will probably make the git regular expression more exact for my
>>>> specific github repo but this works for now.
>>>>
>>>> This all works (as I deleted the github download from the local
>>>> download directory) because I can see in the do_fetch log and the correct
>>>> (local) repo was found and placed in the DL_DIR.
>>>>
>>>> Problem is, do_unpack fails because it appears to be looking for the
>>>> original (github) SRC_URI.  Then it complains about "no up to date source
>>>> found: clone or directory not available or not up to date (shallow clone
>>>> not enabled)"
>>>>
>>>> Any help on what I am missing would be appreciated.
>>>>
>>>> Regards,
>>>>
>>>> Russell
>>>>
>>>>
>>>>
>>>> --
>>>> -----
>>>> Rudolf J Streif
>>>> CEO/CTO ibeeto
>>>> +1.855.442.3396 x700
>>>>
>>>> --
>>> -----
>>> Rudolf J Streif
>>> CEO/CTO ibeeto
>>> +1.855.442.3396 x700
>>>
>>> --
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

--000000000000bdc9b8058e8a0e7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just tried the externalsrc feature.=C2=A0 Works perfectly.=
=C2=A0 Exactly what I was looking for.=C2=A0 Thanks so much, Rudolf!<div><b=
r></div><div>--Russ</div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, 2019 at 4:59 PM Rud=
olf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@=
ibeeto.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Inlining below.<br>
    </p>
    <div class=3D"gmail-m_-8746796073981798664moz-cite-prefix">On 7/25/19 8=
:14 AM, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">I think I have a somewhat better understanding of
        what is going on.
        <div><br>
        </div>
        <div>First off, I was confused by the fact that the original
          error message I saw from do_unpack referenced the file (URL)
          at DL_DIR/git2/original_github_url.=C2=A0 What I didn&#39;t under=
stand
          at the time was that while that file existed,<i> it was
            actually a link</i> to DL_DIR/git2/local_url.=C2=A0 So, do_unpa=
ck
          wasn&#39;t looking at the wrong bare repository as I thought.=C2=
=A0 It
          was unhappy because it didn&#39;t see the git commit in the local
          repo that it was looking for.=C2=A0 I use AUTOREV for SRCREV.=C2=
=A0
          Apparently, even with PREMIRROR set and matched, bitbake will
          still fetch the git HEAD commit hash from the original URL in
          the recipe.=C2=A0 The local git repo doesn&#39;t contain that com=
mit.=C2=A0
          When I sync the local git repo to the github repo things work
          as expected.</div>
      </div>
    </blockquote>
    Correct. If the source repo or the correct commit cannot be found
    from the PREMIRROR, bitbake will use SRC_URI from the recipe. You
    can block that behavior by setting BB_NO_NETWORK =3D &quot;1&quot; in w=
hich case
    bitbake will not be able to connect to any remote server. However,
    that does not help if your PREMIRROR is a network server. In this
    case use BB_ALLOWED_HOSTS to allow access to only the servers you
    want.<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Here is my problem.=C2=A0 What I am ultimately trying to do he=
re
          is have 2 git repos.=C2=A0 1 public, 1 private.=C2=A0 For interna=
l
          development we use the private git repo (a local gerrit
          server).=C2=A0 Just before we ship we update the public github
          repo.=C2=A0 The recipe always points to the github (public) repo =
so
          we don&#39;t need to mess with that before a release.=C2=A0 This =
way we
          can do nightly builds (I&#39;m just talking nightly builds done b=
y
          Jenkins... not developers using eSDK and devtool) and test.=C2=A0
          Customers using yocto will be given a recipe that points to
          github and, importantly, those customers that do NOT use yocto
          simply fetch the project from github and manually build it in
          their own environment with their own tools.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <p>That is a common problem. I do this all the time. To do this add
      to your conf/local.conf file:</p>
    <p>INHERIT +=3D &quot;externalsrc&quot;<br>
      EXTERNALSRC_pn-myrecipe =3D &quot;/path/to/source/tree&quot;</p>
    <p>Alternatively, you could use a bbappend file for you recipe in a
      development layer, myrecipe.bbappend:</p>
    <p>inherit externalsrc<br>
      EXTERNALSRC =3D &quot;/path/to/source/tree&quot;</p>
    <p>Now, that is exactly what devtool does for you but you can of
      course do it manually.<br>
    </p>
    <p>:rjs<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>I can&#39;t be the only one doing this.=C2=A0 Is there a best
          practices here (private vs. public repo)?</div>
        <div><br>
        </div>
        <div>--Russ</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019 at 3:55
          PM Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com=
" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p>Russell,</p>
            <p>That is exactly what devtool and the externalsrc class
              do. PREMIRROR is the wrong approach for that.</p>
            <p>:rjs<br>
            </p>
            <div class=3D"gmail-m_-8746796073981798664gmail-m_-890024522276=
0043816moz-cite-prefix">On
              7/24/19 12:53 PM, Russell Peterson wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi, Rudolf.
                <div><br>
                </div>
                <div>I apologize for not being clear.=C2=A0 The idea here i=
s
                  that my recipe points to github while, for my local
                  development environment, I set a premirror to match a
                  specific github repository and translate it to a local
                  directory.=C2=A0 That works.=C2=A0 The fetch matches the
                  PREMIRROR and places a copy of the LOCAL git repo in
                  my DL_DIR.=C2=A0 The problem is, the do_unpack task is
                  looking for the git repo in the DL_DIR
                  (git2/etc...)... but it&#39;s looking for the git repo
                  from github, not my local repo that the fetch task
                  just put in DL_DIR.</div>
                <div><br>
                </div>
                <div>There are numerous reasons I&#39;m doing this includin=
g
                  the fact that I cannot put a reference to my local
                  repo in the bb file since I ship that recipe to my
                  customers and a local pathname is meaningless to
                  them.=C2=A0 I prefer to simply modify my local.conf with =
a
                  PREMIRROR value that has a specific regular expression
                  that matches this particular github repo (and hence
                  does NOT effect all recipes).=C2=A0 This is why I wanted =
to
                  use the PREMIRROR function.=C2=A0 Unfortunately, it does
                  not appear to work or at least not work as I expected.</d=
iv>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019
                  at 2:57 PM Rudolf J Streif &lt;<a href=3D"mailto:rudolf.s=
treif@ibeeto.com" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <p>Hi Russell,</p>
                    <p>devtool and eSDK are different things. The
                      purpose of PREMIRRORS is to set a mirror for all
                      recipes. It&#39;s a way for organizations to control
                      where their YP builds download sources from. It&#39;s
                      not intended to be used for a single recipe. There
                      is no need for that. You simply set SRC_URI in
                      your recipe to your local git repo. That is what
                      devtool does after downloading the sources from a
                      remote repo. If you already have the remote repo
                      cloned locally you can just point devtool to it.</p>
                    <p>You can do it manually by creating your recipe
                      and setting SRC_URI like this:</p>
                    <p>SRC_URI =3D &quot;git:///local/path/${PN};protocol=
=3Dfile&quot;</p>
                    <p>SRCREV =3D &quot;${AUTOREV}&quot;</p>
                    <p>S =3D &quot;${WORKDIR}/git&quot;</p>
                    <p>PREMIRRORS is only relevant for do_fetch not for
                      do_unpack.</p>
                    <p>:rjs<br>
                    </p>
                    <p><br>
                    </p>
                    <div class=3D"gmail-m_-8746796073981798664gmail-m_-8900=
245222760043816gmail-m_8158819649125888525moz-cite-prefix">On
                      7/24/19 11:28 AM, Russell Peterson wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Hi, Rudolf.
                        <div><br>
                        </div>
                        <div>Thanks for the reply.=C2=A0 Yes, I am aware of
                          the eSDK functionality, however, I have some
                          unique requirements that I am trying to work
                          around.=C2=A0 Regardless... what I am doing shoul=
d
                          work, no?=C2=A0 I simply want to use a local git
                          repo (the directory itself hence
                          protocol=3Dfile) instead of what the recipe
                          specifies.=C2=A0 Looks like the fetch is working
                          but the do_unpack task is ignoring PREMIRRORS
                          (or at least the localpath variable seems
                          wrong).</div>
                        <div><br>
                        </div>
                        <div>--Russ</div>
                        <div><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul
                          24, 2019 at 12:19 PM Rudolf J Streif &lt;<a href=
=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank">rudolf.streif@ibeeto=
.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div bgcolor=3D"#FFFFFF">
                            <p>Russell,</p>
                            <p>You don&#39;t need PREMIRROR for this
                              functionality. It&#39;s not exactly intended
                              for that use.</p>
                            <p>The simplest way to achieve what you are
                              looking for is to use devtool. If I
                              understand you correctly you are
                              downloading sources from a remote repo on
                              GitHub but want to have them locally to
                              make modifications? If so use:</p>
                            <p>devtool add myrecipe localsrc fetchuri</p>
                            <p>from your build environment (you have to
                              source oe-init-build-env first). devtool
                              then fetches the source from fetchuri into
                              a directory localsrc as a git repo and
                              automatically creates the recipe for it.</p>
                            <p>:rjs<br>
                            </p>
                            <p><br>
                            </p>
                            <div class=3D"gmail-m_-8746796073981798664gmail=
-m_-8900245222760043816gmail-m_8158819649125888525gmail-m_-6306057233364702=
931moz-cite-prefix">On
                              7/23/19 1:49 PM, Russell Peterson wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div>Hello,<br>
                                </div>
                                <div><br>
                                </div>
                                <div>I am looking to have bitbake pick
                                  up files for a particular recipe from
                                  a local git repository using the
                                  PREMIRROR functionality.</div>
                                <div><br>
                                </div>
                                <div>Basically, the recipe (bb file)
                                  points to github but in my local build
                                  I add PREMIRROR_prepend =3D
                                  &quot;git://.*/.*=C2=A0
                                  git:///local/path/BASENAME;protocol=3Dfil=
e\n&quot;</div>
                                <div><br>
                                </div>
                                <div>I will probably make the git
                                  regular expression more exact for my
                                  specific github repo but this works
                                  for now.</div>
                                <div><br>
                                </div>
                                <div>This all works (as I deleted the
                                  github download from the local
                                  download directory) because I can see
                                  in the do_fetch log and the correct
                                  (local) repo was found and placed in
                                  the DL_DIR.</div>
                                <div><br>
                                </div>
                                <div>Problem is, do_unpack fails because
                                  it appears to be looking for the
                                  original (github) SRC_URI.=C2=A0 Then it
                                  complains about &quot;no up to date sourc=
e
                                  found: clone or directory not
                                  available or not up to date (shallow
                                  clone not enabled)&quot;</div>
                                <div><br>
                                </div>
                                <div>Any help on what I am missing would
                                  be appreciated.</div>
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
                              <fieldset class=3D"gmail-m_-87467960739817986=
64gmail-m_-8900245222760043816gmail-m_8158819649125888525gmail-m_-630605723=
3364702931mimeAttachmentHeader"></fieldset>
                            </blockquote>
                            <pre class=3D"gmail-m_-8746796073981798664gmail=
-m_-8900245222760043816gmail-m_8158819649125888525gmail-m_-6306057233364702=
931moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <pre class=3D"gmail-m_-8746796073981798664gmail-m_-8900=
245222760043816gmail-m_8158819649125888525moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <pre class=3D"gmail-m_-8746796073981798664gmail-m_-890024522276=
0043816moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <pre class=3D"gmail-m_-8746796073981798664moz-signature" cols=3D"72">--=
=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </div>

</blockquote></div>

--000000000000bdc9b8058e8a0e7e--
