Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 589BDE00E43; Fri, 12 Jan 2018 01:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-yb0-f177.google.com (mail-yb0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501E9E00D17
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 01:07:28 -0800 (PST)
Received: by mail-yb0-f177.google.com with SMTP id 65so2383814ybz.6
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 01:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MySTgQPx6rVe7dL/Pg/vhDoFfa2iR8ryGjYkoCCdzxI=;
	b=fHMAWHOvxmQ7F9wNmE/a9ybAELM9SJWBaGWHkRwwbXo0qazG0paPZrlXhJZkiQVfWa
	L1nxpnF2uMubQblN2TrKW/VpvZTT/F4RnF0XCRHb7DfbGDr+bkicTO4Id1OK5ubWLVYx
	jtcalBktNPcLb4XeMOuyXTcGJf4Etk/l1KIGRdaOl9m6yaPuRVIyKPD8C0WCapamNLDb
	xr4Z1oZjhPLAgw7cyldZilQ+FryLMlVu6ei0zGNEwXmuAXC/8nbryz8MoWJ1Gx2SYMP+
	6qjquNkEw9AJS+i6Jr8berZu7NhtHG6aOyxw6jcS2m+DphhKwOhARH1v9/ADyNKBxHFE
	GZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MySTgQPx6rVe7dL/Pg/vhDoFfa2iR8ryGjYkoCCdzxI=;
	b=h9A4kLEF3RA8Va0x/PywFE8TP6Y/aTc5kTVtJK/ZlA4BYobFwhPZpnpwsG2w5tU9rK
	ZkgnNxSzclyT8jDPwIA6NM3G3PonSNuib7kprjpMS6IUx8hil4BtgAB5Vv0OOuOdmvgf
	/vpwD+40Frao6o0VbndD5D84cO1wMBfYLROo4ar28b/iikSRFjeuVgzQ573QpFap3+Yr
	Gq9fct23gJmhXwM+ILsMcQt94uxIS5iygnu+CgZlJiotZjufgOb7XaRSU2GJvNiczitK
	2imJhp9N5vCKHGS+4SH39tYwxBaWefvrz3oUVzDwDjkwDskI/dpyqnCc08/PrqihPbJj
	Jcow==
X-Gm-Message-State: AKGB3mL3QtkQwhlWktTSX4CFPFxThmCHvD8taR+JjxhFA5HxSWDyfldb
	BH1Aq5IDcXdblXdSCuXlg476OhL8yNEA1jUAbt4=
X-Google-Smtp-Source: ACJfBothnGupM87sRWiy817y/6YwCyYVybE+K9TRS1xPRBKnKXwOf1Yrd0Jzbtrz2jXdf+y+qgALwvTaQVLxAfXqLeo=
X-Received: by 10.37.94.85 with SMTP id s82mr22397595ybb.336.1515748047723;
	Fri, 12 Jan 2018 01:07:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.146.132 with HTTP; Fri, 12 Jan 2018 01:07:26 -0800 (PST)
In-Reply-To: <2289200.e3ssmj5VEh@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRRKv72-BPBKKeEMwCiGUf5VkqCE6gSYf91pUPySX=eK_A@mail.gmail.com>
	<4652517.ZQGAsBVoUS@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRTWb-EhnVQnVgTOLZpNXfTuFLzCvpfO9hdUcGFERyCqHQ@mail.gmail.com>
	<2289200.e3ssmj5VEh@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Fri, 12 Jan 2018 10:07:26 +0100
Message-ID: <CALbNGRQ_tG6gbKVEO=wuE1=v3HrhQYg=G+ZXS_UZ-MZBp6PM4g@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layer index not updated
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
X-List-Received-Date: Fri, 12 Jan 2018 09:07:29 -0000
Content-Type: multipart/alternative; boundary="001a11425b90f41f7e056290972e"

--001a11425b90f41f7e056290972e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 9, 2018 at 4:54 AM, Paul Eggleton <paul.eggleton@linux.intel.co=
m
> wrote:

> On Tuesday, 9 January 2018 1:14:05 AM NZDT Andreas M=C3=BCller wrote:
> > > Ping?
>
> Still broken (sorry about that!) but Michael and I will be working
> together on
> it tomorrow.
>
> Cheers,
> Paul
>
> Just saw list was updated. Thanks a lot!

Andreas

--001a11425b90f41f7e056290972e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Jan 9, 2018 at 4:54 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"=
mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux=
.intel.com</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On =
Tuesday, 9 January 2018 1:14:05 AM NZDT Andreas M=C3=BCller wrote:<br>
&gt; &gt; Ping?<br>
<br>
Still broken (sorry about that!) but Michael and I will be working together=
 on<br>
it tomorrow.<br>
<br>
Cheers,<br>
<div class=3D"m_1436748545538277575HOEnZb"><div class=3D"m_1436748545538277=
575h5">Paul<br>
<br></div></div></blockquote></div>Just saw list was updated. Thanks a lot!=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Andre=
as<br></div></div>

--001a11425b90f41f7e056290972e--
