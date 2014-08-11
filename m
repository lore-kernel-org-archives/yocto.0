Return-Path: <renaud.barbier@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBA09E00796; Mon, 11 Aug 2014 09:12:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69392E004F2
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 09:12:51 -0700 (PDT)
Received: from pps.filterd (m0048204.ppops.net [127.0.0.1])
	by m0048204.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id
	s7BGAerc001752
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 12:12:50 -0400
Received: from alpmlip12.e2k.ad.ge.com ([12.43.191.1])
	by m0048204.ppops.net-00176a03. with ESMTP id 1nq14fg09q-1
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 12:12:49 -0400
Received: from cinmlip01.e2k.ad.ge.com ([3.159.213.48])
	by alpmlip12.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	11 Aug 2014 12:09:50 -0400
Received: from selma.edi.geip.ge.com ([3.26.68.70])
	by CINMLIP01.e2k.ad.ge.com with ESMTP; 11 Aug 2014 12:12:48 -0400
Received: from [3.26.68.149] (unknown [3.26.68.149])
	by selma.edi.geip.ge.com (Postfix) with ESMTP id 8EFF3E17FE
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 17:12:47 +0100 (BST)
Message-ID: <53E8EB7F.5050502@ge.com>
Date: Mon, 11 Aug 2014 17:12:47 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
References: <53E3B236.40604@ge.com>
	<CAP71WjyJPaKkWFRdwBZzMrpMa7tykjb_o4=jp24PTi29mkC==Q@mail.gmail.com>
In-Reply-To: <CAP71WjyJPaKkWFRdwBZzMrpMa7tykjb_o4=jp24PTi29mkC==Q@mail.gmail.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.27,
	0.0.0000
	definitions=2014-08-11_02:2014-08-11, 2014-08-11,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1408110187
Subject: Re: Assembling images to build a NOR boot image
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
X-List-Received-Date: Mon, 11 Aug 2014 16:12:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/08/2014 09:19, Nicolas Dechesne wrote:
> On Thu, Aug 7, 2014 at 7:07 PM, Renaud Barbier <renaud.barbier@ge.com> wrote:
>> > Hello,
>> > I am working on the creation of a boot image for a NOR flash.
>> > The image assembles a boot loader and a ubi image containing the kernel
>> > and device tree.
>> >
>> > So far I have created a build area to install the kernel and device tree
>> > and used IMAGE_CMD_ubi to create the ubi image.
>> >
>> > Then I have added a python function do_norbuild that puts together the
>> > boot loader and ubi image and adds padding.
>> > Using bitbake, I can create the NOR image as follows:
>> > bitbake -c norbuild core-image
>> >
>> > However,
>> > "bitbake core-image" will not call the norbuild task.
>> >
>> > I have been through quite a lot of code and documentation and cannot
>> > figure out why the task is not called.
>> >
>> > If you have any idea of what couldbe wrong, please le me know.
> you seem to have created a task, not just a Python function, since you
> can run it with -c norbuild. By default when running bitbake <recipe>,
> bitbake will run do_build task. so when you create your own custom
> task, you need to insert it into the task list, maybe you haven't done
> that?
> 
> something like this should work in your case:
> 
> addtask norbuild before do_build after do_rootfs

Thanks,
originally I had "addtask norbuild after do_rootfs" followed by other
desperate attempts. It did not work.
I just saw your email as I was looking at do_build.
Adding before do_build did resolve my problem.

Cheers,
Renaud


