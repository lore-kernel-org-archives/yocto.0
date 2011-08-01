Return-Path: <prvs=71947155aa=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40FDF4C80120
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2011 12:55:07 -0500 (CDT)
Received: from LLE2K7-HUB02.mitll.ad.local (LLE2K7-HUB02.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p71Ht6sh018543 for
	<yocto@yoctoproject.org>; Mon, 1 Aug 2011 13:55:06 -0400
Message-ID: <4E36E879.8070407@ll.mit.edu>
Date: Mon, 1 Aug 2011 13:55:05 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110721 Thunderbird/5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.211,
	0.0.0000
	definitions=2011-08-01_05:2011-08-01, 2011-08-01,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1108010162
Subject: Magic/File problems
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
X-List-Received-Date: Mon, 01 Aug 2011 17:55:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On my host system I have the "file" utility version 5.05. The version in 
poky/in my build directories is version 5.04. I'm seeing a lot of builds 
fail with the following:

| error: magic_load(ms, /usr/share/misc/magic) failed: File 5.4 supports 
only version 7 magic files. `/usr/share/misc/magic.mgc' is version 8

Note that the version there is 5.4; this doesn't match anything as far 
as I can tell.

Any ideas?

Thanks,
Jeff

