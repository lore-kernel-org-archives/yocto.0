Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF7CFE00E0B; Mon, 14 May 2018 16:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
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
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 925E6E0084E
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 16:36:03 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id b18-v6so19832190lfa.9
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 16:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pEkui48UXEAuYlmuZN7vv5icmN9RAlrnMLP3uyz3bWg=;
	b=alx/QuvYnZcNmjt2f2eTAY/YXTd9wVQIA7lJTj55inLFJo9XMvItoPVJp4+YYQiT8o
	hY+6r6UXiCKMsCp4YcZUx/eQfNQiUgCvTccXukqMwAroYiKNpOkThmWoF2A5GJFvUZ2v
	yqOXDE2j0vFqR7PhDNYbggZa6gzq/mq+SZt9Y3wifdI5u8cOLcdPYbKKgYA6g/pGffp4
	nFLVg3070mvGO5Nuiu9AV7kD6pM1AiyQOG6WgQu8hkuL7fphhRraTOtjH6aU2mR+YsKJ
	2p55tcdNAombobGGQeH+UK77H7u0/0fY+Sxcn4QV+x3QBc+fhvWt0Riv1OBk9MODgeyX
	/sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pEkui48UXEAuYlmuZN7vv5icmN9RAlrnMLP3uyz3bWg=;
	b=lxCLxR12l/A+8pIteFJlQtdla301MVfnk8JRydXxI/ck9XURCwgIY1W0hmZwE3l2Aa
	SgSxBNnDzEPGC0to8bmgediShj86WXJ1NnGTRrC6Yi/FoU6iFVRhVK8au/3usLTURFV2
	vQQypFUQeyZemd183p6dmZ5cRKZjLsYSEXrBmYO6nKN03uWpwp4nwWh+hZH0upXmnSRv
	2PkkPVcejgw2Rhy8pRwz2kj9Z7VZa4kfPQA/KMxovdx92LwTkxWvV1JY3zWoRJJXkLMf
	9b0LGuD0eCfwScDMO8CkwkIsTdJtMQHz7cbOeFRLQR0HhEVENsTcYO8DgrdpeQVnjHF/
	lQYg==
X-Gm-Message-State: ALKqPwfVbs8jSGogL9nQy5mNdyvo+IMiAQS5w+Jgq/j3G3ddXQZ/O4jc
	R1uZD7yWOQz9SYgm0P9d4Gh6lMj7RCyksXzCM3s=
X-Google-Smtp-Source: AB8JxZp33n21wJ08WAyu+RF7io+l7rTGdJ9qsktiUnmKUkNit0usCN8vLQ9hxW9orDel7cG4xP9x4s4G41ghgVAvLPk=
X-Received: by 2002:a2e:8518:: with SMTP id
	j24-v6mr6008980lji.12.1526340962233; 
	Mon, 14 May 2018 16:36:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:17a1:0:0:0:0:0 with HTTP; Mon, 14 May 2018 16:36:01
	-0700 (PDT)
In-Reply-To: <1C72AF990F2FFD43A51A2896DAD431FC091F6DA3@ORSMSX109.amr.corp.intel.com>
References: <1C72AF990F2FFD43A51A2896DAD431FC091F6DA3@ORSMSX109.amr.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 14 May 2018 19:36:01 -0400
Message-ID: <CAHUNapTmUD1evY_RPFnb6eZZRJ3f_kwqNcbOUJ=22xw3wqQd9g@mail.gmail.com>
To: "Cetola, Stephano" <stephano.cetola@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Orling,
	Timothy T" <timothy.t.orling@intel.com>,
	OTC Embedded All <otc.embedded.all@intel.com>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: Canceled: Yocto Project Technical Team Meeting
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
X-List-Received-Date: Mon, 14 May 2018 23:36:04 -0000
Content-Type: multipart/alternative; boundary="000000000000dc3a1e056c32f2e2"

--000000000000dc3a1e056c32f2e2
Content-Type: text/plain; charset="UTF-8"

Did the updated invite go out? I don't think I've seen it.
Is the meeting scheduled for May 15th?

On Thu, May 10, 2018 at 1:41 PM, Cetola, Stephano <stephano.cetola@intel.com
> wrote:

> Stephen will be sending an updated Technical Meeting invite shortly.
>
>
> Cheers,
> Stephano
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000dc3a1e056c32f2e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Did the updated invite go out? I don&#39;t think I&#3=
9;ve seen it.<br></div>Is the meeting scheduled for May 15th?<br></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, May 10, 2018 =
at 1:41 PM, Cetola, Stephano <span dir=3D"ltr">&lt;<a href=3D"mailto:stepha=
no.cetola@intel.com" target=3D"_blank">stephano.cetola@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">







<div bgcolor=3D"white" link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div class=3D"m_8990571262384211100WordSection1">
<p class=3D"MsoNormal">Stephen will be sending an updated Technical Meeting=
 invite shortly.</p>
<p class=3D"MsoNormal"><u></u><br>
<u></u></p>
<p class=3D"MsoNormal">Cheers,<br>
Stephano<u></u><br>
<u></u></p>
</div>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--000000000000dc3a1e056c32f2e2--
