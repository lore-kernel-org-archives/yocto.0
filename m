Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77309E00C4E; Wed, 14 Nov 2018 16:38:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1536E00C19
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 16:38:18 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id e26so11114793lfc.2
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 16:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=9/FpTZEXMEDndQDQfeOC4gi0kFPYxnCjAirmZdhPiew=;
	b=QfTKf8f7GRd8F4AehtN4XzvCBjROirlSbRGrPTh7qkdsgUDRX+Q2l9KHMGtXGe9I+x
	4ex+SCF4MLCUPqkdQFIZpQc1nIVdaHiKxfo4VtCx+RVMljfPd64gVF1ZoHQb+39/1T8m
	8FknFTTMkJ+kOvcQmcCm0+vi3ZosgD7LhRBhvRXVnW1F2L+CdeggkC/iEUy66+uZabL0
	rFzPI4TyjxNMZSbXmiHNQ7KPCTvHtNuAo+yn4MnMr+xe8CwHR1Szhz2pG0VTg2g5Z9D9
	aZSOEKPaA49JDG9cdO8hgSEuM5IrAGdiLCVaW7sKCzzB3AH0Eeh0hW4T7WMUg/a48r5Q
	GJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=9/FpTZEXMEDndQDQfeOC4gi0kFPYxnCjAirmZdhPiew=;
	b=sPuIjnzUMEOGPlSPTbD6HhttDgzTtlos7gVy6Z9pvuyeRqMzP2i+msWtOcNDJjiZa6
	c5B2+gvvN14bOaUIPSuH7P+wRt3fyyN+rFfmg5npSRhhkGZBdFDj470HmdoXhrVbU9lq
	UR9Qjt5NHgvH9YodGFWN23fESZNI48/29H2ch02onfBSPM0frlc2En3fggM+BJTtrrpA
	m29XH0ABc9FM1DXnw95NDFY2QaTXIM4qwaKy9e/3D4xuLBW0RjX3CrbY9AO7ZZoWyjdx
	ntgaq07vTIysWUq94iidA2kavR+HMe+beqEgqe8xf40s7LyVlx4LFP+YY+38vSURwOnz
	BfXw==
X-Gm-Message-State: AGRZ1gI8a+MVeRI0cj5CAxoVVJ32p1BY8Xhrju+X+2n6jbf/Oa2/nUnB
	h/49jJ2xUKuxPoSobUC7uucCsqpx2zsL7SxNEAE4lA==
X-Google-Smtp-Source: AJdET5foZkJghTzSpJPEvmDLr55ENV6v3wmsPHN1hu0FUU82D0LOnmMtJba84MYeC19RqLFo5NRItzXnk1NyKkMEgUo=
X-Received: by 2002:a19:690d:: with SMTP id e13mr2214941lfc.84.1542242297175; 
	Wed, 14 Nov 2018 16:38:17 -0800 (PST)
MIME-Version: 1.0
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 14 Nov 2018 19:38:05 -0500
Message-ID: <CACfi_Z3yjSK95o843HqpubqKgx=f-3u3e3GwGz65enKYTmbS6Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: bitbake-devel@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: difference between DEPLOYDIR vs D
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
X-List-Received-Date: Thu, 15 Nov 2018 00:38:19 -0000
Content-Type: multipart/alternative; boundary="00000000000047e378057aa94433"

--00000000000047e378057aa94433
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to understand the correlation between the $DEPLOYDIR and $D
variables.

They both seem very similar.

Do files from DEPLOYDIR eventually get copied to D in order to finally make
its way into the final package?

If so, why bother with  DEPLOYDIR and instead just copy straight into D?

Thank you,

Davis

--00000000000047e378057aa94433
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>I&#39;m trying to understa=
nd the correlation between the $DEPLOYDIR and $D variables.=C2=A0</div><div=
><br></div><div>They both seem very similar.</div><div><br></div><div>Do fi=
les from DEPLOYDIR eventually get copied to D in order to finally make its =
way into the final package?</div><div><br></div><div>If so, why bother with=
=C2=A0 DEPLOYDIR and instead just copy straight into D?</div><div><br></div=
><div>Thank you,</div><div><br>Davis</div></div>

--00000000000047e378057aa94433--
