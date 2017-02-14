Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D28E5E00953; Tue, 14 Feb 2017 03:27:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Feb 2017 03:27:23 PST
Received: from cloudserver096301.home.net.pl (cloudserver096301.home.net.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEBAAE0089D
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 03:27:23 -0800 (PST)
Received: from 81-95-197-197.metrolink.pl (81.95.197.197) (HELO
	[192.168.0.103])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer
	0.81.2) id a3cccdf9e58e6829; Tue, 14 Feb 2017 12:20:46 +0100
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Message-ID: <28d2a024-7e72-99d9-0f80-8495b2a244c5@3mdeb.com>
Date: Tue, 14 Feb 2017 12:20:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Cc: piotr.krol@3mdeb.com
Subject: [wic] Fixed size partitions (--grow)
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
X-List-Received-Date: Tue, 14 Feb 2017 11:27:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have a question regarding wic. If this is not appropriate list to ask, 
then
please point me to correct one.

wic seems like a really simple and powerful tool. My intention was to create
disk image with multiple partitions with fixed size. While the first 
part seems
doable, the second does not. I have found a suggestion there [1] that recent
wic may support --grow and --maxsize switches. As I found out, it does not
(correct me if I'm mistaken).

So the question is, how hard would it be to implement those options and
what would be necessary to do so. Those are available in kickstart [2]. 
As far
as I understand, wic is based on kickstart project. Do you think it is 
desired
that wic would have the ability to produce fixed size partition based on 
yocto
images?

Maybe You have some experience with this issue or other workarounds to 
achievie
similar goal.

Thanks

[1] https://community.nxp.com/thread/389816
[2] 
https://github.com/rhinstaller/pykickstart/blob/master/docs/kickstart-docs.rst#id36


