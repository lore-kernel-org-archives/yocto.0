Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C0DE00BC4; Tue, 20 Jun 2017 22:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.6 listed in list.dnswl.org]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E64E00B51
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 22:28:48 -0700 (PDT)
Received: from [216.82.250.99] by server-6.bemta-12.messagelabs.com id
	33/6A-31091-F040A495; Wed, 21 Jun 2017 05:28:47 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRWlGSWpSXmKPExsVySpdNU5ebxSv
	SYHIzm8X57S/ZLCa9XMPmwOSxeM9LJo/2E31sAUxRrJl5SfkVCawZF2YeZClYz1Xx8uxB1gbG
	VxxdjFwcQgJbGSWW/b3OAuFsYZT4NukYI4Szl1FiwrMj7F2MnBxsAjoSjz/cYQWxRQS0JHqf9
	LCA2MwCphKTZ7Qwg9jCArYSV/Y/Y4aosZM4sGsVC4RtJfHg1kE2EJtFQFXi58a7YHFeAXeJ2S
	uvMEEsa2KUmPP4N1gRp4CbxM0Dx8EWMwqISXw/tYYJYpm4xK0n88FsCQEBiSV7zjND2KISLx/
	/Y4WwDSS2Lt3HAmErSKzsbmCDsK0l9s9bygoxR0diwe5PbBC2tsSyha+ZIQ4SlDg58wlYr5CA
	ssSeRw2MExglZiFZPQtJ+ywk7bOQtC9gZFnFqF6cWlSWWqRrrJdUlJmeUZKbmJmja2hopJebW
	lycmJ6ak5hUrJecn7uJERiPDECwg/F+n/MhRkkOJiVR3pIvnpFCfEn5KZUZicUZ8UWlOanFhx
	hlODiUJHj3M3lFCgkWpaanVqRl5gATA0xagoNHSYQ38Q1QK29xQWJucWY6ROoUo6KUOK8EM1C
	fAEgiozQPrg2WjC4xykoJ8zICHSLEU5BalJtZgir/ilGcg1FJmDcUZDtPZl4J3PRXQIuZgBa/
	OOIBsrgkESEl1cBY/+ii1SYHsTep227fnfc0enV1hnzzKmXTDQYcHzfOmq24ZIXxOd3Xp9Q/7
	NqtznRYnV9i678n735uOZC36npr+wfB2+t2JFZutEm0rwtIcXXcti2kOiNkSj//z8YPLk3zzr
	EEFyo4npe/o+TY+rXz9CNnDRG9WXFGRzptzkyRaT9bk6ZzUvyyEktxRqKhFnNRcSIAwJH8c0E
	DAAA=
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-10.tower-126.messagelabs.com!1498022920!130474729!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13643 invoked from network); 21 Jun 2017 05:28:42 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-10.tower-126.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 21 Jun 2017 05:28:42 -0000
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 21 Jun 2017 10:58:39 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB03.ad.harman.com (10.99.236.93) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 21 Jun 2017 10:58:39 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Wed, 21 Jun 2017 10:58:39 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "Maxin B. John" <maxin.john@intel.com>
Thread-Topic: [EXTERNAL] Re: [yocto] Openjdk-8 fetcher failure
Thread-Index: AdLowktVj4abpQzDTAGInlO0fa2utgADIaWAAGAVdRA=
Date: Wed, 21 Jun 2017 05:28:39 +0000
Message-ID: <02df48fb23e74cdd8889b6b521782f62@HIBDWSMB03.ad.harman.com>
References: <2ea62f0ed3fc4c94960c6ac199d94061@HIBDWSMB03.ad.harman.com>
	<20170619130653.GA12563@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20170619130653.GA12563@mbabyjoh-desk.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Openjdk-8 fetcher failure
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
X-List-Received-Date: Wed, 21 Jun 2017 05:28:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI John,=20

Using the 'wget',  I am able to download the file.

Best Regards
Alok Pawar
Sr. Engineer Product Development

-----Original Message-----
From: Maxin B. John [mailto:maxin.john@intel.com]=20
Sent: Monday, June 19, 2017 6:37 PM
To: Pawar, Alok <Alok.Pawar3@harman.com>
Cc: yocto@yoctoproject.org
Subject: [EXTERNAL] Re: [yocto] Openjdk-8 fetcher failure

Hi Alok,

On Mon, Jun 19, 2017 at 06:11:20AM +0000, Pawar, Alok wrote:
>=20
>Hi All,
>
> I am using yocto 2.1.2 krogoth, and I added meta-java in it, but when I t=
ried to bitbake. I faced fetcher failure, following are the Error :
>
>ERROR: openjdk-8-102b14-r0 do_fetch: Fetcher failure: Fetch command failed=
 with exit code 4, output:
>
>  Read error (Connection timed out) in headers.
>
>  Read error (Connection timed out) in headers.
>
>ERROR: openjdk-8-102b14-r0 do_fetch: Function failed: Fetcher failure for =
URL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.t=
ar.bz2;name=3Dhotspot;unpack=3Dfalse'. Unable to fetch URL from any source.
>
>Please give your inputs.

This could be related to the network configuration in your build machine.

Have you tried to fetch that file manually using wget from your machine ?
ie:
# wget http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.=
tar.bz2


Best Regards,
Maxin

