Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.18179.1594728805463347596
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 05:13:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=T1UsKgTo;
 spf=neutral (domain: bmw.de, ip: 140.211.169.56, mailfrom: prvs=4570d8c8e=mikko.rapeli@bmw.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55BE7E01E7B; Tue, 14 Jul 2020 05:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www; Tue, 14 Jul 2020 05:13:24 PDT
Received: from esa10.hc324-48.eu.iphmx.com (esa10.hc324-48.eu.iphmx.com [207.54.69.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37751E01E32
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 05:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1594728804; x=1626264804;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=yGuIs+UM4q+uy97bZdkqI1hOtPj/nQ2JANwbtDpQib8=;
  b=T1UsKgToJBecqQu3x4jdroDm0qOS1UyH08SpVbTtSFkboOjCWpSqVG1r
   QXJ73mjq60M/dJCOMLUIGEFAu28w9Dcwg3Ln1ZexDapKei6V+up9C3xKb
   HOf5RRhzf6ccvRal97ZlkICu4ucS7G6wdEe0Ql+DqkRrxYoxNvDX+zSa5
   s=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa10.hc324-48.eu.iphmx.com with ESMTP/TLS; 14 Jul 2020 14:12:19 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw3.muc with ESMTP/TLS;
 14 Jul 2020 14:12:11 +0200
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb6.muc with ESMTP/TLS; 14 Jul 2020 14:12:11 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Tue, 14 Jul 2020 14:12:10 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.006; Tue,
 14 Jul 2020 14:12:10 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mans.zigher@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] meta layers priority using BBFILE_PRIORITY in layer.conf is not working for me?
Thread-Topic: [yocto] meta layers priority using BBFILE_PRIORITY in layer.conf
 is not working for me?
Thread-Index: AQHWWcA/xIyxC3K6/kCNsRcQdfI+YKkGzu6AgAALDICAAAD9gA==
Date: Tue, 14 Jul 2020 12:12:10 +0000
Message-ID: <20200714121209.GD108868@korppu>
References: <CAEhQi8kgE933ACogqL48Ncdofcu-DW85sJ275ccZH0WFTKEOJA@mail.gmail.com>
 <CAEhQi8nxjCkWr6YZ_6BTOg4RddY7ff8fU5sj33XCnTp_W7LACQ@mail.gmail.com>
 <CAEhQi8kJuZNpx5=-oaFowLkR_2bWkAanBfPYgrk1uFMuTrdTAQ@mail.gmail.com>
In-Reply-To: <CAEhQi8kJuZNpx5=-oaFowLkR_2bWkAanBfPYgrk1uFMuTrdTAQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <23E3B61D7E3AB647B1B6CCDBFA080B0A@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 14, 2020 at 02:08:37PM +0200, Mans Zigher wrote:
> I figured it out the problem was that in meta-layer1 we had
> SRC_URI_append_machine1 +=3D "file://0001-patch-one.patch" this
> apparently will always be added to the end of  SRC_URI list and
> thereby the meta-layer2 patches will be applied first. Is it possible
> to get machine specific patches applied first?

You can try with SRC_URI_prepend_machine1.

Cheers,

-Mikko=
