Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11BA6E00A44; Tue,  6 May 2014 11:16:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9F2E006EF
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 11:16:34 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id q107so5262503qgd.15
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 11:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=9PO3moRSL0/gROiOBCnv/ANHKpar3EvSc85/2aZ3ahQ=;
	b=x2kuM9PoCyfiKP+Uz4WiO1JU8fzFaLrQGg2Be22nhUoqa3lXiQl8uhpDafb8WgFJN4
	Ju1xJzIuwAEtbk5cKu1pEV9GFgv+7UXrAPuKfnjbPiPp9KUj/m3ygXeGwUp4zpNDjssZ
	aWKJW6q71bLW3bKuWskE/9+JZf73rb7yZXlaTSIEY9+FNKynYV4oTRjpa9GBuedQ6Cym
	GWoWhv/0MVhNdM+9ntgVPgggFNvNRrpTsvlLbFMmQmOcIFo/iMlP+aWQH3mQM3x67FMh
	yKVFoH2vmrurdTyWzX8mS4PtEJG1/xgarwayQ5vX/Ns7Bkzn4QQ6rP8RUFjnY1iOkztX
	dYDQ==
X-Received: by 10.140.104.16 with SMTP id z16mr53567996qge.76.1399400193849;
	Tue, 06 May 2014 11:16:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Tue, 6 May 2014 11:16:12 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 6 May 2014 15:16:12 -0300
Message-ID: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: RPM to Verify Installed Packages
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
X-List-Received-Date: Tue, 06 May 2014 18:16:38 -0000
Content-Type: multipart/alternative; boundary=001a11354fa673ff3204f8bf3fa6

--001a11354fa673ff3204f8bf3fa6
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm using Yocto on dora branch.
We got a binary corrupted after a package update using rpm.
But "rpm -V" [1][2] command doesn't show any errors.
Is there any limitation for rpm (5.4.9) built from Yocto?
The rpm database is not corrupted.

I took a look on rpm recipe and didn't found anything related to a specific
PACKAGECONFIG.

Any help is welcome.


[1] - http://www.rpm.org/max-rpm/ch-rpm-verify.html
[2] - http://www.rpm.org/max-rpm/s1-rpm-verify-output.html

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11354fa673ff3204f8bf3fa6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>I&#39;m using Yocto on dor=
a branch.</div><div style>We got a binary corrupted after a package update =
using rpm.<br></div><div style>But &quot;rpm -V&quot; [1][2] command doesn&=
#39;t show any errors.</div>

<div style>Is there any limitation for rpm (5.4.9) built from Yocto?</div><=
div style>The rpm database is not corrupted.</div><div><br></div><div style=
>I took a look on rpm recipe and didn&#39;t found anything related to a spe=
cific PACKAGECONFIG.</div>

<div style><br></div><div style>Any help is welcome.</div><div><br></div><d=
iv><br></div><div>[1] -=A0<a href=3D"http://www.rpm.org/max-rpm/ch-rpm-veri=
fy.html">http://www.rpm.org/max-rpm/ch-rpm-verify.html</a></div><div>[2] -=
=A0<a href=3D"http://www.rpm.org/max-rpm/s1-rpm-verify-output.html">http://=
www.rpm.org/max-rpm/s1-rpm-verify-output.html</a></div>

<div><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></=
div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=
=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_med=
ium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blan=
k">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11354fa673ff3204f8bf3fa6--
