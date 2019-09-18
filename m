Return-Path: <prvs=157cabe6c=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B9C7E00D77; Wed, 18 Sep 2019 01:45:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.133.150 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Sep 2019 01:45:48 PDT
Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com
	[68.232.133.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D55EEE008D9
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 01:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1568796349; x=1600332349;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=TvRIQRmil/TAZUDBfg5VKy6z7RLfumssZTzLuqNcoxs=;
	b=MdY69hOqt29Ba+uatFGR8dRdSz7t1LIUzdASBQ7t6B9AtgcEnicSokBw
	8+35gJmtOvhgPJH2KTD02stVwVzCsXNnPfl2H/zpGVJ6v6fusNHQ/sPG2
	ZdelmG/zYAHjDzAK9xl+TPA2KI7kMpUq+ewRswMYQQyt+pwNW89CEuHgj 8=;
IronPort-SDR: 8Sp4RROdfJjxAkXM86iid0GplOjgJbPP7XHNW0MadhXcY+g24jWl/4rwCoYpsIuXqYBZbs3QyC
	jxwreKL4X7I+rdv7RO1Kh16tQMKgwdcI9cC0IIX1X/Fbt9CRFzzqpFUaHF5LLWYEocRJPiTQcw
	epnmjAwDBsZktyL1ige5myZRwNvoZTzFG3kdpdQV806ctTBsY0jPFszj1L5cj1O1dJKl37P9Ns
	iXWSStnnGeckfzMe0DNp+llH3zyKHNnAvoMjnexHZGLh3wfgBacKQrnw8HvvcoKXUzLCzbUyhg
	YdE=
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
	esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Sep 2019 10:44:46 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw3.muc with ESMTP/TLS;
	18 Sep 2019 10:44:44 +0200
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp)
	([160.48.96.49])
	by esabb1.muc with ESMTP/TLS; 18 Sep 2019 10:44:44 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10m.europe.bmw.corp
	(160.48.96.49) with Microsoft SMTP Server (TLS;
	Wed, 18 Sep 2019 10:44:43 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005;
	Wed, 18 Sep 2019 10:44:43 +0200
From: <Mikko.Rapeli@bmw.de>
To: <lefevre.da@gmail.com>
Thread-Topic: [yocto] Changing HOST_CC_ARCH temporarily in recipe
Thread-Index: AQHVbfsq1FK4ShK8PEy5ZNmxpUoabqcw/SKA
Date: Wed, 18 Sep 2019 08:44:43 +0000
Message-ID: <20190918084441.GU6154@hiutale>
References: <CA+FhBv9bStUZ1kMrmxRh7AnxbxT9Uth8Jh1wWtiQ-a9e7SXKPA@mail.gmail.com>
In-Reply-To: <CA+FhBv9bStUZ1kMrmxRh7AnxbxT9Uth8Jh1wWtiQ-a9e7SXKPA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.37]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Changing HOST_CC_ARCH temporarily in recipe
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
X-List-Received-Date: Wed, 18 Sep 2019 08:45:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F4D5DD9A816BEB4EB74C6A1D548C0FC7@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 18, 2019 at 11:26:29AM +0300, Damien LEFEVRE wrote:
> Hi,
>=20
> I have a package which requires to first build a x64 binary which is then
> used to compile the target platform binaries.
>=20
> The way I got away with it was to build that host binary from
> do_configure_prepend() and then continue with the build procedure.
>=20
> I recently upgraded to GCC7 + warrior and now building the host binary
> from do_configure_prepend fails due to this error:
> testCCompiler.c:1:0: error: bad value (armv8-a+crc) for -march=3D switch
>=20
> I figured that the arch switch (building for tegra) is defined
> in HOST_CC_ARCH as:
> -march=3Darmv8-a+crc -fstack-protector-strong  -D_FORTIFY_SOURCE=3D2 -Wfo=
rmat
> -Wformat-security -Werror=3Dformat-security
>=20
> If I clear HOST_CC_ARCH in my recipe file, do_configure_prepend succeeds
> but of course the rest of the build will fail.
>=20
> So i'm trying to do something like this:
> do_configure_prepend(){
>     export HOST_CC_ARCH_BACKUP=3D"${HOST_CC_ARCH}"
>     HOST_CC_ARCH=3D""
>     echo "HOST_CC_ARCH before cmake: ${HOST_CC_ARCH}"
>     CC=3D"${BUILD_CC}" CXX=3D"${BUILD_CXX}" CCFLAGS=3D"${BUILD_CFLAGS}"
>  CXXFLAGS=3D"${BUILD_CPPFLAGS} -std=3Dc++11" LDFLAGS=3D"${BUILD_LDFLAGS}"=
 cmake
> ${S}
>     make
>     HOST_CC_ARCH=3D"${HOST_CC_ARCH_BACKUP}"
> }
>=20
> There I still get:
> HOST_CC_ARCH before cmake:  -march=3Darmv8-a+crc -fstack-protector-strong
>  -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securi=
ty
>=20
> So HOST_CC_ARCH doesn't get updated.
>=20
> How can I temporarily reset HOST_CC_ARCH?

Only clean way to do this is to split the recipe into two parts:

 * native for the build time tooling

 * target for the target only build, which depends on the native build
   time tooling

Everything else is a hack :)

Hope this helps,

-Mikko=

