Return-Path: <jamesnuss@nanometrics.ca>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2960BE0044E
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 12:04:28 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w60so4388182wes.29
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 12:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nanometrics.ca; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/SIlGidQpQppRapIp9MwAWbnQdQn0s1Pu8/GmhITu7I=;
	b=FM14pnWSENf+WlOlCEh1HWes6g5fAvo8Igkf49qGoTkwqXJHLCt8iREQ9RE/TWxGtB
	fMSeaqw37LI3Z1E4R4yPTDy6zTOkwTWmxmirTd9mRg+AiGHsrx8hLGxI2ZI2q1XN69eD
	DwFdc8Y7cvMfEuKnzVfW5Sd2WKvQni3JJZQQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=/SIlGidQpQppRapIp9MwAWbnQdQn0s1Pu8/GmhITu7I=;
	b=cEuO/XGN49f84BDLS7pqh3Eu5Gg6xsScE+z5bC8L+OpeVn8G2T0VWpXPalYin0Opyv
	9mN1i9DGSGn2tR3esrEagLIK7LP5+pJnYAGTn1WQINK5g5PA0r5hmh2RnubL3p+5V/DF
	0JjcMOa6uX5o4bPI8zQJKtjPdmnzQVTbNlLvGRgJvml+p5DIe4oTCzicZm0lu/os6ACK
	v1oZV9Yve8Grmuasz+43GAuGmVLMwX9g/ny+lM/KsEPCpi1F3k+kfsbiSmwYjxVNqGVS
	ZPVNKTluY4sUbm8sb86mp6N5ChLIwKRAD+HYDAJ+7JkctKq92zVLQGn23Z7Iy2yIVx0k
	GRkw==
MIME-Version: 1.0
X-Received: by 10.180.90.240 with SMTP id bz16mr8114057wib.24.1375124667723;
	Mon, 29 Jul 2013 12:04:27 -0700 (PDT)
Received: by 10.216.162.70 with HTTP; Mon, 29 Jul 2013 12:04:27 -0700 (PDT)
In-Reply-To: <CAJTo0LaoBhuOaDVXKGQssE-sL7SvRTq6R4f3aQga-vTm=AmX=A@mail.gmail.com>
References: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
	<CAJTo0LaoBhuOaDVXKGQssE-sL7SvRTq6R4f3aQga-vTm=AmX=A@mail.gmail.com>
Date: Mon, 29 Jul 2013 15:04:27 -0400
Message-ID: <CALgcdhiojzaky=uro0Xd053TVCkmiNkLQePYO8L3JuHDMU2HLw@mail.gmail.com>
From: James Nuss <jamesnuss@nanometrics.ca>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQkt61ycd3Sgr1kBjRrJN3Q2aYOsu4NJ72pxhDGI5QTwhMlKOg/UnptEsNulnvMKeDXHvJyv
Cc: yocto@yoctoproject.org
Subject: Re: eglibc and Oracle embedded JRE compatibility
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
X-List-Received-Date: Mon, 29 Jul 2013 19:04:30 -0000
Content-Type: multipart/alternative; boundary=f46d043c7b405785d104e2ab2944

--f46d043c7b405785d104e2ab2944
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 29, 2013 at 2:42 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 29 July 2013 19:20, James Nuss <jamesnuss@nanometrics.ca> wrote:
> > Does anybody know if eglibc is supported as a libc implementation for
> > Oracle's embedded JRE?
> > Since Yocto only supports eglibc rather than GNU glibc [1], I'd like to
> know
> > if there are any issues running Oracle's embedded JRE on a Yocto build.
>
> eglibc is/was a fork of glibc so I'd be surprised if there were any
> problems using JRE on eglibc.  Note that several major desktop
> distributions (Debian, for example) have been using eglibc for quite
> some time.
>

It's encouraging to know that major distributions are using eglibc, since
their is a fair assumption that they should also support major JRE's as
well - thanks for pointing this out.


>
> Ross
>

--f46d043c7b405785d104e2ab2944
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<font face=3D"courier new,monospace"><br></font><br><div class=3D"gmail_quo=
te">On Mon, Jul 29, 2013 at 2:42 PM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 29 July 2013 19:20, Jam=
es Nuss &lt;<a href=3D"mailto:jamesnuss@nanometrics.ca">jamesnuss@nanometri=
cs.ca</a>&gt; wrote:<br>

&gt; Does anybody know if eglibc is supported as a libc implementation for<=
br>
&gt; Oracle&#39;s embedded JRE?<br>
&gt; Since Yocto only supports eglibc rather than GNU glibc [1], I&#39;d li=
ke to know<br>
&gt; if there are any issues running Oracle&#39;s embedded JRE on a Yocto b=
uild.<br>
<br>
</div>eglibc is/was a fork of glibc so I&#39;d be surprised if there were a=
ny<br>
problems using JRE on eglibc. =A0Note that several major desktop<br>
distributions (Debian, for example) have been using eglibc for quite<br>
some time.<br></blockquote><div><br>It&#39;s encouraging to know that major=
 distributions are using eglibc, since their is a fair assumption that they=
 should also support major JRE&#39;s as well - thanks for pointing this out=
.<br>
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br>

--f46d043c7b405785d104e2ab2944--
