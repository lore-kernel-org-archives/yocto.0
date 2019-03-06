Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E355E00C43; Wed,  6 Mar 2019 12:11:48 -0800 (PST)
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
	*      [64.59.134.13 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Mar 2019 12:11:45 PST
Received: from smtp-out-no.shaw.ca (smtp-out-no.shaw.ca [64.59.134.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3B2E0053F
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 12:11:45 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 1csEhvXsHALwT1csFhxgn9; Wed, 06 Mar 2019 13:10:44 -0700
X-Authority-Analysis: v=2.3 cv=D/851cZj c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=NTGMnVQrEZIA:10 a=iGHA9ds3AAAA:8
	a=gE5eR7hQJx6H3m5l2n4A:9 a=QEXdDO2ut3YA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>)
	id 1h1csE-0000Bj-CY; Wed, 06 Mar 2019 12:10:42 -0800
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Wed, 06 Mar 2019 12:10:42 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
In-Reply-To: <fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
References: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
	<fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
Message-ID: <e21f2565c099e27ab58c7c7feaafdb95@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfJzQd5RAly2IsUOsfe6vXM0tp9PblxEE/ofbI6xyKOL2spKnZSi3Olj9JLa/BQ86THKPPD54PzA6aKAmad70fj7ZVn0WJuh5ZY2JM6TuoVqKDDu/6/Oh
	HO2WXkNJMfZec1ambsKPhkgQbRSwmtnYkzp5tsSerSu5K5ReozdatMzB2/LvwNg5q1I7hQJSjqs/4+LxsIV9Fe4fy3S+krQwAaIFtPZ762YgdikrUK+lQPnf
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 06 Mar 2019 20:11:48 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2019-03-06 10:23, Richard Purdie wrote:
> On Tue, 2019-03-05 at 18:28 -0800, Kaz Kylheku (poky) wrote:
>> How do we get Yocto to react to FILES changes, short of blowing away
>> the entire build tree?
>=20
> Maybe related to this change:
>=20
> http://git.yoctoproject.org/cgit.cgi/poky/commit/bitbake/lib/bb/data_smar=
t.py?id=3Df7f5e30667e1ad8e1ca76ee331be2843f2976bfa

Actually, the problem was that I had an accidental local change applied
to the .json manifest file; that's where the=20
"${libdir}/python2.7/encodings" was
being deleted.

So, the issues are now is that

FILES_${PN}_remove =3D "${libdir}/python2.7/encodings"

in fact does not work, as I believed.  It doesn't register at all. If I=20
run "bitbake -e", to find the places that influence the value of $FILES,=20
this _remove assignment doesn't appear anywhere. In fact, the name of my=20
=2Ebbpappend file doesn't even appear anywhere in that listing.

If I change it to just FILES_remove =3D ...  then it does show up in=20
"bitbake -e" (early, before all the base recipe manipulations of=20
$FILES). It doesn't work; the encodings do not disappear:


      $FILES [527 operations]
     #   set /mnt/sdb4/kaz/proj/poky/meta/conf/bitbake.conf:288
     #     ""
     #   set /mnt/sdb4/kaz/proj/poky/meta/conf/documentation.conf:169
     #     [doc] "The list of directories or files that are placed in=20
packages."
     #   _remove=20
/mnt/sdb4/kaz/proj/meta-custom/common/recipes-devtools/python/python_%.bbap=
pend:15
     #     "${libdir}/python2.7/encodings"

     [ big snip ]

     #   override[python-core]:append python_2.7.15.bb:220=20
[__anon_238__mnt_sdb4_kaz_y25_wp76_poky_meta_recipes_devtools_python_python=
_2_7_15_bb]
     #     " ${libdir}/python2.7/encodings"

I think this override might be winning over the _remove or something.=20
The output never shows the final, settled value of FILES. At the bottom=20
of this section about the $FILES variable we just have:

     # pre-expansion value:
     #   ""
     FILES=3D""

which is uninformative; obviously there is a populated FILES because the=20
package has files in it.

Should I just add some install append steps to "rm -f" the unwanted=20
material and be done with it?

I feel there should be a sane way to customize the FILES variable (and=20
any other) emanating from a base recipe, though.




