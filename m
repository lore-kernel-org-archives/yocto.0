Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC7E0E0098A; Fri,  8 May 2015 07:08:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 856DAE0097D
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 07:08:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t48E8GkF024588
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 May 2015 07:08:16 -0700 (PDT)
Received: from server.local (128.224.23.75) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 8 May 2015 07:08:15 -0700
Message-ID: <554CC34E.9070904@windriver.com>
Date: Fri, 8 May 2015 10:08:14 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Spriggs, Jim" <J.Spriggs@raylase.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <2238EDC6081C944E97E4EE915AE5CBEC521E9F19@EXCHANGE-B.raylase.de>
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC521E9F19@EXCHANGE-B.raylase.de>
Cc: "Wilfert, Dennis" <D.Wilfert.extern@raylase.de>, "Weber,
	Markus" <M.Weber@raylase.de>
Subject: Re: Need advice on tracking down "-dirty"
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
X-List-Received-Date: Fri, 08 May 2015 14:08:29 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-05-08 5:36 AM, Spriggs, Jim wrote:
> Hi Guys,
>
> Using poky dizzy with meta-altera (from OE), and trying to implement a simple loadable kernel-module by following the method outlined  in Lab3 of  https://www.yoctoproject.org/sites/default/files/kernel-lab-1.6.pdf.
>
> I'm doing an "rm -rf tmp" before starting "bitbake virtual/kernel  my-image-recipe".
>
> The build seems to work just fine: the kernel-module-xxxx-1.0-r0.machine.rpm appears as expected under .../deploy/...
>
> The package installation task fails, however, with:
>
>      error: Can't install kernel-module-xxxx-1.0-r0@machine : no package provides kernel-3.15.0-00184-g5ae31a7
>
> and indeed, the kernel packages available in .../deploy/... are:
>
>      kernel-3.15-r1.machine.rpm
>      kernel-3.15.0-00184-g5ae31a7-dirty-3.15-r1.machine.rpm
>      kernel-dev-3.15-r1.machine.rpm
>      kernel-image-3.15.0-00184-g5ae31a7-dirty-3.15-r1.machine.rpm
>
>
> Yet "git status" reports "nothing to commit, w.d. clean" for both the main poky tree and the meta-altera sub-tree.

By this, do you mean the kernel source tree ? Or the layers ?

I haven't looked at the kernel recipe you are using, but PV
and the git hash you have in those package names is coming from
the kernel source directory.

It is there that you'll likely find un-commited changes, and what
is triggering the -dirty flag to be captured.

Bruce

>
> So I guess the n00b needs a clue about how to find out why and where the dirty-flag is getting set?
>
> Thanks for listening!
> --
> jim spriggs
>
> PS: the real names of module and machine have been redacted above to protect the guilty...
> PPS: sorry about the company sig., I can't switch it off.
>
>
> ________________________________
>
> RAYLASE AG
> Argelsrieder Feld 2+4
> 82234 Wessling
> Germany
> Tel.: +49-(0)8153/88 98-0
> Fax: +49-(0)8153/88 98-10
> http://www.raylase.de
>
> District Court Munich, HRB 131450
>
> Board: Peter von Jan (CEO)
>
> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>
>
> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich erhalten haben, informieren Sie bitte sofort den Absender und vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Mail ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If you are not the intended recipient (or have received this e-mail in error) please notify the sender immediately and destroy this e-mail. Any unauthorized copying, disclosure or distribution of the material in this e-mail is strictly forbidden.
>


