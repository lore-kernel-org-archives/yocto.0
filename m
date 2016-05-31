Return-Path: <diego.ml@zoho.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19D4CE00D9E; Tue, 31 May 2016 09:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.ml[at]zoho.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.153 listed in list.dnswl.org]
X-Greylist: delayed 914 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 May 2016 09:20:40 PDT
Received: from sender153-mail.zoho.com (sender153-mail.zoho.com
	[74.201.84.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2DD4E00CE1
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 09:20:40 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:subject:date:message-id:user-agent:mime-version:content-type; 
	b=L+z+WwHmu+1fdJJsTOMXUz6tNKabpfmbbC0Btw/jidD9Rmzww4wwoVMOfrpDFRzoAiUGE6DMEKJ4
	Yelre8lzckm1dopgCuIHH560iyqp5eVFGzZwK6ed3K3VmW9+bP5q  
Received: from ip-192-168-197-87.eu-west-1.compute.internal
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1464710722614202.8565695089386;
	Tue, 31 May 2016 09:05:22 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 18:05:19 +0200
Message-ID: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
User-Agent: KMail/4.14.10 (Linux/4.4.9-300.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
MIME-Version: 1.0
Subject: Per image customizations
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
X-List-Received-Date: Tue, 31 May 2016 16:20:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi guys,

I've asked this question on IRC, but haven't received complete enough replies, 
so posting here.

I have my own layer with my recipes and customizations. In my layer I have two 
images, one which is the "regular OS" that runs the product application, and 
one which is the "flash OS", a minimal ramdisk OS that flashes the disks. I want 
the two images to have different fstab and inittab files: what is the correct 
way to do that? I know how to handle machine / arch specific differences, but I 
don't think there's a way to "dress a package depending on the image it gets 
included in", right?

Should I create my own IMAGE_FEATURE and hack my fstab and inittab when rootfs 
is created, sort of how the "read-only-rootfs" feature was done?
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/core-image.bbclass?h=fido#n77

Thanks for any help you'll give.
Diego


