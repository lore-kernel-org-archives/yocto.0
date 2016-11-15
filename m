Return-Path: <persaur@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2EA4E00A64; Tue, 15 Nov 2016 08:27:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (persaur[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81914E00A30;
	Tue, 15 Nov 2016 08:26:58 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id o1so1013011ito.1;
	Tue, 15 Nov 2016 08:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-transfer-encoding:from:mime-version:date:message-id:subject
	:references:in-reply-to:to:cc;
	bh=zIFcfXdMHJJ8XpDNJwAZjmNV+sMrAUllSnmSz5fvdBA=;
	b=ju7QfJRdOckML/kWZOhz3mlU6rZv2XRaOU5OcTVSjKn/+dcqLCf2RW7CCnTz1eLUx2
	pftu8uVIme71Z7ak2vo8OlHkcDLeACzmWxj+fKJv4l1zAUpF/8K+IfUFySyt2wlhDweu
	SrGAZCwkffI+TZbEfPkTeMtyw0dYjWRb1uuIFxIuG9s078gqXVm2GIDuq0S0HBaQ7XtP
	M5hW6m6DTh5jJlLLO5bVqs95bIeL65b1P7eViPqc12OrKeUBpna5hN1VQp0Zt0UFLGvX
	l4C9sCaP4jOQEDMOx6zsYKRHWPRWAmccemlrm1MgaHEn2djxuKj115RTmPw19+kMaJVz
	sazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:message-id:subject:references:in-reply-to:to:cc;
	bh=zIFcfXdMHJJ8XpDNJwAZjmNV+sMrAUllSnmSz5fvdBA=;
	b=QmFwidebv+vdBlwfFjWB1fijyLDlXDWr7RkV9d43BqX9UedNYACdFZVe2GHeSLYT1w
	yBCmB2lrsWwkC5BmjvvQJB07I8rQ6HnritPAWFPjRjYuAGYAkbvOB4iRu4wXItmaWrSo
	SXyavzfBz8zMLmzglGrKT1emBQDZ6GdkfMP88VsEMVuau/Q22mPwRrR5j9ljKOlJxhHS
	cKP+bbRVT4XXpuaSVY0hspKZTBgGdITYqsjwI9mju4YurIz+MCdDyzcO7GeLI9i6jjXE
	wnJYJhPgfKif91n8XeAUEpbROU5qym3znENi92tnPf6pjztY6ZWVPqff9K/7dN5OJbSc
	I8Sw==
X-Gm-Message-State: ABUngvekjlWosq1BOY3IjgO55El/+e7YjwGcMdqAD/q23vBab50WNUNEDcgcwDyhTWRZrw==
X-Received: by 10.36.82.22 with SMTP id d22mr3616835itb.53.1479227217524;
	Tue, 15 Nov 2016 08:26:57 -0800 (PST)
Received: from [172.20.160.5] ([173.245.215.245])
	by smtp.gmail.com with ESMTPSA id
	x63sm11624358iod.5.2016.11.15.08.26.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Nov 2016 08:26:56 -0800 (PST)
From: Rich Persaud <persaur@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 15 Nov 2016 11:24:28 -0500
Message-Id: <DCCA29C3-5B08-4E33-AFAB-571134EFFAEF@gmail.com>
References: <5818F173.7020204@intel.com>
In-Reply-To: <5818F173.7020204@intel.com>
To: Tracy Graydon <tracy.graydon@intel.com>
X-Mailer: iPad Mail (14B100)
X-Mailman-Approved-At: Tue, 15 Nov 2016 11:59:37 -0800
Cc: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.2 (morty 16.0.0) Released
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
X-List-Received-Date: Tue, 15 Nov 2016 16:27:01 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-F8780F79-187A-41CC-9F30-C19BEA8FAF20
Content-Transfer-Encoding: 7bit

--Apple-Mail-F8780F79-187A-41CC-9F30-C19BEA8FAF20
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

> On Nov 1, 2016, at 15:48, Tracy Graydon <tracy.graydon@intel.com> wrote:
>=20
> Hello,
>=20
> The latest release of the Yocto Project 2.2 (morty-16.0.0) is now availabl=
e for download at:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/poky-morty-16.0=
.0.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2
>=20
> A gpg signed version of these release notes is available at:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/RELEASENOTES

It would be helpful if morty could be added to the stable branch page, with c=
larification on whether jethro is being actively maintained:

  https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Rich=

--Apple-Mail-F8780F79-187A-41CC-9F30-C19BEA8FAF20
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><span></span></div><div><meta http-equ=
iv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><div><span></span=
></div><div><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"><div><span></span></div><div><meta http-equiv=3D"content-type" conten=
t=3D"text/html; charset=3Dutf-8"><div></div><div></div><div>On Nov 1, 2016, a=
t 15:48, Tracy Graydon &lt;<a href=3D"mailto:tracy.graydon@intel.com">tracy.=
graydon@intel.com</a>&gt; wrote:</div><div><br></div><blockquote type=3D"cit=
e"><div><span>Hello,</span><br><span></span><br><span>The latest release of t=
he Yocto Project 2.2 (morty-16.0.0) is now available for download at:</span>=
<br><span></span><br><span><a href=3D"http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2">http://downloads.yoctoprojec=
t.org/releases/yocto/yocto-2.2/poky-morty-16.0.0.tar.bz2</a></span><br><span=
><a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.2/poky-morty-16.0.=
0.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-2.2/poky-morty-16.0.0=
.tar.bz2</a></span><br><span></span><br><span>A gpg signed version of these r=
elease notes is available at:</span><br><span></span><br><span><a href=3D"ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-2.2/RELEASENOTES">http:=
//downloads.yoctoproject.org/releases/yocto/yocto-2.2/RELEASENOTES</a></span=
></div></blockquote><div><br></div><div>It would be helpful if morty could b=
e added to the stable branch page, with clarification on whether jethro is b=
eing actively maintained:</div><div><br></div><div>&nbsp;&nbsp;<a href=3D"ht=
tps://wiki.yoctoproject.org/wiki/Stable_branch_maintenance">https://wiki.yoc=
toproject.org/wiki/Stable_branch_maintenance</a></div><div><br></div><div>Ri=
ch</div></div></div></div></body></html>=

--Apple-Mail-F8780F79-187A-41CC-9F30-C19BEA8FAF20--
