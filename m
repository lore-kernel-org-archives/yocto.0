Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C77CE00A16; Tue,  9 Aug 2016 09:13:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25403E00752;
	Tue,  9 Aug 2016 09:12:59 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id 38so16077139iol.0;
	Tue, 09 Aug 2016 09:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XuQ/lme8wrG/B+W9KQxaD9RWriwo9h5Iji9scXT77vQ=;
	b=vBcLQwxU1E2r7ucvsLTCpoW0i8sYJ3J2EvnxLTRMGg06A+v6cJw5SEhZDSVNKXwoOc
	cjNWZcO9gKQw5iskKyQl5E3OTRgVjQKCmzDfRELD6oA7Rrq2VsMQL7Pi8TLBvsVPQn+v
	CxGdAyK1LX8HjABYVNsldQo/xUJHWRo7gNSrWppPY478Rih8OY7z323JRi7QYpA5TwcW
	Z7zfmGbpOCCCXlCfOhx8Kba7DB0s2U9SAuMtvYb1thblRw/x8oVeMNa1mOuf4r21/wJO
	DIptN7DiR09CpDcNfII//NYIFrQkTbDObUz68oMEaUmuOgItG1WHpKLChoQ7rBzIGeSG
	jojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XuQ/lme8wrG/B+W9KQxaD9RWriwo9h5Iji9scXT77vQ=;
	b=lW8B+t9PhpxqwVWLkUUFhtuzz5dPuNU5sx49q8ASzxVguCOVshq6H4/y7ROp56NW+W
	k64sMw3l5gCON8II31EDILeZKVzooU05QLoUizhnBVIPpGg37fTOj3oTkFJCN5IqkFSV
	PBdPxJWBTQEZTKAkg/cp1tWMAlwyUSgWNs2KUl4rfZIKDqghwRTz1BRB8o3ihkRe/f53
	fYTI0BJb0HcC4982YpiX4h+qUHNW0/bteTxz4wz6hW4DMymykoCKPFhVViowaGh+oKyX
	FJN3iBCeWvNUMol5BbyCwHcR4uOs2o/AL1q3QMCuydtxcbmuXX2JO4UhTFjuI0uvLZas
	gAFA==
X-Gm-Message-State: AEkooutL3YpzCUB7qEHdMtzrQ7aE5EARuZ7I/m7ABKZecf9w4NKSuuujgX5mz6xdrDmYoYZpLKPmLUjgqRC34g==
X-Received: by 10.107.138.212 with SMTP id c81mr97336916ioj.148.1470759178955; 
	Tue, 09 Aug 2016 09:12:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.35 with HTTP; Tue, 9 Aug 2016 09:12:58 -0700 (PDT)
In-Reply-To: <1470752835429.85250@axis.com>
References: <CAP3RZogR+2vLi6RZi+muT_R1V82KF7RcfAfYmRBC3cTJQ1XZsA@mail.gmail.com>
	<1abab03c-09df-8ee1-3472-d3219c225d1f@balister.org>
	<1470752835429.85250@axis.com>
From: Brian Avery <avery.brian@gmail.com>
Date: Tue, 9 Aug 2016 09:12:58 -0700
Message-ID: <CAKV_0ei==XdEM8vEtcthBPeCE=D_w+9hh9q=yhwipR9EC=bTug@mail.gmail.com>
To: =?UTF-8?Q?Jan_Lind=C3=A5ker?= <jan.lindaker@axis.com>
Cc: jags gediya <jags.gediya@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: Re: How to build yocto as a root user?
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
X-List-Received-Date: Tue, 09 Aug 2016 16:13:02 -0000
Content-Type: multipart/alternative; boundary=001a113ed9326980610539a5ce5c

--001a113ed9326980610539a5ce5c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yocto includes pseudo which handles the things fakeroot does and a bit more
https://www.yoctoproject.org/tools-resources/projects/pseudo.

-brian
an Intel employee

On Tue, Aug 9, 2016 at 7:27 AM, Jan Lind=C3=A5ker <jan.lindaker@axis.com> w=
rote:

>
> ________________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
> behalf of Philip Balister <philip@balister.org>
> Sent: Tuesday, August 9, 2016 15:39
> To: jags gediya; yocto@yoctoproject.org; meta-freescale@yoctoproject.org
> Subject: Re: [yocto] How to build yocto as a root user?
>
> On 08/09/2016 09:32 AM, jags gediya wrote:
> > > I am facing issues while build yocto as root user on ubuntu 14.04.
> > > How can i build as a root user?
> >
> > Do not do this, it is a terrible idea. Create a user account and build
> > there.
> >
> > Philip
>
> You are right Philip, for building with yocto/bitbake it is a bad idea. I
> only read the part with becoming root, and forgot that I do not build as
> root.
>
> However,  to be able to build a usable file system that installs on targe=
t
> I think installing fakeroot is necessary:
> $ sudo apt-get install fakeroot
> $ man fakeroot
>
> /BR Jan
>
> >
> >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ed9326980610539a5ce5c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yocto includes pseudo which handles the things fakeroot do=
es and a bit more <a href=3D"https://www.yoctoproject.org/tools-resources/p=
rojects/pseudo">https://www.yoctoproject.org/tools-resources/projects/pseud=
o</a>.<div><br></div><div>-brian</div><div>an Intel employee=C2=A0</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Aug 9,=
 2016 at 7:27 AM, Jan Lind=C3=A5ker <span dir=3D"ltr">&lt;<a href=3D"mailto=
:jan.lindaker@axis.com" target=3D"_blank">jan.lindaker@axis.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><br>
______________________________<wbr>__________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto=
-bounces@yoctoproject.<wbr>org</a>&gt; on behalf of Philip Balister &lt;<a =
href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt;<br>
Sent: Tuesday, August 9, 2016 15:39<br>
To: jags gediya; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a>; <a href=3D"mailto:meta-freescale@yoctoproject.org">meta-freesca=
le@yoctoproject.<wbr>org</a><br>
Subject: Re: [yocto] How to build yocto as a root user?<br>
<span class=3D""><br>
On 08/09/2016 09:32 AM, jags gediya wrote:<br>
&gt; &gt; I am facing issues while build yocto as root user on ubuntu 14.04=
.<br>
&gt; &gt; How can i build as a root user?<br>
&gt;<br>
&gt; Do not do this, it is a terrible idea. Create a user account and build=
<br>
&gt; there.<br>
&gt;<br>
&gt; Philip<br>
<br>
</span>You are right Philip, for building with yocto/bitbake it is a bad id=
ea. I only read the part with becoming root, and forgot that I do not build=
 as root.<br>
<br>
However,=C2=A0 to be able to build a usable file system that installs on ta=
rget I think installing fakeroot is necessary:<br>
$ sudo apt-get install fakeroot<br>
$ man fakeroot<br>
<br>
/BR Jan<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt;<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a113ed9326980610539a5ce5c--
