Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2C6BE00B8D; Tue,  4 Jul 2017 09:13:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.50 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45381E00B3D
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 09:13:34 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id b207so121205311lfg.2
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 09:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WRV3JmBmQh098jkDXzAO3SyzuyDbv9YWHMvBqPBPuDQ=;
	b=rdUySngak8Qfo+z91+J4kbkJZRLiPo9w6YbCg88zHJ9Ln2wbRBicVP8NWCadrBFR+n
	ndU2ZcJBIcqDtumaTV1UeDapiWHusFCMnYR/bQ1xXKF9UEhn/9wFkMCCvKXZ/FvEz7XN
	UJpT+J4JRnpyAte37xlbdICZ6SM+v8zZg1ROauvYUJBWnKvOAMnfXYf2wT6B2ZoVv/ML
	rpTcL7MTf4buMIWvuo76uzT1YEsNP0fE+mQIz6qkjgrHV6CUx4s4Y+JEqH/a53WcmouT
	4yKTHSp0ES+cBul1iD9jz48dYT0reX65rH9fCbT3ZQWqvQZjYIjSiuHdQBorb3Teifrd
	PXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WRV3JmBmQh098jkDXzAO3SyzuyDbv9YWHMvBqPBPuDQ=;
	b=VDeSQBDJKB+PaGsPKKWT0NonZYVCv4PjzYxHQOlfyUR4OijrGo2Bf1yPEPZMejqE5e
	NwH5q8FXdoTld+GuZVotALIhZz9NKPbYcXKWu8sSzuAgVm0qQaTbb2qEkWTJNCmxY6AS
	uc3fjMRIs8gyg3R4+wdWhZSh6ZcOPzxHiztpD1o1soFVlfUsklrIr4bnS1TuN/xjjQ1H
	DlKuoNYCsAlDebFYZXGEl4kp0KlYKttrvLXwthq0Yy+KNwACY9DIvErQXTlt/QoINnox
	SDSI3BOF+af2JA3SJcW1mmVF9IhqdzZMZ9ec+pswWLMcBloqCB4HHnzZPQ/a2+qMD26W
	GpIQ==
X-Gm-Message-State: AKS2vOwJv5Gp6GLcoDIMzl3Age084RtHBc9k+aarIHImq2zIhVoSVcHa
	xio7y2L3LmiTNEaIALmjw4JYz5yLzwMqGqE=
X-Received: by 10.46.15.17 with SMTP id 17mr11928755ljp.49.1499184813266; Tue,
	04 Jul 2017 09:13:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.199.203 with HTTP; Tue, 4 Jul 2017 09:13:32 -0700 (PDT)
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Tue, 4 Jul 2017 23:13:32 +0700
Message-ID: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Update SRCREV doesn't work?
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
X-List-Received-Date: Tue, 04 Jul 2017 16:13:38 -0000
Content-Type: multipart/alternative; boundary="f403043604f83f5f7b0553802af5"

--f403043604f83f5f7b0553802af5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm using poky pyro to build a beaglebone image with swupdate.

First time I built swupdate (by bitbake swupdate), it used the latest git
version and I encountered an make error which related to swupdate only.

Then I changed swupdate version to 2017.04 (by using
PREFERRED_VERSION_swupdate =3D "2017.04") but the bitbake still used the
latest git version and I had the make error again.

But when I used devshell and changed the git revision to 2017.04 then
do_configure and do_compile, everything went fine.

My question is, is there a simple way to solve this problem?

*Note:*
The swupdate recipes for beaglebone that I'm using are from
https://github.com/sbabic/meta-swupdate

Content of swupdate_2017.04.bb:

> require swupdate.inc
>
> SRCREV =3D "d344ec10b71293d2aaf96816266d4e6ed1d3bf6a"
>

Content of swupdate_git.bb

> require swupdate.inc
>
> DEFAULT_PREFERENCE =3D "-1"
>

A snippet of swupdate.inc

> SRCREV =3D "${AUTOREV}"
>

Thanks,
Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
-so61pi

--f403043604f83f5f7b0553802af5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi everyone,<br><br></div>I&#39;m usin=
g poky pyro to build a beaglebone image with swupdate.<br><br></div>First t=
ime I built swupdate (by bitbake swupdate), it used the latest git version =
and I encountered an make error which related to swupdate only.<br><br></di=
v>Then I changed swupdate version to 2017.04 (by using PREFERRED_VERSION_sw=
update =3D &quot;2017.04&quot;) but the bitbake still used the latest git v=
ersion and I had the make error again.<br><br></div><div>But when I used de=
vshell and changed the git revision to 2017.04 then do_configure and do_com=
pile, everything went fine.<br><br></div><div>My question is, is there a si=
mple way to solve this problem?<br><br></div><div><i>Note:</i><br>The swupd=
ate recipes for beaglebone that I&#39;m using are from <a href=3D"https://g=
ithub.com/sbabic/meta-swupdate">https://github.com/sbabic/meta-swupdate</a>=
<br></div><div><br></div><div>Content of <a href=3D"http://swupdate_2017.04=
.bb">swupdate_2017.04.bb</a>:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">require swupdate.inc<br><br>SRCREV =3D &quot;d344ec10b71293d2aaf968=
16266d4e6ed1d3bf6a&quot;<br></blockquote><br></div><div>Content of <a href=
=3D"http://swupdate_git.bb">swupdate_git.bb</a><br><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">require swupdate.inc<br><br>DEFAULT_PREFERENCE =
=3D &quot;-1&quot;<br></blockquote></div><div><br></div><div>A snippet of s=
wupdate.inc<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">SRCREV =3D=
 &quot;${AUTOREV}&quot;<br></blockquote></div><div><br></div><div><div><div=
><div><div><div><div>Thanks,<br clear=3D"all"></div><div><div><div class=3D=
"gmail_signature"><div dir=3D"ltr">Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi<br><div>-=
so61pi<br></div></div></div></div>
</div></div></div></div></div></div></div></div>

--f403043604f83f5f7b0553802af5--
