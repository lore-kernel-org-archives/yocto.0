Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B657E00655
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 05:17:45 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:52382 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TnUO8-00083F-MT
	for yocto@yoctoproject.org; Tue, 25 Dec 2012 08:17:44 -0500
Date: Tue, 25 Dec 2012 07:17:37 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212250658420.8700@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: where does one send patches for auxiliary stuff like kern tools?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Dec 2012 13:17:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  as i celebrate christmas by clawing my way thru the code, i run
across pedantic nitpickery like this:

diff --git a/tools/updateme b/tools/updateme
index 5998820..56c034a 100755
--- a/tools/updateme
+++ b/tools/updateme
@@ -199,7 +199,7 @@ migrate_cfg() {
 	scc_files=`find $meta_dir/cfg/scratch/obj/$dirname -maxdepth 1 -type f -name *.scc`
 	b=`basename $c`

-	# check to see if a .scc file already includes the fragement
+	# check to see if a .scc file already includes the fragment
 	gen_feature=
 	if [ -n "$scc_files" ]; then
 		grep $b $scc_files -q


  where does one send patches to things like kern tools?  i can
collect more before bundling it all together as a single submission.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

