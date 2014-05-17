Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA4B5E00B65; Sat, 17 May 2014 13:17:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f172.google.com (unknown [209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9544BE00B20
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 13:17:13 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id tp5so946917ieb.31
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 13:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8f7u7wTEyAEqJp9eOItz38PGZdrZP4fdP6tnNZ58qZ0=;
	b=eQQrvnTN5/SJ7/yPpEZO7Cs+2K1R9egUsaHesuWy+1mGSDn0ZNLIW78aZOw/IzVUiW
	jMW72ygIAjSaWouG6V1ulMg0MAqh004QdSLuZTyZz2JjQMrX+RjXPJjgZshf+PtwZCUY
	c0r2rJeoiXf/BvUVDZ3qkbqwajdiPqNWEL3w9yq7OAlOz65PxX31v/n676fwxoGuNbqn
	KX11z2hxC/HN8FemF2bol5oFeNXw1naUtY8SMjtnyfn1Umj613yvx7+yVW3YhqfLOWFC
	wDDAkdCVbovTmuJsUepzVDSMi+YcERn3ySZ4aAeM7z0JR23Bu3yeuvC9qw02UGcJkdoX
	O7Xw==
MIME-Version: 1.0
X-Received: by 10.42.31.134 with SMTP id z6mr24883643icc.9.1400357833429; Sat,
	17 May 2014 13:17:13 -0700 (PDT)
Received: by 10.64.228.141 with HTTP; Sat, 17 May 2014 13:17:13 -0700 (PDT)
Received: by 10.64.228.141 with HTTP; Sat, 17 May 2014 13:17:13 -0700 (PDT)
In-Reply-To: <CABcZANknNHPuikqAgOe=0WWgDON9mb=TTdyqX5Ap30Jh+v+epQ@mail.gmail.com>
References: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
	<CABcZANknNHPuikqAgOe=0WWgDON9mb=TTdyqX5Ap30Jh+v+epQ@mail.gmail.com>
Date: Sat, 17 May 2014 16:17:13 -0400
Message-ID: <CAAPegz1nmK+A0ECf7oKNPkTS+MkU5pPm7Dy-+nELM=uzO+q5Pw@mail.gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org
Subject: Re: git.py support for submodules
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
X-List-Received-Date: Sat, 17 May 2014 20:17:17 -0000
Content-Type: multipart/alternative; boundary=bcaec517c9ec3858c204f99e37f6

--bcaec517c9ec3858c204f99e37f6
Content-Type: text/plain; charset=UTF-8

On May 17, 2014 3:58 PM, "Christopher Larson" <clarson@kergoth.com> wrote:
>
>
>
> On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com> wrote:
>>
>> Hello.
>>
>> I noticed that git.py doesn't seem to have support for submodules. I
worked around this in my recipe by adding a pre configure step but I was
wondering if a patch to add another option to git.py to fetch submodules
would make sense and be welcomed (pending it's implementation of course).
>
>
>  See gitsm.py.
>
>
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

I couldn't actually figure out how to use it. I looked at the code and
wasn't sure how it war supposed to do or what it was for.

Chris

--bcaec517c9ec3858c204f99e37f6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On May 17, 2014 3:58 PM, &quot;Christopher Larson&quot; &lt;<a href=3D"mail=
to:clarson@kergoth.com">clarson@kergoth.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Saturday, May 17, 2014, Chris Morgan &lt;<a href=3D"mailto:chmorgan=
@gmail.com">chmorgan@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello.<br>
&gt;&gt;<br>
&gt;&gt; I noticed that git.py doesn&#39;t seem to have support for submodu=
les. I worked around this in my recipe by adding a pre configure step but I=
 was wondering if a patch to add another option to git.py to fetch submodul=
es would make sense and be welcomed (pending it&#39;s implementation of cou=
rse).<br>

&gt;<br>
&gt;<br>
&gt; =C2=A0See gitsm.py.<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Christopher Larson<br>
&gt; clarson at kergoth dot com<br>
&gt; Founder - BitBake, OpenEmbedded, OpenZaurus<br>
&gt; Maintainer - Tslib<br>
&gt; Senior Software Engineer, Mentor Graphics<br></p>
<p dir=3D"ltr">I couldn&#39;t actually figure out how to use it. I looked a=
t the code and wasn&#39;t sure how it war supposed to do or what it was for=
.</p>
<p dir=3D"ltr">Chris</p>

--bcaec517c9ec3858c204f99e37f6--
