Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2CA1E00860; Tue,  6 Jan 2015 15:11:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB14DE00571
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 15:11:49 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-22.us.mimecast.lan; Tue, 06 Jan 2015 18:11:48 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 6 Jan 2015 15:11:47 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 6 Jan 2015 15:11:47 -0800
Thread-Topic: bbappend file causes php package to disappear
Thread-Index: AdAp9cElwQVqSn4CRsiwXRtTcMZp/AAD4lfg
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDC682231@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDC6821D7@MSXBEBVT12.planar.net>
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDC6821D7@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: ul0YW4ACQ5C94Hqj8ILK9A-1
Subject: Re: bbappend file causes php package to disappear
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
X-List-Received-Date: Tue, 06 Jan 2015 23:11:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

=20
> I've been fighting a problem where bitbake can't find the php package
> during the do_rootfs task and I've determined that it has something to
> do with the bbappend file I added to my layer for php.

It's funny how once you give up and post a question to a message board new =
insights pop into your head and you (or at least I) often find the solution=
 on your own.=20

Turns out the problem was by turning of the phar and pear options in my bba=
ppend caused the php package to be empty and therefore no php ipk was gener=
ated. There was a note about not creating the empty package way down in the=
 log file for the do_package step but I never saw it.=20

I added ALLOW_EMPTY_${PN} =3D "1" to my bbappend and now things are working=
 much better.=20

It's really frustrating when silent failures like this occur and they seem =
to happen to new users like me all too often with this tool.=20

Matt S.=20


