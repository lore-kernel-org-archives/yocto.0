Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16A78E007C0; Tue, 28 Oct 2014 10:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.210 listed in list.dnswl.org]
X-Greylist: delayed 59931 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Oct 2014 10:11:53 PDT
Received: from us-smtp-delivery-210.mimecast.com
	(us-smtp-delivery-210.mimecast.com [63.128.21.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65643E00744
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 10:11:53 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-16.us.mimecast.lan; Tue, 28 Oct 2014 13:11:51 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 28 Oct 2014 10:11:50 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 28 Oct 2014 10:11:51 -0700
Thread-Topic: Help me understand Openembedded variable expansion
Thread-Index: Ac/y0kO9gzjk4/NfSASTNyrpKBv/Ig==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD87F98A8@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: vj3vvpzkRvmgFt_DiNmO4Q-1
Subject: Help me understand Openembedded variable expansion
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
X-List-Received-Date: Tue, 28 Oct 2014 17:11:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

So there is something I just don't get about how variables get created, exp=
anded, interpreted, etc in Bitbake

For example I'm trying to copy some of the techniques in the Poky Tiny dist=
ribution to reduce my image size and build time.=20
One of the fragments is this one.=20

# The mtrace script included by eglibc is a perl script. This means the sys=
tem
# will build perl in case this package is installed. Since we don't care ab=
out
# this script, remove the dependency from here.
RDEPENDS_${PN}-mtrace_pn-eglibc =3D ""

I put this in my distribution .conf file and I doesn't seem to do anything =
perl is still getting built.=20
Of course it doesn't help that I don't understand what does, especially in =
the context of the distribution .conf file.=20

I also see hints in the code in debug output that the machine, image, or di=
stribution names can automatically get appended to paths, or variables but =
I don't really understand how that works.=20

I'm not even sure how to phrase a question around this, immediately I'd lik=
e to figure out why Perl is still getting built but ultimately I'd like to =
understand the variable rules better so I that I can better take advantage =
of this power tool.=20

Thanks,
Matt S.=20


