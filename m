Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77AAFE00566; Wed, 22 Aug 2018 23:53:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tmichalski23[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07103E00529
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 23:53:56 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id p81-v6so6303411itp.1
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 23:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:cc; 
	bh=6eLEc2K/WO2xyDfi6NW/IE37Zl+WER5kHBZsxg6iV3I=;
	b=FSCI7Bvypk/914JyD8M3CGpBG26TWvFy6lJOLofIOqlMf7AQHoy+9PEdLRSx6WNYkl
	r8WbP1auGYO9beaz4tc6GMDPanZz77EHVtcgvhQTOFUZLmTHnp6Y1mgj7OL6Faqv/B2w
	PDBTPx/4mDG9oT5xb4Dqo6EE1d2oDyAc8AKhHGH4CIY7H5gEarROPXxMI7rOTKMf1+Jn
	rEXxTLkI+kS2hLjbLFAqWMKyGLcEF8IsxyztPYsorR8c5Em/aSnLrHWhQS3v8zY4/u24
	tX6/Iak0D50426iOjB8SZ0jYxc5iUlymJ+HX3MkvVhkwvl/iKpwhcBP5Bzd203ERcXJ9
	nokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:cc;
	bh=6eLEc2K/WO2xyDfi6NW/IE37Zl+WER5kHBZsxg6iV3I=;
	b=Ygubiyzcm5X+tgsM9kCtg8zVRhkZ0kWY8J0M3KFzCiKJF8F4C2+/ChoYIw4ls0p4dc
	oWz2tXXM6gLNWRUCfuqYHkbQliq74vi6eoGL4vfKVdHeLt9Tj4o5eZUrqa8KN6IsSVv9
	ZVDfUuoQ/71BtSpePB4gxhtSMENmiXL8inUuPsMPQN3qMmwmvI6oIf1si4qQiMvcMZr1
	qvQaCjIamfavb3OpseWTWiofez5h3mcyAZ2NiI5um/w23SDJJ+60Lmse83JF40hcSPxI
	wAz8bLNgjdI4iHqy2Y/SOaERtCyIr5+C8kdFY30tabG+6K79EQ0MbZM5korXHGB9HfFS
	yYXA==
X-Gm-Message-State: APzg51DjwR5FvIAk4wFEzwCz3VkrrrLAGfowrZ3bb7gBRcoo3I8kU2I2
	1FHvWRoy5z3qsVVDIqugl7kIvMDcdA6LLSagHiFDKbRjRsQ=
X-Google-Smtp-Source: ANB0VdZywIDl4zRoe2WfzadXJkzCVGBK5gMb5flr2FxknfipuvabcD0DV5gv4kycORysk19M8TpjwGj0SRjWOMDZ6IY=
X-Received: by 2002:a02:dc8:: with SMTP id
	191-v6mr8445016jax.117.1535007236148; 
	Wed, 22 Aug 2018 23:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAE5v_r+EZ97Lhjwwo4i7dwy1M7VRm+Lq6pZUsgyi8eNRH6wpew@mail.gmail.com>
	<3b978c0e-5f3c-4501-20ea-c9d5b8d19885@3mdeb.com>
In-Reply-To: <3b978c0e-5f3c-4501-20ea-c9d5b8d19885@3mdeb.com>
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Thu, 23 Aug 2018 08:53:44 +0200
Message-ID: <CAE5v_r+kgSb1z_WjKSCpvq+tm2bCqAK=duAbEoQcHUqA4p3tgg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: require/include recipe.bb
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
X-List-Received-Date: Thu, 23 Aug 2018 06:53:57 -0000
Content-Type: multipart/alternative; boundary="00000000000009f286057414b942"

--00000000000009f286057414b942
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi
Moving common implementation to inc can be the case. However this what
cannot be moved to common part is:
SRCREV =3D "v1.2.4"
PR =3D "r125"
When I change something in the code related to recipe1.2.4.bb and add new
version of recipe1.2.5.bb this would require me to also update version of
otherRecipe.
I wanted to have recipe versioned and otherRecipe not versioned, that is
why I searched something like include recipe_%.bb.
For now I have in otherRecipe include recipe1.0.0.bb.

=C5=9Br., 22 sie 2018 o 16:57 Maciej Pijanowski <maciej.pijanowski@3mdeb.co=
m>
napisa=C5=82(a):

> How about moving the common part which is supposed to get included into
> the `.inc` file?
> To be fair, I have not seen any case of `include` or `require` statement
> with a recipe (.bb) file
> rather than with the (`.inc`) file. Did you?
>
> On 22.08.2018 15:34, Tomasz Michalski wrote:
>
> Hi
> I have recipes:
> recipe_1.0.0.bb
> recipe_1.0.1.bb
> ...
> recipe_3.4.0.bb
> If in some meta-layer I want to write some bbappend file to the latest
> fresh version I create file
> recipe_%.bbappend.
>
> I have file otherRecipe.bb which is not versioned and inherit to
> auto_package_version.
> In definition of otherRecipe I have
>
> DESCRIPTION =3D "some description"
> SECTION =3D "nameOfSection"
> LICENSE =3D "CLOSED"
>
> require recipe_1.0.0.bb
> (or
> include recipe_1.0.0.bb)
>
> How to change the above formula in order include the latest fresh recipe
> instead of concrete version?
> Replacing with "include recipe_%.bb" doesn't work.
>
>
>
>
>
> --
> Maciej Pijanowski
> Embedded Systems Engineerhttp://3mdeb.com | @3mdeb_com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000009f286057414b942
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div>Moving common implementation to inc can be the case=
. However this what cannot be moved to common part is:</div><div><div>SRCRE=
V =3D &quot;v1.2.4&quot;</div><div>PR =3D &quot;r125&quot;</div></div><div>=
When I change something in the code related to <a href=3D"http://recipe1.2.=
4.bb">recipe1.2.4.bb</a> and add new version of <a href=3D"http://recipe1.2=
.5.bb">recipe1.2.5.bb</a> this would require me to also update version of o=
therRecipe.<br></div><div>I wanted to have recipe versioned and otherRecipe=
 not versioned, that is why I searched something like include recipe_%.bb.<=
/div><div>For now I have in otherRecipe include <a href=3D"http://recipe1.0=
.0.bb">recipe1.0.0.bb</a>.</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">=C5=9Br., 22 sie 2018 o 16:57=C2=A0Maciej Pijanowski &lt;<a href=
=3D"mailto:maciej.pijanowski@3mdeb.com">maciej.pijanowski@3mdeb.com</a>&gt;=
 napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>How about moving the common part which is supposed to get
      included into the `.inc` file?<br>
      To be fair, I have not seen any case of `include` or `require`
      statement with a recipe (.bb) file<br>
      rather than with the (`.inc`) file. Did you?<br>
    </p>
    <br>
    <div class=3D"m_-220808979049896472moz-cite-prefix">On 22.08.2018 15:34=
, Tomasz Michalski
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi
        <div>I have recipes:</div>
        <div><a href=3D"http://recipe_1.0.0.bb" target=3D"_blank">recipe_1.=
0.0.bb</a></div>
        <div>
          <span style=3D"font-size:small;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline"><a href=3D"http://recipe_1.0.1.bb" target=3D"_blank">recipe_1.0=
.1.bb</a></span>
          <br>
        </div>
        <div>...</div>
        <div>
          <span style=3D"font-size:small;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline"><a href=3D"http://recipe_3.4.0.bb" target=3D"_blank">recipe_3.4=
.0.bb</a></span>
          <br>
        </div>
        <div>If in some meta-layer I want to write some bbappend file to
          the latest fresh version I create file</div>
        <div>recipe_%.bbappend.</div>
        <div><br>
        </div>
        <div>I have file otherRecipe.bb which is not versioned and
          inherit to auto_package_version.</div>
        <div>In definition of otherRecipe I have</div>
        <div><br>
        </div>
        <div>
          <div>DESCRIPTION =3D &quot;some description&quot;</div>
          <div>SECTION =3D &quot;nameOfSection&quot;</div>
          <div>LICENSE =3D &quot;CLOSED&quot;</div>
        </div>
        <div><br>
        </div>
        <div>require <a href=3D"http://recipe_1.0.0.bb" target=3D"_blank">r=
ecipe_1.0.0.bb</a></div>
        <div>(or</div>
        <div>include <a href=3D"http://recipe_1.0.0.bb" target=3D"_blank">r=
ecipe_1.0.0.bb</a>)</div>
        <div><br>
        </div>
        <div>How to change the above formula in order include the latest
          fresh recipe instead of concrete version?</div>
        <div>Replacing with &quot;include recipe_%.bb&quot; doesn&#39;t wor=
k.</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"m_-220808979049896472mimeAttachmentHeader"></field=
set>
      <br>
    </blockquote>
    <br>
    <pre class=3D"m_-220808979049896472moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"m_-220808979049896472moz-txt-link-freetext" href=3D"http://3mde=
b.com" target=3D"_blank">http://3mdeb.com</a> | @3mdeb_com</pre>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000009f286057414b942--
