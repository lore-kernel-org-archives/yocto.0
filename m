Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3D986E006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 11:01:43 -0800 (PST)
Received: (qmail 32334 invoked by uid 1003); 5 Dec 2012 19:01:41 -0000
Received: from unknown (HELO ?10.16.24.84?) (philip@opensdr.com@157.22.28.10)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	5 Dec 2012 19:01:41 -0000
Message-ID: <50BF9A11.2080002@balister.org>
Date: Wed, 05 Dec 2012 11:01:37 -0800
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Michael Halstead <michael@yoctoproject.org>
References: <1354713685799908500@schweigstill.de>
	<96350C20-3499-4549-9B3F-DA51BF2875D7@gmail.com>
	<50BF5E45.7010100@windriver.com> <50BF8F3C.7090609@balister.org>
	<50BF92AA.8030300@windriver.com>
In-Reply-To: <50BF92AA.8030300@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Wed, 05 Dec 2012 19:01:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/05/2012 10:30 AM, Bruce Ashfield wrote:
> On 12-12-05 01:15 PM, Philip Balister wrote:
>> On 12/05/2012 06:46 AM, Bruce Ashfield wrote:
>>> On 12-12-05 09:42 AM, Elvis Dowson wrote:
...

>>
>> Thanks! Should we go ahead and set the list up so interested parties can
>> start coordinating our existing work?
>
> I'm good with that. It's no big commitment to anything in particular
> to have list available, and hopefully it'll serve to draw the right
> folks into the conversation.

Micheal, can you set up a mailing list "mete-zynq" for us? Also, please 
add this to gmane for people that prefer to read via nntp.

Thanks,

Philip

>
> Cheers,
>
> Bruce
>
>>
>> Philip
>>
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> Also, try to ensure that you don't put both the meta-layers in your
>>>> bblayers.conf file
>>>> while building, and ensure that you set machine as follows in your
>>>> local.conf file
>>>>
>>>> MACHINE ?= "zynq-zc702"
>>>>
>>>> Do let me know how it goes!
>>>>
>>>> Best regards,
>>>>
>>>> Elvis Dowson
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>
>
>

