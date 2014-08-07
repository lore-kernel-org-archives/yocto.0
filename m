Return-Path: <renaud.barbier@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B0D5E00781; Thu,  7 Aug 2014 12:19:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.231.149.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 7933 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Aug 2014 12:19:17 PDT
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D82B3E0034B
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 12:19:17 -0700 (PDT)
Received: from pps.filterd (m0048275.ppops.net [127.0.0.1])
	by m0048275.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id
	s77H5XGY047071
	for <yocto@yoctoproject.org>; Thu, 7 Aug 2014 13:07:03 -0400
Received: from alpmlip12.e2k.ad.ge.com (n165-156-000-000.static.ge.com
	[165.156.5.1] (may be forged))
	by m0048275.ppops.net-00176a03. with ESMTP id 1nmcvv8659-1
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 13:07:03 -0400
Received: from cinmlip01.e2k.ad.ge.com ([3.159.213.48])
	by alpmlip12.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	07 Aug 2014 13:04:18 -0400
Received: from selma.edi.geip.ge.com ([3.26.68.70])
	by CINMLIP01.e2k.ad.ge.com with ESMTP; 07 Aug 2014 13:07:01 -0400
Received: from [3.26.68.149] (unknown [3.26.68.149])
	by selma.edi.geip.ge.com (Postfix) with ESMTP id ED6A3E17ED
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 18:07:00 +0100 (BST)
Message-ID: <53E3B236.40604@ge.com>
Date: Thu, 07 Aug 2014 18:07:02 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.27,
	0.0.0000
	definitions=2014-08-07_06:2014-08-06, 2014-08-07,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1408070203
Subject: Assembling images to build a NOR boot image
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
X-List-Received-Date: Thu, 07 Aug 2014 19:19:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello,
I am working on the creation of a boot image for a NOR flash.
The image assembles a boot loader and a ubi image containing the kernel
and device tree.

So far I have created a build area to install the kernel and device tree
and used IMAGE_CMD_ubi to create the ubi image.

Then I have added a python function do_norbuild that puts together the
boot loader and ubi image and adds padding.
Using bitbake, I can create the NOR image as follows:
bitbake -c norbuild core-image

However,
"bitbake core-image" will not call the norbuild task.

I have been through quite a lot of code and documentation and cannot
figure out why the task is not called.

If you have any idea of what couldbe wrong, please le me know.

Cheers,
Renaud






