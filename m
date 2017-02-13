Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 841F8E00726; Mon, 13 Feb 2017 08:03:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF35AE00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:03:29 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id v23so87089585qtb.0
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cW+vDOsw4Z08EHmsCHAhnMRhqk0tnzDL18kFmeyqEdI=;
	b=SSSsKawksk728UOqo3TcpHDFPoDOxkpmlWK6DqpRDDwy/ijwf/+h9D5cd1wccfTP0t
	qMM3nO/u/yWzvvzazGd2pRVgYHbO9Hvev9Iy7VtQ27PH9Zq0ZMvYpT4nivm/Fw5YXWym
	Vv4DlZYoyJ2IuvNI/k0V+Acpybb7oTGW8N1z3H82SDNxERVDYC0pzU5sRt4o5F2sK5En
	Gp7GY0xOfgUkEG83tDG/jiHsRoSRiOg0163lZr+e162HKsw25NxcGZfPsdHA5cyiu/yW
	jt0gX+k9eUCvp8TAsrUCmURbbQTTHHl+cHtM+nEPf/KgarOdBECUF7meHWum1eVotUDf
	2bWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cW+vDOsw4Z08EHmsCHAhnMRhqk0tnzDL18kFmeyqEdI=;
	b=h/jNfQqLsp2hdsnzQdKmr7UZZ9U/LLJ93F8v1dGJkNgffkp35DyyT1UbtsJYn5ZDWj
	xcpnf6n+2YsoMZUV+952GAVoqtXkcvWKWSyMEKgAJ3ZKzjLqpo3oNld4jW94uCVesyDR
	CvVI4X+e8qkBMj4Zp52z89PEvYyVrI+O5cQHnFZzRZhx/kkD74kt5OqocSXxK60gEBNF
	71J0/g0c5TKKb9NzGeJUffUYIzGrDcwt8tBsI+aNO19yfiLbObF1Ni2ruiPDrDsBiPPH
	/YsaEnsEbKiATaUzAULzaaPMhYffd2ZDIMa6zTc4U42vicpgU3BU5tRTCpl/bqyyXRtq
	7B8w==
X-Gm-Message-State: AMke39nEh1ePFGOTXDEe40wB4bEm0ZK8B0lLDVs3a82ymY11FCx2lr0/tqZQ58/h8Rjhb1Pg81unBAweNLiSGex+
X-Received: by 10.200.39.212 with SMTP id x20mr21006904qtx.109.1487001808793; 
	Mon, 13 Feb 2017 08:03:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 13 Feb 2017 08:03:08 -0800 (PST)
In-Reply-To: <007b01d28611$cea76a90$6bf63fb0$@ln-systems.com>
References: <007b01d28611$cea76a90$6bf63fb0$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 Feb 2017 16:03:08 +0000
Message-ID: <CAJTo0LYeXAhckriALOOtB9cMBd9fq8CHY3f5EQ3JBXJog-d7HA@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Out-of-tree module errors installing its udev rule
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
X-List-Received-Date: Mon, 13 Feb 2017 16:03:31 -0000
Content-Type: multipart/alternative; boundary=001a1135b542980b3405486b9680

--001a1135b542980b3405486b9680
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 13 February 2017 at 15:56, <colin.helliwell@ln-systems.com> wrote:

> inherit module
>
> =E2=80=A6
>
>
>
> SRC_URI +=3D " file://65-linmuxcfg-devnode.rules "
>
>
>
> S =3D "${WORKDIR}"
>
>
>
> FILES_{PN} +=3D "${base_libdir}/udev/rules.d/65-linmuxcfg-devnode.rules"
>
>
>
> do_install_append(){
>
>     install -d ${D}${base_libdir}/udev/rules.d/
>
>     install -m 0644 ${WORKDIR}/65-linmuxcfg-devnode.rules
> ${D}${base_libdir}/udev/rules.d
>
> }
>
>
>
> Is this because it=E2=80=99s an out-of-tree module, or some other [obviou=
s]
> mistake?
>
> Thanks
>
>
If that's a literal copy and paste then you forgot the $ in FILES_${PN}.

Also udev rules go into ${nonarch_base_libdir}.

Ross

--001a1135b542980b3405486b9680
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 February 2017 at 15:56,  <span dir=3D"ltr">&lt;<a href=3D"mailto:coli=
n.helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNo=
rmal">inherit module<u></u><u></u></p><p class=3D"MsoNormal">=E2=80=A6<u></=
u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"Mso=
Normal">SRC_URI +=3D &quot; file://65-linmuxcfg-devnode.<wbr>rules &quot;<u=
></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"=
MsoNormal">S =3D &quot;${WORKDIR}&quot;<u></u><u></u></p><p class=3D"MsoNor=
mal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">FILES_{PN} +=3D &quot;$=
{base_libdir}/udev/rules.d/<wbr>65-linmuxcfg-devnode.rules&quot;<u></u><u><=
/u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal=
">do_install_append(){<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=A0=
=C2=A0 install -d ${D}${base_libdir}/udev/rules.<wbr>d/<u></u><u></u></p><p=
 class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR}/65-linmu=
xcfg-<wbr>devnode.rules ${D}${base_libdir}/udev/rules.<wbr>d<u></u><u></u><=
/p><p class=3D"MsoNormal">}<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><p class=3D"MsoNormal">Is this because it=E2=80=99s an out=
-of-tree module, or some other [obvious] mistake?<u></u><u></u></p><p class=
=3D"MsoNormal">Thanks<u></u><u></u></p><p class=3D"MsoNormal"></p></blockqu=
ote></div><br>If that&#39;s a literal copy and paste then you forgot the $ =
in FILES_${PN}.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Also udev rules go into ${nonarch_base_libdir}.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1135b542980b3405486b9680--
