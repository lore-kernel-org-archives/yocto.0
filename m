Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57F34E009C1; Fri,  2 May 2014 13:16:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AAAFE00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 13:16:18 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id k15so4881421qaq.31
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 13:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=d0jk7w90wG+Zccn93UyAYoQsU+c1pSYQ+f4/WIOeQLE=;
	b=f6ZR5h5OOBth3i1gGO8AckmwftwF1ish5cd38A4l0tZoasuJV4ZMbp5lg8G57imlh/
	oqAvE3kyb+FALWBmxt80+UePtM2jjPSU+7lahhMu29ZTWOiRxGWNfUpag//Z2NBAzi9T
	tNeQioPbdL/cEyy+97Tedp4mYPV8ugVv/nndJxji2wZWWRdvT+ONhq65k5+PQ4AXrth8
	VRknH8DbYotKr0TqdcQJX4d+8JJ0poC2TQWoiYA6YWEOSl5B872OA6IcaqnjLV/RwTRs
	pWOZrMJsquAOXtX9g8U0kaBVt3UyUAhWsm3WIfxEaW9a7siqsLTcRw+BV0lerQdfdcpb
	vOlg==
MIME-Version: 1.0
X-Received: by 10.140.91.7 with SMTP id y7mr24242497qgd.3.1399061777957; Fri,
	02 May 2014 13:16:17 -0700 (PDT)
Received: by 10.140.95.111 with HTTP; Fri, 2 May 2014 13:16:17 -0700 (PDT)
Date: Fri, 2 May 2014 16:16:17 -0400
Message-ID: <CAPphmgbrwfYffyF6KpKo+0C2VL5BQ4vbnH8wLv1ZKw0Rz2uo4A@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: [AB] PublishLayerTarballs "git archives" the wrong directory
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
X-List-Received-Date: Fri, 02 May 2014 20:16:20 -0000
Content-Type: text/plain; charset=UTF-8

I am running off of the master branch.

I hope this log message is readable. The key is to know that I have a
meta-oe repo in the build directory and that the last line shows it's
running in build instead of build/meta-oe.

 git archive --format=tar HEAD
--prefix=meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4/ | bzip2 -c
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2; md5sum
meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2 >>
meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2.md5sum; mkdir
-p /home/jate/tmp/yab/publish/builds/qemux86/20140501-1; rsync -av
meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2*
/home/jate/tmp/yab/publish/builds/qemux86/20140501-1
 in dir /home/jate/yocto-autobuilder/yocto-slave/qemux86/build
(timeout 100000 secs)

I think that it should be changing directory to meta-oe, but the code
is just missing that. This happens with all the other repourl's in my
config too. The generated tarballs are of the same size (of poky).


Cheers


- Jate S.

