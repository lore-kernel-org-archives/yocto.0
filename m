Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8855AE014F7
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 17:24:14 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id u14so1547013lbd.12
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 17:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=OiReJZT/10PLNJhgNRoXp9hwfDxPb5rPGzApIPSZNAk=;
	b=S/79PFtRs+4efM1Esx/ilqPD4/l6qu/rL2x6gkMAB128VOTWLt8g+mwtzEVa3M+jsA
	eWXkVOFhCN2WF1UAhVpOrA8oHGIsWiNF0FE5DqyQ06utaqeK3MxSfnEtGkx/NsFZQlDr
	9gBknUyXySQjW4y74keEojL1Pkd1tbXCcj5E9wVpxdU9yWq9ZZUxJrI1qb2WPhHS92S6
	u458cuUp7GzwfoyvNYc50wndMxvsBrGsE12wjMoaZPKIbAneH9xKqTf0N2YF+9np7//+
	omyo6s5YMzjTxrJfGf7AnSOBQvY8vhYdYGbjwknKOKqiRV1zCiPUIodKoQ9YTTIT6vUD
	DPNg==
X-Received: by 10.112.51.101 with SMTP id j5mr9359748lbo.17.1379031853300;
	Thu, 12 Sep 2013 17:24:13 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.200 with HTTP; Thu, 12 Sep 2013 17:23:53 -0700 (PDT)
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 12 Sep 2013 17:23:53 -0700
X-Google-Sender-Auth: 9QEgRGYjzzVroCmRjiNcllN50GU
Message-ID: <CABcZAN=QM=Tj=vtsdXERZy=9gcs6vBr1cpw+4Fr9USHuthCxkQ@mail.gmail.com>
To: Brad Litterell <brad@evidence.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Fri, 13 Sep 2013 00:24:16 -0000
Content-Type: multipart/alternative; boundary=001a11336460bfffbc04e638dfc9

--001a11336460bfffbc04e638dfc9
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 12, 2013 at 4:53 PM, Brad Litterell <brad@evidence.com> wrote:

> I've grown to really appreciate bitbake for compiling code from a myriad
> of sources, however, what is the recommended course for source I am
> currently doing live development on?  My code base lives in a couple of git
> repos that do NOT map one-to-one with recipes and I don't really want to
> store the source mixed in with the recipe meta data anyway, nor do I want
> to be forced to commit it to git just to do a build.
>
>  Currently I run a pre-bitbake script that creates a tarball out of the
> source, but that is easy to forget and makes building a new image a two
> step proces.  Since it is a build step I'd like it to be done by bitbake.
>
>  Is there a recommended way to go about this?
>

See externalsrc.bbclass.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11336460bfffbc04e638dfc9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 12, 2013 at 4:53 PM, Brad Litterell <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:brad@evidence.com" target=3D"_blank">brad@evidence.com</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>I&#39;ve grown to really appreciate bit=
bake for compiling code from a myriad of sources, however, what is the reco=
mmended course for source I am currently doing live development on? =C2=A0M=
y code base lives in a couple of git repos that do NOT map one-to-one with
 recipes and I=C2=A0<span style=3D"font-size:10pt">don&#39;t really want to=
 store the source mixed in with the recipe meta data anyway, nor do I want =
to be forced to commit it to git just to do a build.</span></div>
<div><br>
</div>
<div>Currently I run a pre-bitbake script that creates a tarball out of the=
 source, but that is easy to forget and makes building a new image a two st=
ep proces. =C2=A0Since it is a build step I&#39;d like it to be done by bit=
bake. =C2=A0</div>


<div><br>
</div>
<div>Is there a recommended way to go about this?</div></blockquote></div><=
br>See externalsrc.bbclass.<br>-- <br>Christopher Larson<br>clarson at kerg=
oth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - =
Tslib<br>

Senior Software Engineer, Mentor Graphics
</div></div>

--001a11336460bfffbc04e638dfc9--
