Return-Path: <prvs=158548b46=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FEF7E00D60; Thu, 19 Sep 2019 06:48:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.133.110 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa9.bmw.c3s2.iphmx.com (esa9.bmw.c3s2.iphmx.com
	[68.232.133.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15EE1E00CAA
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 06:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1568900903; x=1600436903;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=1jEmszfdUXD4Pj7yjsy16uB4U/jKFSSvcasIpRfqppo=;
	b=SYNtbNvmj2nMtQjI1r80rnmaG5excFFyqlZGNckBpYclQTAzzR41B0vH
	ASrqRAG7MXd5GbbbFxERaz1x4KVrjzhRFUg/YkHDq1QODqYWOzQjtSVZV
	RZq9SPPTGJiJA4kcy5rMXpa4x6kLGzyYyCgIxxg2VEVRM0NZR9/8xYwDw U=;
IronPort-SDR: qyCsJGAfhH1W08LlUkMr3rymlDE0CGtSlPei0EBzqNYIsYEs/OokLwJgn0QbP6DHNOCK2c1WxE
	TlxGAH8a9w9qX06b3G1oaeYrFFPxUnAo0MNaa57U4Wotywh7b004gybhtrkWT7ShTU4fBJG7oU
	FQndO5Qc8ab0EyIZcUJJvyjAD/7OM979e9TrX3O30xVLaBFZ3LxzoqucH48g357hSn+E/pBTwE
	BpdPcW6yNLk0VdU4XDbR48BSWZnzbhqn9r1wQKxC+3lTDCIjeCpcy1mulh3Pte5WMOhIOYaQkw
	If4=
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
	esa9.bmw.c3s2.iphmx.com with ESMTP/TLS; 19 Sep 2019 15:48:22 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw4.muc with ESMTP/TLS;
	19 Sep 2019 15:48:21 +0200
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp)
	([160.48.96.47])
	by esabb2.muc with ESMTP/TLS; 19 Sep 2019 15:48:20 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10k.europe.bmw.corp
	(160.48.96.47) with Microsoft SMTP Server (TLS;
	Thu, 19 Sep 2019 15:48:20 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005;
	Thu, 19 Sep 2019 15:48:20 +0200
From: <Mikko.Rapeli@bmw.de>
To: <wpdster@gmail.com>
Thread-Topic: [yocto] How to share files between recipes?
Thread-Index: AQHVbvBEuLez0qYf1kqKdAactO//uacy4mMA
Date: Thu, 19 Sep 2019 13:48:20 +0000
Message-ID: <20190919134820.GI6154@hiutale>
References: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
In-Reply-To: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.46]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to share files between recipes?
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
X-List-Received-Date: Thu, 19 Sep 2019 13:48:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <09F7641710B14C469219B645800B4460@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 19, 2019 at 09:39:32AM -0400, Patrick Doyle wrote:
> I have a set of data files (cryptographic keys) that I would like to
> share among several recipes in my build.  They won't go into the
> rootfs, but they will be used by multiple recipes that construct the
> rootfs.  So, to the best of my understanding, it seems like I should
> put them in sysroot and somehow access them from there.

One possibility is to provide these keys as host native tools and data to
build of target recipes. This makes the files available in the build enviro=
nment
but does not expose them to target.

Create a -native recipe which has and installs the files and use via DEPEND=
S to
the -native recipe.

Hope this helps,

-Mikko=

