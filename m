Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B16EE00480; Mon, 20 Feb 2017 12:36:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A01E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 12:36:04 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id b16so46739208qte.0
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 12:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o0dgiyG3aBmaUelG5nFLUV/en3W2WQe0URWzBuvsGW4=;
	b=ubxJhxJRtty49uvCrTxENBs24we3NmUo8T93Z2lujN0AJwgTsYDQSYMXS1CqLfU84c
	0Y2N4He85W4Uf9c0UwC3x5ZeSm84PbDdGrX+IIvmFt7T/5noFo4buW2P/KyW4MO760C+
	phPAtRaDdMSy081rvvsSdkvfFZY5xn0elU3kb4sTWUvnlIiU42Mgei6Q6StO50tnsI7j
	YSATsNcKu5PqznHKzUOVyir6TjPvAsvnFQbSN9O8gZxgaC/ZkWfWh9WHzj9j2v2wbNRB
	N3Ro5xBnp+iZPpbWJZtUtrVPyjfKCgUsktsmdDVtyh5sKQhSeSnuQIlYgnDiDwsLcy0N
	dqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o0dgiyG3aBmaUelG5nFLUV/en3W2WQe0URWzBuvsGW4=;
	b=H4AF5ZFXthRP5D6DkYPvRigIvSNBCBE3rRA9ORXiA6zhcLLa0870D6v+KTTIhgCshV
	96KC/l7LWrJER9uUfZyYLF69HAAWpGQ8tR01C6GKCDbDBhRBammwCwU0NNg+/BTqJIAi
	KZmUT00Ak8DksG92Q+woVZg9nhZqFfgbgaGVG6S4StYEzkp/nzeyFOt03GDXL6uM+lhQ
	ubMnJ4hXeNhTfUr4lm6wBQQuFHTMIghOvT50XgdE78uZlJqSts0Zr3klaDqF/QH5jjm4
	O2Jht1BuIgYbEiN42Xyj+jj0so6eAyeu4dL6cl0dZLIewrAhy76twGNTkLULr5RwKEQs
	5lhg==
X-Gm-Message-State: AMke39nEcqmiTnJv3K0LuWHYcgHyuTi4KLwL2n5VkOzHRU/MIU4wWRocDWCUeru5ISNQX0M/vd6A/1z4GlIYc4vq
X-Received: by 10.237.62.232 with SMTP id o37mr20570290qtf.188.1487622963691; 
	Mon, 20 Feb 2017 12:36:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 20 Feb 2017 12:35:43 -0800 (PST)
In-Reply-To: <CAF1M0z4W54uXfGOKowCpsW6YAeTFqKAB1zT-F=A5Po5wTT1uwQ@mail.gmail.com>
References: <CAF1M0z72cFVW61EkLqdSwPrRKO1AptMsntfxxEzo8Qy=ak79oQ@mail.gmail.com>
	<CAJTo0Lau5AyY33Y+cROUMR38uR_Msr5YSiGQtnd-Nscu-oe0nA@mail.gmail.com>
	<CAF1M0z4VWhHuzFXhRgpoDYbD00P+1R8W-9qyw_X_V2RrSFa8hA@mail.gmail.com>
	<CAF1M0z4W54uXfGOKowCpsW6YAeTFqKAB1zT-F=A5Po5wTT1uwQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Feb 2017 20:35:43 +0000
Message-ID: <CAJTo0LabYMokHZ=CrHxj-Am5F3iAjqF=-evNM=76yj7jkqXWFw@mail.gmail.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem: Installation
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
X-List-Received-Date: Mon, 20 Feb 2017 20:36:08 -0000
Content-Type: multipart/alternative; boundary=001a11406f0e4f98b60548fc36e5

--001a11406f0e4f98b60548fc36e5
Content-Type: text/plain; charset=UTF-8

On 20 February 2017 at 18:09, SatyaNarayana Sampangi <satya.2891@gmail.com>
wrote:

> Problem Solved, I did not mention the path properly in the S variable,
>
> I changed, S = "${WORKDIR}/${PN}-${PV}", which works fine.
>
> Thanks to Ross, for triggering.
>

That's the default value, so you can just delete your assignment.

Ross

--001a11406f0e4f98b60548fc36e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 February 2017 at 18:09, SatyaNarayana Sampangi <span dir=3D"ltr">&lt;=
<a href=3D"mailto:satya.2891@gmail.com" target=3D"_blank">satya.2891@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">Problem Solved, I did not mention the path properly in the S variable,<di=
v><br></div><div>I changed, S =3D &quot;${WORKDIR}/${PN}-${PV}&quot;, which=
 works fine.</div><div><br></div><div>Thanks to Ross, for triggering.</div>=
</div></blockquote></div><br>That&#39;s the default value, so you can just =
delete your assignment.</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></div>

--001a11406f0e4f98b60548fc36e5--
