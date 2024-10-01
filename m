Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BB93CEB2F8
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 04:51:07 +0000 (UTC)
Received: from seagreen.cherry.relay.mailchannels.net (seagreen.cherry.relay.mailchannels.net [23.83.223.160])
 by mx.groups.io with SMTP id smtpd.web11.74260.1727758260173036485
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Sep 2024 21:51:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=cDLJYA/I;
 spf=pass (domain: rootcommit.com, ip: 23.83.223.160, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 855379071A2
	for <yocto@lists.yoctoproject.org>; Tue,  1 Oct 2024 04:50:59 +0000 (UTC)
Received: from uk-fast-smtpout9.hostinger.io (unknown [127.0.0.6])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id D88C39071AF
	for <yocto@lists.yoctoproject.org>; Tue,  1 Oct 2024 04:50:58 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1727758259; a=rsa-sha256;
	cv=none;
	b=Tyf/htx+A87h4TVxHuGV5piUGCDcq+NU1owRX338UhNm2ajqZ/dOnjzKBM/uhEug0XkyAZ
	OuICBDfSg+kiefSz69DF+YpsRHW0nfdfPUV5KfrITDe6ycJ4+qybjviSHucv+96pnzlYqO
	HLYIB76ue1rAXlnNvKhrM/MGhnRWw41WLghJWKrYxcjlUVId6cRZe8sNcqvCqPkq4O67qK
	EbOm9sIEP+RfNKiEHn1gLhsyLXc1JNpSPlVPYB2gqVbXbReZ6zaTwc8nK4zc8x2hIDxqum
	Ij/Fsmc7lFCDmQyePKCWbPf/qD3kSjPt79s3Fy10dN9WTpLdP/76cgtQHWPMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1727758259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Qr5ac7yHl+GRTmd2X0+ngZHXnxF3IWqahcMiK9cOsCM=;
	b=1yTEsUUJTKhvbYkjtTJGtS9H+ori9DW30XQG4xEhUW+4UjNH+KcD8fqwj8RfFu3hY4Qym2
	npZkmxWNOZQvu/8jRzwo8OVQU6mMQqJgRN6b+0eaSr1LorM1tv4xZ7oaH2eMzGGzoP1kqF
	vyABajtbyUySi2ieZr7MN3qgXAoW9dJmHtpIACSImtuFyg78zWZR1fZd9QhSBtqQk91yfe
	2X/6CC9Q30iXEiTVYVqkqdQEP7UHVWa3wITT3sIHINRZZMY0ocoYwxW1EltWqMuPQhPJkb
	PxQfw/1RGx1cSoooZlr/pQf0kRcxTY2Cwr4ooutHmxiXUkv0iccOmoxJj5uScA==
ARC-Authentication-Results: i=1;
	rspamd-5b468d8b77-d8j5s;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Zesty-Stretch: 428d48bf78b55512_1727758259409_905249157
X-MC-Loop-Signature: 1727758259409:2757245686
X-MC-Ingress-Time: 1727758259409
Received: from uk-fast-smtpout9.hostinger.io (uk-fast-smtpout9.hostinger.io
 [31.220.23.89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.122.91.72 (trex/7.0.2);
	Tue, 01 Oct 2024 04:50:59 +0000
Content-Type: multipart/alternative;
 boundary="------------hT7xufPiBYWFmV0sizz55IjZ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1727758257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Qr5ac7yHl+GRTmd2X0+ngZHXnxF3IWqahcMiK9cOsCM=;
	b=cDLJYA/I3EJwIeC17bFYFtKtEyE4MRBBdQ8Zhswp2FvTHlVVggC+GxuKpWB9nf9ZPz4oY4
	r1tyHxxYIpR/KBdGntkIGZVe0kgZQnG/FXS1y2RxJtGY81+KtWlrjn7p5xRd8tTf50/L3h
	AIT97fHgrCz1YEuJlNBK1FFcLeoAFv6c4l/O4td8ZKz/GQ6x9jo6f2eyt3Kz1gAmNcEsK+
	ssNkdmvkh+JiRQihoxdJFhBmgZSrgEkIHf9SMv/qOHsRPWgQ/SYecKVG7Lh5VPdCHgya9J
	2pC6dNmaVrIcrRgJRGCyEPpcqpiM62giaoXmUGWPmxXUKtAY5RE9Ffboj1FgFg==
Message-ID: <7c6729c4-c102-440d-9b00-b00692a4c347@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com
Subject: Re: [yocto] How to install a Snap package in Image #mickledore #snapd
To: yocto@lists.yoctoproject.org, dspore@parraid.com
References: <4AAy.1727720529418877126.OAb7@lists.yoctoproject.org>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <4AAy.1727720529418877126.OAb7@lists.yoctoproject.org>
Date: Tue, 01 Oct 2024 04:50:56 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=TcnEtgQh c=1 sm=1 tr=0 ts=66fb7fb1 a=pH4DzJgSqSpp9xrhcBiIRg==:617 a=xqWC_Br6kY4A:10 a=r77TgQKjGQsHNAKrUKIA:9 a=Q4-j1AaZAAAA:8 a=d70CFdQeAAAA:8 a=qiwFmlWbSZTaNyK8CCMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iGHA9ds3AAAA:8 a=MJKU7XrNq-Bn1T8NaJ8A:9 a=rfvx5FdkPSEInjkB:21 a=_W_S_7VecoQA:10 a=9H3Qd4_ONW2Ztcrla5EB:22 a=NcxpMcIZDGm-g932nG_k:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-CM-Envelope: MS4xfGW81Y8Wfb2DZoZnhejK4534okVR+hXOa776LrfWkW743p5KQXsFLraWFYHVbxOMlpUz+A6UfDMPSU4eBnjEkVPCyUIo4DoQLQhrqTRTVxtqngcxugKt 4HFMXK5qtYac7GagWQLoFhXqpDwZjjI0HKqRmuNq6P0YIDfsyZGBzH3nQmRikN1iIKEhIcCzyTKQ8vJBlBMKFsd1zi0V/oKLYnxrr2K/rsMIlGF6e6y9PMub 9DGUACXygSQmzapTqWFvFw+IaxCLnVWKHs1ISDVenfjPfdzl2qjMW7Ast+Lcl4GJFbW1+k02xzeFujYqXo2eTEt5PCbizNMgA/uQBDFzi39+2AQt0TIn0g9j G1NJQXG3wvqoWdZPrLkZR+hk4J8Nl6XKHuBMilLpBKIERXKLXAs=
X-AuthUser: michael.opdenacker@rootcommit.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 04:51:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63918

This is a multi-part message in MIME format.
--------------hT7xufPiBYWFmV0sizz55IjZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi David,

On 9/30/24 20:22, Spore, David wrote:
> Hello,
> I have a snap package provided by a vendor that I would like to=20
> include in my Debian Bookworm 12 image (built with Yocto). How do I=20
> create a recipe that can run Snapd to install a pre-built snap=20
> package?=C2=A0 Are there any examples of how to deploy a pre-built snap=
=20
> package during the image build process?=C2=A0 I want to avoid having to=
=20
> manually run snap on the package after the image is deployed.
> DART-MX8M-PLUS - Debian Bookworm 12.5 based on Yocto Mickledore 4.2=20
> with NXP BSP L6.1.36_2.1.0


For my understanding, have you tried manually first to prove that it=20
could work? I guess you already built snapd using meta-snapd or=20
meta-snappy=20
(https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dsn=
apd)

By the way, trying to install Debian packages won't work, or at least=20
the installed binaries are not expected to work because they were built=20
against different libraries. However, this might work with a snap=20
container if all the library prerequisites are indeed included, in=20
particular the standard C library.

Cheers
Michael.

--=20

Michael Opdenacker
Root Commit
https://rootcommit.com

--------------hT7xufPiBYWFmV0sizz55IjZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi David,</p>
    <div class=3D"moz-cite-prefix">On 9/30/24 20:22, Spore, David wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:4AAy.1727720529418877126.OAb7@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div>Hello,</div>
      <div>=C2=A0</div>
      <div>I have a snap package provided by a vendor that I would like
        to include in my Debian Bookworm 12 image (built with Yocto).=C2=A0
        How do I create a recipe that can run Snapd to install a
        pre-built snap package?=C2=A0 Are there any examples of how to de=
ploy
        a pre-built snap package during the image build process?=C2=A0 I =
want
        to avoid having to manually run snap on the package after the
        image is deployed.</div>
      <div>=C2=A0</div>
      <div><span
style=3D"color: #000000; font-family: Roboto, 'Helvetica Neue', Arial, 'N=
oto Sans', sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI S=
ymbol', 'Noto Color Emoji'; font-size: 12px; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: bold; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: normal; background-color: #ffffff; text-decoration-th=
ickness: initial; text-decoration-style: initial; text-decoration-color: =
initial; float: none; display: inline !important;">DART-MX8M-PLUS
          - Debian Bookworm 12.5 based on Yocto Mickledore 4.2 with NXP
          BSP L6.1.36_2.1.0</span></div>
    </blockquote>
    <p><br>
      For my understanding, have you tried manually first to prove that
      it could work? I guess you already built snapd using meta-snapd or
      meta-snappy
(<a class=3D"moz-txt-link-freetext" href=3D"https://layers.openembedded.o=
rg/layerindex/branch/master/recipes/?q=3Dsnapd">https://layers.openembedd=
ed.org/layerindex/branch/master/recipes/?q=3Dsnapd</a>)<br>
      <br>
      By the way, trying to install Debian packages won't work, or at
      least the installed binaries are not expected to work because they
      were built against different libraries. However, this might work
      with a snap container if all the library prerequisites are indeed
      included, in particular the standard C library.</p>
    <p>Cheers<br>
      Michael.<br>
      <br>
      -- </p>
    <pre class=3D"moz-signature" cols=3D"72">Michael Opdenacker
Root Commit
<a class=3D"moz-txt-link-freetext" href=3D"https://rootcommit.com">https:=
//rootcommit.com</a></pre>
  </body>
</html>

--------------hT7xufPiBYWFmV0sizz55IjZ--

