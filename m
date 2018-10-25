Return-Path: <ito@lineo.co.jp>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DA75E00994; Wed, 24 Oct 2018 18:19:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1378 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Oct 2018 18:19:08 PDT
Received: from mail.lineo.co.jp (ns.lineo.co.jp [203.141.200.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6CFE00994
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 18:19:08 -0700 (PDT)
Received: from [172.31.28.118] (vpn1.lineo.co.jp [203.141.200.204])
	by mail.lineo.co.jp (Postfix) with ESMTP id D6CCAAC18886;
	Thu, 25 Oct 2018 09:56:08 +0900 (JST)
To: yocto@yoctoproject.org
References: <CAK4Yt2kCv-MnHh+MAc15aR80G1ZJ6_bZ6H22pa=hrKkbHV8R1A@mail.gmail.com>
From: Takayasu Ito <ito@lineo.co.jp>
Message-ID: <8eb74837-4cbb-41a7-0be2-d029cb08844d@lineo.co.jp>
Date: Thu, 25 Oct 2018 09:56:10 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAK4Yt2kCv-MnHh+MAc15aR80G1ZJ6_bZ6H22pa=hrKkbHV8R1A@mail.gmail.com>
Subject: Re: time zone
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
X-List-Received-Date: Thu, 25 Oct 2018 01:19:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2018/10/24 23:35, Zolee K wrote:
> Hi All,
> 
> I noticed in my device that the time is 2 hours early and UTC. Could you
> suggest a correct way to set the timezone with a recipe file to
> Europe/Budapest?
> 
> Thanks,
> 
> Zoli
> 
> 
> 

Hi Zoli

IMAGE_INSTALL_append = " tzdata"
DEFAULT_TIMEZONE = "Europe/Budapest"

enjyo!
-- 
Takayasu Ito <ito@lineo.co.jp>
https://www.lineo.co.jp

