Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22080E00B45; Tue, 18 Sep 2018 14:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 973DCE00939
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 14:16:35 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id b15-v6so3142960oib.10
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 14:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Hn8zvlQhgDzvYpUGICGawg/YT9vEMwe8pRem3B1kkiI=;
	b=Q4p07EC5LB8mZ1SqYtSzCdXmMce3QCyomk652oJRj4Okr9EfAvf/++LGYCCqpZMWTs
	Pzguk2EhgmsmllhvwWmo6I/BDuM06Lyh5FIJWASSXa4VwJIb7O8p7TKPfmVQIA8FepS/
	dlZ7qboFeD3KzVQSrU5ySYCOpwj8nGvIcTv4BP9L0IYTeFNu+91gadEP0wXx5uTE8/Wv
	2R99y+GdOPkkkXpicQKQqXSt0JZe+MOoBZAWLS1yHHaZf5XwBUXcnI4Cx+MsLDAd0FYO
	tzZFcm1uBuvYbcKXHP+GSMd8NRfZuRQVJkL0+4ARCCpYpabGV8r8kxNXesCr7uknaYZZ
	4zOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Hn8zvlQhgDzvYpUGICGawg/YT9vEMwe8pRem3B1kkiI=;
	b=PFyPacnSgb6kUp3UOoYzH7/AGg9Ulo0kzghuxXanmA83sDGq631KFTF4u0FUkJnV0o
	aHVk2AsFZSLhFXT1SZ0JgSda4tAdqPBFyHpX48YZRM7d5mpbEaRZGu7s67AEFAJTCxol
	j/hreKydgiNTw2BmSGevj25viCtqbDeePvVtaM53H431gjx7ZVyK1BfxGIL23O7D75vW
	/gBx+/nF0czAKjZr0A2py2IIUDJI/rz6fpNV7rVMlbd2v2j5shOmJSyev/YBAs57w8QB
	Mxr7KitVY9Z5mjy33wwYuhPE4i5UTWyzXS0aN9Us56nlQpTaweW4ouV2GPiGSlT3fAZ+
	9htQ==
X-Gm-Message-State: APzg51D1QGBEAyyoymsXWRzR5FEYSeKlTzqq+DcWtqisoAPzOu5vdyCA
	L5Z/J0uA4uYVMuw3RtiCg3FIMIVN3EZNgvOscPo=
X-Google-Smtp-Source: ANB0VdZ7jRfa4SbNvjYZL55GWoxM9ta5bTuLaEIVHHcXeCA1OTF4/2x7FI448Wq7+s3uy7DCUlZX+2q4GCk6Q0zrAsQ=
X-Received: by 2002:aca:fc8e:: with SMTP id
	a136-v6mr2580837oii.123.1537305394678; 
	Tue, 18 Sep 2018 14:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
In-Reply-To: <20180918160944.43679aec@seebsdell>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 18 Sep 2018 16:16:22 -0500
Message-ID: <CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
To: Seebs <seebs@seebs.net>
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Tue, 18 Sep 2018 21:16:36 -0000
Content-Type: multipart/alternative; boundary="000000000000f6135705762bcd4c"

--000000000000f6135705762bcd4c
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 18, 2018, 16:09 Seebs <seebs@seebs.net> wrote:

> On Tue, 18 Sep 2018 20:26:59 +0000
> <Jack.Fewx@dell.com> wrote:
>
> > SO... any suggestions how to make the inodes in the database an
> > UNSIGNED value?
>
> We probably *can't* -- sqlite doesn't support that! They cap out at 8
> byte integer values, and are always signed. I don't know of a way to
> fix this. We might be able to trick it by coercing them into the signed
> range, and reversing the conversion later. And this is outside the
> range that's accurately representable in float, too. Whee!
>

Are the databases supposed to be shareable between different build
machines? IIRC, the answer is no. Could you store the native inode type as
a sqlite BLOB? Not necessarily a good idea.... Just an idea.


> -s
>

--000000000000f6135705762bcd4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div data-smartmail=3D"gmail_signature"><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Sep 18, 2018, 16:09 S=
eebs &lt;<a href=3D"mailto:seebs@seebs.net">seebs@seebs.net</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On Tue, 18 Sep 2018 20:26:59 +0000<=
br>
&lt;<a href=3D"mailto:Jack.Fewx@dell.com" target=3D"_blank" rel=3D"noreferr=
er">Jack.Fewx@dell.com</a>&gt; wrote:<br>
<br>
&gt; SO... any suggestions how to make the inodes in the database an<br>
&gt; UNSIGNED value?<br>
<br>
We probably *can&#39;t* -- sqlite doesn&#39;t support that! They cap out at=
 8<br>
byte integer values, and are always signed. I don&#39;t know of a way to<br=
>
fix this. We might be able to trick it by coercing them into the signed<br>
range, and reversing the conversion later. And this is outside the<br>
range that&#39;s accurately representable in float, too. Whee!<br></blockqu=
ote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Are the datab=
ases supposed to be shareable between different build machines? IIRC, the a=
nswer is no. Could you store the native inode type as a sqlite BLOB? Not ne=
cessarily a good idea.... Just an idea.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
-s<br>
</blockquote></div></div></div>

--000000000000f6135705762bcd4c--
