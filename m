Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A818E00B76; Wed, 12 Jul 2017 10:07:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC40E00AE6
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 10:07:57 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id b207so22655338lfg.2
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 10:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UFnwlQko9VcznN9ZNcXS57fBq+lbI/r+F5uyZ1okKRE=;
	b=iOVOPYpQ+pMiH3bFCcco9Wfx7luyJgPOnZhm50NTVLCO8Wwc8iY2Vk8G1jcOBO5JUf
	JHXFbkadLxqSOdSByvMHXQ+2/e6SCIJ2LARyHXHuHVYPxQOzAtMPYNTCGWlb/5pdVELY
	hFkxk3VjXv3504LptNMs27WQMMJqiwBNH1X8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UFnwlQko9VcznN9ZNcXS57fBq+lbI/r+F5uyZ1okKRE=;
	b=Wjp7bX8FJDdUC2M8Efa5GJUN2ouGhRyn8EB2ILjQAnCKT2ft12A4PXFJXavNMswqy/
	dGN0tP6tWa7SHNyQ1bZFE55V4ZOcy2WTDssUHjmLbXNBpCHahCyILS8NmF4WpMKRtgx2
	Nu7tGCZvz3uxDo3b8L3Ip9/B2QMWZPvCmVx9XuFZSj3VujAqntnTIlhJ3L2aPrvvA7Ej
	hZAuuTa1gGMM0bJ56IBSRLhajUMjD6JvoFCXJWfGl7KPc3D8zC/iFmjDaXl5320N/nh4
	I3UhGqZmtFov8yYpkoeZIM4myqr5WyAGj5SRrqKVUCC43p0w1YnB53iXxaeNJTC6RGgK
	2kLQ==
X-Gm-Message-State: AIVw112twe+JUZSC1vUg3cYH9giMyYelv3dJLdFFRK8OxSAui0sfiPAV
	HBOVXsFeM0OU+zMVjgfv2I7sydt8Hyd1zG8=
X-Received: by 10.25.115.85 with SMTP id o82mr2326948lfc.96.1499879276571;
	Wed, 12 Jul 2017 10:07:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.19.165 with HTTP; Wed, 12 Jul 2017 10:07:56 -0700 (PDT)
In-Reply-To: <0A5D9A624DF90343892F8F3FE7DE525A169A5788@fmsmsx101.amr.corp.intel.com>
References: <2e55442b-959f-623b-9056-df8343acf544@linuxfoundation.org>
	<0A5D9A624DF90343892F8F3FE7DE525A169A5788@fmsmsx101.amr.corp.intel.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 12 Jul 2017 10:07:56 -0700
Message-ID: <CADfgfoZovJOzTu4Omes8zj3H9hEbXunye92kG_j6WSiYVarUVA@mail.gmail.com>
To: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Release Candidate Build for yocto-2.3.1.rc1 now available
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
X-List-Received-Date: Wed, 12 Jul 2017 17:07:59 -0000
Content-Type: multipart/alternative; boundary="001a113ad72c7c8450055421db10"

--001a113ad72c7c8450055421db10
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The RC2 e-mail should arrive shortly. It was sent the normal way, directly
by the autobuilder.

On Wed, Jul 12, 2017 at 10:03 AM, Perez Carranza, Jose <
jose.perez.carranza@intel.com> wrote:

