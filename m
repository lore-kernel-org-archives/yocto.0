Return-Path: <prvs=93465f2b0=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC382E00C46; Thu,  7 Feb 2019 00:04:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [68.232.139.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Feb 2019 00:04:39 PST
Received: from esa5.bmw.c3s2.iphmx.com (esa5.bmw.c3s2.iphmx.com
	[68.232.139.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E588AE00C1E
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2019 00:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1549526680; x=1581062680;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=u8nccqm7ZVhxizJyE6646EeaDvGDM+KygMQA6TJHbws=;
	b=Zw05kt2PyZTjg7l8WTvGsJmAuWmy3augDIgtDilk/vVRd+alPsaejUrJ
	rPfFTrWAKHSXKKL6u0t802iawDeHXn7afeDg4TIshzZF6JWliqogl3wIc
	0+4FMfP80iE5WFVWq3MqDbh7TL6QvLcWDfx8z4d0U3eaS+RGCMF04qmAv s=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
	esa5.bmw.c3s2.iphmx.com with ESMTP/TLS; 07 Feb 2019 09:03:14 +0100
Received: from esabb1.muc ([160.50.100.31])  by esagw2.muc with ESMTP/TLS;
	07 Feb 2019 09:03:09 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp)
	([160.48.96.49])
	by esabb1.muc with ESMTP/TLS; 07 Feb 2019 09:03:09 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10m.europe.bmw.corp
	(160.48.96.49) with Microsoft SMTP Server (TLS;
	Thu, 7 Feb 2019 09:03:09 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1395.000;
	Thu, 7 Feb 2019 09:03:09 +0100
From: <Mikko.Rapeli@bmw.de>
To: <Matt.Schuckmann@planar.com>
Thread-Topic: [yocto] CMake based recipes and defining CMAKE_BUILD_TYPE
Thread-Index: AQHUvkgDVc0bTtt08kO3Rpe7lTSuEKXTOU0AgAAJXgCAAAVWAIAACDcAgAAE9QCAABAfAIAAhIGA
Date: Thu, 7 Feb 2019 08:03:09 +0000
Message-ID: <20190207080308.GH7474@hiutale>
References: <1549477388545.2721@planar.com>
	<CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
	<1549490698733.2960@planar.com>
	<CALbNGRQFycyLQALGNqRc43evigPgH8m6KatgbHSfmbfpHmfUcA@mail.gmail.com>
	<CALbNGRSf+rO6jCgZMWA5DPb6ZOdz4Xw=U+7jesYn24vN6afFOw@mail.gmail.com>
	<CALbNGRSFTLXtRa4Q7nAsA3dctrj3axXkbD=N3KAh71iMiMHryQ@mail.gmail.com>
	<1549498134289.97332@planar.com>
In-Reply-To: <1549498134289.97332@planar.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.36]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Thu, 07 Feb 2019 08:04:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <15C44EA1F7CA8946B7AF4448C508A760@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

From my experience, what CMAKE_BUILD_TYPE means varies between SW component=
s.
Thus I think the current approach of not setting it is correct. SW componen=
ts
must set their own defaults in either CMakeLists.txt or in the bitbake reci=
pe.

Also, building with debug info is separate from CMAKE_BUILD_TYPE. The defau=
lt
compile flags from yocto will include -g for debug symbols and this is prov=
ided
to CMake compile flags too.

Cheers,

-Mikko=

