Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EC0FE00874; Tue, 13 Jan 2015 07:31:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0A1E00823
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 07:31:45 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id i138so2822537oig.0
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 07:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MNbXT7Sd5znA2maStKV7BReaH6ON34VpaTMTz08J9LY=;
	b=IwKFr025TlzupJPP1pJbAO2SF3sodxo1PsJefiKg/fubWKrBSanlP5n4GhKTixN4/x
	iflLTGQYhPSVI+4hnzRw/TaWW3/JxoxbfPq9u/htqqCdkJuHvnX7zrvwpWNsoL29zbvU
	i0JEaGptdCnxu6BiqGoBN1oLILTjgGqP7/fMZ1eAbsvUab4on1r9YTpvh7hXrUyzjQ9Y
	A1E5UmLHpv+qSqDTqqGpLUfgsWtfSEgQqp0JEiFD71CwIZB8ZlhAnNtTaaBhRcbWyUc8
	bjDCBoQMJrZAaYU9VKMltDC+vfXJi5hHEI21R/QFRYKmzt1zAiJL1xTYKi/7QdncS6el
	K+ig==
MIME-Version: 1.0
X-Received: by 10.202.97.9 with SMTP id v9mr20115176oib.34.1421163104855; Tue,
	13 Jan 2015 07:31:44 -0800 (PST)
Received: by 10.202.196.134 with HTTP; Tue, 13 Jan 2015 07:31:44 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
Date: Tue, 13 Jan 2015 10:31:44 -0500
Message-ID: <CAME0jBTgXyVNnQGuJ8hiXtuBfT8xUCdckB5cHj95pyLpRZ8n2w@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 15:31:59 -0000
Content-Type: multipart/alternative; boundary=001a113d4438086bd9050c8a5270

--001a113d4438086bd9050c8a5270
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 13, 2015 at 9:28 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> I am seriously considering dumping the PDF manuals for the 1.8 release.
> The PDF output is less than good and there seems to have been no enthusiasm
> for this form during the past 4 years.  Comments?
>

Gosh, am I the only one that still uses PDF manuals?  I like the 'P' part
of PDFs - standalone (no internet) and searchable.  BTW, I have
occasionally tried building them, without much success.  I'm sure it's a
host compatibility issue, and admittedly, I haven't spent much time trying
to get it working.  Please don't delete support for them ;)

-Chris



-- 
Life is like Linux - it never stands still.

--001a113d4438086bd9050c8a5270
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Jan 13, 2015 at 9:28 AM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenba=
rk@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(=
204,204,204);border-left-style:solid;padding-left:1ex">I am seriously consi=
dering dumping the PDF manuals for the 1.8 release.=A0 The PDF output is le=
ss than good and there seems to have been no enthusiasm for this form durin=
g the past 4 years.=A0 Comments?<br></blockquote><div><br></div>Gosh, am I =
the only one that still uses PDF manuals?=A0 I like the &#39;P&#39; part of=
 PDFs - standalone (no internet) and searchable.=A0 BTW, I have occasionall=
y tried building them, without much success.=A0 I&#39;m sure it&#39;s a hos=
t compatibility issue, and admittedly, I haven&#39;t spent much time trying=
 to get it working.=A0 Please don&#39;t delete support for them ;)</div><di=
v class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">-Chris<br><div=
 class=3D"gmail_extra"><br></div><div>=A0</div></div><div><br></div>-- <br>=
<div class=3D"gmail_signature">Life is like Linux - it never stands still.<=
br><br></div>
</div></div>

--001a113d4438086bd9050c8a5270--