> Hi Michael
>
> You sent the mail for rc1 and there is an rc2 available, according to RP
> rc2 is the one that will be used for QA.
>
> Regards,
> Jos=C3=A9
>
>
> -----Original Message-----
> From: Michael Halstead [mailto:mhalstead@linuxfoundation.org]
> Sent: Wednesday, July 12, 2017 11:38 AM
> To: pidge@toganlabs.com; Perez Carranza, Jose <
> jose.perez.carranza@intel.com>; Cruz, Libertad <libertad.cruz@intel.com>;
> otavio@ossystems.com.br; Zhao, Yi (Wind River) <yi.zhao@windriver.com>;
> Graydon, Tracy <tracy.graydon@intel.com>; Lock, Joshua G <
> joshua.g.lock@intel.com>; yocto@yoctoproject.org
> Subject: Release Candidate Build for yocto-2.3.1.rc1 now available
>
> A release candidate build for yocto-2.3.1.rc1 is now available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-2.3.1.rc1
>
>
> Please begin QA on this build as soon as possible.
>
>
> Build hash information:
> meta-intel : 16aea09d224f3ed2021623d17c3e807f4b8ff18d
> meta-qt4 : e120a2193be3982d55741fb9e51472db6ab9a5cd
> refkit : d86ed372d83a930e9fe2ef22e8a4b98a269d33e6
> meta-mingw : 4bdb99650a053f254ccd158a6d0c25c80e79f6ee
> meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f
> meta-gplv2 : de001bd6bfcec943d274b649c62be6848cc9c3e6
> poky : c2ef32ae58737463cf19aab7446d6a30ad81754f
>
> \nThis is an automated message from\nThe Yocto Project Autobuilder\nGit:
> git://git.yoctoproject.org/yocto-autobuilder\nEmail: pidge@toganlabs.com
> " | sendmail -t  in dir /home/pokybuild/yocto-autobuilder/yocto-worker/
> nightly/build
> (timeout 100000 secs)
>  watching logfiles {}
>  argv: echo "To: yocto@yoctoproject.org
> Cc: pidge@toganlabs.com, jose.perez.carranza@intel.com,
> libertad.cruz@intel.com, otavio@ossystems.com.br, yi.zhao@windriver.com,
> tracy.graydon@intel.com, joshua.g.lock@intel.com
> Subject: Release Candidate Build for yocto-2.3.1.rc1 now available.
>
>
> A release candidate build for yocto-2.3.1.rc1 is now available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-2.3.1.rc1
>
>
> Please begin QA on this build as soon as possible.
>
>
> Build hash information:
> meta-intel : 16aea09d224f3ed2021623d17c3e807f4b8ff18d
> meta-qt4 : e120a2193be3982d55741fb9e51472db6ab9a5cd
> refkit : d86ed372d83a930e9fe2ef22e8a4b98a269d33e6
> meta-mingw : 4bdb99650a053f254ccd158a6d0c25c80e79f6ee
> meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f
> meta-gplv2 : de001bd6bfcec943d274b649c62be6848cc9c3e6
> poky : c2ef32ae58737463cf19aab7446d6a30ad81754f
>
>
> --
> Michael Halstead
> Linux Foundation / SysAdmin
>

--001a113ad72c7c8450055421db10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The RC2 e-mail should arrive shortly. It was sent the norm=
al way, directly by the autobuilder.</div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Wed, Jul 12, 2017 at 10:03 AM, Perez Carranza, =
Jose <span dir=3D"ltr">&lt;<a href=3D"mailto:jose.perez.carranza@intel.com"=
 target=3D"_blank">jose.perez.carranza@intel.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Hi Michael<br>
