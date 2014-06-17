Return-Path: <Henric.Eriksson@brv.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A2DFE00B78; Tue, 17 Jun 2014 07:04:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from brvmst.brv.se (brvmst.brv.se [148.160.26.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B227E00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 07:03:58 -0700 (PDT)
Received: from sbs.brv.local ([192.168.100.20] helo=remote.brv.se)
	by brvmst.brv.se with esmtp (Exim 4.82)
	(envelope-from <Henric.Eriksson@brv.se>)
	id 1WwtzE-00075v-CP; Tue, 17 Jun 2014 16:03:52 +0200
Received: from SBS.brv.local ([fe80::a92d:db17:ceaf:ef89]) by SBS.brv.local
	([fe80::a92d:db17:ceaf:ef89%10]) with mapi id 14.01.0438.000;
	Tue, 17 Jun 2014 16:03:42 +0200
From: Henric Eriksson <Henric.Eriksson@brv.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problems creating recipe, "no package provides"
Thread-Index: AQHPiifwmaCp6hTI402872ekzfu6vZt1LzSAgAAE04A=
Date: Tue, 17 Jun 2014 14:03:41 +0000
Message-ID: <53A04AB9.10807@brv.se>
References: <53A034E9.2090406@brv.se> <4393962.vBKmSVoclE@koontz>
In-Reply-To: <4393962.vBKmSVoclE@koontz>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101
	Thunderbird/24.6.0
x-originating-ip: [192.168.100.98]
MIME-Version: 1.0
Subject: Re: Problems creating recipe, "no package provides"
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
X-List-Received-Date: Tue, 17 Jun 2014 14:04:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <79E2327538CA984CA2F3A0B8F1DDC6FD@brv.se>
Content-Transfer-Encoding: quoted-printable

S=F8ren Holm skrev:
> Hi
>
> I guess the file should be named  libmongoose_5.3.bb and not
> libmongoose-5.3.bb

My bad. Typo in the email, the actual file is called libmongoose_5.3.bb.

>
> Tirsdag den 17. juni 2014 12:30:36 skrev Henric Eriksson:
>> Hello,
>>
>> I've been working on creating a recipe for the library mongoose for use
>> in a custom layer in Yocto. The library provides a .so in /usr/lib and a
>> .h in /usr/include and is depended (DEPENDS=3D"libmongoose") on in anoth=
er
>> recipe for a my main application. When trying to bitbake my image though
>> it fails on the last stage do_rootfs.
>>
>> The recipe is quite simple:
>>
>> libmongoose-5.3.bb:
>> -------------
>> DESCRIPTION =3D "Mongoose is the most easy to use web server on the plan=
et"
>> SECTION =3D "libs"
>> LICENSE =3D "GPLv2"
>> HOMEPAGE =3D "http://code.google.com/p/mongoose"
>> LIC_FILES_CHKSUM =3D
>> "file://${COREBASE}/meta/COPYING.GPLv2;md5=3D751419260aa954499f7abaabaa8=
82bbe"
>> PR =3D "r0"
>>
>> SRC_URI =3D "git://github.com/cesanta/mongoose.git"
>> SRCREV =3D "30a79651356e28fec240e921f8cd01c9a0a21388"
>>
>> S =3D "${WORKDIR}/git"
>>
>> CFLAGS +=3D "-W -Wall -I.. -pthread -g -pipe -fpic"
>>
>> do_compile() {
>>       ${CC} ${CFLAGS} -c mongoose.c -o mongoose.o
>>       ${CC} -shared -o libmongoose.so mongoose.o
>> }
>>
>> do_install() {
>>      install -d ${D}${libdir}
>>      install -d ${D}${includedir}
>>      install -m 0755 libmongoose.so ${D}${libdir}
>>      install -m 0755 mongoose.h ${D}${includedir}
>> }
>> -------------
>>
>> Eventually though during do_rootfs, this error pops up:
>>
>> error: Can't install libmongoose-dev-5.3-r0@armv5te: no package provides
>> libmongoose =3D 5.3-r0
>>
>> I have tried to add both PACKAGES +=3D "libmongoose" and PACKAGES +=3D
>> "libmongoose-dev" in the recipe but nothing seems to help.
>>
>> Looking through Yocto I can see that it appends -dev and such based on
>> what files are provided by the package. But I guess since all the files
>> from the package is provided by libmongoose-dev it dumps libmongoose.
>>
>> I'm at a loss of where to go from here. What have I missed in my recipe?
>>
>> Regards,
>>
>> Henric Eriksson
>

/Henric=

