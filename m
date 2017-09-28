Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AD8AE00D26; Thu, 28 Sep 2017 10:18:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8DC4E00CCC
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 10:18:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8SHIPGC005544
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Sep 2017 10:18:25 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 28 Sep 2017 10:18:22 -0700
To: John Finley <john.finley@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <6e5f6176b28d4d5397a7a7e36c40d4a9@HIBDWSMB02.ad.harman.com>
	<CACwBRSC=TrjHrme9neN2wRoak9duR=mp5bfDZX2+GMYyYtbNgg@mail.gmail.com>
	<CAMKF1sqwPiLOvjT9hUA7ui8VrrA9+K_yMymsu5vAiWYxNXL8mg@mail.gmail.com>
	<CACwBRSBD8bwUqorvT-ACJZQTGPyfaABrc2BkZ1uk+q1bBy-GVA@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <614f4fe6-b9c1-266c-324e-61d944baee45@windriver.com>
Date: Thu, 28 Sep 2017 13:18:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CACwBRSBD8bwUqorvT-ACJZQTGPyfaABrc2BkZ1uk+q1bBy-GVA@mail.gmail.com>
X-Originating-IP: [172.25.44.7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Kumar,
	Shrawan" <Shrawan.Kumar@harman.com>,
	"connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: Re: want to execute a script having sudo : sudo cryptsetup
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
X-List-Received-Date: Thu, 28 Sep 2017 17:18:30 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 2017-09-27 01:28 PM, John Finley wrote:
> pseudo can't do some of the cryptsetup functions that really require 
> root, or at least I could not convince it to. Using sudo is not so good, 
> but I don't think there's an easy way around it for the cryptsetup stuff.

If you can narrow down what's missing, and open an enhancement request
for oe-core-2.5 that would be helpful.

Please take a quick look to see if your ER is it already in this list:
 
https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=pseudo&list_id=601276

Sorting by the product column will help.

../Randy
> 
> On Wed, Sep 27, 2017 at 10:22 AM, Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
> 
> 
>     On Wed, Sep 27, 2017 at 9:21 AM John Finley <john.finley@gmail.com
>     <mailto:john.finley@gmail.com>> wrote:
> 
>         Try making it so the user doing the build is not prompted for a
>         password when they do "sudo". I have this in my vm:
> 
> 
>     I think you can leverage pseudo tool to emulate the root user during
>     build
> 
>              john@vbox-ubuntu-16$ cat /etc/sudoers.d/john
>              john ALL=(ALL) NOPASSWD: ALL
>              john@vbox-ubuntu-16$
>         I don't know if that's all that's needed; I have to google it
>         every time.
> 
>         On Mon, Sep 25, 2017 at 2:48 AM, Kumar, Shrawan
>         <Shrawan.Kumar@harman.com <mailto:Shrawan.Kumar@harman.com>> wrote:
> 
>             Hello Team ,____
> 
>             __ __
> 
>             I am trying to achieve below from yocto , do we have a way
>               ?____
> 
>             __ __
> 
>             __ __
> 
>             dd if=/dev/zero of=hello.enc bs=4k count=$400____
> 
>             mknod /dev/loop_dev_0____
> 
>             losetup /dev/loop_dev_0 hello.enc____
> 
>             *_sudo_* cryptsetup --type=plain open /dev/loop_dev_0
>               plainMap < $2____
> 
>             __ __
> 
>             __ __
> 
>             __ __
> 
>             __ __
> 
>             Thanks and Regards____
> 
>             Shrawan____
> 



-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

