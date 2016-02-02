Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4B07E00B45; Tue,  2 Feb 2016 00:40:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 949E9E00AAB
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 00:40:28 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id 78so64779202lfy.3
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 00:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2ZE0CJl0bYYvXOUV8//BT/8CToNQM2Q9XWmlRTqQij4=;
	b=JHUSrnM7l/WOMxI2gS6QpVFltWm5DdvyMAVNB9yULWnslgbs/ozk41Mx6njq2XEy20
	nm5DtDPFQeE94qeQI2+U+1F+fU7lDBAM3bT64IzEf8mrFagcUthFDM38LfpcNH7fMvxj
	OPH4xjpqgl1YnYUSjNtkJ9aM0zdOvGUhTdVSxG1GRJgNiXnn1QNZJcF+2pkUFRO3BaXJ
	Bnm0nT/PYEdrITKpzjneT0CBa6engU9j/a6Mkna8y2mSXZJRXSTGLV5xbTpeg+OeYsFm
	dWX68+H+P3kF4HYB7wDFjqnA127373cCVgcRGSwEMEpZkJGW6jro6RmN0bN8SlqMw28u
	uoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2ZE0CJl0bYYvXOUV8//BT/8CToNQM2Q9XWmlRTqQij4=;
	b=EMKLvpQD3TYGf1ZfChQdcCwW/Q4WxzdXvfYdtayk0mWp672ezeyQmmZbwP9//3NEjd
	k8DcoccALiGQXXWQUE1CZggEIQfpDSI4XKbzwOfCBqB8A1j2LFI3fPg1xSdWhnlDoVCe
	QXSsh3m5AN2jOLp/jmQHE3ttqN3O7jQVcNk8nb5DIwuj+eyiP18j6J/BWS4kgVm9bqcB
	jCOMKl75M2JgSAWRV6Tql4JhTMG+XnOYZenrP8Jhdi6cm6BY8aw0c80ZpboqSorpK2xQ
	OzJ7Oace+musCkD6CqCocYv8fxfoO6KwA1gt4mEN9/MZO0wWWlpYWBKvi1+psPhvML3F
	k44g==
X-Gm-Message-State: AG10YOSdq/cV8KaXlu9Ey0GPUGFhWFzAF+hA3890kCWlxhhJmfOpITixkKDL9ElbvScoc0P0wUL8czn6kP9tsA==
X-Received: by 10.25.138.2 with SMTP id m2mr10780384lfd.59.1454402426390; Tue,
	02 Feb 2016 00:40:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.171.168 with HTTP; Tue, 2 Feb 2016 00:40:06 -0800 (PST)
In-Reply-To: <3BA28CC0-59D4-4013-BD2E-3CAE31B1159D@gmail.com>
References: <CAMCfZKF6asR9ubz7+oKJQ6FCO8mM0ryUzq-WDBGf6AAp2+WeMw@mail.gmail.com>
	<BLUPR0501MB18434F9CCFB9D423227C9F53BBDA0@BLUPR0501MB1843.namprd05.prod.outlook.com>
	<CAMCfZKHu1YtfYq3GH2R8drMSnFWwYzD8VPs2nwQcGTg4LJr3Mg@mail.gmail.com>
	<3BA28CC0-59D4-4013-BD2E-3CAE31B1159D@gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 2 Feb 2016 08:40:06 +0000
Message-ID: <CAMCfZKEi_AdyaY0FgtH+wO7u3pV4pX+ZRNc7OzqxDACFPUpejw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migrate, or not Migrate, that's the question!!!
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
X-List-Received-Date: Tue, 02 Feb 2016 08:40:34 -0000
Content-Type: multipart/alternative; boundary=001a113ebb56fc4ea9052ac5737d

--001a113ebb56fc4ea9052ac5737d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Khem,

On 1 February 2016 at 18:34, Khem Raj <raj.khem@gmail.com> wrote:

>
> I think you have to think about what you are getting into. You are trying
> to mix quite two different things are create third one. If I were you, I
> would just
> keep myself synced with upstream as much as I could, Don=E2=80=99t look o=
ne way,
> you have to look into time and effort you will spend on maintaining this =
new
> jargon for years to come.
>

Thanks for your opinion.

I agree with you, but this decision is out of my responsibility.

We already had problems on backporting device drivers and packages.
I believe that for the next generation of the product we'll try to keep
synced with upstream, but until then I want to try to use a recent version
of Yocto/OE.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&utm_medium=3De=
-mail&utm_campaign=3DAssinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a113ebb56fc4ea9052ac5737d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Khem,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On 1 February 2016 at 18:34, Khem Raj=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><span clas=
s=3D""><div><br></div></span><div>I think you have to think about what you =
are getting into. You are trying to mix quite two different things are crea=
te third one. If I were you, I would just</div><div>keep myself synced with=
 upstream as much as I could, Don=E2=80=99t look one way, you have to look =
into time and effort you will spend on maintaining this new</div><div>jargo=
n for years to come.</div></blockquote></div><br>Thanks for your opinion.</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I agree=
 with you, but this decision is out of my responsibility.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">We already had proble=
ms on backporting device drivers and packages.</div><div class=3D"gmail_ext=
ra">I believe that for the next generation of the product we&#39;ll try to =
keep synced with upstream, but until then I want to try to use a recent ver=
sion of Yocto/OE.<br><br><br clear=3D"all"><div><div class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego S=
ueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcado=
s.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_cam=
paign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br=
</a><br><br>/*long live rock &#39;n roll*/<br></div></div></div>
</div></div>

--001a113ebb56fc4ea9052ac5737d--
