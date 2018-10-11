Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C0C7E00A54; Thu, 11 Oct 2018 10:08:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C1FE00566
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 10:08:37 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id e17-v6so7636682oig.12
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 10:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=t+r/h7FNxMcMcj5TleiUS7rIT96eX7qPeHMkxhAslcA=;
	b=jZ2DPcJ+afEPFq+OKqTsMPunz7oKs3U24gI6qWh29vn9PPF9dAD4c1I/dVEgYtKwEG
	CcY0EKDjOoGSwBqf0zNJR96dpuJmhOO832undo5LXDihty/u5Voird5Pn4XzhdzssZIj
	7Gw0y5tMJjoSlqq5FLYBi58yyuwhtdY61vMBLBlH4YIk2mU1VGuLr7SCT2Cj1IIF0RTg
	1Ud3Cg2Azg00nE48hYKJj+BfgsC4GYJGm6LTX9e+QmYuueetfbe1BUFYH6mdGMkFBaHa
	Aj+aVyCdwX2VE9qQP5wqxBVzY1QPhVzLbI1PYfsWGqLiIA2/kSUJlVZQapFwrwWXQ5nL
	MYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=t+r/h7FNxMcMcj5TleiUS7rIT96eX7qPeHMkxhAslcA=;
	b=dJfGP2gi3duXwtbfdQtMxGhEW615yWrmSfeX6iPF4B8cQSM9P1TJqXhU31SiAPoquI
	41Jnkb9Xy0qxjmtsefnBU5MXznHHa7i3x8kOM20xV690G1ZKn1RZSeSOOg5sevU2TQx9
	EyvDnhePXCMo1TCLLdUOD+XKO+FyvzafpOhIs/GWKdXRoqJkugCtkD7UmubAz/1QmOv6
	72JxNC6iGcGBvEIq5ThErIiNpLQV9LlSh+D9Ya4OQU04oBlW+CHtRYy7DOR0HOkMaQv8
	JjGlaDvWFvyjZXj1HDVD4xFe1tBTQ6OfJPvdu09G66YfPmrYV+tVBfW0ES6eqm1VxEfp
	W2gA==
X-Gm-Message-State: ABuFfoiKSdPXeCn43rZ8UlfmYNrbSPXlCg7azjob/EfmXIAgcpnPsSzT
	Iur5pyrJCGA8aUKLcbc+ZDEwMOPOzeRmIlqox3p87Vhzzu4=
X-Google-Smtp-Source: ACcGV626CdYy4p/rfU6zfqN/lge2FX3k/5+UGnX+JK9voRHH+PCgq2UZzfN4NeU0hFxV697OSAC+8nQtSu085FHKkS8=
X-Received: by 2002:aca:c402:: with SMTP id
	u2-v6mr1297622oif.141.1539277717108; 
	Thu, 11 Oct 2018 10:08:37 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 11 Oct 2018 19:08:25 +0200
Message-ID: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Thu, 11 Oct 2018 17:08:39 -0000
Content-Type: multipart/alternative; boundary="00000000000089ff620577f70520"

--00000000000089ff620577f70520
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have been struggling with a problem where I need to create a package in a
recipe and set already-stripped for that package. The package in question
is not the the default one so I am trying to set it by using

INSANE_SKIP_${PN} +=3D " \
dev-so \
already-stripped \
"

But the result is like it ignore is it. The only way to get it to work is
if I include the file in the default package and set already-stripped to
INSANE_SKIP_${PN}. When looking at the code at package.bbclass this seems
to be correct

if 'already-stripped' in (d.getVar('INSANE_SKIP_' + pn) or "").split():

Is this really the way it should work. I mean dev-so can be set per package
in a recipe but is it not supported to set already-stripped per package? I
am running rocko but could not set that this have be updated in sumo. The
documentation doesn't describe this limitation either.

BR
M=C3=A5ns Zigher

--00000000000089ff620577f70520
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I=
 have been struggling with a problem where I need to create a package in a =
recipe=C2=A0and set already-stripped for that package. The package in quest=
ion is not the the default one so I am trying to set it by using</div><div>=
<br></div><div>INSANE_SKIP_${PN}=C2=A0+=3D &quot; \</div><div>dev-so \</div=
><div>already-stripped \</div><div>&quot;</div><div><br></div><div>But the =
result is like it ignore is it. The only way to get it to work is if I incl=
ude the file in the default package and set already-stripped to INSANE_SKIP=
_${PN}. When looking at the code at package.bbclass=C2=A0this seems to be c=
orrect</div><div><br></div><div>if &#39;already-stripped&#39; in (d.getVar(=
&#39;INSANE_SKIP_&#39; + pn) or &quot;&quot;).split():<br></div><div><br></=
div><div>Is this really the way it should work. I mean dev-so can be set pe=
r package in a recipe but is it not supported to set already-stripped per p=
ackage? I am running rocko but could not set that this have be updated in s=
umo. The documentation doesn&#39;t describe this limitation either.=C2=A0</=
div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div></div></di=
v>

--00000000000089ff620577f70520--
