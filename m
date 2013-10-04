Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A51DDE016B2
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 05:41:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r94CfahK002582
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Oct 2013 05:41:36 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 4 Oct 2013 05:41:36 -0700
Message-ID: <524EB77C.9090703@windriver.com>
Date: Fri, 4 Oct 2013 08:41:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Parker Mackenzie <wparkermackenzie@live.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>	<524DD3BC.7080505@windriver.com>	<BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>	<524E1183.6020907@windriver.com>	<CAFyqS9odzK7gxJOffd_+R6e+581Ha4O+ZBKLSiboxZYoKSOn9g@mail.gmail.com>
	<BLU401-EAS22816E1B185692DCDEC3926B2100@phx.gbl>
In-Reply-To: <BLU401-EAS22816E1B185692DCDEC3926B2100@phx.gbl>
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Fri, 04 Oct 2013 12:41:39 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-04 07:22 AM, Parker Mackenzie wrote:
> Hans,
>
> Python did not work but as you point out python-core did. I found this last night looking at the IRC logs from March 8th.
>

Right! I typed in "python" from memory :) In fact, what I typically have is
a full set of python dependencies, including python-dev, which picks
up what I need.

Cheers,

Bruce

> I also needed to add bash. The build now completes, this morning I am going to attempt to extract the SDK with the sysroot and then attempt to build the application and my drivers against them.
>
> Thanks for the help,
> Parker
>
>> On Oct 4, 2013, at 7:05 AM, "Hans Beckérus" <hans.beckerus@gmail.com> wrote:
>>
>> Bruce, is not the proper package to add in this case python-core? I do
>> not think anything simply provides just "python", or is it?
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


