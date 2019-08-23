Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC5B4E00DA3; Thu, 22 Aug 2019 18:24:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 561BAE00D38
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 18:24:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7N1OAlU022873
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Aug 2019 18:24:11 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 22 Aug 2019 18:24:01 -0700
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
	<CAA=hcWQ9fMMFw65h4M8LWM_Mqx-MDN2sUDy+pzLSMgFV1bak1Q@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <d61333d0-47a1-194a-abbc-d3dbf34bc296@windriver.com>
Date: Fri, 23 Aug 2019 09:37:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQ9fMMFw65h4M8LWM_Mqx-MDN2sUDy+pzLSMgFV1bak1Q@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: Can Yocto build to set up process running priority in service?
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
X-List-Received-Date: Fri, 23 Aug 2019 01:24:13 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2019 05:32 AM, JH wrote:
> I have two processes launched from a service unit, how can the Yocto
> customer distro to set up high_priority_process?
>
> ExecStartPre=low_priority_priority
> ExecStart=high_priroty_process
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> On 8/22/19, JH <jupiter.hce@gmail.com> wrote:
>> Hi,
>>
>> How to set up process running priority for services in Yocto build
>> using renice or some method?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jupiter
>>
Not sure about your exact needs. But as far as I know, nice value is 
inherited. You can just set it for the shell that starts a yocto build. 
If you are using some scripts, the same logic holds.

Best Regards,

Chen Qi


