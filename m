Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D933E00D1D; Mon, 14 Sep 2015 01:18:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.203 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 443 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Sep 2015 01:18:15 PDT
Received: from smtprelay.hostedemail.com (smtprelay0203.hostedemail.com
	[216.40.44.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7066FE00BB3
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 01:18:15 -0700 (PDT)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id C13B429028C
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 08:10:52 +0000 (UTC)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 62ABA9ED89
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 08:10:51 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: crook95_247d47ce9273b
X-Filterd-Recvd-Size: 2408
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 08:10:50 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Sep 2015 09:10:45 +0100
Organization: SDC Systems Limited
Message-ID: <027301d0eec4$dc759b00$9560d100$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdDuxNtLO5P/mO9iQMmZaNOtlIkSzw==
Subject: Build failure (Segmentation fault) with Fido on CentOS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Sep 2015 08:18:19 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Hello,

After several years away from OpenEmbedded and MVL6 I am back trying to work
with Yocto and BitBake!

My build system is a Core-i7 3770 running CentOS 6.7 (x86_64) with all the
latest updates applied.  I have cloned Fido from the git repository and set
the target as "genericx86" and started the build with "bitbake
core-image-minimal".  The build is failing with the following output (some
path names changed to protect the innocent):

g++: Internal error: Segmentation fault (program as)
| Please submit a full bug report.
| See <http://bugzilla.redhat.com/bugzilla> for instructions.
| Makefile:1059: recipe for target 'tree.o' failed
| make[1]: *** [tree.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| rm gcc.pod
| make[1]: Leaving directory
'XXXXX/build/tmp/work/x86_64-poky-linux/gcc-cross-initial-i586/4.9.2-r0/gcc-
4.9.2/build.x86_64-linux.i586-poky-linux/gcc'
| Makefile:3954: recipe for target 'all-gcc' failed
| make: *** [all-gcc] Error 2
| ERROR: oe_runmake failed
| WARNING:
XXXXX/build/tmp/work/x86_64-poky-linux/gcc-cross-initial-i586/4.9.2-r0/temp/
run.do_compile.9831:1 exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at
XXXXX/build/tmp/work/x86_64-poky-linux/gcc-cross-initial-i586/4.9.2-r0/temp/
log.do_compile.9831)

As CentOS runs some very old versions of certain tools I have installed the
native standalone SDK (v1.8) to get a version of Python that works for
BitBake.  Is this down to the fact that the native gcc/g++ version on CentOS
is 4.4.7 and binutils is v2.20.51 or have I missed something in the setup?

Thanks,

Andy.



