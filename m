Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D074E00877; Tue, 28 Oct 2014 05:18:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 356 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Oct 2014 05:18:43 PDT
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3935E00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 05:18:42 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id s9SCCexj004417
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 13:12:45 +0100
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Tue, 28 Oct 2014 13:12:39 +0100
From: Peter Bergin <peter.bergin@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: icecc
Thread-Index: Ac/yqHeDSM7Lm6YfQxiSWcaNwfXdXA==
Date: Tue, 28 Oct 2014 12:12:39 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280C645342@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.236.6.200]
MIME-Version: 1.0
Subject: icecc
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
X-List-Received-Date: Tue, 28 Oct 2014 12:18:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to get icecc working together with Poky (daisy branch). I follo=
w the Yocto Project Reference Manual chapter "7.45. icecc.bbclass" and I ca=
n not get it working.

The manual states that I on a distribution level can add the following:

    INHERIT_DISTRO +=3D "icecc"
    ICECC_DISABLED ??=3D "1"

This will make sure my builders use the same sstate signatures regardless i=
f they use icecc or not. The way I did it to test was to create my own dist=
ro layer, called mydist, that inherits from Poky.

    $ cat ../meta-mydist/conf/distro/mydist.conf

    require conf/distro/poky.conf

    DISTRO =3D "mydist"
    DISTRO_NAME =3D "MyDist"

    INHERIT_DISTRO +=3D "icecc"
    ICECC_DISABLED ??=3D "1"

In my bblayers.conf I added this layer directly after the meta-yocto layer.=
 But with this addition my build environment will not work anymore. What ha=
ppens is that the variable INHERIT_DISTRO is overwritten because my layer i=
s picked before the poky/meta/conf/distro/defaultsetup.conf. I get the same=
 behaviour if i edit the poky.conf and not use my own distro.

    $ bitbake core-image-base -e

    ...

    #
    # $INHERIT_DISTRO [3 operations]
    #   append /work/yocto/course/meta-mydist/conf/distro/mydist.conf:6
    #     "icecc"
    #   set? /work/yocto/course/poky/meta/conf/distro/defaultsetup.conf:22
    #     "debian devshell sstate license"
    #   set /work/yocto/course/poky/meta/conf/documentation.conf:226
    #     [doc] "Lists classes that will be inherited at the distribution l=
evel. It is unlikely that you want to edit this variable."
    # computed:
    #   " icecc"
    INHERIT_DISTRO=3D" icecc"
    #

    ...

What is wrong here, documentation or my setup? Can someone give me advice?

Regards,
/Peter






Peter Bergin



peter.bergin@tritech.se
+46 733 35 21 05


www.tritech.se
+46 31 763 38 00
Nordstadstorget 6
SE-411 05 G?teborg, Sweden

