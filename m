Return-Path: <prvs=71954c7a06=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2EC0A4C8009A
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 09:31:04 -0500 (CDT)
Received: from LLE2K7-HUB01.mitll.ad.local (LLE2K7-HUB01.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p72EV2mY011300;
	Tue, 2 Aug 2011 10:31:02 -0400
Message-ID: <4E380A25.4060605@ll.mit.edu>
Date: Tue, 2 Aug 2011 10:31:01 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110721 Thunderbird/5.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4E36E879.8070407@ll.mit.edu> <4E372645.7000205@linux.intel.com>
In-Reply-To: <4E372645.7000205@linux.intel.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.211,
	0.0.0000
	definitions=2011-08-02_04:2011-08-02, 2011-08-02,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1108020122
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Magic/File problems
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
X-List-Received-Date: Tue, 02 Aug 2011 14:31:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi there,

On 08/01/2011 06:18 PM, Saul Wold wrote:
> Which version of poky are you working with?

Git master as of that point. Revision 
46cf540e63a848512617b20fd8492f81bfb2f704

> There was a problem that we
> had with file at one point and thought was fixed. If you check in your
> tmp/sysroots directory for the host machine, do you have a file.real?

I do have a tmp/sysroots/x86_64-linux/usr/bin/file.real -- although I'm 
building for BeagleBoard, and don't have one in that directory.

Thanks,
Jeff

