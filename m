Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF4B5E009CC; Tue,  7 Jul 2015 22:07:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DC75E00960
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 22:07:34 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%16]) with
	mapi; Wed, 8 Jul 2015 15:07:29 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 8 Jul 2015 15:07:28 +1000
Thread-Topic: bash getcwd errors when running under OverlayFS
Thread-Index: AdC5OvkxGB8ohiW6RtuQ1MsOZa28bA==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C1CBA187@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21662.005
x-tm-as-result: No--34.759700-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: bash getcwd errors when running under OverlayFS
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
X-List-Received-Date: Wed, 08 Jul 2015 05:07:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am using an OverlayFS patch for kernel 3.14.x obtained from OpenWRT. Once=
 I started using OverlayFS, I found that bash shell scripts would give a lo=
t of errors, something like:

     shell-init: error retrieving current directory: getcwd: cannot access =
parent directories: Success
     job-working-directory: error retrieving current directory: getcwd: can=
not access parent directories: No such file or directory
     chdir: error retrieving current directory: getcwd: cannot access paren=
t directories: Bad file descriptor

It seems that this can be traced to an internal implementation of getcwd() =
in bash. When cross-compiled, it can't check for getcwd() use of malloc, so=
 it is cautious and sets GETCWD_BROKEN and uses an internal implementation =
of getcwd(). This internal implementation doesn't seem to work well with Ov=
erlayFS.

A simple fix in Yocto is to put the following in a recipes-extended/bash/ba=
sh_4.3.bbappend in your own layer:

    EXTRA_OECONF +=3D "bash_cv_getcwd_malloc=3Dyes"

--=20
Craig McQueen


