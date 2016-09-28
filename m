Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 193D6E00CDE; Wed, 28 Sep 2016 06:52:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6464E00815
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 06:52:15 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id e66so60166095iod.1
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 06:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=U1GBVFUGq1wPVBcH54iSoG3OfqQvezoLmZxvzjh74EQ=;
	b=IklgfO7c30f7M3QM9gmiGgxIWRqqpFxuswi8LNUUrT30zziGUpyY4CJYivkYfpHbQw
	RKL+6v7xIesOOpSOKWneXcIIEOfpiZg73/CjWVyLZTouJqTKzgEXFOgNpRWExYzjEwNt
	nVa+jhm/5v9XMo7BR8Gs0iGtvmOPW97+yjfX4EO29i06qukDVTXIXGbVBz0dUErpRDlQ
	UnEaGs8jys1QB2BvZksbiJrpDno/3ScgNTgAvZou5KFZbjftuwKFcpxzJdU9ZbYbaJQb
	9bIVqVBEF/qo9gQM4mlvEGvBxtuK7Le2RmkcLYtc/+B0ZBF9vqI9RiiN701zVZlcZVNr
	RqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=U1GBVFUGq1wPVBcH54iSoG3OfqQvezoLmZxvzjh74EQ=;
	b=iwbsC2ly1kLUgHlATnrLewVQkJ/eHrwv5RYI0iKiPjhtAsqiJ+1fytkxO0VCJkuJbu
	eiwaCeMPq7QvPvCghAgJh1KXIffGEaPYMjuDlGZ2K3RA0MmonA4YkiUVS3Lg+1EFy/m4
	i30hPG6uukxWj+dno8dQJyUQHh4IySKfwf3dkns9x7cPyBznJ1w/cqi7FGCp9C+KjesK
	/l6yJrQ995XMZ/2nddC2YN3McUak8U2T3PxFeYTP8NU6LfgHIynnsE6fNOYXFgE3Jq7e
	xTQxNcFjss1n3rxuQJKlhxN0P2NqKo7XPtxSD/cCoqlvQo1OgNTt3bc0NZ1aKvXgMM2G
	PPbA==
X-Gm-Message-State: AA6/9RkZkhHyN0U5qWN5S1E5mHfmI4lWV8TvNMik0tUqUFi/tfAV2va1n/QFw+mxNsxV21FJHNV9AZfZgHm7In/T
X-Received: by 10.36.26.216 with SMTP id 207mr2423700iti.96.1475070734704;
	Wed, 28 Sep 2016 06:52:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Wed, 28 Sep 2016 06:51:54 -0700 (PDT)
In-Reply-To: <OFC8F926A8.63D3D2B3-ONC125803C.004B9A6F-C125803C.004C0885@esa-grimma.de>
References: <OF54BA18D9.07777704-ONC125803C.0049D432-C125803C.004B1BCC@esa-grimma.de>
	<CAJTo0LYW-gtrvFjRzVc2cpu2_cw_E5-xftjQyA16SZ4nrtXwNA@mail.gmail.com>
	<OFC8F926A8.63D3D2B3-ONC125803C.004B9A6F-C125803C.004C0885@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Sep 2016 14:51:54 +0100
Message-ID: <CAJTo0LZTnpcetgX2HpUc_iySC7XAOyNvtCutNrHzBmd2x5MC_A@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the common way to extend an package without bbappend?
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
X-List-Received-Date: Wed, 28 Sep 2016 13:52:44 -0000
Content-Type: multipart/alternative; boundary=001a1143e38629a98b053d91ab05

--001a1143e38629a98b053d91ab05
Content-Type: text/plain; charset=UTF-8

On 28 September 2016 at 14:50, <S.Jaritz@esa-grimma.de> wrote:

> do_install () {
>         install -d ${D}/usr/share/apache2/htdocs/
>         cp -r ${S}/myweb/* ${D}/usr/share/apache2/htdocs/
> }
> FILES_${PN} += "/usr/share/apache2/htdocs/*"


Just put the files somewhere else, like /var/www/myweb/.  You'll need to
configure apache appropriately, of course, but I've not done that for about
a decade.

Ross

--001a1143e38629a98b053d91ab05
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 September 2016 at 14:50,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.J=
aritz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-se=
rif">do_install () {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 instal=
l
-d ${D}/usr/share/apache2/htdocs/</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 cp
-r ${S}/myweb/* ${D}/usr/share/apache2/htdocs/</font>
<br><font size=3D"2" face=3D"sans-serif">}</font>
<br><font size=3D"2" face=3D"sans-serif">FILES_${PN} +=3D &quot;/usr/share/=
apache2/htdocs/*&quot;</font>
</blockquote></div><br>Just put the files somewhere else, like /var/www/myw=
eb/.=C2=A0 You&#39;ll need to configure apache appropriately, of course, bu=
t I&#39;ve not done that for about a decade.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1143e38629a98b053d91ab05--
