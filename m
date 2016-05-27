Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDE2DE00E63; Fri, 27 May 2016 14:26:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B16E00DE7
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 14:26:46 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u4RLQjT7024356; Fri, 27 May 2016 16:26:45 -0500
Received: from delcastillo2.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016052716264546-623894 ;
	Fri, 27 May 2016 16:26:45 -0500 
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: yocto@yoctoproject.org, opkg-devel@googlegroups.com
Date: Fri, 27 May 2016 16:26:41 -0500
Message-Id: <1464384403-1504-1-git-send-email-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 1.9.1
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 05/27/2016 04:26:45 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 05/27/2016 04:26:45 PM,
	Serialize complete at 05/27/2016 04:26:45 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-05-27_12:, , signatures=0
Subject: [opkg-utils PATCH 0/2] migrate to python 3
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
X-List-Received-Date: Fri, 27 May 2016 21:26:51 -0000

First patch migrates all opkg-utils scrips to python 3. opkg-graph-deps
doesn't work on python 3 since it depends on pydot, which hasn't migrated
to python 3. Second patch fixes opkg-update-index, which was broken.

Alejandro del Castillo (2):
  migrate to python 3
  opkg.py/write_packages_file: call __str__ instead of __repr__

 arfile.py            | 10 ++++++++--
 makePackage          |  2 ++
 opkg-compare-indexes |  2 ++
 opkg-graph-deps      | 39 +++++++++++++++++++++------------------
 opkg-list-fields     |  2 ++
 opkg-make-index      |  2 ++
 opkg-show-deps       |  2 ++
 opkg-unbuild         |  2 ++
 opkg-update-index    |  1 +
 opkg.py              | 19 +++++++++++--------
 10 files changed, 53 insertions(+), 28 deletions(-)

-- 
1.9.1


