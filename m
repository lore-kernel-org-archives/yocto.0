Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00CC6E00C43; Wed,  6 Mar 2019 14:26:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 FROM_STARTS_WITH_NUMS From: starts with several numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.59.134.12 listed in list.dnswl.org]
Received: from smtp-out-no.shaw.ca (smtp-out-no.shaw.ca [64.59.134.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFA5AE0048C
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 14:26:48 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 1ezthVm0klvAB1ezuhck3X; Wed, 06 Mar 2019 15:26:48 -0700
X-Authority-Analysis: v=2.3 cv=AMNsc7SD c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=NTGMnVQrEZIA:10 a=2KUf1mbJAAAA:8
	a=768q3jfy1fGP5y0DnfYA:9 a=QEXdDO2ut3YA:10 a=LME9DoRMzU6P72L8X6EC:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>)
	id 1h1ezt-00043b-DD; Wed, 06 Mar 2019 14:26:45 -0800
To: "Burton, Ross" <ross.burton@intel.com>
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Wed, 06 Mar 2019 14:26:45 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
In-Reply-To: <CAJTo0LZ=ebR2Mao_-vyFN8YTg2pfse2Ls476pb5hHZaQGMBpkA@mail.gmail.com>
References: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
	<fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
	<e21f2565c099e27ab58c7c7feaafdb95@mail.kylheku.com>
	<CAJTo0LZ=ebR2Mao_-vyFN8YTg2pfse2Ls476pb5hHZaQGMBpkA@mail.gmail.com>
Message-ID: <e382eb0d50ca12ccafe454636717459e@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfFZ0p3dmaNeAknJ4WK9XfVoFQ924gi91boZZp+uWdz9/j/Fu/7WqlufP7lhrF7Z1vFCH8CcblUv+uvs/34HilgQLj5rgeL/vjsegFSPiK2+Xe0CTOQot
	wvL+ihBQnAxXAe2YIojoCgdE12U17+yY95zWKqULEEktsQG/5z+q0UaG69ApPGx3UMJtcjitdDpZMXqsl43lyWGB7xrZwoedJOvou45JBFX1FDKGHFzw6ren
	A5hJm6pk+xcDMqAMw0KMk8IE9rjwWSpByRehpyj9xh4=
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Incremental rebuild doesn't pick up FILES changes.
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
X-List-Received-Date: Wed, 06 Mar 2019 22:26:50 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2019-03-06 12:29, Burton, Ross wrote:
> On Wed, 6 Mar 2019 at 20:14, Kaz Kylheku (poky)
> <442-103-8455@kylheku.com> wrote:
>> So, the issues are now is that
>>=20
>> FILES_${PN}_remove =3D "${libdir}/python2.7/encodings"
>>=20
>> in fact does not work, as I believed.
>=20
> Have a look at python.bb.  Specifically:
>=20
> PACKAGES_remove =3D "${PN}"
>=20
> There is no PN being packaged.

Ah, okay; this is because it's been split into various sub-packages. So=20
we have to operate on "-core".
The .json manifest brings these into the "core" package:

             "${libdir}/python2.7/encodings",
             "${libdir}/python2.7/encodings/aliases.py",
             "${libdir}/python2.7/encodings/utf_8.py",

I don't want all of encoders, just the utf_8.py and the aliases=20
dictionary.

So I'm guessing this should be

   FILES_${PN}-core_remove =3D



