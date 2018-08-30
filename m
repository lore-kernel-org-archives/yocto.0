Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6446E00950; Thu, 30 Aug 2018 02:39:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D6BE006C7
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 02:39:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7U9dMHU028395
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 02:39:22 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Thu, 30 Aug 2018 02:39:21 -0700
To: <yocto@yoctoproject.org>
References: <trinity-6baee42b-b991-4100-88d6-f0bde4871f7c-1535617250478@3c-app-gmx-bs18>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <af0b3ecb-6bee-198e-8429-4f05ff0b6d68@windriver.com>
Date: Thu, 30 Aug 2018 17:44:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <trinity-6baee42b-b991-4100-88d6-f0bde4871f7c-1535617250478@3c-app-gmx-bs18>
X-Originating-IP: [128.224.162.218]
Subject: Re: modify SDK / populate_sdk
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
X-List-Received-Date: Thu, 30 Aug 2018 09:39:23 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/30/2018 04:20 PM, star@gmx.li wrote:
> I want to remove some files (in this case etc/snmp/snmptrapd.conf as example) in SDK.
> A bit strange to be, if I build this image (without -c populate_sdk), this is not part of it.
> But it becomes part of the SDK.
> The way I know to remove something in image (ROOTFS_POSTPROCESS_COMMAND) is not working here.
>
> What can I do? How can I adjust what is in SDK?

How about using SDK_POSTPROCESS_COMMAND?

Best Regards,
Chen Qi

