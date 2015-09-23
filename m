Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61BEEE00C6C; Wed, 23 Sep 2015 04:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B870E00A4C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 04:12:25 -0700 (PDT)
Received: by qgez77 with SMTP id z77so16160952qge.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 04:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/g48YHpql/v+cP3J93JwMdIYwd7OXiZPPLa7kpiejaw=;
	b=Ei47bw/siTaezsUVzq+4vqNk+QJRGd6du7WMD4IvU/IYL0RqcVT9Wlke8w2y3Kjsbj
	cNDEOKNu31N9Hh8D5xn7fitCzSCMYx4tS/qmDA0TB9h7joPd95/PhWDPk0Ka06QGOwd6
	/NxJuysroHseuiwSJnNLWQlicaW2unqSfzQnaUOevhHUaVkj4NHYhRD8I7MqSKug4S4A
	23BV2QD4+tY7A25yfTjsb4QOnmDPTZ5IXgsmwo6FwI5JFbfPvbT8iHheTNxB/DXj/hwE
	dHoZKDWKgc5TdnmeV7f9M/UrzbCcyZLMiD/o37EClFTj0JsgMZ3zIj/JxlrPedEqyDlB
	U3CA==
X-Gm-Message-State: ALoCoQlwVruP0TuxjCfSLIQqXim0FwBDKmaGL+5PlBqLX0v6fYMSeqEtW++4qakPIXdu1soHy84K
X-Received: by 10.140.44.11 with SMTP id f11mr20103096qga.80.1443006745193;
	Wed, 23 Sep 2015 04:12:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 23 Sep 2015 04:12:05 -0700 (PDT)
In-Reply-To: <CALLyC8TMiby0cPf-9Dugs+0Dn0juPFyXrCnCFY586mi-N_4iSA@mail.gmail.com>
References: <CALLyC8Qt4X-=Ea7jcOY4TEnBUrGBJq_nPhALteENznRhmooCdA@mail.gmail.com>
	<CAJTo0LY2TTt=ebrz0dd0X313+tgY49+WKTOWW2-ZnyjGaiF6+Q@mail.gmail.com>
	<CALLyC8TMiby0cPf-9Dugs+0Dn0juPFyXrCnCFY586mi-N_4iSA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Sep 2015 12:12:05 +0100
Message-ID: <CAJTo0LY88hbXHz3KugW1AWKQZ44-HUbj7gc_7+rnX7JqLe7FxQ@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does mount.cifs command includes in busybox package
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
X-List-Received-Date: Wed, 23 Sep 2015 11:12:27 -0000
Content-Type: multipart/alternative; boundary=001a113b41bc7501170520683034

--001a113b41bc7501170520683034
Content-Type: text/plain; charset=UTF-8

On 23 September 2015 at 11:31, Vivek Per <pervivek@gmail.com> wrote:

>           i saw  cifs-utils recipe from openembedded ( from samba)
> provides mount.cifs command other than that any other package provides same
> command?
>

CIFS is "a bit" complex so Samba is the canonical implementation of it
outside of Windows

Ross

--001a113b41bc7501170520683034
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 September 2015 at 11:31, Vivek Per <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 i saw =C2=A0cifs-utils recipe from openembedded ( from samba) pr=
ovides mount.cifs command other than that any other package provides same c=
ommand?</div><div></div></blockquote></div><br>CIFS is &quot;a bit&quot; co=
mplex so Samba is the canonical implementation of it outside of Windows</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div=
></div>

--001a113b41bc7501170520683034--
