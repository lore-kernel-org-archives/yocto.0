Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC845E0097C; Mon,  5 Dec 2016 10:37:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D029E00924
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:37:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id uB5IbDUr029585
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 5 Dec 2016 10:37:13 -0800
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 5 Dec 2016 10:37:12 -0800
To: Brian Avery <avery.brian@gmail.com>,
	<openembedded-architecture@lists.openembedded.org>,
	<yocto@yoctoproject.org>, <openembedded-core@lists.openembedded.org>
References: <CAKV_0ei2fHx-byfoVD85KFEpKkA23jgoVC9PUyK=6gJZQGTugA@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <2c6bdf61-0227-a6a8-5455-5533dbfbbd38@windriver.com>
Date: Mon, 5 Dec 2016 12:37:11 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAKV_0ei2fHx-byfoVD85KFEpKkA23jgoVC9PUyK=6gJZQGTugA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] RFC BuildAppliance future
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
X-List-Received-Date: Mon, 05 Dec 2016 18:37:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On 12/5/16 12:04 PM, Brian Avery wrote:
>   Please note, this is going out to 3 lists in an attempt to insure that no one
> who would be impacted by this change misses it. Implied spam apology included.
> 
>   The Yocto Project currently provides a virtual machine image called the Build
> Appliance
> (https://downloads.yoctoproject.org/releases/yocto/yocto-2.2/build-appliance/).
> This image can be run using either VirtualBox or VMware. It enables you to build
> and boot a custom embedded Linux image with the Yocto Project on a non-Linux
> development system.  It is not intended for day to day development use, but
> instead, is intended to allow users to “try out” the tools even if they do not
> have access to a Linux system.

What are the requirements for a Windows user to use this, instead of the VM
approach.  (In the past it was easy for a Windows user to get the VM, and just
run it to test out things.)

--Mark

>   We are considering replacing the VM based Build Appliance with a set of
> containers (https://hub.docker.com/r/crops/poky/, or if you want a user
> interface (https://hub.docker.com/r/crops/toaster-master/ ).  These containers
> currently provide most of the functionality of the Build Appliance and should
> shortly be at feature parity with the Build Appliance.  We are actively adding
> to and supporting the containers as some of our developers are using them in
> their day to day development in order to benefit from the host isolation and
> ease with which other distributions can be tested. 
> 
>   This is an RFC to see what features in the Build Appliance are important to
> you but would not be provided by the container solutions.  If the community
> would be just as content using the container approach as using the VM based
> Build Appliance image, then we’d be better off deprecating the Build Appliance
> and applying those resources elsewhere.  If there are important features the
> Build Appliance provides which the container solution does not, or cannot
> provide, we’d love to hear what they are!
> 
>  Thanks in advance for any feedback,
> 
> -Brian
> 
> an Intel Employee
> 
> 
> 
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
> 


