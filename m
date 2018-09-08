Return-Path: <jon.szymaniak.foss@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09158E009A4; Sat,  8 Sep 2018 16:57:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
	[209.85.222.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A06E00942
	for <yocto@yoctoproject.org>; Sat,  8 Sep 2018 16:57:53 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id m26-v6so14684216uap.2
	for <yocto@yoctoproject.org>; Sat, 08 Sep 2018 16:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:sender:from:date:message-id
	:subject:to:cc;
	bh=BAnh83pWKaq5vN6Vts/PldKLO52t3GUcbM7NwxsT3BU=;
	b=A0RDtrHCikVygjjJNL1oJLeEywL9HQEU7R54WKKDq6n0oc1odiO/ErSAPQ54gropNH
	e043Lpn86rlG+PuifGc3Z5GDxSo4p9+8qVb9tX1RiALPrW+uWpRZvtNOSHDMseiQkA4o
	dNARtXIEQTr6HKQjVxAD4PUhlIohZ8yJhCvafC3KJAjMiH2hpAhbjdKSp4fiKI5Lm23D
	WxAHm6X21u2b0+1p4xEVED6oi8yK77/9EOc9sT47a95ftZ1/b04khyaahgove/JC1n69
	5vei15BbGSo5w3cAcS0lHPj6ZDaOpzKm1TFoZM7LOwoY14Y9lRPPSaJyS/AtH9jjum56
	K4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
	:date:message-id:subject:to:cc;
	bh=BAnh83pWKaq5vN6Vts/PldKLO52t3GUcbM7NwxsT3BU=;
	b=r49exyU9AE8L1TWyJxNJI155kxciau7tZwcOps6x56PjzNUxwbjR3CDBIt2kcpdaZf
	fYqVn5RqjnQ9Xazx7tYTmiH/9dP6WGilKXLxTdb62E4+5ie4YJk6iJcoLVIc7KmHXit9
	+wdbVftzlKIUrB5K+RNKcFrmIrjV3alZ1r+v8+382lPh17fJncXVk7PDLazQZUuxDNyp
	CKVEc/oPWlQ96ktTFsM2kSue8NjWl/gIXR1XMm+DKErkjrwp8lERusZHEX8FV0cvCLL2
	rosz0xqZIZTPiBzjOg86bABlwSVvZ9FJatKy4jSfWgPewpK8gXIXT1ycxqxfmzQmqTre
	0gww==
X-Gm-Message-State: APzg51A2UCGC5sEczJFc1J4whCsbQdVg9BowTlwVVQf8fHdRMuHCqS2K
	CJsJqbGlQAte9vUgHDoiX4TN610y4k7JKXYL16TezBMB
X-Google-Smtp-Source: ANB0VdZn46j2pwpEuSpzdqvn3kQ1UgTvWcyd5fOGlNWCgqhMXIp5p10ludZEswwLx3AQhBjF9bR38k4Z0XLDX7QXjGk=
X-Received: by 2002:a67:4195:: with SMTP id
	x21-v6mr5160444vsf.12.1536451072804; 
	Sat, 08 Sep 2018 16:57:52 -0700 (PDT)
MIME-Version: 1.0
References: <c6323c5a6230ad0faea75b4f31a5e7a9@bsmucker.eu.org>
	<CAMKF1sosGoqNaosDRLvyoEcU=Z2gbiDfQ5LNktCNMh+2YgXoZA@mail.gmail.com>
	<CAPxrFVkUWDYVm0oGPceXG9nLZQUjBTDvd83XUq5ZjXMF20sUoA@mail.gmail.com>
	<01146e57ef4b7cf0847a2492acb021e4@bsmucker.eu.org>
In-Reply-To: <01146e57ef4b7cf0847a2492acb021e4@bsmucker.eu.org>
Sender: jon.szymaniak@gmail.com
X-Google-Sender-Delegation: jon.szymaniak@gmail.com
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Sat, 8 Sep 2018 18:57:41 -0500
X-Google-Sender-Auth: 5dDt-qfjQFDwbVB1fDoCXcDgsno
Message-ID: <CAPxrFVkJbjN8pUNx_pchNw-rJrRG4WtDKySLT_js4kSrJTNn8A@mail.gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: yocto@yoctoproject.org
Subject: Re: Security updates question
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
X-List-Received-Date: Sat, 08 Sep 2018 23:57:55 -0000
Content-Type: multipart/alternative; boundary="00000000000068cd63057564e451"

--00000000000068cd63057564e451
Content-Type: text/plain; charset="UTF-8"

Hi Brian,

On Sat, Sep 8, 2018 at 6:20 PM Brian Smucker <bds@bsmucker.eu.org> wrote:

> Jon,
>
> I do appreciate your insights and I am aware of some of the update
> mechanisms that are out there. At the moment we don't have a need for
> that. The need at this time is a totally new image, identical to the
> working image we have been using, except with an updated web server
> package. For the present we will use our manual update mechanism to
> update select devices  on an as-needed basis.
>
> So I am not implying by my question that I think that Yocto should have
> a way to do that kind of updating. I agree that it is out of the scope
> of the Yocto build system. And the update mechanism itself was in no
> case what prompted the question in the first place.
>
> The question was: How do people/companies deal with the problem of
> needing a new version of an existing package in a working image based on
> an old version of Yocto?
>
> Thanks again for your reply.
>
> Brian
>
>
My sincere apologies for completely misunderstanding your question.  I've
CC'd the mailing list in this response, just in an attempt to help steer
further discussion back on course, after I wandered off. :)

