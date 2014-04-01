Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7A27E00C4E
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 22:33:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s315XBDU017725
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Mar 2014 22:33:11 -0700 (PDT)
Received: from [128.224.162.220] (128.224.162.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Mon, 31 Mar 2014 22:33:10 -0700
Message-ID: <533A4F92.90903@windriver.com>
Date: Tue, 1 Apr 2014 13:33:06 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>	<CAP9ODKqMiSZRRMHg24J8BOe4wizeJWcufk7DvteXsknCC4X8Gg@mail.gmail.com>
	<CAPhnLPDGY8ydV5jyRH=bLk=sAoj=c4ZP=b8Rx=1n6tfdG1Zbkg@mail.gmail.com>
In-Reply-To: <CAPhnLPDGY8ydV5jyRH=bLk=sAoj=c4ZP=b8Rx=1n6tfdG1Zbkg@mail.gmail.com>
X-Originating-IP: [128.224.162.220]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Tue, 01 Apr 2014 05:33:22 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Beth,

于 2014年04月01日 02:38, Flanagan, Elizabeth 写道:
> Otavio
>
> So, if I were to not publish the fsl builds, would that be an issue?

Please do not remove p1022ds images from fsl-ppc build. I'm using it.

Thanks,
Yi

>
> -b
>
> On Fri, Mar 28, 2014 at 6:02 AM, Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> Hello Beth,
>>
>> On Wed, Mar 26, 2014 at 6:22 PM, Otavio Salvador
>> <otavio@ossystems.com.br> wrote:
>>> On Wed, Mar 26, 2014 at 6:14 PM, Flanagan, Elizabeth
>>> <elizabeth.flanagan@intel.com> wrote:
>>>> I'd like to start looking at reducing the number of artifacts we're
>>>> releasing both for our nightly builds (which is at 250,000 artifacts
>>>> and .25 TB!) and releases.
>> I don't use any meta-fsl-arm artifacts as I usually build the images
>> for testing, as does Daiane, however the autobuilder is critical for
>> me as your build does spot and exercise other things which mine does
>> not (plus the MUT) so I highly depend on it.
>>
>> --
>> Otavio Salvador                             O.S. Systems
>> http://www.ossystems.com.br        http://code.ossystems.com.br
>> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
>
>


