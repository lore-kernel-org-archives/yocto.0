Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1039AE00CF1; Tue, 26 Sep 2017 14:01:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 643DEE00CC4
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 14:01:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8QL1H1d000016
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Sep 2017 14:01:17 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 26 Sep 2017 14:01:16 -0700
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <8d5fdef5dbbf4544a4fa08c657cd0404@HIBDWSMB02.ad.harman.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <72889263-034b-f14b-3f2e-66bddcd56f42@windriver.com>
Date: Tue, 26 Sep 2017 17:01:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <8d5fdef5dbbf4544a4fa08c657cd0404@HIBDWSMB02.ad.harman.com>
X-Originating-IP: [172.25.44.7]
Subject: Re: rootfs encryption support
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
X-List-Received-Date: Tue, 26 Sep 2017 21:01:20 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 2017-09-26 01:25 AM, Kumar, Shrawan wrote:
> Hello Team ,
> 
> Is it possible to get encrypted rootfs during image build  ?
> 
> Currently , I am running “*cryptsetup*” (as sudo) *manually*   after the 
> final image(rootfs.ext4) is produced  . The idea is to get this done 
> within yocto environment without sudo problem .
> 
> Thanks and Regards
> 
> Shrawan
> 
> 
> 

I'm not working on it but I think people are trying to focus such work
in this layer:
 
https://layers.openembedded.org/layerindex/branch/master/layer/meta-encrypted-storage/

    https://github.com/jiazhang0/meta-secure-core


-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

