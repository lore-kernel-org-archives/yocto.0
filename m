Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FCBBE00945; Mon,  1 Jun 2015 19:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D418E005B9
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 19:47:26 -0700 (PDT)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id 7C09F21256F4
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 02:47:25 +0000 (UTC)
Message-ID: <556D1937.9090602@mindchasers.com>
Date: Mon, 01 Jun 2015 22:47:19 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Question regarding python, _sysconfigdata.py, and building C extension modules on the target...
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
X-List-Received-Date: Tue, 02 Jun 2015 02:47:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

While building a python 2.7 C extension module on the target (e.g., 
python setup.py build) I found that I needed to modify 
/usr/lib64/python2.7/_sysconfigdata.py to successfully build the module.

I modified both CC and LDSHARE.  For both, I removed 
--sysroot=/build/yocto/<project>/tmp/sysroots/<machine>'.  And for 
LDSHARE, I added -L/lib64, so gcc_s could be found.

I'm wondering whether this is expected behavior or perhaps a bug. 
Perhaps I should have setup my environment differently for building a C 
extension module on the target?

I would appreciate any advice on the best way to rectify this so I can 
use a non-modified, generated rootfs to build C extension modules on my 
target.

I'm using poky fido (508c4cac320d) and building with a Freescale t1040 
64bit (meta-fsl-ppc).

Thanks

Bob

