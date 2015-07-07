Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A8A3E009FD; Mon,  6 Jul 2015 20:58:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
X-Greylist: delayed 2966 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Jul 2015 20:58:33 PDT
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8551EE009E6
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 20:58:33 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6738v1h012667; Mon, 6 Jul 2015 22:08:57 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015070622085661-680571 ;
	Mon, 6 Jul 2015 22:08:56 -0500 
Message-Id: <87vbdwy88m.fsf@weregild.amer.corp.natinst.com>
From: Richard Tollerton <rich.tollerton@ni.com>
To: "Daniel." <danielhilst@gmail.com>,
	"Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAF3SDA6sUY=4cg-pihtftzTNDREm5cKMS7MqQp4DJ9M81ez5UQ@mail.gmail.com>
Date: Mon, 6 Jul 2015 21:54:41 -0500
References: <alpine.LFD.2.11.1502190508290.29947@localhost>
	<CAF3SDA6sUY=4cg-pihtftzTNDREm5cKMS7MqQp4DJ9M81ez5UQ@mail.gmail.com>
User-Agent: Notmuch/0.20.1 (http://notmuchmail.org) Emacs/24.5.2
	(x86_64-unknown-linux-gnu)
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/06/2015 10:08:56 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/06/2015 10:08:56 PM,
	Serialize complete at 07/06/2015 10:08:56 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-07_01:, , signatures=0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: [PATCH] cross-localedef-native_2.20.bb: fix for gcc5
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
X-List-Received-Date: Tue, 07 Jul 2015 03:58:37 -0000

Message-ID: <87wpycy88v.fsf@weregild.amer.corp.natinst.com>
MIME-Version: 1.0
Content-Type: text/plain
--text follows this line--
The build of cross-localedef-native is observed to fail under gcc5 hosts
with multiple definition errors, e.g.:

argp-help.o: In function `argp_fmtstream_write':
argp-help.c:(.text+0x1da0): multiple definition of `argp_fmtstream_write'
argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here

The problem is the change of the default C standard from gnu89 to gnu11
which changes the semantics of 'inline'. The issue is described in the
Porting guide at https://gcc.gnu.org/gcc-5/porting_to.html. Adding the
'-fgnu89-inline' option fixes the issue.

(This fix, including the above explanation, was shamelessly copied from
http://git.vahanus.net/?p=csc/ptxdist-kp.git;a=commit;h=2f04a3587bd33c74ccc9be6e115a8b1fde620841.)

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 meta/recipes-core/glibc/cross-localedef-native_2.20.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-core/glibc/cross-localedef-native_2.20.bb b/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
index ccf56a9..38f2af4 100644
--- a/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
+++ b/meta/recipes-core/glibc/cross-localedef-native_2.20.bb
@@ -39,7 +39,7 @@ SRCREV_localedef = "c833367348d39dad7ba018990bfdaffaec8e9ed3"
 S = "${WORKDIR}/git"
 
 EXTRA_OECONF = "--with-glibc=${S}"
-CFLAGS += "-DNOT_IN_libc=1"
+CFLAGS += "-DNOT_IN_libc=1 -fgnu89-inline"
 
 do_configure () {
 	${S}/localedef/configure ${EXTRA_OECONF}
-- 
2.4.4


