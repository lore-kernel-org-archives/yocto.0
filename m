Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 782A7E007BA; Tue,  6 Jan 2015 13:16:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7015E002F9
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 13:16:02 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-9.us.mimecast.lan; Tue, 06 Jan 2015 16:14:35 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 6 Jan 2015 13:14:28 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 6 Jan 2015 13:14:27 -0800
Thread-Topic: bbappend file causes php package to disappear
Thread-Index: AdAp9cElwQVqSn4CRsiwXRtTcMZp/A==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDC6821D7@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: 3mS3k_83RpigArw9vWpbHg-2
Subject: bbappend file causes php package to disappear
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
X-List-Received-Date: Tue, 06 Jan 2015 21:16:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I've been fighting a problem where bitbake can't find the php package durin=
g the do_rootfs task and I've determined that it has something to do with t=
he bbappend file I added to my layer for php.=20

The problem is with my bbappend file (php_5.4.14.bbappend) no ipk package g=
ets created for the php package, the php-cli, php-cgi, php-dev, etc package=
s all get created and install fine but there is nothing for plain old php. =
I'd be fine with this since I'm really only interested in the php-cgi packa=
ge but I want to be able create a sdk via populate_sdk which will include t=
he php-dev package which depends on the php package.=20

My bbappend file is below without it in my layer everything works fine. My =
intent for the bbappend was to remove some features that I'm not using to m=
ake the image smaller. I'm working on the with the Arago distribution on th=
e Dylan release.=20
Can anyone help me figure out what's going?=20

Thanks
Matt S.=20

#php_5.4.14.bbapend
# look for files in this layer first
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

PR_append =3D "-mzs0"

DEPENDS :=3D "${@oe_filter_out('mysql5', '${DEPENDS}', d)}"
DEPENDS :=3D "${@oe_filter_out('sqlite3', '${DEPENDS}', d)}"

EXTRA_OECONF :=3D "${@oe_filter_out('--with-mysql', '${EXTRA_OECONF}', d)}"
EXTRA_OECONF :=3D "${@oe_filter_out('--with-mysqli', '${EXTRA_OECONF}', d)}=
"
EXTRA_OECONF :=3D "${@oe_filter_out('--with-pdo-mysql', '${EXTRA_OECONF}', =
d)}"
EXTRA_OECONF :=3D "${@oe_filter_out('--with-sqlite3', '${EXTRA_OECONF}', d)=
}"
EXTRA_OECONF :=3D "${@oe_filter_out('--enable-sqlite-utf8', '${EXTRA_OECONF=
}', d)}"
EXTRA_OECONF :=3D "${@oe_filter_out('--with-pdo-sqlite', '${EXTRA_OECONF}',=
 d)}"
EXTRA_OECONF :=3D "${@oe_filter_out('--enable-wddx', '${EXTRA_OECONF}', d)}=
"

EXTRA_OECONF =3D+ " --without-pear --disable-phar "

do_install_prepend_pn-php() {
    # Add everything below even though we aren't going to use it.
    # do_install will complain and fail if these aren't found.
    install -d ${D}/${sysconfdir}/
    touch ${D}${sysconfdir}/pear.conf
    install -d ${D}/${TMPDIR}
}


