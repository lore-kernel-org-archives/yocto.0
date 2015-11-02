Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A03B8E00BD5; Sun,  1 Nov 2015 17:38:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB8FE009EF
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 17:38:45 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="102533983"
Received: from bogon (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 02 Nov 2015 09:40:47 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id tA21c2pP027680;
	Mon, 2 Nov 2015 09:38:02 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Mon, 2 Nov 2015 09:38:37 +0800
From: "Li, Xin" <lixin.fnst@cn.fujitsu.com>
To: akuster808 <akuster808@gmail.com>
Thread-Topic: [yocto] [meta-security][PATCH] samhain: upgrade to 4.1.0
Thread-Index: AQHREvahz6kaWxQJ70G5WGRHm5iXq56D2UYAgAQesoA=
Date: Mon, 2 Nov 2015 01:38:37 +0000
Message-ID: <A8FC939F80655644A89BB21CCD3741E8011BCD705C@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <1446197859-1701-1-git-send-email-lixin.fnst@cn.fujitsu.com>
	<5633B9F6.5070509@gmail.com>
In-Reply-To: <5633B9F6.5070509@gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.26]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] samhain: upgrade to 4.1.0
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
X-List-Received-Date: Mon, 02 Nov 2015 01:38:48 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi, Armin,

I got it.
Thanks a lot.

Regards,
Li

>-----Original Message-----
>From: akuster808 [mailto:akuster808@gmail.com]
>Sent: Saturday, October 31, 2015 2:42 AM
>To: Li, Xin/=1B$BM{=1B(B =1B$B6U=1B(B
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] [meta-security][PATCH] samhain: upgrade to 4.1.0
>
>Li Xin,
>
>Master-next already has the 4.1.0 update. I have merged the additional fix=
es to
>master-next.
>
>thanks,
>Armin
>
>On 10/30/2015 02:37 AM, Li xin wrote:
>> From: Li Xin <lixin.fnst@cn.fujitsu.com>
>>
>> Also fix an error when "samhain -t check" is executed.
>> The error is like this:
>> 'ERROR: msg=3D<Record with bad version number in file signature
>> database>, subroutine=3D<sh_dbIO_getdataent>, path=3D<(null)>'
>>
>> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
>> ---
>>  .../samhain/{samhain-client_4.0.0.bb =3D> samhain-client_4.1.0.bb}    |=
 3 ++-
>>  .../samhain/{samhain-server_4.0.0.bb =3D> samhain-server_4.1.0.bb}    |=
 0
>>  recipes-security/samhain/samhain.inc
>| 6 +++---
>>  3 files changed, 5 insertions(+), 4 deletions(-)  rename
>> recipes-security/samhain/{samhain-client_4.0.0.bb =3D>
>> samhain-client_4.1.0.bb} (79%)  rename
>> recipes-security/samhain/{samhain-server_4.0.0.bb =3D>
>> samhain-server_4.1.0.bb} (100%)
>>
>> diff --git a/recipes-security/samhain/samhain-client_4.0.0.bb
>> b/recipes-security/samhain/samhain-client_4.1.0.bb
>> similarity index 79%
>> rename from recipes-security/samhain/samhain-client_4.0.0.bb
>> rename to recipes-security/samhain/samhain-client_4.1.0.bb
>> index c671b48..bb47449 100644
>> --- a/recipes-security/samhain/samhain-client_4.0.0.bb
>> +++ b/recipes-security/samhain/samhain-client_4.1.0.bb
>> @@ -8,7 +8,8 @@ EXTRA_OECONF +=3D " \
>>          --with-logserver=3D${SAMHAIN_SERVER} \
>>          --with-port=3D${SAMHAIN_PORT} \
>>          --with-config-file=3D/etc/samhainrc \
>> -        --with-data-file=3D/var/lib/samhain/samhain_file \
>> +        --with-data-file=3D/var/samhain/samhain.data \
>> +        --with-pid-file=3D/var/samhain/samhain.pid \
>>          "
>>
>>
>> diff --git a/recipes-security/samhain/samhain-server_4.0.0.bb
>> b/recipes-security/samhain/samhain-server_4.1.0.bb
>> similarity index 100%
>> rename from recipes-security/samhain/samhain-server_4.0.0.bb
>> rename to recipes-security/samhain/samhain-server_4.1.0.bb
>> diff --git a/recipes-security/samhain/samhain.inc
>> b/recipes-security/samhain/samhain.inc
>> index e33182f..dedcf76 100644
>> --- a/recipes-security/samhain/samhain.inc
>> +++ b/recipes-security/samhain/samhain.inc
>> @@ -8,9 +8,8 @@ SRC_URI =3D
>"http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>>  	   file://${INITSCRIPT_NAME}.init \
>>  	   file://${INITSCRIPT_NAME}.default \
>>  	  "
>> -
>> -SRC_URI[md5sum] =3D "2144383cc5452b9b80c7e4e4c991ad4a"
>> -SRC_URI[sha256sum] =3D
>"5a841708f78c6d9b4731970fa39151dff366885de08ecddc382e8c45a2c1b4e2"
>> +SRC_URI[md5sum] =3D "fcb59c6c8a1d30cc6ffc21557a0046d3"
>> +SRC_URI[sha256sum] =3D
>"a8e10454782a7f3bb5f709dd05cee695ffbd052afc709668a3e7c4b629771189"
>>
>>  S =3D "${WORKDIR}/samhain-${PV}"
>>
>> @@ -87,4 +86,5 @@ do_install_append () {
>>  	install -d ${D}${docdir}/${PN}
>>  	cp -r docs/* ${D}${docdir}/${PN}
>>  	cp -r scripts ${D}${docdir}/${PN}
>> +        install -d -m 755 ${D}/var/samhain
>>  }
>>

