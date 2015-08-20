Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4AE3E009CC; Wed, 19 Aug 2015 18:55:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE131E0097F
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 18:55:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99827034"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 Aug 2015 09:58:51 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7K1tVTJ020247;
	Thu, 20 Aug 2015 09:55:31 +0800
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Thu, 20 Aug 2015 09:55:35 +0800
From: "Li, Xin" <lixin.fnst@cn.fujitsu.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] [meta-cgl][PATCH] ocfs2-tools: upgrade 1.4.3 -> 1.4.4
Thread-Index: AQHQ2lY3SOPrdUSD90mRO/2x4kzTgZ4SxreAgAFakGA=
Date: Thu, 20 Aug 2015 01:55:34 +0000
Message-ID: <A8FC939F80655644A89BB21CCD3741E8011BCBB2A0@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <1439971693-9112-1-git-send-email-lixin.fnst@cn.fujitsu.com>
	<20150819131251.GB2441@jama>
In-Reply-To: <20150819131251.GB2441@jama>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.92]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] ocfs2-tools: upgrade 1.4.3 -> 1.4.4
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
X-List-Received-Date: Thu, 20 Aug 2015 01:55:43 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable


>> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
>> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
>> @@ -20,9 +20,10 @@ SRC_URI =3D " \
>>      file://o2cb.service \
>>      file://ocfs2.service \
>>  "
>> -SRC_URI[md5sum] =3D "296f1242f4d00d188231d726d7a1d148"
>> -SRC_URI[sha256sum] =3D
>"a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2ee56e175b0e4d0b3"
>> -S =3D "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
>> +SRC_URI[md5sum] =3D "4a17530629bfea5a7517d1db466e32e1"
>> +SRC_URI[sha256sum] =3D
>"a9956f296443360cf66a7bf8298bfd82c51a8e37e569674c0afb9cfa18f68af5"
>
>Don't use unstable github archives which are regenerated from time to time=
.

OK
I will modify the SRC_URI, and Patch V2 will be sent.

Thanks
>
>> +
>> +S =3D "${WORKDIR}/${PN}-${PN}-${PV}"
>>  inherit autotools-brokensep pkgconfig  DEPENDS =3D "corosync openais
>> cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs"
>>  RDEPENDS_${PN} =3D "bash coreutils net-tools module-init-tools e2fsprog=
s
>chkconfig glib-2.0"
>> --
>> 1.8.4.2
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>--
>Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

