Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CAEEE00B57; Wed, 25 Apr 2018 04:54:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA24E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 04:53:58 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id e20-v6so18989803itc.1
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 04:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vwAqbbQUT1Duc8MivGpMYUiA9esLqi9XrWNeEw1pIpo=;
	b=iMKlO3SZSFu3RA/1eSb2DYn5mEowaCOn+GVXRa9U6ZkBJZXxE8tZHmWBEpEgsYyDYU
	v7m3S/o/4YMU+bNmn7f9Snzs0N0lTdvEItjUfq4FsdpAEZhA91E/0kqeR+6qr9v9+qsB
	rOIpr8gNNw1VBC3NccKxAkFblUMqC8pMb2NWVZHS7D5yWpKaxb5jcAKUBiPWPF7IYjse
	OM2JaOto7Ygc5vYPxQlgVzBzRHmCzXp+rhkVH70NpdAqagN+puQsdFD15YDHJVZFrMlV
	TIZVwhb1/K8Kqa91nqMhuFT4NhGPLV0aHJ0KbAIYTHldEFlhuq+sfxPtyZTAqcoorgig
	bVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vwAqbbQUT1Duc8MivGpMYUiA9esLqi9XrWNeEw1pIpo=;
	b=gxYM68OtxEaTKQ6T586P6myfKS7rIlBmaNSJ9gyAMhz8AciyR4k3IkNtRomYMiKmgq
	19PSmKoL/gP65xa1MSUsNAPOBKRNS48O1lYUVgXLi/MOJsEInBZXXB/h/rqg0VwNLJT2
	NOI5HGzdN1KUrfzcNjr6Y7Mh06kTvasXyNr+bPu/1gYzGJcgeuqNSftCBSh4wV6R3pzZ
	Euhf2meQ1t+GubjKSIHriuSvqjTrxWg3rSoeulNxwnHddOpN15XG+L200ykeT7Hl9v+f
	7T/upqu7RdCdwpD+35l4is5fBba7r+c4Mja6+SA4heTqJohouaCiT457rvqFWdjgMwPN
	IgzA==
X-Gm-Message-State: ALQs6tCT76s05WHX+HJu9WkncAX/pOtymy9fRWJR0xClOh/3CmiZrHU1
	dd38s/6ksCmMY7zqrQ2r4mPej2ImV5bwe89HGCVARA==
X-Google-Smtp-Source: AB8JxZrtNE/qVlFTgokV4Fv1KLTfRzj9H0EhkB6oqd+SkE97cH9ZLhVoYCvGNNZEplG7teqcVN3Hy8iQi3GwcCoVvY4=
X-Received: by 2002:a24:6e83:: with SMTP id
	w125-v6mr22751311itc.67.1524657238230; 
	Wed, 25 Apr 2018 04:53:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:59c1:0:0:0:0:0 with HTTP; Wed, 25 Apr 2018 04:53:57
	-0700 (PDT)
In-Reply-To: <703b82f7eb8c40bdacf7903ffcd919fa@sakuraus.com>
References: <703b82f7eb8c40bdacf7903ffcd919fa@sakuraus.com>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Wed, 25 Apr 2018 17:23:57 +0530
Message-ID: <CAET8a4E72Wc85NrSA+yOMqV+G5+qmyhQzDUsb-ZcD0thouQHXQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: where is useradd-example.bb
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
X-List-Received-Date: Wed, 25 Apr 2018 11:54:00 -0000
Content-Type: multipart/alternative; boundary="00000000000016ca5b056aaaede3"

--00000000000016ca5b056aaaede3
Content-Type: text/plain; charset="UTF-8"

you can find in the oe-core

openembedded-core/meta/classes/useradd.bbclass and
openembedded-core/meta/classes/useradd_base.bbclass

Thanks!
Prakash


On Tue, Apr 24, 2018 at 4:45 AM, Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> I'm trying to understand adding a user in a recipe and in the
> documentation it says to consult meta-skeleton/recipes-skeleton/useradd/u
> seradd-example.bb. the meta-skeleton directory doesn't exist and I can't
> find the file anywhere else. I've done a search on the net and I don't get
> any hits on the file either, lots of references in the manuals, bot not the
> file.
>
>
> Can anyone tell me where to find it?
>
>
> Regards,
>
> Greg
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Thanks and Regards,
Prakash K S
+91 9620140303

--00000000000016ca5b056aaaede3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>you can find in the oe-core</div><div><br></div>opene=
mbedded-core/meta/classes/useradd.bbclass and=C2=A0<span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">openembedded-core/meta/classes/useradd_base.bbclass</span><div><br></div>=
<div>Thanks!</div><div>Prakash<br><div><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline"><br></span=
></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Tue, Apr 24, 2018 at 4:45 AM, Greg Wilson-Lindberg <span dir=3D"ltr">&=
lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWilson@sakura=
us.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_583518699630961543divtagdefaultwrapper" style=3D"font-size:12p=
t;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I&#39;m trying to understand adding a user in a recipe and in the docume=
ntation it says to consult=C2=A0<span style=3D"color:rgb(51,51,51);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif">meta-skeleton/recipes-<wbr>skeleton=
/useradd/</span><span><span style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif">u</span><a href=3D"http://seradd-example.bb" target=3D"_blank">se=
radd-<wbr>example.bb</a>.
 the meta-skeleton directory doesn&#39;t exist and I can&#39;t find the fil=
e anywhere else. I&#39;ve done a search on the net and I don&#39;t get any =
hits on the file either, lots of references in the manuals, bot not the fil=
e.</span></p>
<p><span><br>
</span></p>
<p><span>Can anyone tell me where to find it?</span></p>
<p><span><br>
</span></p>
<p><span>Regards,</span></p>
<p><span>Greg</span></p>
</div>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Thanks and Regard=
s,<div>Prakash K S</div><div>+91 9620140303</div></div>
</div>

--00000000000016ca5b056aaaede3--
