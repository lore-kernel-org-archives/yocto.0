Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F016BE003E3
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 11:56:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1HJupCf019045
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Feb 2012 11:56:51 -0800 (PST)
Received: from [147.11.117.71] (147.11.117.71) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 17 Feb 2012 11:56:51 -0800
Message-ID: <4F3EB0FD.4020806@windriver.com>
Date: Fri, 17 Feb 2012 14:56:45 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
	<4F3D883C.8070709@mentor.com> <4F3D8AFD.6080307@windriver.com>
	<4F3E8424.5070306@mentor.com>
In-Reply-To: <4F3E8424.5070306@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Fri, 17 Feb 2012 19:56:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-17 11:45 AM, Hollis Blanchard wrote:
> On 02/16/2012 03:02 PM, Bruce Ashfield wrote:
>>
>> That's the problem. I have a patch that detects this and abort is a non
>> bare upstream is used. I just need to send them .. which I'll do when
>> I get back to my desk next week.
>>
>> There are two reason for this bare clone requirement:
>>
>> - technical: this scales to several hundred branches. cloning, and
>> iterating
>> remote branches to create local tracking branches is noisy and
>> time consuming. So there's a trick that has been in use for years
>> that you can clone a bare upstream, and mass convert the branches
>> to local in a single operation.
>>
>> - social: you want to do your development in a different tree from the
>> one that is being cloned and used. That way the tree is clean, and you
>> are building what you expect.
>
> One more workflow question: so to test my patch, I need to commit it to
> my real git repo, then push to the bare git repo, then rebuild Poky.
> When I find the inevitable problem, do I need to manually delete (git
> reset --hard) the changeset from both repositories? Is there a better way?

As with anything git based ... there's more than one way to do it, and
everyone has their favourite way.

Me, I'd just revert it and push it. Or hard reset it in the working
repo and push -f to the bare one.

But generally speaking, you've got the right way. Same as you'd have to
pull it off a SRC_URI or remove a bbappend if it was tacked on the end
via that method.

Cheers,

Bruce

>
> Hollis Blanchard
> Mentor Graphics, Embedded Systems Division
>
>


