Return-Path: <peachj@lexmark.com>
Received: from exprod8og108.obsmtp.com (exprod8og108.obsmtp.com [64.18.3.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5EA9E00709
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 09:41:28 -0700 (PDT)
Received: from mail-yh0-f70.google.com ([209.85.213.70]) (using TLSv1) by
	exprod8ob108.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUT4JOO2weZkn3hKUDeoAVM5B/ONFioOc@postini.com;
	Mon, 11 Mar 2013 09:41:28 PDT
Received: by mail-yh0-f70.google.com with SMTP id z20so6204418yhz.9
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 09:41:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=cYfKl4MMTMmNsAmQCW1QMqiMCd7sdzJDraqVhdigRR0=;
	b=W6N7GI4pKqvzlz2HJ5sCZ2HDIW4wEJCcITNCbwOe/g10IuM/Nh87zgKR31ZpjTpN2S
	Ng8Zz9ERBl8me5Vej7Ziod9qmOvzHarR/1cbUmwJyAcvE0a1df2HGhWsrhIbM1NbukAq
	BS3kcSBvKHxMWwl1/Tvz18m5iTpXGSFKBaUjZt2E/wZ2H5N0zR2tENx3f2BBkJAM3M9g
	wmjul3ds/1XUIZW3qFMZbCo8+XpLr5L4JcJAS08g6cCvFmzd1o/OmC0AxXkvxEIktQxf
	grdwbGCitcKO2HL7NcHhKUvxHcbO3whuzrEDIBP304JkfEyLAN2RbhtSxLeBWieSHDna
	atcw==
X-Received: by 10.49.42.3 with SMTP id j3mr19922932qel.55.1363020087590;
	Mon, 11 Mar 2013 09:41:27 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.49.42.3 with SMTP id j3mr19922922qel.55.1363020087487; Mon,
	11 Mar 2013 09:41:27 -0700 (PDT)
Received: by 10.49.47.112 with HTTP; Mon, 11 Mar 2013 09:41:27 -0700 (PDT)
Date: Mon, 11 Mar 2013 12:41:27 -0400
Message-ID: <CA+QkY1DUokStaTCxB_OD0oSa97VqKWXdQwym5bZ0=AuCRB+0ow@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkv1hCtoGRqBU4b+vsVfeWmuCAXOYaw12xbqW6oiv1k0RJtx+/geDgIqcl9Z/6rO2/7vrDcJISH5DQE2BsoMMmEfWy84ZUi33OPdVohMAc9WAcjyM8J0X28nohr/3vp6iDqafH5LFAdmnNqEaQJr9162n0cQQ==
Subject: Building Android within Yocto?
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
X-List-Received-Date: Mon, 11 Mar 2013 16:41:28 -0000
Content-Type: multipart/alternative; boundary=047d7bd76e2423058704d7a8d847

--047d7bd76e2423058704d7a8d847
Content-Type: text/plain; charset=ISO-8859-1

Has anyone tried building Android within Yocto?  It may sound kind of crazy
(I'm not convinced it's not), but I find myself in a situation where it
might be beneficial for me to build Android within Yocto. Does a recipe or
layer exist for this purpose already?  If so, where may I find it?

Kind regards,

Jerrod

--047d7bd76e2423058704d7a8d847
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Has anyone tried building Android within Yocto? =A0It may =
sound kind of crazy (I&#39;m not convinced it&#39;s not), but I find myself=
 in a situation where it might be beneficial for me to build Android within=
 Yocto. Does a recipe or layer exist for this purpose already? =A0If so, wh=
ere may I find it?<div>
<br></div><div>Kind regards,</div><div><br></div><div style>Jerrod</div></d=
iv>

--047d7bd76e2423058704d7a8d847--
