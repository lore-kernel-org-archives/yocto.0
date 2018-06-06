Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E91AE0137A; Wed,  6 Jun 2018 02:14:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A6EE01166
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 02:14:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w569EZee018829
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Jun 2018 02:14:35 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 6 Jun 2018 02:14:34 -0700
To: <yocto@yoctoproject.org>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <bd69dabb-1aa3-6553-4f43-2337c9cf5190@windriver.com>
Date: Wed, 6 Jun 2018 17:17:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Wed, 06 Jun 2018 09:14:38 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2018 10:33 PM, Mihaela Apetroaie-Cristea wrote:
> Hello,
>
> I have a minimal yocto OS built for RPI, which has three partitions: boot, root and data. Is there any way to resize root and data such that root expands/flattens when files and others are added/deleted? Such that I can make more space for the data partition. At the moment my partitions are built with minimal size and I expand them with gparted after I added them on the sd card. But if I put my device somewhere unreachable it would be very useful to have a way to expand and flatten portions on the fly.
>
> Thank you,
> Mihaela
It is said that btrfs supports such feature? Frankly I didn't try it out.
Yocto supports building out btrfs images. Maybe you can give it a try?

Best Regards,
Chen Qi

