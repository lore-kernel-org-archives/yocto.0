Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14895E005B4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 08:51:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7TFpvQG009876
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Aug 2013 08:51:57 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 29 Aug 2013 08:51:56 -0700
Message-ID: <521F6E10.3090704@windriver.com>
Date: Thu, 29 Aug 2013 11:51:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
References: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
In-Reply-To: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp and kconf-check
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
X-List-Received-Date: Thu, 29 Aug 2013 15:51:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-29 11:36 AM, Jate Sujjavanich wrote:
> It appears that the yocto-bsp script generates a kernel configuration that creates some warnings during kern-tools' kconf_check. The {{machine}}.cfg file has many non-hardware options, therefore the script warns.
>
> It seems like many of these should be in the standard kernel configuration. Is this correct, and does the yocto-bsp data need to be updated?

Which kernel version ? But the answer is not necessarily, if a machine 
config
is specifying something that hasn't been tagged "hardware" or that
has a specified exception, you get a warning.

It's not about them being common or not, it's about BSPs following a
base policy versus having wild, per-board behaviour.

Cheers,

Bruce

>
> - Jate
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


