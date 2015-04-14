Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB2CDE0095C; Mon, 13 Apr 2015 21:44:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C5E1E00932
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 21:44:54 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t3E4iqMP021469
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 13 Apr 2015 21:44:52 -0700 (PDT)
Received: from server.local (128.224.22.76) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 13 Apr 2015 21:44:52 -0700
Message-ID: <552C9B43.7070204@windriver.com>
Date: Tue, 14 Apr 2015 00:44:51 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <Neil.Wu@Emerson.com>, <yocto@yoctoproject.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2@USSTLZ-PMSG012.emrsn.org>
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2@USSTLZ-PMSG012.emrsn.org>
Subject: Re: The error of task do_validate_branches
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
X-List-Received-Date: Tue, 14 Apr 2015 04:44:55 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-13 11:14 PM, Neil.Wu@Emerson.com wrote:
> Hi, all
>
> I build the custom linux-yocto kernel, it appears the error as bellow :

Hi Neil,

Can you provide a bit more information ? What release/branch are you
building ?

Obviously you are building a variant of linux-yocto that wasn't
released as part of the project (since we don't have a tiam335x
recipe), is there a place that recipe can be found ?

>
> ERROR: Function failed: do_validate_branches (log file is located at
> /home/ectrs/poky/coretexa8/tmp/work/am335x_evm-poky-linux-gnueabi/linux-yocto-tiam335x/3.12.10--SS-r0/temp/log.do_validate_branches.4899)
>
> ERROR: Logfile of failure stored in:
> /home/ectrs/poky/coretexa8/tmp/work/am335x_evm-poky-linux-gnueabi/linux-yocto-tiam335x/3.12.10--SS-r0/temp/log.do_validate_branches.4899
>
> Log data follows:
>
> | DEBUG: Executing shell function do_validate_branches
>
> | NOTE: custom recipe is being built, forcing SRCREV to INVALID
>
> | NOTE: SRCREV validation skipped for AUTOREV or empty meta branch
>
> | fatal: A branch named 'master-orig' already exists.
>
> | fatal: ambiguous argument 'INVALID': unknown revision or path not in
> the working tree.

These errors are pointing to an invalid or somehow corrupted/partially
built kernel git repository being used.

I assume that you've tried a clean/cleanll on the kernel recipe and
then rebuilt ?

Bruce

>
> | Use '--' to separate paths from revisions, like this:
>
> | 'git <command> [<revision>...] -- [<file>...]'
>
> | WARNING: exit code 128 from a shell command.
>
> | ERROR: Function failed: do_validate_branches (log file is located at
> /home/ectrs/poky/coretexa8/tmp/work/am335x_evm-poky-linux-gnueabi/linux-yocto-tiam335x/3.12.10--SS-r0/temp/log.do_validate_branches.4899)
>
> ERROR: Task 69
> (/home/ectrs/poky/meta-emerson-ecosys/recipes-kernel/linux/linux-yocto-tiam335x_3.12.10.bb,
> do_validate_branches) failed with exit code '1'
>
> How to resolve this problem? if you know please help me.
>
> Thanks
>
> Neil
>
>
>


