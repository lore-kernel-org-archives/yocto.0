Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9635EE01400
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 20:18:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7S3ImnA001816
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Aug 2012 20:18:48 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.166) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Mon, 27 Aug 2012 20:18:47 -0700
Message-ID: <503C3896.5080509@windriver.com>
Date: Mon, 27 Aug 2012 23:18:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
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
X-List-Received-Date: Tue, 28 Aug 2012 03:18:50 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-08-27 8:14 PM, Saxena, Rahul wrote:
> Hi,
>
> I am building a BSP (meta-cedartrail) using 1.3 M3 branch of Poky.
>
> When I try to boot a image such as core-image-sato, I get kernel panic
> and errors such as:
>
> VFS: Cannot open root device “ram0” or unkown-block(0,0)
>
> Please append a correct “root=” boot option; here are the available
>
> partitions:
>
> VFS: unable to mount root fs on unknown block(0,0)
>
> User configuration error – no valid rootfilesystem found
>
> I do see that the root file system exists in
> cedartrail-poky-linux/core-image-sato-1.0-r0/rootfs dir..
>
> I did not see this problem when I uses a earlier commit of the Poky
> master branch.
>
> It seems like something broke with 1.3 M3 branch that prevents a proper
> build with 3.0 kernel. I do need to build my BSP with 3.0 kernel.
>
> (I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing does
> not include testing with the 3.0 kernel)
>
> Any suggestions would be most welcome. I do need to build my BSP with
> the 3.0 kernel.

Hmm. It should work, I booted one not that long ago. Can you force
qemux86 to prefer the 3.0 kernel and see if that boots ? That would
at least start to isolate the potential problem areas.

Bruce

>
> Thanks
>
> Rahul
>


