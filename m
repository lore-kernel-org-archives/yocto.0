Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55DE1E0027E
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 08:16:52 -0800 (PST)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 08:16:37 -0800
Received: by mail-ob0-f200.google.com with SMTP id un3so18534892obb.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 08:16:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=cBI9PdH4sIK5767rElu72iVOeHUZsASE6PlEbX9henY=;
	b=V1id+1ZLjwc2kZtOej8JLOca4cto819PhKv3Yxj0P2Gf0Jmnuq9Fvt5rjeiS6hBMjv
	2XHd5RFauKXZVAwPgFFQiJVa/vJZ5gYkWqqhG3/+e3Op70yFujIsSReHoW3oSUAU/veP
	YoThojaK11lkEn4uzsgu5SVUxoTkmQMANnN7GuEo5p+qwnCGq4+xJun9TYe1YhmeyZYk
	RuZ9FQkjqEs0El3osfNrB79pTNwUcfMVDec0MuoxFL3HoN8eDUGHCpa/nV6+clJAdiIC
	A43CO/f9r5FS/NIsYRr53LerXYnLLDOdWMZctqWykLPFSwONWmoQyekO3hVHeC6XO4P5
	sVpw==
Received: by 10.182.31.13 with SMTP id w13mr8311805obh.29.1352132197164;
	Mon, 05 Nov 2012 08:16:37 -0800 (PST)
Received: by 10.182.31.13 with SMTP id w13mr8311799obh.29.1352132197092; Mon,
	05 Nov 2012 08:16:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Mon, 5 Nov 2012 08:16:16 -0800 (PST)
In-Reply-To: <1352131921.1601.140.camel@empanada>
References: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
	<D956029D25CF204F948EA0FB515E1EE23E16A1B7@ORSMSX105.amr.corp.intel.com>
	<CAJTo0Lb9_+XqaB61tTBxQa6fpiWm=aCmzNs0Myjo1ZT8rvj_eQ@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE23E16A27D@ORSMSX105.amr.corp.intel.com>
	<1352131921.1601.140.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Nov 2012 16:16:16 +0000
Message-ID: <CAJTo0LZQKe-0Ob-50YK8Cc0Fk_f0ncUwzMnNS+GHxvGeqbaztw@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQkOFYXPb600ztq7zsVY9urehxNWw5goRwwkyTHhf7GfdwK+QzzSVmjAN02xW3FA1m1LNvCNt0xrmucxuAl0h4NBXLQzt6NuK99buRrSJq5hgkn4HF5QtUx2Qz5cWCoL7YhKZIUneI0Ssuq3nPhsbzOd7CVNaA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version (typo'd)
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
X-List-Received-Date: Mon, 05 Nov 2012 16:16:52 -0000
Content-Type: multipart/alternative; boundary=14dae93a148d4c0d0104cdc1cfbc

--14dae93a148d4c0d0104cdc1cfbc
Content-Type: text/plain; charset=UTF-8

On 5 November 2012 16:12, Tom Zanussi <tom.zanussi@intel.com> wrote:

> Is it a show-stopper?  If so, we'll have to pull it in and do an RC3 I
> guess.  If not, I can still pull it in to danny, it just won't be
> included in the release (you can release-note it if it's important
> people know about it for the release).
>

It's not a show-stopper but it's obviously correct if you have anything
else landing to cause a RC3.

It just doesn't fix the warning that the original fix was meant to fix -
you'll get a build warning that the preferred version of mesa-dri (8.04)
isn't available (should be 8.0.4).

Ross

--14dae93a148d4c0d0104cdc1cfbc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 November 2012 16:12, Tom Zanussi <span dir=3D"ltr">&lt;<a href=3D"mail=
to:tom.zanussi@intel.com" target=3D"_blank">tom.zanussi@intel.com</a>&gt;</=
span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">

<div class=3D"im">Is it a show-stopper? =C2=A0If so, we&#39;ll have to pull=
 it in and do an RC3 I<br></div>
guess. =C2=A0If not, I can still pull it in to danny, it just won&#39;t be<=
br>
included in the release (you can release-note it if it&#39;s important<br>
people know about it for the release).<br></blockquote><div><br></div><div>=
It&#39;s not a show-stopper but it&#39;s obviously correct if you have anyt=
hing else landing to cause a RC3.</div><div><br></div><div>It just doesn&#3=
9;t fix the warning that the original fix was meant to fix - you&#39;ll get=
 a build warning that the preferred version of mesa-dri (8.04) isn&#39;t av=
ailable (should be 8.0.4).</div>

<div><br></div><div>Ross=C2=A0</div></div></div>

--14dae93a148d4c0d0104cdc1cfbc--