<br>
You sent the mail for rc1 and there is an rc2 available, according to RP rc=
2 is the one that will be used for QA.<br>
<br>
Regards,<br>
Jos=C3=A9<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
-----Original Message-----<br>
From: Michael Halstead [mailto:<a href=3D"mailto:mhalstead@linuxfoundation.=
org">mhalstead@<wbr>linuxfoundation.org</a>]<br>
Sent: Wednesday, July 12, 2017 11:38 AM<br>
To: <a href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</a>; Perez C=
arranza, Jose &lt;<a href=3D"mailto:jose.perez.carranza@intel.com">jose.per=
ez.carranza@intel.com</a><wbr>&gt;; Cruz, Libertad &lt;<a href=3D"mailto:li=
bertad.cruz@intel.com">libertad.cruz@intel.com</a>&gt;; <a href=3D"mailto:o=
tavio@ossystems.com.br">otavio@ossystems.com.br</a>; Zhao, Yi (Wind River) =
&lt;<a href=3D"mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>&gt;;=
 Graydon, Tracy &lt;<a href=3D"mailto:tracy.graydon@intel.com">tracy.graydo=
n@intel.com</a>&gt;; Lock, Joshua G &lt;<a href=3D"mailto:joshua.g.lock@int=
el.com">joshua.g.lock@intel.com</a>&gt;; <a href=3D"mailto:yocto@yoctoproje=
ct.org">yocto@yoctoproject.org</a><br>
Subject: Release Candidate Build for yocto-2.3.1.rc1 now available<br>
<br>
A release candidate build for yocto-2.3.1.rc1 is now available at:<br>
<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://autobuilder.yocto.io/pub/releases/yocto-2.=
3.1.rc1" rel=3D"noreferrer" target=3D"_blank">https://autobuilder.yocto.io/=
<wbr>pub/releases/yocto-2.3.1.rc1</a><br>
<br>
<br>
Please begin QA on this build as soon as possible.<br>
<br>
<br>
Build hash information:<br>
meta-intel : 16aea09d224f3ed2021623d17c3e80<wbr>7f4b8ff18d<br>
meta-qt4 : e120a2193be3982d55741fb9e51472<wbr>db6ab9a5cd<br>
refkit : d86ed372d83a930e9fe2ef22e8a4b9<wbr>8a269d33e6<br>
meta-mingw : 4bdb99650a053f254ccd158a6d0c25<wbr>c80e79f6ee<br>
meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d<wbr>90197a456f<br>
meta-gplv2 : de001bd6bfcec943d274b649c62be6<wbr>848cc9c3e6<br>
poky : c2ef32ae58737463cf19aab7446d6a<wbr>30ad81754f<br>
<br>
\nThis is an automated message from\nThe Yocto Project Autobuilder\nGit:<br=
>
git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder\nEmail" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/<wbr>yocto-autobuild=
er\nEmail</a>: <a href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</=
a> &quot; | sendmail -t=C2=A0 in dir /home/pokybuild/yocto-<wbr>autobuilder=
/yocto-worker/<wbr>nightly/build<br>
(timeout 100000 secs)<br>
=C2=A0watching logfiles {}<br>
=C2=A0argv: echo &quot;To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a><br>
Cc: <a href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</a>, <a href=
=3D"mailto:jose.perez.carranza@intel.com">jose.perez.carranza@intel.com</a>=
, <a href=3D"mailto:libertad.cruz@intel.com">libertad.cruz@intel.com</a>, <=
a href=3D"mailto:otavio@ossystems.com.br">otavio@ossystems.com.br</a>, <a h=
ref=3D"mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>, <a href=3D"=
mailto:tracy.graydon@intel.com">tracy.graydon@intel.com</a>, <a href=3D"mai=
lto:joshua.g.lock@intel.com">joshua.g.lock@intel.com</a><br>
Subject: Release Candidate Build for yocto-2.3.1.rc1 now available.<br>
<br>
<br>
A release candidate build for yocto-2.3.1.rc1 is now available at:<br>
<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://autobuilder.yocto.io/pub/releases/yocto-2.=
3.1.rc1" rel=3D"noreferrer" target=3D"_blank">https://autobuilder.yocto.io/=
<wbr>pub/releases/yocto-2.3.1.rc1</a><br>
<br>
<br>
Please begin QA on this build as soon as possible.<br>
<br>
<br>
Build hash information:<br>
meta-intel : 16aea09d224f3ed2021623d17c3e80<wbr>7f4b8ff18d<br>
meta-qt4 : e120a2193be3982d55741fb9e51472<wbr>db6ab9a5cd<br>
refkit : d86ed372d83a930e9fe2ef22e8a4b9<wbr>8a269d33e6<br>
meta-mingw : 4bdb99650a053f254ccd158a6d0c25<wbr>c80e79f6ee<br>
meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d<wbr>90197a456f<br>
meta-gplv2 : de001bd6bfcec943d274b649c62be6<wbr>848cc9c3e6<br>
poky : c2ef32ae58737463cf19aab7446d6a<wbr>30ad81754f<br>
<br>
<br>
--<br>
Michael Halstead<br>
Linux Foundation / SysAdmin<br>
</div></div></blockquote></div><br></div>

--001a113ad72c7c8450055421db10--
