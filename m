Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0CABE008C8; Sun, 19 Oct 2014 19:01:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83988E00861
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 19:01:01 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 79F21A409F; Mon, 20 Oct 2014 02:01:01 +0000 (UTC)
Date: Mon, 20 Oct 2014 02:01:01 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141020020101.GA26221@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Package Report System]Upgrade recipes name list
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
X-List-Received-Date: Mon, 20 Oct 2014 02:01:04 -0000
X-Groupsio-MsgNum: 21860
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline

--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
Upgradable Count: 0
Upgrade Total Count: 0
The based commit merge time is:
Tue Jul 30 10:57:24 2013 +0300
The based commit is:
The based commit is:
commit ed19bcca194318e267bc7d11771ad1664bd44022
Author: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
Date:   Mon Jul 29 15:33:12 2013 +0300
commit ed19bcca194318e267bc7d11771ad1664bd44022
Author: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
Date:   Mon Jul 29 15:33:12 2013 +0300
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"
recipe_color.inc/17: RECIPE_COLOR = "green"

--6TrnltStXW4iwmi0--
