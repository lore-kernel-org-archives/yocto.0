Return-Path: <prvs=1888a555c=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA90DE00BD5
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 00:59:17 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqAEANsJXlOsEApK/2dsb2JhbABZhCzEZoEidIInBTpRARUVFC8TJgEEGxOIK8llF44og1yBFQSPIYV6BYpxjwqCKw
X-IPAS-Result: AqAEANsJXlOsEApK/2dsb2JhbABZhCzEZoEidIInBTpRARUVFC8TJgEEGxOIK8llF44og1yBFQSPIYV6BYpxjwqCKw
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Yocto Project Discussion ML (yocto@yoctoproject.org)"
	<yocto@yoctoproject.org>
Thread-Topic: Binary {deb,rpm} package install without repackaging
Thread-Index: Ac9it78gwedlVLWVTQCx5IBAnL2Dtw==
Date: Mon, 28 Apr 2014 07:59:14 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064010C6F9F@sdexmbx1srv.skidata.net>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.111.80]
MIME-Version: 1.0
Subject: Binary {deb,rpm} package install without repackaging
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
X-List-Received-Date: Mon, 28 Apr 2014 07:59:19 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everybody,
I've got a question regarding the binary deb/rpm packages in yocto.

Is there any possibility to install a binary deb/rpm package in the rootfs =
build without repackaging it?
Naively I'm for example thinking of an option in the image recipe like:
ADDITIONAL_PACKAGES +=3D "/path/to/package.{deb,rpm}"

The point is that all possible solutions I found using recipes are extracti=
ng and then repackaging the package.
Due to the fact that during the repackaging all meta data and {pre,post}{rm=
,inst} scripts of the original package are lost this is a "no-go" for me.

I'd appreciate any help and hints!

Thanks!

best regards,
Richard

