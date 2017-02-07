Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FE5DE0085D; Tue,  7 Feb 2017 09:34:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED21EE00655
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 09:34:40 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id s186so95604620qkb.1
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 09:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tMOqCOsLa6oc79v/5vEd4eUx1AUyOfFbNzjmaZxvVQU=;
	b=WT29xOpvnvtfOmuc2nA1das6obxkN4eUYGdacOP7JNMk9Syr5s70RoLZciH20eSUlo
	38/CyITnfMxSR2CYs67QYCjfZWeg8JKuX0ePv7YFNn2ZdI7ktuJfVHXo1NHEgBSaSYYb
	QyKppOLEkW25XmktgfdqD/+PNsyJlrA+Py4WNuYbIpV9W0IVq5WPDnxqKH7Ihzr4cSY7
	56NvdvhoyjpTHJhXLuvaHCJUTvAp1RkOgpHNIbODbcJiuHDfhHLnNStOUUYh8nOviuE7
	Rpv7rEKi0DfVUi5IUNc5jcJzPbyvNv9fd3s6jAUzjf0fP6bl5m2ItJi0AoxXflqY5QGB
	SnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tMOqCOsLa6oc79v/5vEd4eUx1AUyOfFbNzjmaZxvVQU=;
	b=UjznGufmi1Ny8JI3fqGHXCK+EtNzQV/f6lEpzr2F83qEXhjsW7j9ivZTbUUyZahYAO
	ovIv5t+B4XRdI5LfB00IctbD0T0b5qS6L73adTZm7iI1x4rf2uB25f+xSAGFPEdUOvAP
	s29CiE9gCCT+3q4+l5h+75/flAVi4EKpKK+H7j/4RVSOUU0U6ewr2V/PvuQzKA5ARq/7
	tRPs688Qb7WHevWFtnh5O58PRG6J/bdEZ32H6jqC7P2TtoJL/bde/GgsAiuYMtNFLUAX
	bd0XRBlqH5x/ZEsxvkn3N1k/tVWNWx1cj7O+ELoUOYdTpdxo00Jnb27DemA2MP8O/Vr1
	qemw==
X-Gm-Message-State: AMke39nkCuSsTs9ycCYGfJaiGCyA2lPwMb4NsqHp/zsiEQ4EElihr2Z4kpdYBZGqU4MgQsN4qbwrt+ecR3w5sJvj
X-Received: by 10.55.1.134 with SMTP id u6mr17963023qkg.36.1486488879697; Tue,
	07 Feb 2017 09:34:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Tue, 7 Feb 2017 09:34:19 -0800 (PST)
In-Reply-To: <6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31@FMSMSX106.amr.corp.intel.com>
References: <6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31@FMSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Feb 2017 17:34:19 +0000
Message-ID: <CAJTo0LZ6PsPyW1ahJqikBucqFyhvRz_tXZa=2+R5NjiTu9CMvg@mail.gmail.com>
To: "Wilde, DonaldX" <donaldx.wilde@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing iperf3 causes strange image corruption
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
X-List-Received-Date: Tue, 07 Feb 2017 17:34:43 -0000
Content-Type: multipart/alternative; boundary=001a114046c4a329cf0547f42982

--001a114046c4a329cf0547f42982
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 1 February 2017 at 20:28, Wilde, DonaldX <donaldx.wilde@intel.com> wrote=
:

> Unfortunately, what happens is that somewhere along the line after the
> initial patch and compilation, something in our image gets radically
> corrupted. With IMAGE_INCLUDE +=3D =E2=80=9Ciperf3=E2=80=9D set, the imag=
e is corrupted.
> Horrible results occur including that much of our NVRAM content becomes
> invisible and we get dumped into some kind of emergency debugging shell
> after about 6.3 seconds.
>
...

> starting pid 1363, tty '': '/etc/init.d/rcS'
>
> can't run '/etc/init.d/rcS': No such file or directory
>

IMAGE_INCLUDE isn't a standard variable, so either you typo'd that or it's
a variable that  your images use.  Either way, your error is basically "the
rootfs is bust" so it's quite possible that by assigning to IMAGE_INCLUDE
from your local.conf may be overriding the default value (set by ?=3D).

For example, if you meant IMAGE_INSTALL then image.bbclass uses
IMAGE_INSTALL ?=3D so by doing +=3Diperf3, you're building an image that *j=
ust*
contains iperf3.

Try using IMAGE_INSTALL_append =3D " iperf3".

Ross

--001a114046c4a329cf0547f42982
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 February 2017 at 20:28, Wilde, DonaldX <span dir=3D"ltr">&lt;<a href=
=3D"mailto:donaldx.wilde@intel.com" target=3D"_blank">donaldx.wilde@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoN=
ormal">Unfortunately, what happens is that somewhere along the line after t=
he initial patch and compilation, something in our image gets radically cor=
rupted. With IMAGE_INCLUDE +=3D =E2=80=9Ciperf3=E2=80=9D set, the image is =
corrupted. Horrible results occur including
 that much of our NVRAM content becomes invisible and we get dumped into so=
me kind of emergency debugging shell after about 6.3 seconds.</p></blockquo=
te><div>... =C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNorma=
l"><u></u></p><p class=3D"MsoNormal"><u></u></p>
<p class=3D"MsoNormal">starting pid 1363, tty &#39;&#39;: &#39;/etc/init.d/=
rcS&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">can&#39;t run &#39;/etc/init.d/rcS&#39;: No such fil=
e or directory</p></blockquote></div><br>IMAGE_INCLUDE isn&#39;t a standard=
 variable, so either you typo&#39;d that or it&#39;s a variable that =C2=A0=
your images use.=C2=A0 Either way, your error is basically &quot;the rootfs=
 is bust&quot; so it&#39;s quite possible that by assigning to IMAGE_INCLUD=
E from your local.conf may be overriding the default value (set by ?=3D).</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">For exa=
mple, if you meant IMAGE_INSTALL then image.bbclass uses IMAGE_INSTALL ?=3D=
 so by doing +=3Diperf3, you&#39;re building an image that *just* contains =
iperf3.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Try using IMAGE_INSTALL_append =3D &quot; iperf3&quot;.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114046c4a329cf0547f42982--
