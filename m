Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50507E00AB9; Thu,  2 Jul 2015 01:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90D50E00A93
	for <yocto@yoctoproject.org>; Thu,  2 Jul 2015 01:00:46 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%16]) with
	mapi; Thu, 2 Jul 2015 18:00:44 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 2 Jul 2015 18:00:43 +1000
Thread-Topic: Making /etc/os-release loadable by shell script
Thread-Index: AdC0nKMbOMSQ+J1ZTJy/HIqJhjb3kA==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C1CB9D50@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21650.003
x-tm-as-result: No--34.317800-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Making /etc/os-release loadable by shell script
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
X-List-Received-Date: Thu, 02 Jul 2015 08:00:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It would be good if the /etc/os-release file (created by the core os-releas=
e package) could be loadable by a shell script. That is, a shell script can=
 do:

    source /etc/os-release
or
    . /etc/os-release

But it's currently not possible, because the file lacks double-quotes aroun=
d values that would make it valid shell assignment syntax.

Compare to a Debian or Ubuntu /etc/os-release, which has double-quotes arou=
nd values, so it _can_ be loaded by a shell script.

To achieve this, I am using the following in an os-release.bbappend. It jus=
t adds double-quotes around the {1} in the 2nd-last line.

    # Ensure all variables' data are in quotes
    python do_compile () {
        with open(d.expand('${B}/os-release'), 'w') as f:
            for field in d.getVar('OS_RELEASE_FIELDS', True).split():
                value =3D d.getVar(field, True)
                if value:
                    f.write('{0}=3D"{1}"\n'.format(field, value))
    }

--=20
Craig McQueen


