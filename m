Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54D6DE009B9; Mon, 15 Dec 2014 16:09:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 065C1E009B2
	for <yocto@yoctoproject.org>; Mon, 15 Dec 2014 16:09:02 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-13.us.mimecast.lan; Mon, 15 Dec 2014 19:07:51 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 15 Dec 2014 16:07:50 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 15 Dec 2014 16:07:49 -0800
Thread-Topic: PHP recipe do_install() function
Thread-Index: AdAYxFQpG2SaS6JXSMKThvORlqIZAQ==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDB5E697E@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: 5gkt0ARxQVKTthhUKpY9Gg-1
Subject: PHP recipe do_install() function
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
X-List-Received-Date: Tue, 16 Dec 2014 00:09:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I I'm trying to understand this snippet from the php recipe
do_install_append_class-target() {
    install -d ${D}/${sysconfdir}/
    if [ -d ${D}/${STAGING_DIR_NATIVE}/${sysconfdir} ];then
         mv ${D}/${STAGING_DIR_NATIVE}/${sysconfdir}/* ${D}/${sysconfdir}/
    fi
    rm -rf ${D}/${TMPDIR}
    rm -rf ${D}/.registry
    rm -rf ${D}/.channels
    rm -rf ${D}/.[a-z]*
    rm -rf ${D}/var
    rm -f  ${D}/${sysconfdir}/php-fpm.conf.default
    sed -i 's:${STAGING_DIR_NATIVE}::g' ${D}/${sysconfdir}/pear.conf
    install -m 0644 ${WORKDIR}/php-fpm.conf ${D}/${sysconfdir}/php-fpm.conf
    install -d ${D}/${sysconfdir}/apache2/conf.d
    install -m 0644 ${WORKDIR}/php-fpm-apache.conf ${D}/${sysconfdir}/apach=
e2/conf.d/php-fpm.conf
    install -d ${D}${sysconfdir}/init.d
    sed -i 's:=3D/usr/sbin:=3D${sbindir}:g' ${B}/sapi/fpm/init.d.php-fpm
    sed -i 's:=3D/etc:=3D${sysconfdir}:g' ${B}/sapi/fpm/init.d.php-fpm
    sed -i 's:=3D/var:=3D${localstatedir}:g' ${B}/sapi/fpm/init.d.php-fpm
    install -m 0755 ${B}/sapi/fpm/init.d.php-fpm ${D}${sysconfdir}/init.d/p=
hp-fpm
    TMP=3D`dirname ${D}/${TMPDIR}`
    while test ${TMP} !=3D ${D}; do
        rmdir ${TMP}
        TMP=3D`dirname ${TMP}`;
    done
}

I've written a bbappend for php that removes some of the options that I don=
't need and I'm having a problem with the "rmdir ${TMP}" line failing sayin=
g that the file or directory doesn't exist. Reading this function in its en=
tirety ${TMP} shouldn't exist and this recipe shouldn't ever work because $=
{D}/${TMPDIR} has already been forcefully and recursively removed up at the=
 top of the function.=20

Am I missing something here?=20

Thanks,=20
Matt S.=20


