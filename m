Received: from esa10.bmw.c3s2.iphmx.com (esa10.bmw.c3s2.iphmx.com [68.232.139.98])
 by mx.groups.io with SMTP id smtpd.web12.8960.1581947242383417202
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 05:47:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=LGV4rg6+;
 spf=pass (domain: bmw.de, ip: 68.232.139.98, mailfrom: prvs=3094f87a1=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1581947243; x=1613483243;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=v0S0Amk/x9PrV3H7T3BaJ3UgKFeYryMVz/Kxz3CCeEo=;
  b=LGV4rg6+WDVcF6F2nnwuAZwmJoBquNY5FHFIcKrIINGOTwIRBhoUFDFA
   Zgns4X/Im7Wek75vijD8UZ33aim5Bz+d2aSPDfsASKV1MrdYKvjUYRozo
   rX/IFSjpAX1JSVa4OyRfKoZ9NfQ1r0rGBStr6R7N6TXI8kq3gAeh2DqSg
   k=;
IronPort-SDR: Jmcdx5EW9nSP88t8SKADWTt/4ZtVkeVFZbc0ZkcgLd1nLBJ1IRrMZHN8EwSmrI6lEpqkWmb3O1
 UNxQk/gYND0bmlzqgFUXhVYweYZ9DYT+Yh7BvF9wINjyLL84+aZvrTgzgLrlLWFntW99mhNvws
 H2qRMs3K19e1NbdqnZxPp3xmVQH88SZl9QHiPJOniJ2SjiUkzNofR2SX5B18oknFhWQJu+huXQ
 v3nZGSHNdDgwNUfFRwxFJuOup8YSoZ4DYO4Pyt5casumShp5AJBmd4hp8ICkPGwQYTSnwSssS1
 jU0=
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa10.bmw.c3s2.iphmx.com with ESMTP/TLS; 17 Feb 2020 14:47:21 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw6.muc with ESMTP/TLS;
 17 Feb 2020 14:47:19 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb6.muc with ESMTP/TLS; 17 Feb 2020 14:47:19 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Mon, 17 Feb 2020 14:47:19 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon,
 17 Feb 2020 14:47:19 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <georgi.georgiev@woodward.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures with offline/online svn build! #yocto #python
Thread-Topic: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures
 with offline/online svn build! #yocto #python
Thread-Index: AdXcRVMItAsS96VjQ36fsMtuKM+vJgJSsmTA///0WID//+ksIIAAIwqA
Date: Mon, 17 Feb 2020 13:47:18 +0000
Message-ID: <20200217134718.GT104502@korppu>
References: <bfb7604a4f7f481aad771a3472031e1b@Kemp-ExMb1.woodward.com>
 <20200217130337.GS104502@korppu>
 <0704a68acba44839865cb31e22e584db@Kemp-ExMb1.woodward.com>
In-Reply-To: <0704a68acba44839865cb31e22e584db@Kemp-ExMb1.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <52175AC59EE4854FB4B21910E7727AC1@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 17, 2020 at 01:35:02PM +0000, Georgi Georgiev via Lists.Yoctopr=
oject.Org wrote:
> Hi Mikko,
> Your patch is upstreamed and...It is actually released. If you see the er=
ror output you will see your codeline.  I decided to try with your old vers=
ion but the result is the same. Can you say something for the previous issu=
e I have about offline build.
> It seem svn is not very well supported by yocto.

Ah, indeed.

svn is supported and for me it's working quite well. It has some issues
like download cache locking when multiple recipes include the same URLs.

Where possible, I've switched to using http fetcher with tar balls and larg=
e
binary blobs in svn, but there one needs to remember to include version
details into file names...

-Mikko=
