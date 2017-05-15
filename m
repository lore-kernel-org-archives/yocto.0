Return-Path: <pauroy2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C00F8E003E1; Mon, 15 May 2017 04:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauroy2[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.53 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD92E003E1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 04:45:01 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id h16so45689757vkd.2
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 04:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=tRWhqsjbcWFCxbfYqurgyiqhKmWrs4ZW/TpbVoDDBh4=;
	b=M0SsssDPgi2XWFludisbUa8ekgNG3Sgmmzo9SJ/QOZVt1ZZCLBnpBrkEcyRUZprcBJ
	pA/vcCcEgqNLCYwBZCUj23Ig3M2W5UCm2FmVaUdrUQGkogdRWHo80b1LycksWDVs14lk
	wSJw7gfWdYmIi+krWH1cZNmb6hZjU7mNeWpXwjsvmDkP8qiOfPcK3um0HyBXNsFg3Ivg
	cewX2aAkWk7XF6/69L92aaRex2gV9ciEVQM1XK79tdBVhB6+3U2bCXOTCVKWebqsgWji
	d1Zavo/vNrtoY33mfb5VyVoOyf1UtDDS4pbP9CBOwO4Rc199ViNkG6hDJKTB8mp5maQO
	9pIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=tRWhqsjbcWFCxbfYqurgyiqhKmWrs4ZW/TpbVoDDBh4=;
	b=rsnAtAv2Dm2xTXptRiRuh8GUoyPMBGFBjimCB3koz36D/XXkdjakeasyipGjulniOJ
	555KN1CBLn+ZmKXUyMqom533mzT0I3BqsB7Ut+HrrlyjlgHng9Yd+zX06y0OJMwSmFhY
	ap+NyNkP8GG8ahCbJ7c7fvhfRODNcWAkugvCIkhs7YeXGtRILE/64baraXYL5cUnj2/t
	SQZFHpKCGrumGUC4x4uvzQIKcstYbaHrc7GZ+Nc/5ChwmbQpvowZJ5zk1N7vtrMeQX7H
	z+n+t8LMWhyAREwqY97F+tLDXsPT7wWWTQG+oW5cZfyovnJLW1PfcV8zYJfuPqjXBvO7
	4xJw==
X-Gm-Message-State: AODbwcAYfgH+6+sMvEPJhzaiTFQ4Rq6m5x92Mgp0pfR8VDkJDOElR/g+
	WI7Cm/NqkLql1SWaIjAOZwMpurKhLxXOswE=
X-Received: by 10.31.3.77 with SMTP id 74mr2241417vkd.80.1494848700353; Mon,
	15 May 2017 04:45:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.77.149 with HTTP; Mon, 15 May 2017 04:44:59 -0700 (PDT)
In-Reply-To: <628cb835f0dfe54ac11a1ceb35245ef0@herrie.org>
References: <CAFVox_7=0RXos320Lzr_8vpdJkTpp2UfHrvTf64qYM51S1VZGQ@mail.gmail.com>
	<628cb835f0dfe54ac11a1ceb35245ef0@herrie.org>
From: Paul Roy <pauroy2@gmail.com>
Date: Mon, 15 May 2017 13:44:59 +0200
Message-ID: <CAFVox_5RZbWEDjtgsQ7rjYvquf3qujcGOnqOBUQv54c5Bf1zzw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: kernel/ libc compatibility problems
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
X-List-Received-Date: Mon, 15 May 2017 11:45:02 -0000
Content-Type: multipart/alternative; boundary="001a114272b0c7145e054f8e9514"

--001a114272b0c7145e054f8e9514
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Herman

I=C2=B4m using kernel 3.10 and glibc 2.17. For this last one, i don=C2=B4t =
see same
restrictions as in the page you sent.
I=C2=B4m confused about where in Yocto, is the key to this ...because using=
 same
library/kernel combination works for x86_64.

Regards
Paul

--001a114272b0c7145e054f8e9514
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Thanks Herman<br><br></div>I=C2=B4m us=
ing kernel 3.10 and glibc 2.17. For this last one, i don=C2=B4t see same re=
strictions as in the page you sent.<br></div>I=C2=B4m confused about where =
in Yocto, is the key to this ...because using same library/kernel combinati=
on works for x86_64.<br><br></div>Regards<br></div>Paul <br></div>

--001a114272b0c7145e054f8e9514--
