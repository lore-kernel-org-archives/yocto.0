Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193A3E01409
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 12:29:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r53JTcHT014336
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 3 Jun 2013 12:29:38 -0700 (PDT)
Received: from [128.224.22.24] (128.224.22.24) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 3 Jun 2013 12:29:36 -0700
Message-ID: <51ACEE9A.5030404@windriver.com>
Date: Mon, 3 Jun 2013 15:29:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Michael Stickel <michael@cubic.org>
References: <51AB4815.6040006@cubic.org> <51ABA9DB.2030204@windriver.com>
	<51ACE650.5010407@cubic.org>
In-Reply-To: <51ACE650.5010407@cubic.org>
Cc: yocto@yoctoproject.org
Subject: Re: Problem building the linux kernel outside source directory for mips
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
X-List-Received-Date: Mon, 03 Jun 2013 19:29:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-03 02:54 PM, Michael Stickel wrote:
> On 02/06/13 22:23, Bruce Ashfield wrote:
>> Can you define "trashed" ?
>
> My defconfig is for mips and the .config file was for x86.

Hmmm. That should definitely not happen, unless the wrong BSP description
is being picked up and built. Is this the qemumips BSP, or something
custom ?

>
> But I will dig into the documentation you mentioned first and try to
> find out what I did wrong and come back later.
>

Sounds good. I'll wait to hear more.

Cheers,

Bruce

>
> Best Regards
> Michael
> PS: Sorry for the PM, wrong address.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


