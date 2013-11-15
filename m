Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DB3BE0167C
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 19:02:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rAF32rQQ008291
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 19:02:53 -0800 (PST)
Received: from [128.224.162.213] (128.224.162.213) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Thu, 14 Nov 2013 19:02:53 -0800
Message-ID: <52858EE7.8030509@windriver.com>
Date: Fri, 15 Nov 2013 11:03:03 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAFyqS9rjCskZBJypK9AO-f5GLDEnkSFfhsfrMK8c5cKYdp_4nQ@mail.gmail.com>
	<CAFyqS9pY0S_Qs+GF9k-w5KCKhhgG+CGK5Y95m5d42-BYAKUOdA@mail.gmail.com>
In-Reply-To: <CAFyqS9pY0S_Qs+GF9k-w5KCKhhgG+CGK5Y95m5d42-BYAKUOdA@mail.gmail.com>
X-Originating-IP: [128.224.162.213]
Subject: Re: /var/log/dmesg: should it not be created?
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
X-List-Received-Date: Fri, 15 Nov 2013 03:02:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/14/2013 11:19 PM, Hans Beckérus wrote:
> On Wed, Nov 13, 2013 at 5:08 PM, Hans Beckérus <hans.beckerus@gmail.com> wrote:
>> Hi. I can see that in ./recipes-core/initscripts/initscripts_1.0.bb,
>> the dmesg.sh script is installed in /etc/init.d. But I can not see
>> that it is being added to any run-levels, not even single-user mode.
>> Is there some reason for only installing the init script but not
>> actually activating it? Not that I really need it, but some
>> clarification to why it works as it does would be appreciated :)
>>
> No one? I think it is obvious that initscripts_1.0.bb is missing
> adding dmesg.sh to any run-level.
> But I do not wish to take this further unless I understand why it was
> left out; deliberately or by mistake.
>

I think it was left out by mistake. It should be added to runlevel S.
Could you please make a patch to fix it? And please send the patch to 
the oe-core mailing list (openembedded-core@lists.openembedded.org).

Best Regards,
Chen Qi

>> Thanks.
>> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


