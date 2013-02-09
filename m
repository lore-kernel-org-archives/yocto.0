Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 891B1E00312
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 09:19:41 -0800 (PST)
Received: by mail-ea0-f173.google.com with SMTP id i1so2102769eaa.18
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 09:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=bTmXucWIJFK6zo6axpSMWKv/GhbGN2vTdv2jnkdg22c=;
	b=DZJw9vLgxY1JaAbdW2mQnyPvUo4Io5KNlyPCYnmdcA04eWKXf1U3O4hRfue05wctQc
	AeVpdH0uxVD6Nt7KN5+EbUiBgLqfkeD79mZF/jsmDTBk4koQLlxJEKYfrGjHvt5YbO8v
	0sNKeSwKcysOM0vhSm/bDCpQ89zl/o+CTFyq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=bTmXucWIJFK6zo6axpSMWKv/GhbGN2vTdv2jnkdg22c=;
	b=ITgu64Jzi8hCcly/GP5bhPJYCXmCv/TK2Smx8LNbW3QV1/Kj/fxMUrUKfbFAq8vr+4
	luxdFnoEP+oovFtdJrUuTok/8Ah0nHgvNnXp0qyPmt4NiT+A0GC9r++8ycIStb19RQcN
	kwCZrp3gMr4bhjNt+tvZwpXyHnJuSbAmXArmKDh06fypfoFehpdBx6BKr6GRCIU7x5u4
	kdKRWLb+AT2rndseiJDUVrFSnJWFIWOV/OhA9haXu9dJrTlV86HVcKa6Bb6kkw4nwJvU
	XbSISA8J0IX/I3FoFpW55cyUJQ5tNfGXf0wIS/WilHT1U76LjhrsXCMOeTmtowlqmSzo
	HU4Q==
MIME-Version: 1.0
X-Received: by 10.14.177.1 with SMTP id c1mr29403043eem.8.1360430379049; Sat,
	09 Feb 2013 09:19:39 -0800 (PST)
Received: by 10.223.133.193 with HTTP; Sat, 9 Feb 2013 09:19:38 -0800 (PST)
Received: by 10.223.133.193 with HTTP; Sat, 9 Feb 2013 09:19:38 -0800 (PST)
In-Reply-To: <2254268.7tk7KJuRaj@helios>
References: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
	<2254268.7tk7KJuRaj@helios>
Date: Sat, 9 Feb 2013 09:19:38 -0800
Message-ID: <CA+gsK-qAD49kkTScEAjKWs5zvsSyskKqumFqzj2j7LfHs43VJQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQmSIHBYinNjmFldRBS75LFm4HWWmGCq/Sk/fHq36ilsC3ayZ2is7f5jVqXG3La/WCxBdVk9
Cc: yocto@yoctoproject.org
Subject: Re: [danny] core-image-minimal-dev is missing dev packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 17:19:41 -0000
Content-Type: multipart/alternative; boundary=047d7b621e0c7c23f704d54de1c5

--047d7b621e0c7c23f704d54de1c5
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Paul. Not sure however. I should have included that I used plain
old i586 architecture. There should be no dashes/underscore issues there.

:rjs
On Feb 9, 2013 6:30 AM, "Paul Eggleton" <paul.eggleton@linux.intel.com>
wrote:

> On Friday 08 February 2013 19:17:35 Rudolf Streif wrote:
> > This is weird and I do not have an explanation for it. For Danny:
> >
> > core-image-minimal-dev is missing the dev packages (pkg-dev)
> >
> > I build it but the packages are not there. The cause does not seem to be
> my
> > setup because the core-image-minimal on the ADT download site is missing
> > them too.
>
> I can't tell but it could be this bug, for which I have sent a patch:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3792
>
> (Although this doesn't prevent *all* dev packages from being included, just
> some.)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b621e0c7c23f704d54de1c5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Thanks, Paul. Not sure however. I should have included that =
I used plain old i586 architecture. There should be no dashes/underscore is=
sues there.</p>
<p dir=3D"ltr">:rjs</p>
<div class=3D"gmail_quote">On Feb 9, 2013 6:30 AM, &quot;Paul Eggleton&quot=
; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.=
intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
On Friday 08 February 2013 19:17:35 Rudolf Streif wrote:<br>
&gt; This is weird and I do not have an explanation for it. For Danny:<br>
&gt;<br>
&gt; core-image-minimal-dev is missing the dev packages (pkg-dev)<br>
&gt;<br>
&gt; I build it but the packages are not there. The cause does not seem to =
be my<br>
&gt; setup because the core-image-minimal on the ADT download site is missi=
ng<br>
&gt; them too.<br>
<br>
I can&#39;t tell but it could be this bug, for which I have sent a patch:<b=
r>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3792" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3792</a><br=
>
<br>
(Although this doesn&#39;t prevent *all* dev packages from being included, =
just<br>
some.)<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote></div>

--047d7b621e0c7c23f704d54de1c5--
