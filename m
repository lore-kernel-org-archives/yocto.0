Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE4AFE0086D; Fri, 27 Nov 2015 06:53:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D335E007C3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 06:53:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tARErNsj016166
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 27 Nov 2015 06:53:23 -0800
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Fri, 27 Nov 2015 06:53:22 -0800
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <eb78389061c241f79b2c9e2807bc8be9@serv030.corp.eldorado.org.br>
	<56532285.409@windriver.com>
	<06676a3c24d841b9a129c013852a77bf@serv030.corp.eldorado.org.br>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56586E61.6010901@windriver.com>
Date: Fri, 27 Nov 2015 08:53:21 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <06676a3c24d841b9a129c013852a77bf@serv030.corp.eldorado.org.br>
Subject: Re: %pre scriptlet failed in Guestfish
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
X-List-Received-Date: Fri, 27 Nov 2015 14:53:28 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 11/27/15 5:56 AM, Alexandre Freire da Silva Osorio wrote:
> Mark,
> 
> Thanks for your attention. 
> 
> In fact there's nothing in PRE script of the rpm that could cause the error, it just executes a 'exit 0'. I really don't know what can be the cause. More than this, why the error doesn't occur when running on a QEMU VM, just inside guestfish.

In order to run the 'exit 0', it needs to run the shell.  So it's trying to run
either /bin/sh or /bin/bash (not sure) and it's being stopped.

--Mark

> Regards,
> Alexandre
> 
> -----Original Message-----
> From: Mark Hatle [mailto:mark.hatle@windriver.com] 
> Sent: segunda-feira, 23 de novembro de 2015 12:28
> To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>; yocto@yoctoproject.org
> Subject: Re: [yocto] %pre scriptlet failed in Guestfish
> 
> On 11/23/15 6:39 AM, Alexandre Freire da Silva Osorio wrote:
>> Hello,
>>
>> Running an image built with Yocto 1.8 in Guestfish I get the following error when trying to install a RPM package:
> 
> I don't know what Guestfish is.  But in these cases, the best way to handle it is to us 'rpm -q --scriptlets <package>'
> 
> And then run the commands manually, in the same environment as RPM would run in, to verify failure modes.
> 
>> sh "cd /home/root; rpm -ivh --nodeps package.rpm"
>> libguestfs: trace: sh "cd /home/root; rpm -ivh --nodeps package.rpm"
>> guestfsd: error: error:   install: %pre scriptlet failed (2), skipping package.x86_64
>> libguestfs: trace: sh = NULL (error)
>> libguestfs: error: sh: error:   install: %pre scriptlet failed (2), skipping package.x86_64
>>
>> This error doesn't occur ehqne running the same image in QEMU. Please could anyone give me a help?
> 
> The error above -appears- to indicate it tried to the 'sh', but there was no 'sh' in your environment.
> 
> --Mark
> 
>> Thanks in advance.
>>
>> Regards,
>> Alexandre
>>
> 


