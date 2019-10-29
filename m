Return-Path: <kaz@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80D68E00DA3; Tue, 29 Oct 2019 11:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [64.59.136.139 listed in list.dnswl.org]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Oct 2019 11:03:13 PDT
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0CEE00805
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 11:03:13 -0700 (PDT)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id PVooiaKYBIhW9PVoqiUIz1; Tue, 29 Oct 2019 12:02:12 -0600
X-Authority-Analysis: v=2.3 cv=FcFJO626 c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=XobE76Q3jBoA:10
	a=GgWmRhubfEUHAQ_U3EUA:9 a=QEXdDO2ut3YA:10 a=Z5ABNNGmrOfJ6cZ5bIyy:22
	a=UDnyf2zBuKT2w-IlGP_r:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <kaz@kylheku.com>) id 1iPVoo-0002sL-Rm
	for yocto@yoctoproject.org; Tue, 29 Oct 2019 11:02:10 -0700
To: yocto@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Tue, 29 Oct 2019 11:02:10 -0700
From: Kaz Kylheku <kaz@kylheku.com>
Message-ID: <7c6faff5d4114d16522262d8716e1c7a@mail.kylheku.com>
X-Sender: kaz@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfJavBnunGH5msca1R2+LSO2fwpA3xjCVqekRTf/TtiKppu/ST5+HdaP12r80nLVxjHmdMSt1Ne8H5obq5e4XAV0xcBmcTKpRIsrtdaXxQOMzQyI90p3i
	wX5gVL/ZVLHMAtVuAEsy5fGv6vNaJvsr/1zM3LOlMJ2+HTQAFilqfLP2
X-Mailman-Approved-At: Fri, 01 Nov 2019 12:07:53 -0700
Subject: [yocto-2.7, nativesdk-diffutils]: patched-away problem intermittently persists.
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
X-List-Received-Date: Tue, 29 Oct 2019 18:03:13 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

I have seen the nativesdk-diffutils compilation fail with the exact=20
problem
that is supposed to be solved by:

file://0001-explicitly-disable-replacing-getopt.patch

The build failure which occurs is 100% identical in all its symptoms
to what happens if we remove this patch:

In file included from ./getopt.h:85:0,
                  from ../../diffutils-3.6/lib/xstrtol.h:22,
                  from ../../diffutils-3.6/lib/xstrtol-error.c:20:
=2E/config.h:2072:25: warning: 'struct rpl_option' declared inside=20
parameter list
will not be visible outside of this definition or declaration
  #define __GETOPT_PREFIX rpl_
                          ^
=2E./../diffutils-3.6/lib/getopt-pfx-core.h:38:44: note: in expansion of=20
macro '__
GETOPT_PREFIX'
  #  define __GETOPT_ID(y) __GETOPT_XCONCAT (__GETOPT_PREFIX, y)
                                             ^~~~~~~~~~~~~~~

I don't know if it's a problem with the patch, or if somehow it's not
getting applied; next time it happens I will have more info.


