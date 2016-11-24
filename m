Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10EC0E00D42; Thu, 24 Nov 2016 08:17:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E5E0E00BC0
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 08:17:56 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id n21so53812964qka.3
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 08:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jyt2SinYNal5+ZfQ6Y8eLE4JidY4CBWNSGhoTQcdb4s=;
	b=lgGZhwb8ZO649aqgSPmNiHJ6n1Gqcf5323WT/kWPn//UnplwtnLYrto8DaqOkcyqGf
	KvcaqMDok1NWBFDBWvIS7zuJw0WwQP89XLl0LqpIJkqYSQaSh9YHs9GilMKd/BLAaIQv
	E5hcFID2tAH3ZgOldGD4aLtOcZoiMFGWH6TfoJGBk/LtQW6ZpI9PbztXVrl46Dmr0gdp
	L0FOGBpd09fD+h0Tt+rM0/1QWWUqOtePWEdFASmD6ThclG9sq9V30UqNX1+QfS0dPW1B
	mbUywiHBaXrh4jwUHnXrA3ZXCOSNatHc/ctbUY2GldN/LDKfK7fUqZb7/gNRQJcPrdsJ
	JZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jyt2SinYNal5+ZfQ6Y8eLE4JidY4CBWNSGhoTQcdb4s=;
	b=Y9JKrJMnqn6/gd+nwEZ6uPRLnJ1wKxJBYjb30ot3gT5PmVbU69QzkaQl9uZ9vrb2GP
	kpErFsixWpxClbt+pOs+XgSivF2x9v5Uvd1PdIgnQwTovdBhKk0PCITrt84dK29rLqFY
	lWc+qAvMil/3bW0cWOJHur56x8nyxC6PakwPR6FSXAGykVUSfKVrCRngGFafUTDb3gkB
	3kunNhLWsQm+pkeZOhU5s53LwFpgj6Sx8z4aXDEWKZE07PfJ9a62N/sBdQ8eGSYcLUFc
	ReIFYmd3rtocG0z7jwGpiycYAxvBEqsUwWMferNI6c5gMLNXVVGbJL5xSXD+7GYKD6ir
	4WEw==
X-Gm-Message-State: AKaTC00B1Cpq6CLo1FO/WUME79iWU2jfhMrwh0CouCj7G5jVPXIMUGNig38gLS2Kc4O7CdwjFhJkANubeMfDGybD
X-Received: by 10.55.207.78 with SMTP id e75mr3197775qkj.36.1480004275532;
	Thu, 24 Nov 2016 08:17:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Thu, 24 Nov 2016 08:17:35 -0800 (PST)
In-Reply-To: <850BD461-F8B3-4D8E-9564-70E4D69F5EFF@supercoders.com.au>
References: <850BD461-F8B3-4D8E-9564-70E4D69F5EFF@supercoders.com.au>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Nov 2016 16:17:35 +0000
Message-ID: <CAJTo0LZUrfrC3Vxi=h0z0bhLnhZ5sycgJQEhKxORtKsPOTE3xw@mail.gmail.com>
To: Andrew Stuart <andrew.stuart@supercoders.com.au>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: glibc-locale-2.24-r0 do_package: QA Issue: glibc-locale: Files/directories were installed but not shipped in any package
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
X-List-Received-Date: Thu, 24 Nov 2016 16:17:58 -0000
Content-Type: multipart/alternative; boundary=001a1145b7b81c0d1b05420e5980

--001a1145b7b81c0d1b05420e5980
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 November 2016 at 08:36, Andrew Stuart <
andrew.stuart@supercoders.com.au> wrote:

> I am doing bit "bitbake xen-guest-image-minimal=E2=80=9D and getting the =
errors
> seen below with locale.
>

Do you have anything non-standard in your local.conf, specifically
controlling locales?

Ross

--001a1145b7b81c0d1b05420e5980
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 November 2016 at 08:36, Andrew Stuart <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrew.stuart@supercoders.com.au" target=3D"_blank">andrew.stuar=
t@supercoders.com.au</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div id=3D":2dx" class=3D"a3s aXjCH m158957cbb340612c">I am doing bit &qu=
ot;bitbake xen-guest-image-minimal=E2=80=9D and getting the errors seen bel=
ow with locale.<br></div></blockquote></div><br>Do you have anything non-st=
andard in your local.conf, specifically controlling locales?</div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1145b7b81c0d1b05420e5980--
