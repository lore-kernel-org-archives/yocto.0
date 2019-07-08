Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57F1AE00DA4; Sun,  7 Jul 2019 18:35:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08A0EE00D84
	for <yocto@yoctoproject.org>; Sun,  7 Jul 2019 18:35:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x681ZWIM005161
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 7 Jul 2019 18:35:32 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 7 Jul 2019 18:35:31 -0700
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWSYY+m=kLaZNoy4a9L2Xm3oV=CjGuvu56Of-Xx_XYnD-g@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <d37faf29-0363-00f4-a53e-cc64f1c87e28@windriver.com>
Date: Mon, 8 Jul 2019 09:48:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSYY+m=kLaZNoy4a9L2Xm3oV=CjGuvu56Of-Xx_XYnD-g@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: How to add udev in Yocto build?
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
X-List-Received-Date: Mon, 08 Jul 2019 01:35:33 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/07/2019 10:03 AM, JH wrote:
> Hi,
>
> I need to add a udev file to make kernel device name symbolic link,
> any example I can make the Yocto configure to achieve it?
>
> Thank you.
>
> Kind regards,
>
> - jupiter

Maybe you could create a recipe holding your custom udev files.

Best Regards,

Chen Qi


