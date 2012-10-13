Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03050E0032E
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 10:39:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q9DHdLWQ026555
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 13 Oct 2012 10:39:21 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.225) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sat, 13 Oct 2012 10:39:21 -0700
Message-ID: <5079A74C.2020507@windriver.com>
Date: Sat, 13 Oct 2012 13:39:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
	<50797A91.8080205@balister.org>
	<530FA222-35A3-4E03-9245-5D9E5B8AD079@gmail.com>
	<507987B9.4020309@balister.org>
	<15E002D4-F284-4675-A53F-19D9F72706CB@gmail.com>
In-Reply-To: <15E002D4-F284-4675-A53F-19D9F72706CB@gmail.com>
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
X-List-Received-Date: Sat, 13 Oct 2012 17:39:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-10-13 12:05 PM, Elvis Dowson wrote:
> Hi,
>         I just took a quick look both the repos
>
> My initial reaction is that I think Philip's repo appears to better structured, and attempts to use the xilinx kernel and u-boot repos, which for these targets is a good thing, given the state of the development for this new board.

Xilinx sponsored the one that I've "watching over" for the moment,
and they do plan to address the issues.

I said in some older threads, but I can say it again here. It's Xilinx's
board, so their voice carries the most weight, we just need to be patient
and give them time to come up to speed.

>
> I also think its probably good to take then best of both repos, and maintain a single meta-zynq layer, since both these repos are in its initial stages.

That's already the plan :) But I'm waiting on things that don't work on
a schedule that I control.

Cheers,

Bruce

>
> I'll give more feedback, as I progress with my build and test runs on the target board.
>
> Best regards,
>
> Elvis Dowson
>
>


