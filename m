Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF7AE00D44; Wed, 22 May 2019 17:21:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEE21E00C14
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 17:21:38 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id w37so6422192edw.4
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 17:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KJ2MGsKiV9vj5iU4CNr1ZY9XXBvQAIWFeF1wFsa4oSk=;
	b=Dnx2JFAAC5JdClJDVtwpkmXrj2/K84agHkDdMZRM1hBe6es9SoSznZjQZSu1r+99YB
	oeScc7LWeglhQhjhkfFqogfOFTgjqod/VDZUMwc9L59DsvZypWY+QN3ZNc4NTVX9tyJW
	of9/Ip9YXLkp2yIHaVcbaHCmWQGbaQVcew8k89EaM+Vix/HFzvdg05mWk3+Dcxr8p8Po
	pGW+Ck8mHpUWW3+aS3aNG+FokFCvQRQt53Mjql0imIEtVmAr3uX/SjOXmBuxiMJ9fYiP
	4hfvQZyf7n8I0e5mvmt3GEsXDqDVlOLHB9Y1MFSLOoqxixvpdTB7c4UipqAy5I70G93Y
	eN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KJ2MGsKiV9vj5iU4CNr1ZY9XXBvQAIWFeF1wFsa4oSk=;
	b=GrfzD8+b23xsLF5L08e0wZSvc+7G1kOIjn5RLyXYYWFPaliedhjk5cqQGXzI5EYlGD
	qzZNYvF3ZA7BC4JtTW5jKNSqvzx7tYxEY1LdJOQwfYkQbroFyszTgzg21lqsJg5fztPf
	rU96oJwYVUc4/FN1t4WGlH2dKJmS0rXOWuSzaEiL76oStEWCc8vDpSlAj7MXNwuZMK5T
	VlFv49NLpW6o0UKThJLEGFBqRxN2/Q5AA+O528R5Aw+hHoxxU1uIvxvZ+Nx4svZpfkD/
	QQQwrELOY3H+T+39aTKMyE/nm/HRlkBsmn1LsFPBNrYjwPH/F/RqoEcLgrEP8U/hSONY
	DZ1w==
X-Gm-Message-State: APjAAAU0PkFWW/gsBBTDBj09t841Sd43tQ6YKGCOamQW0MO+vOb+q9w4
	OSMsm3/t7kvP4HuTPjGdu+Ue6jcFFKr0zwbs51Q3JUiL
X-Google-Smtp-Source: APXvYqymocBlwRPo73pRWy/IfGartiDnLKrqHYPsb0KWkEYZFrerqJczGfwyLB9XO6QoaNfo5WtEPu2vTFYwK6lUVMc=
X-Received: by 2002:a05:6402:180b:: with SMTP id
	g11mr94291246edy.268.1558570898090; 
	Wed, 22 May 2019 17:21:38 -0700 (PDT)
MIME-Version: 1.0
References: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
In-Reply-To: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 22 May 2019 17:21:25 -0700
Message-ID: <CAFNP8Otu94ncfmc=x8D0myzqJWNp6A_O22ihY+DnO6NJLzXcZw@mail.gmail.com>
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: distrodata documentation in 2.7 Mega Manual
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
X-List-Received-Date: Thu, 23 May 2019 00:21:41 -0000
Content-Type: multipart/alternative; boundary="000000000000bcefe80589831076"

--000000000000bcefe80589831076
Content-Type: text/plain; charset="UTF-8"

I can take the section in the ref-manual for the "distrodata.bbclass" out.
However, I could use some clarifications on the following areas where
"distrdata" is referenced.  I don't think I can just remove all of the
terms.

Here they are:

 * In dev-manual's "Using the Auto Upgrade Helper (AUH)" section -
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#gs-using-the-auto-upgrade-helper:
Step 5 talks about making configurations in the local.conf file.  First
thing is to enable "distrodata" by inheriting the class.  Do we have an
equivalent for this now that the class is gone?

* in ref-manual's "do_distrodata" task section -
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-distrodata:
Does this task disappear as well?  Or, is there an equivalent?

* In ref-manual's "do_checkpkg" task section -
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-checkpkg:
This task was included as part of the distrodata.bbclass.  How do we
address the do_checkpkg task section now?

