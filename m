Return-Path: <kilou_zellabia@yahoo.fr>
Received: from nm14.bullet.mail.ird.yahoo.com (nm14.bullet.mail.ird.yahoo.com
	[77.238.189.67])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 79942E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 04:28:07 -0700 (PDT)
Received: from [77.238.189.49] by nm14.bullet.mail.ird.yahoo.com with NNFMP;
	13 Jun 2012 11:28:06 -0000
Received: from [212.82.108.133] by tm2.bullet.mail.ird.yahoo.com with NNFMP;
	13 Jun 2012 11:28:06 -0000
Received: from [127.0.0.1] by omp1038.mail.ird.yahoo.com with NNFMP;
	13 Jun 2012 11:28:06 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 115758.28641.bm@omp1038.mail.ird.yahoo.com
Received: (qmail 2387 invoked by uid 60001); 13 Jun 2012 11:28:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339586885; bh=KE8f3OgIPVcnlqXwys167CNQtmc/8qHxM1YAMRJxUxU=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=aprf4uXrnHCXqTrTP9hPap6BsAzLyHzBH69ouAElKnDwpZda+jaWBlcWBdSJK9PCZN3rEM3RhSXp+NLYVddtJEbfL4iVVz3QeK9yEcG0cl2hL+dcrNSebrbRah0tVLs7XSK5ZcUXCflmK5OjPjR/4/uUHCTRIQZzjezy5DK0M6I=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.fr;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=3dIeqXHrG+bYrXk9kEcNtjtmCiU4Sx22798U1KSGwrNrlhKXdpLBqL7ElbdEnN9wQhWgl34ccoY707ksvk4Jb4syoHsUYbCyXzdizqYWBSNGmCTAI+wxlbBsll19WKdx/LpnATbl0ufNxczpAmsSM2dsXuHL3ZEdz+vPWXV03AM=;
X-YMail-OSG: sj6wxZYVM1mL_XKvwDLLWt6L9s3eJa7TNE626oqoGOQ33Ia
	ylhawD60SbXIQzfCLdAmmxoNoXiOHcKwJ__tzdKkwm8YZMC0bG4hBFVR1fxJ
	ciE_eBuI9itZypeL179x5MM8ANLi7te1qiPCwVIGzsq_wlc.Va21dl_diVtE
	FZvfTxHz2hlWPBlNbUR9FhB3r9_qFBkBHJaMekBWxeAUCBii1j_EFSCR_SUJ
	l0ELtbwBosz9jiIcxfwyR.HfdUIhY8LuvtHktE8NYGJcYqbiUqHLwgqW44Ht
	o85vHMCOmbeVZ4GSX5xYGcjENOQDh1tp5YPUioV2dtPGKA2.eYPTparqcywQ
	ONuL7t66WJirHLoV7Brp_xG_nFZ_e0GjbZr8Xnns8nN_t.2qvv_72HA3CpPM
	YLEnrGwtsKrm8B9g27eqZMFUH1bXEWIz1SeTjK9YIUdo-
Received: from [92.103.7.242] by web171303.mail.ir2.yahoo.com via HTTP;
	Wed, 13 Jun 2012 12:28:05 BST
X-Mailer: YahooMailWebService/0.8.118.349524
References: <1339576712.71285.YahooMailNeo@web171303.mail.ir2.yahoo.com>
	<3253756.XyKUTHyTzc@helios>
Message-ID: <1339586885.75117.YahooMailNeo@web171303.mail.ir2.yahoo.com>
Date: Wed, 13 Jun 2012 12:28:05 +0100 (BST)
From: Kilou Zelabia <kilou_zellabia@yahoo.fr>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3253756.XyKUTHyTzc@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re : ERROR : QA issue : package AAAA rdepends on BBBB-dev
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Kilou Zelabia <kilou_zellabia@yahoo.fr>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Jun 2012 11:28:08 -0000
Content-Type: multipart/alternative;
	boundary="-1953309981-370591984-1339586885=:75117"

---1953309981-370591984-1339586885=:75117
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I'v tested with =0AINSANE_SKIP_AAAA +=3D "dev-deps" and it worked fine=0ATh=
anks, =0A=0A=0A________________________________=0A De=A0: Paul Eggleton <pa=
ul.eggleton@linux.intel.com>=0A=C0=A0: Kilou Zelabia <kilou_zellabia@yahoo.=
fr> =0ACc=A0: yocto@yoctoproject.org =0AEnvoy=E9 le : Mercredi 13 juin 2012=
 12h36=0AObjet=A0: Re: [yocto] ERROR : QA issue : package AAAA rdepends on =
BBBB-dev=0A =0AOn Wednesday 13 June 2012 09:38:32 Kilou Zelabia wrote:=0A> =
What does this mean ? Why it is forbidden to have a run-time dependency on =
a=0A> "-dev" package ?=0A=0ABecause that's usually not correct. The -dev pa=
ckage includes headers and =0Aother development files for the target. Is th=
at really what package AAAA needs =0Aat runtime?=0A=0A> I'v seen some recip=
es setting INSANE_SKIP to "1" can this helps ?=0A=0AYou would need to use I=
NSANE_SKIP_AAAA +=3D "dev-deps". But I would encourage =0Ayou to verify tha=
t this is what you really need before doing it.=0A=0ACheers,=0APaul=0A=0A--=
 =0A=0APaul Eggleton=0AIntel Open Source Technology Centre

---1953309981-370591984-1339586885=:75117
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;v tested with <br />INSANE_SKIP_AAAA +=3D &quot;dev-deps&quot; and it=
 worked fine<br />Thanks, <br>  <div style=3D"font-family: times new roman,=
 new york, times, serif; font-size: 12pt;"> <div style=3D"font-family: time=
s new roman, new york, times, serif; font-size: 12pt;"> <div  dir=3D"ltr" >=
 <font size=3D"2" face=3D"Arial"> <hr size=3D"1">  <b><span style=3D"font-w=
eight:bold;">De=A0:</span></b> Paul Eggleton &lt;paul.eggleton@linux.intel.=
com&gt;<br> <b><span style=3D"font-weight: bold;">=C0=A0:</span></b> Kilou =
Zelabia &lt;kilou_zellabia@yahoo.fr&gt; <br><b><span style=3D"font-weight: =
bold;">Cc=A0:</span></b> yocto@yoctoproject.org <br> <b><span style=3D"font=
-weight: bold;">Envoy=E9 le :</span></b> Mercredi 13 juin 2012 12h36<br> <b=
><span style=3D"font-weight: bold;">Objet=A0:</span></b> Re: [yocto] ERROR =
: QA issue : package AAAA rdepends on BBBB-dev<br> </font> </div> <br>On We=
dnesday 13 June 2012 09:38:32 Kilou Zelabia wrote:<BR>&gt; What does this m=
ean ? Why it is
 forbidden to have a run-time dependency on a<BR>&gt; "-dev" package ?<BR><=
BR>Because that's usually not correct. The -dev package includes headers an=
d <BR>other development files for the target. Is that really what package A=
AAA needs <BR>at runtime?<BR><BR>&gt; I'v seen some recipes setting INSANE_=
SKIP to "1" can this helps ?<BR><BR>You would need to use INSANE_SKIP_AAAA =
+=3D "dev-deps". But I would encourage <BR>you to verify that this is what =
you really need before doing it.<BR><BR>Cheers,<BR>Paul<BR><BR>-- <BR><BR>P=
aul Eggleton<BR>Intel Open Source Technology Centre<BR><br><br> </div> </di=
v>  

---1953309981-370591984-1339586885=:75117--
