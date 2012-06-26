Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60FAE0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:54:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q5QEsBbL026733
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Jun 2012 07:54:11 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 26 Jun 2012 07:54:10 -0700
Message-ID: <4FE9CD04.60604@windriver.com>
Date: Tue, 26 Jun 2012 10:53:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FE9CCAD.7080003@gmail.com>
In-Reply-To: <4FE9CCAD.7080003@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Development Manual Appendix B question
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
X-List-Received-Date: Tue, 26 Jun 2012 14:54:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-26 10:52 AM, jfabernathy wrote:
> In the example in The Developement Manual v1.2 in Appendix B Section
> B.1.7, it states that you need to put in the statement:
>
> KSRC_linux_yocto_3_2 ?="/home/scottrif/linux-yocto-3.2.git"
>
> into the appropriate .bbappend file way now in the poky-extra directory
> structure. If I look at that file, |linux-yocto_3.2.bbappend| , I seen a
> SRC_URI line, immediately after our inserted KSRC statement, that is
> commented out:
>
> # SRC_URI =
> "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> Should that line be uncommented or is the SRC_URI already defaulted
> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?

It should be uncommented. I commented them by default, since the extras
repository is a bit of a collection ground. If they are uncommented, and
combined with the AUTOREV also set in the file, you are forced to fix
all files, versus just the one you want.

Cheers,

Bruce

>
> Jim A
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