* In the UPSTREAM_CHECK_GETTAGREGEX variable description in the ref-manual
glossary -
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_GITTAGREGEX:
How do we change this?

* in the UPSTREAM_CHECK_REGEX variable description also in the glossary -
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_REGEX:
How do we change this?

* in the UPSTREAM_CHECK_URI variable description also int he glossary -
https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_URI:
How do we change this?

Thanks,
Scott

On Tue, May 21, 2019 at 12:31 PM Paul Barker <paul@betafive.co.uk> wrote:

> Just reading the 2.7 Mega Manual at
> https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html and
> noticed a possible bug.
>
> "24.15.9. Removed Classes" indicates that the `distrodata` class is now
> gone. However it's still referred to in several other places in the
> documentation. May need a bit of garbage collection.
>
> Thanks,
>
> --
> Paul Barker
> Managing Director & Principal Engineer
> Beta Five Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000bcefe80589831076
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I can take the section in the ref-manual for the &quo=
t;distrodata.bbclass&quot; out.=C2=A0 However, I could use some clarificati=
ons on the following areas where &quot;distrdata&quot; is referenced.=C2=A0=
 I don&#39;t think I can just remove all of the terms.</div><div><br></div>=
<div>Here they are:</div><div><br></div><div>=C2=A0* In dev-manual&#39;s &q=
uot;Using the Auto Upgrade Helper (AUH)&quot; section - <a href=3D"https://=
www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#gs-using-the-aut=
o-upgrade-helper">https://www.yoctoproject.org/docs/2.7/mega-manual/mega-ma=
nual.html#gs-using-the-auto-upgrade-helper</a>: Step 5 talks about making c=
onfigurations in the local.conf file.=C2=A0 First thing is to enable &quot;=
distrodata&quot; by inheriting the class.=C2=A0 Do we have an equivalent fo=
r this now that the class is gone?</div><div><br></div><div>* in ref-manual=
&#39;s &quot;do_distrodata&quot; task section - <a href=3D"https://www.yoct=
oproject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-distrodata">ht=
tps://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-=
distrodata</a>: Does this task disappear as well?=C2=A0 Or, is there an equ=
ivalent?</div><div><br></div><div>* In ref-manual&#39;s &quot;do_checkpkg&q=
uot; task section - <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-m=
anual/mega-manual.html#ref-tasks-checkpkg">https://www.yoctoproject.org/doc=
s/2.7/mega-manual/mega-manual.html#ref-tasks-checkpkg</a>: This task was in=
cluded as part of the distrodata.bbclass.=C2=A0 How do we address the do_ch=
eckpkg task section now?</div><div><br></div><div>* In the UPSTREAM_CHECK_G=
ETTAGREGEX variable description in the ref-manual glossary - <a href=3D"htt=
ps://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREA=
M_CHECK_GITTAGREGEX">https://www.yoctoproject.org/docs/2.7/mega-manual/mega=
-manual.html#var-UPSTREAM_CHECK_GITTAGREGEX</a>: How do we change this?</di=
v><div><br></div><div>* in the UPSTREAM_CHECK_REGEX variable description al=
so in the glossary - <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-=
manual/mega-manual.html#var-UPSTREAM_CHECK_REGEX">https://www.yoctoproject.=
org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_REGEX</a>: How=
 do we change this?</div><div><br></div><div>* in the UPSTREAM_CHECK_URI va=
riable description also int he glossary - <a href=3D"https://www.yoctoproje=
ct.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_CHECK_URI">https:=
//www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTREAM_C=
HECK_URI</a>: How do we change this?</div><div><br></div><div>Thanks, <br><=
/div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, May 21, 2019 at 12:31 PM Paul Barker &lt;<=
a href=3D"mailto:paul@betafive.co.uk">paul@betafive.co.uk</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Just reading the 2=
.7 Mega Manual at <a href=3D"https://www.yoctoproject.org/docs/2.7/mega-man=
ual/mega-manual.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoct=
oproject.org/docs/2.7/mega-manual/mega-manual.html</a> and noticed a possib=
le bug.<br>
<br>
&quot;24.15.9. Removed Classes&quot; indicates that the `distrodata` class =
is now gone. However it&#39;s still referred to in several other places in =
the documentation. May need a bit of garbage collection.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Managing Director &amp; Principal Engineer<br>
Beta Five Ltd<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000bcefe80589831076--
