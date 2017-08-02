Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0BDAE00C9E; Wed,  2 Aug 2017 03:34:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF75E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 03:34:25 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id c74so18696316iod.4
	for <yocto@yoctoproject.org>; Wed, 02 Aug 2017 03:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KxLz7IFb/B1ZKgI3+NgJ5ZGpcydTPQL0XDdXmdDTQYc=;
	b=U5qjNqjBOjOKb+bn36CHU4ybXC3owmttScT4qcKPsIP00Dn9WD4h/FQOSbojHnmwT6
	7U+2ity/TIJQSfMdXuanMzc8kZMlYp+n8n1H0B2HbieEBravMP5cgYM8ol3CFxrjlIxE
	oftJEfKBeIuWfRtB2klnJfPeLj2D0pDSerNEKmYQbrfiO5w2qWBQC36IbhV67gXPvw9P
	21lRvLb5+t/66+LoNNJGCAzcJakiH4ng61vIYcTRZ1lM7f+M1XsSSCAMMzMfuNYMYvLz
	mjHCEqHtA0unZYLnZJUZ+XVopbxB2nwvE3yXWvQQsfJkRKXtutrdWBivJaMtT679uEyv
	PctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KxLz7IFb/B1ZKgI3+NgJ5ZGpcydTPQL0XDdXmdDTQYc=;
	b=cmp+QPRZXarEW0NKZvVI6GKgC6G25/iMCvodTebYkjNXO4q8zyKd+XVPKvcWKg1DPw
	mfZjsWxtlYCfNTMWIc5u8mzUe0x1BiAShCLmUD8uIG+/9vjKAcVFtff7dvwB41BMCuxY
	KkHkbpp6AcmPm/n96FsXcBJVv4gj3vcAmBvwlemrW32A5e9zfwRadTB/0PL/k4ML6WH0
	QpPoqRprTSe/G9G4PYBUTA9SolL9u1OATFKC949xUgxxD5FjHbsY4Xtkvrn2t3RuvWNA
	pRiXz4vCpbv706Aao5SaiP2S1Qc2SoIpPRG3sJVxSw3AHVwx6kEP5oicY6wh4mwXM6Ep
	cPdA==
X-Gm-Message-State: AIVw113mL6OnmAyY6fqcbHx0mHMJyOSdX+xrZCEHOQXChiLeVX5We0OJ
	LU3CAGTG0HlASO0t21wpx/bOwiCYaChz
X-Received: by 10.107.170.170 with SMTP id g42mr27633207ioj.19.1501670065621; 
	Wed, 02 Aug 2017 03:34:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Wed, 2 Aug 2017 03:34:05 -0700 (PDT)
In-Reply-To: <568398942.4073936.1501667235929@mail.yahoo.com>
References: <568398942.4073936.1501667235929.ref@mail.yahoo.com>
	<568398942.4073936.1501667235929@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Aug 2017 11:34:05 +0100
Message-ID: <CAJTo0LbifEhF4sUgZmaipkem2tRDUurWyvqBMmYE2GA4oRwAfw@mail.gmail.com>
To: Bacheh Karaji <bachehkaraji@yahoo.com>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: How to strip down my Yocto Linux?
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
X-List-Received-Date: Wed, 02 Aug 2017 10:34:27 -0000
Content-Type: multipart/alternative; boundary="001a114260bad4ea750555c2ce17"

--001a114260bad4ea750555c2ce17
Content-Type: text/plain; charset="UTF-8"

First, the core images are examples; copy and paste the closest to what you
want and then modify the recipe.

If you want a really small image then start from core-image-minimal, but be
aware that is missing a lot of stuff you may actually want.

How to remove things depends on how they got installed in the first place.
Unless you have doc-pkgs in IMAGE_FEATURES then you shouldn't have any man
pages or documentation.  If the poco recipe installs sample code you don't
want then fix the recipe to put those in another package. etc etc.

Ross

On 2 August 2017 at 10:47, Bacheh Karaji <bachehkaraji@yahoo.com> wrote:

> I would like to strip down my Yocto Linux before put in it to flash.
> Unneeded software, man pages, POCO sample codes and other documentation
> just waste resource, especially on the i.MX28 EVK with only 128MB flash.
>
> My local.conf file looks following:
>
>
>
>
>
> *$ gedit conf/local.conf & ... IMAGE_INSTALL_append = " poco nginx
> canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc
> ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd
> mtd-utils u-boot-fw-utils ethtool" ... I bitbake the image
> "core-image-base"*.
>
> I was wondering, is there a way that I can delete all of the Unneeded
> files?
>
> Can somebody help me howto strip down my Yocto Linux?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114260bad4ea750555c2ce17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>First, the core images are examples; copy and paste t=
he closest to what you want and then modify the recipe.</div><div><br></div=
>If you want a really small image then start from core-image-minimal, but b=
e aware that is missing a lot of stuff you may actually want.<div><br></div=
><div>How to remove things depends on how they got installed in the first p=
lace.=C2=A0 Unless you have doc-pkgs in IMAGE_FEATURES then you shouldn&#39=
;t have any man pages or documentation.=C2=A0 If the poco recipe installs s=
ample code you don&#39;t want then fix the recipe to put those in another p=
ackage. etc etc.</div><div><br></div><div>Ross</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 2 August 2017 at 10:47, Bacheh =
Karaji <span dir=3D"ltr">&lt;<a href=3D"mailto:bachehkaraji@yahoo.com" targ=
et=3D"_blank">bachehkaraji@yahoo.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,Helvetica,A=
rial,sans-serif;font-size:x-small"><p style=3D"margin:0px 0px 1em;padding:0=
px;border:0px;font-stretch:inherit;line-height:inherit;vertical-align:basel=
ine;clear:both;color:rgb(36,39,41)"><span style=3D"font-family:Arial,&quot;=
Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px">I would like to s=
trip down my Yocto Linux before put in it to flash. Unneeded software, man =
pages, POCO sample codes and other documentation just waste resource, espec=
ially on the i.MX28 EVK with only 128MB flash.
</span><br>
<br><span style=3D"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:15px">My local.conf file looks following:
</span><br>
<br><font face=3D"courier new, courier, monaco, monospace, sans-serif" size=
=3D"2"><i>$ gedit conf/local.conf &amp;
<br>...
<br>IMAGE_INSTALL_append =3D &quot; poco nginx canutils vsftpd curl fcgi sp=
awn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc=
 minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool=
&quot;
<br>...
<br>I bitbake the image &quot;core-image-base&quot;</i>.
</font><br>
<br><span style=3D"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:15px">I was wondering, is there a way that I can delete=
 all of the Unneeded files?
</span><br>
<br><span style=3D"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:15px">Can somebody help me howto strip down my Yocto Li=
nux?</span><br></p></div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114260bad4ea750555c2ce17--
