Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10FEBE00B45; Tue, 24 Nov 2015 08:58:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F00E00B1C
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:58:06 -0800 (PST)
Received: by igcmv3 with SMTP id mv3so54913937igc.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7TY2v09kYf7oAgz8FIsOD0NoIgBFZwA3mEbjF4dlLuI=;
	b=XhnxkFG4LhMEXF3S3FUFEPXH4QKlGuMXQuGHg2M4HFwNKLJg2rn6RoWhzJIlcGULBJ
	p7ogb/eNUs13siZU1GGz6GuWxKLXJ0SYOO6xvT4gjVmNihPm0ET4jyD6mdEzmliyHhEP
	ixdaKuDub/M7lIOMfHOWTSoQKYoh/S9CHaDeld1tPIQhle7e+iYuGmH0fiI7qnAXYGpp
	+zGTZrm1Wi08dgm5BoA83wfpuNCMciI7NSKEoUUISj4H1hPKpdQ+WA+hv8YkrF2Pb8zn
	S4oR63ooWZM6Nd2mOnFw+GNrbXOviMUA7iwI7keev2qAr+DeWCOu8DfQDv9wCVQgOcZe
	9A5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=7TY2v09kYf7oAgz8FIsOD0NoIgBFZwA3mEbjF4dlLuI=;
	b=JDn4R90+x3Yok4VI+dLvS+QDFGu6CdbjYAmNNbGgqHwHtgMUfuZWb18NR+Q8VzqkXO
	eyXdoAoe4J2h/l0P4dfZes0ieElGnI9jnI9lgZFyl5H3z2zDgGSAP1xM8XtTgEBXy+nA
	nV2bmQ9jDTpUmoyMiK2k/bTDylAHMKn53dYJl4P0iYJwuyMqXLlD17DoKE/Gow71AANO
	ffCR5U+svaZ3oubiwi9uuppZvu4msBPbLCjhuTeNkW3MeTkI/HL4trHJ7Pdi1Croxt7o
	RScnArxojbrG4CTjsnYLO55MxTY30Cjnq4kQCeFTqWobwCP4tdjS1EToOpjpWrt0/y8t
	FtkA==
X-Gm-Message-State: ALoCoQnX5Kn83+/DEcmN3dkDc3eHZbSLtyneZ2+8LBniiWOSgXvL/tDmK0axRtS7M4HcZqnSlPSJ
X-Received: by 10.50.2.99 with SMTP id 3mr10786984igt.78.1448384286081; Tue,
	24 Nov 2015 08:58:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Tue, 24 Nov 2015 08:57:46 -0800 (PST)
In-Reply-To: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Nov 2015 16:57:46 +0000
Message-ID: <CAJTo0LaEo4YHRbc5fdc5aJuOP55zgZUw_Hi1nrvxLapxn-9dSw@mail.gmail.com>
To: Juro Bystricky <juro.bystricky@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>
Subject: Re: [PSPLASH 0/2] Few fixes for psplash
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
X-List-Received-Date: Tue, 24 Nov 2015 16:58:10 -0000
Content-Type: multipart/alternative; boundary=089e0122e6e8defc7b05254c3e8a

--089e0122e6e8defc7b05254c3e8a
Content-Type: text/plain; charset=UTF-8

On 24 November 2015 at 16:39, Juro Bystricky <juro.bystricky@intel.com>
wrote:

> These patches fix https://bugzilla.yoctoproject.org/show_bug.cgi?id=7236
> Considering there was a bug in the BGR888 detection, it is probaly safe to
> assume it was never used. I modified handling of 24BPP modes somewhat as
> well,
> but did not test it. 24BPP changes only affect big endian mode, little
> endian
> should be the same as before. (If you are aware of anybody actually using
> 24BPP
> modes, please let me know)
> Tested with jethro/core-image-sato (qemuppc, qemumips, qemuarm).
>

Thanks Juro.  Merged to psplash master.

Ross

--089e0122e6e8defc7b05254c3e8a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 November 2015 at 16:39, Juro Bystricky <span dir=3D"ltr">&lt;<a href=
=3D"mailto:juro.bystricky@intel.com" target=3D"_blank">juro.bystricky@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":52=
m" class=3D"a3s" style=3D"overflow:hidden">These patches fix <a href=3D"htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236" rel=3D"noreferrer" t=
arget=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236</=
a><br>
Considering there was a bug in the BGR888 detection, it is probaly safe to<=
br>
assume it was never used. I modified handling of 24BPP modes somewhat as we=
ll,<br>
but did not test it. 24BPP changes only affect big endian mode, little endi=
an<br>
should be the same as before. (If you are aware of anybody actually using 2=
4BPP<br>
modes, please let me know)<br>
Tested with jethro/core-image-sato (qemuppc, qemumips, qemuarm).</div></blo=
ckquote></div><br>Thanks Juro.=C2=A0 Merged to psplash master.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e0122e6e8defc7b05254c3e8a--
