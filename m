Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C728EE00405; Mon, 30 Jan 2017 11:56:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81394E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 11:56:06 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id x49so213441619qtc.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 11:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tqnSoAjx7cadVmwIS/2M7rmFY5lPTQiG67WlCIeB1ic=;
	b=krLnK967lp9JAnxf/j2Wne74O3hGWDzWdr5n+/1csv+47ho0QZvypXacSNLXlfaPhI
	KTeLX1KkjEAa3CCZ5EvHlXpvub3RWc/A2Dfc+sdhJjKyEu8XftYYt1bIKq0OwM3civ27
	DEcpr1eRaub87NyxagtHJZX+XByTK+fxLNIT4LmlbUzlBDxImD7JZfPAmARQlY568doj
	C4WT9wgQMZftiXHOg4iUt7CGLPTMC/lOF/LIqAxhG4eC+I1gJkHOfa87NEXTFM+GxFpl
	AgOFhec6bb2hPi6L4ygby6eKLbhdbWSsTX8l7qlcWjv1qXBXgr+luoOLIeVEVFzxvNiB
	ki3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tqnSoAjx7cadVmwIS/2M7rmFY5lPTQiG67WlCIeB1ic=;
	b=DSkgjY1rWsU7R+oV8k0aMZf8LM+QvrhjqObVdCEXZCJA3tTLoxglkM0DqIUrWslCSz
	saNqpvOmc1Fm22uRbqKVWdgYo8NdA+fmPSCwnYcmwZe6f4lcawgDlNTXwAGNDt/OWJ4d
	wVK7z8Miwiski3uoGD/YbtpnvelYYO/hGEnflq4yZmyuRj2WTmCwmAnFvxFc1v96sim8
	EZG7MrQCrCF7OlOn/YEFcwAVKCu2w13mm3McV8QLv06Obm/A4WiuY5uJp+84IrMCUwVz
	hndqBDn1qbUsaPeVGPqwk1qXhOb7JRvuP78R8IwSRvg0vzuR68Yc+g2zUtg2lXUl9ikn
	bJpA==
X-Gm-Message-State: AIkVDXJg+hzOYZn3OcmVQxKXcouUHB0zThPs8NeLykl8apEjCrrf4Ty8FD8Mb994qo5fwlvkfaD8dBem2/6IvA==
X-Received: by 10.237.39.222 with SMTP id m30mr20881810qtg.118.1485806165836; 
	Mon, 30 Jan 2017 11:56:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Mon, 30 Jan 2017 11:56:05 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 30 Jan 2017 17:56:05 -0200
Message-ID: <CAF3SDA6VazzB3w8s6egf6qfjOqV9FuCe4rW5DgzAvwCGzLXegA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Test packages and staging area conflicts
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
X-List-Received-Date: Mon, 30 Jan 2017 19:56:12 -0000
Content-Type: multipart/alternative; boundary=f403045f4342b84a9c0547553437

--f403045f4342b84a9c0547553437
Content-Type: text/plain; charset=UTF-8

I've been using testing packages so that they can be built from SCM testing
branches and quickdly deployed to package repository. This makes new
testing releases avaible to software developers and they can installs it by
using package manager. The testing packages are the same as production
packages except that they don't go to the image, they conflict with
production packages (so asking for installing removes the production
package as expected) and they have a -text suffix.

The problem with this aproach is that the testing and production packages
conflict so I face this warnings at each compilation of any of both:

WARNING: The recipe foo-test is trying to install files into a shared area
when those files already exist.

And buil

How to aproach that? Am I doing something stupid?

Regards,

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--f403045f4342b84a9c0547553437
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;ve been using testing packages so tha=
t they can be built from SCM testing branches and quickdly deployed to pack=
age repository. This makes new testing releases avaible to software develop=
ers and they can installs it by using package manager. The testing packages=
 are the same as production packages except that they don&#39;t go to the i=
mage, they conflict with production packages (so asking for installing remo=
ves the production package as expected) and they have a -text suffix.<br><b=
r></div>The problem with this aproach is that the testing and production pa=
ckages conflict so I face this warnings at each compilation of any of both:=
<br><br>WARNING: The recipe foo-test is trying to install files into a shar=
ed area when those files already exist.<br><br></div><div>And buil<br></div=
><div><br></div>How to aproach that? Am I doing something stupid?<br><br></=
div>Regards,<br clear=3D"all"><div><div><div><div><br>-- <br><div class=3D"=
gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not. The=
re is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div>=
</div>
</div></div></div></div></div>

--f403045f4342b84a9c0547553437--
