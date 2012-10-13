Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9274BE003D6
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:22:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q9DELvWq007838
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 13 Oct 2012 07:21:57 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.225) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sat, 13 Oct 2012 07:21:56 -0700
Message-ID: <50797907.2060606@windriver.com>
Date: Sat, 13 Oct 2012 10:21:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
In-Reply-To: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Any updates to meta-zynq in the pipeline?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Oct 2012 14:22:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-10-13 10:16 AM, Elvis Dowson wrote:
> Hi Bruce,
> I'm about to start with my Xilinx ZC702 development board, and I was
> wondering if there are any updates planned to the meta-zynq repository?

There are updates planned, but with some vacations (mine and others), since
that last update things slowed down a bit. But work is proceeding,
I expect something in the next few weeks.

In particular, as an initial item, the BSP can be bumped to the Yocto
1.3 (3.4) kernel, and complete some work on remaining issues with the
layer.

After that, SDK updates, and other enhancements would be in the
pipeline, but i don't have a complete visibility into those yet.

Cheers,

Bruce


>
> In an earlier thread, you had mentioned that a whole bunch of updates
> were pending to the meta-zynq layer:
>
> Re: [yocto] meta-zynq, was Re: any success with spartan6-lx9mb?
> <http://www.mail-archive.com/yocto@yoctoproject.org/msg08804.html>
>
> Best regards,
>
> Elvis Dowson


