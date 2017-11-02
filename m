Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BE51E00CE8; Thu,  2 Nov 2017 05:07:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
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
	*      [74.125.82.175 listed in list.dnswl.org]
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6FEAE00CC4
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 05:07:08 -0700 (PDT)
Received: by mail-ot0-f175.google.com with SMTP id i19so1272352ote.13
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 05:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nctEPJN9GQ8uQrpzW9tTEur72SieHBcdSoo65ijTLz4=;
	b=pUT7+Os0R4pbYmKnsFWOvqUoz2orGaXWwzce8/bFqIz2Ruuc/OnehyTHmOiQp1k02F
	6o2w0QfXkYtnSm9P8sx40oNHMbCwQZMT8WGDc23Z8Fr43eGztoEENTELYjlPmsN+sg3U
	03JmstzMqQVJkrXsbqPilOiO1WzRrYTcPkGIK/gUcWWFMNN15YfiOpsi2NKSxW51yODv
	KxAyW6spNxKQUcfuGmYS15HtmqSnv2Rb1KXEhZnGLGaPPWVvKPTr8MdcnrVB6a3LdSc8
	EzKYBlIY3nEm7Jqn2MLQRH3WWTO9b4ngnHWIXG8IQQUpEGb9OKiQrnPE6cg0yU2yUs7j
	iiIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nctEPJN9GQ8uQrpzW9tTEur72SieHBcdSoo65ijTLz4=;
	b=mtN4L1nzQY1Jc8ykJzhs6/Fq/uCNxohYxsvm4YxjvyDBTIJK8a5QiXh5IS6l+EJx+m
	r2XTPfzWDemHMggvRxU9ftOD0BYzMfSUCdy91oABH1ONkVVKPFVSL/3cIB3fuJpslOcK
	Y+1ybPgwjvuxCA9jyl1IdFQEX5XBJLteYXKGftsZJogYC9dwiBaVRxkXPoXgggUm4XNe
	KfC/bvgbcGxovVULIsBWVXFRy5P0D9ys3OaAoajLwmcwNc7WAqMjjhhWQ3aCZzjTkGUe
	fhyoq+bmRuO+Jt7Dt3NNK5/ru5S3UR+0ErFdgkWu3qGpr662SnosvhGnmO1u9cnyG+rx
	QT5w==
X-Gm-Message-State: AJaThX6NKslr+bkIlaDnD+BtWT4zHSPwinpQ1T/8RaXTSEfE4zQYmGWM
	Wv73G/f0vvlBEIvm4LcpK+zuD8ocQ5N9jSUONEx6oxTg
X-Google-Smtp-Source: ABhQp+SVtORRsf2IPwFY8kf9QcA9IF62RoWDpVZL1+qdnzaTIs6dChTVzocOfLi66MBJVrryiH1s95ftKMbDbhmXtoM=
X-Received: by 10.157.15.67 with SMTP id 61mr1842577ott.198.1509624427405;
	Thu, 02 Nov 2017 05:07:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.74.199 with HTTP; Thu, 2 Nov 2017 05:07:07 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Thu, 2 Nov 2017 17:37:07 +0530
Message-ID: <CALwQErr9LapsHC1brNKLjQ+CyAwt0HZcfJAXbbE8uAm-nWE6=g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [Yocto pyro] username adding via recipe in capital letters allowed?
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
X-List-Received-Date: Thu, 02 Nov 2017 12:07:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c04d54cbd668d055cfed37b"

--94eb2c04d54cbd668d055cfed37b
Content-Type: text/plain; charset="UTF-8"

Hi ,

I am using yocto pyro and for creating users via recipe using inherit
useradd, followed
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb?h=pyro

with lowercase I am able to create user e.g user as expected.
but just want to check username adding via recipe in capital letters
allowed?

I tried capital/upper & lower case mixed user e.g. User Or only with
capital/uppercase e.g. USER I am getting failure
ERROR: user-1.0-r0 do_prepare_recipe_sysroot: user: useradd command did not
succeed.

based on current findings it seems capital letters not allowed, but it is
worth to confirm once if anyone faced similar stuff and there is any way to
do it.

Any pointers or details will be helpful.

Thanks
Shrikant

--94eb2c04d54cbd668d055cfed37b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi ,<br><br></div>I am =
using yocto pyro and for creating users via recipe using inherit useradd, f=
ollowed <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta=
-skeleton/recipes-skeleton/useradd/useradd-example.bb?h=3Dpyro">http://git.=
yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-skeleton/use=
radd/useradd-example.bb?h=3Dpyro</a> <br></div><br></div>with lowercase I a=
m able to create user e.g user as expected.<br></div>but just want to check=
 username adding via recipe in capital letters allowed?=C2=A0 <br><br>I tri=
ed capital/upper &amp; lower case mixed user e.g. User Or only with capital=
/uppercase e.g. USER I am getting failure <br>ERROR: user-1.0-r0 do_prepare=
_recipe_sysroot: user: useradd command did not succeed.<br></div><div><br><=
/div><div>based on current findings it seems capital letters not allowed, b=
ut it is worth to confirm once if anyone faced similar stuff and there is a=
ny way to do it.<br></div><br></div><div>Any pointers or details will be he=
lpful.<br><br></div>Thanks<br></div>Shrikant<br><div><div><div><div><div><d=
iv><div><div><br></div><div><br><br></div></div></div></div></div></div></d=
iv></div></div>

--94eb2c04d54cbd668d055cfed37b--
