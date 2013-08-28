Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F7FE0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 11:07:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7SI7eRJ007902
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Aug 2013 11:07:40 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 28 Aug 2013 11:07:40 -0700
Message-ID: <521E3C60.6060309@windriver.com>
Date: Wed, 28 Aug 2013 14:07:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
	<521E38D9.8060102@windriver.com>
	<32CFCC88-EA28-4EFB-9F43-586780CAC54F@gmail.com>
In-Reply-To: <32CFCC88-EA28-4EFB-9F43-586780CAC54F@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to work with linux-yocto kernel
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
X-List-Received-Date: Wed, 28 Aug 2013 18:07:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-28 02:05 PM, Elvis Dowson wrote:
> Hi Bruce,
>
> On Aug 28, 2013, at 9:52 PM, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> There were some old bugs which caused the wrong board description to
>> be picked up, the seems similar.
>>
>> But without seeing your exact changes, as they sit in the tree, I
>> can't be sure.
>>
>> Did you also update the meta and machine branch SRCREVs ?
>
> No, I didn't.
>
> I've just done this now. It's only after you mentioned it
> that I noticed the SRCREV_meta variable in linux-yocto_3.8.bb
>
> While obvious, once stated, it's better to explicitly document
> this step in the kernel development guide, so that people remember to
> do it:
>
> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html

If you have a moment, drop a quick bugzilla and we can make sure
that happens.

>
> BTW, in qemuarma9-standard.scc, for the branch, do I specify
> standard/qemuarma9 or just qemuarma9 ?

Just qemuarma9. Branch names are automatically built up with inheritance.

So if you include other features that branch (like the standard
kernel), your name is appended. That frees your individual feature
from needing to know where it sits in the include order.

Cheers,

Bruce

>
> Best regards,
>
> Elvis Dowson
>