Here's my attempt at more useful questions and comments, at least.

1) How have the maintainers of the upstream software in question resolved
the vulnerability?
  1a) Is there a single patch, or a manageable number of patches, that you
could apply to address the vulnerability? If so, perhaps you could use a
.bbappend file [1] in your layer to append patches to SRC_URI.
  1b) Take a look at how patches are backported in release branches (e.g.
[2]) for some inspiration.

2) In the case where the version you're on does not have an easily applied
patch available, is it possible to simply pull in a recipe from a newer
version of Yocto into your own layer(s)?
  2a) Depending on the software, this might lead you down a dependency
rabbit hole, and might not be viable.
  2b) If this is possible, I wonder if it would be sane to maintain your
own layer of updated recipes you're transitioning to, as not to clutter
whatever layer(s) you use for your organization. Ideally, once you reach a
point where you could fully switch to a newer Yocto release, you could just
drop this temporary layer from your bblayers.conf and track a maintained
release.

[1]
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-bbappend-files
[2]
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=rocko&id=b33d89d5ea8604657a59b83a30c3374079c34fd2

Best regards,
Jon

--00000000000068cd63057564e451
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Brian,<br><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr">On Sat, Sep 8, 2018 at 6:20 PM Brian S=
mucker &lt;<a href=3D"mailto:bds@bsmucker.eu.org">bds@bsmucker.eu.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Jon,<b=
r>
<br>
I do appreciate your insights and I am aware of some of the update <br>
mechanisms that are out there. At the moment we don&#39;t have a need for <=
br>
that. The need at this time is a totally new image, identical to the <br>
working image we have been using, except with an updated web server <br>
package. For the present we will use our manual update mechanism to <br>
update select devices=C2=A0 on an as-needed basis.<br>
<br>
So I am not implying by my question that I think that Yocto should have <br=
>
a way to do that kind of updating. I agree that it is out of the scope <br>
of the Yocto build system. And the update mechanism itself was in no <br>
case what prompted the question in the first place.<br>
<br>
The question was: How do people/companies deal with the problem of <br>
needing a new version of an existing package in a working image based on <b=
r>
an old version of Yocto?<br>
<br>
Thanks again for your reply.<br>
<br>
Brian<br><br></blockquote><div><br></div><div>My sincere apologies for comp=
letely misunderstanding your question.=C2=A0 I&#39;ve CC&#39;d the mailing =
list in this response, just in an attempt to help steer further discussion =
back on course, after I wandered off. :)</div><div><br></div><div>Here&#39;=
s my attempt at more useful questions and comments, at least.</div><div><br=
></div><div>1) How have the maintainers of the upstream software in questio=
n resolved the vulnerability?<br></div><div>=C2=A0 1a) Is there a single pa=
tch, or a manageable number of patches, that you could apply to address the=
 vulnerability? If so, perhaps you could use a .bbappend file [1] in your l=
ayer to append patches to SRC_URI.</div><div>=C2=A0 1b) Take a look at how =
patches are backported in release branches (e.g. [2]) for some inspiration.=
</div><div><br></div><div><div>2) In the case where the version you&#39;re =
on does not have an easily applied patch available, is it possible to simpl=
y pull in a recipe from a newer version of Yocto into your own layer(s)?</d=
iv><div>=C2=A0 2a) Depending on the software, this might lead you down a de=
pendency rabbit hole, and might not be viable.</div><div>=C2=A0 2b) If this=
 is possible, I wonder if it would be sane to maintain your own layer of up=
dated recipes you&#39;re transitioning to, as not to clutter whatever layer=
(s) you use for your organization. Ideally, once you reach a point where yo=
u could fully switch to a newer Yocto release, you could just drop this tem=
porary layer from your bblayers.conf and track a maintained release.</div><=
/div><div><br></div><div>[1]=C2=A0<a href=3D"https://www.yoctoproject.org/d=
ocs/current/dev-manual/dev-manual.html#using-bbappend-files">https://www.yo=
ctoproject.org/docs/current/dev-manual/dev-manual.html#using-bbappend-files=
</a></div><div>[2]=C2=A0<a href=3D"https://git.yoctoproject.org/cgit/cgit.c=
gi/poky/commit/?h=3Drocko&amp;id=3Db33d89d5ea8604657a59b83a30c3374079c34fd2=
">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Drocko&amp;id=
=3Db33d89d5ea8604657a59b83a30c3374079c34fd2</a></div><div><br></div><div>Be=
st regards,</div><div>Jon</div></div></div></div></div>

--00000000000068cd63057564e451--
