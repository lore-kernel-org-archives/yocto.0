Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC20DE00ADD; Mon, 23 Nov 2015 06:28:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C615E00ADD
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 06:28:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tANESMHA003691
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Nov 2015 06:28:23 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Mon, 23 Nov 2015 06:28:22 -0800
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <eb78389061c241f79b2c9e2807bc8be9@serv030.corp.eldorado.org.br>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56532285.409@windriver.com>
Date: Mon, 23 Nov 2015 08:28:21 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <eb78389061c241f79b2c9e2807bc8be9@serv030.corp.eldorado.org.br>
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
X-List-Received-Date: Mon, 23 Nov 2015 14:28:30 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 11/23/15 6:39 AM, Alexandre Freire da Silva Osorio wrote:
> Hello,
> 
> Running an image built with Yocto 1.8 in Guestfish I get the following error when trying to install a RPM package:

I don't know what Guestfish is.  But in these cases, the best way to handle it
is to us 'rpm -q --scriptlets <package>'

And then run the commands manually, in the same environment as RPM would run in,
to verify failure modes.

> sh "cd /home/root; rpm -ivh --nodeps package.rpm"
> libguestfs: trace: sh "cd /home/root; rpm -ivh --nodeps package.rpm"
> guestfsd: error: error:   install: %pre scriptlet failed (2), skipping package.x86_64
> libguestfs: trace: sh = NULL (error)
> libguestfs: error: sh: error:   install: %pre scriptlet failed (2), skipping package.x86_64
> 
> This error doesn't occur ehqne running the same image in QEMU. Please could anyone give me a help?

The error above -appears- to indicate it tried to the 'sh', but there was no
'sh' in your environment.

--Mark

> Thanks in advance.
> 
> Regards,
> Alexandre
> 


