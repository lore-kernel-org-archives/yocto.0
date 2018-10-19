Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ECDEE0097C; Fri, 19 Oct 2018 14:37:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E76E00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:37:12 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id g32-v6so32646544edg.13
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wLfHDnceowP/SdXqFvgZDvUzHABqDgamfdzYelzwhUg=;
	b=WZeDpo6DPe8gMPFhljtboYn/97QF2Fr5fb56gFBFc42r5YBMZs9aHGIR5TTa95+UVx
	alI3+71QU4nRm1J30QhWGeROODCael8kM40187nnl0F25n9V8otKtoYzjaIJ5rmGUJhR
	735qjDiC9V5rzbtPCN2m8Q7cfgasAOcMIDyu0oc5CTKNjV5hY2/eLqpzqaPcFhufFohX
	y0KvFhvL0SGql9pScGy+t3SBQ2cqpusQRQ+3vuFyD8cvIOrq8YNhn4mgTZdWzmXaVb7V
	vH5X+u8hgGt6xxr8ufcZxYlQ3mLV+Nyt2nd/eSFy5uCHGIM/CkCuYnwu5TZ2sWgGyOv7
	0tIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wLfHDnceowP/SdXqFvgZDvUzHABqDgamfdzYelzwhUg=;
	b=kuWzRQ/U3+e7DfSPVTQIJeGYNeTjHVy3d+JXyO3Tj0FAFGPzhvmoPIAXmW3VwPJsKp
	AfQSnhWVpMpaMJ1zALO8CBtyu6UeqjGGxMCNFRXLXkqVMlWQcmqoYcQQwh0E19JnwqyQ
	r6QN1QxeADs9p8JiVMO2E+045MXODi8dO+jPRE60eR+M7ZLeHNslUnF28/jl3EjMwCCN
	TL0Yn9jQ3mi0sG+58q7WsWkI67X8NJm4TzH3r0JOzk+75I6Nia18juGmWMd+oR63lNWn
	cYl06BNuXCj1ikloirW/4WZrHl2NJTp+N74st+KgVXbKimvPU1jAjtVMGfnf4xx3ORv+
	1fKA==
X-Gm-Message-State: ABuFfoiebES81QkQW1XnECjxUvbHIBuRm32qwGw1NH68PYaA54de4f7R
	P34XdU7xrKItYNgwGjYBG8YDiv1AhTLYIzYAdU91
X-Google-Smtp-Source: ACcGV61NggpcO4ft67xFXbhkOEwJfK8wxvQwEjdOg/5ZSr5HLy3SWZAhaNUkSD4qepF21aTH8PqpZms6qZsEvgLfzbM=
X-Received: by 2002:a17:906:1992:: with SMTP id
	g18-v6mr31866671ejd.166.1539985031154; 
	Fri, 19 Oct 2018 14:37:11 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Fri, 19 Oct 2018 23:37:00 +0200
Message-ID: <CAK4Yt2=eSqSqREuVatD=oHfDYcYODt=p2+Rw3K+UPWx11K5zYQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-layer raspberry
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
X-List-Received-Date: Fri, 19 Oct 2018 21:37:13 -0000
Content-Type: multipart/alternative; boundary="000000000000bdd72005789bb409"

--000000000000bdd72005789bb409
Content-Type: text/plain; charset="UTF-8"

Hello,

Do you know if I include tha raspberrypi layer it would compile to a
raspberry pi 1 machine as well or only to the later models?

thanks,

Zoli

--000000000000bdd72005789bb409
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Do you know if I include tha raspberrypi layer it would compile to a raspb=
erry pi 1 machine as well or only to the later models?</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">thanks,</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Zoli</div>

--000000000000bdd72005789bb409--
