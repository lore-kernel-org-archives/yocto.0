Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 445D0E00DB1; Fri, 26 Feb 2016 12:16:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id B167AE00DA6
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 12:16:26 -0800 (PST)
Received: (qmail 18462 invoked by uid 1003); 26 Feb 2016 20:16:25 -0000
Received: from unknown (HELO ?192.168.11.140?)
	(philip@opensdr.com@71.171.15.136)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	26 Feb 2016 20:16:25 -0000
To: Rudolf J Streif <rudolf.streif@gmail.com>, yocto@yoctoproject.org
References: <1456508168.11498.95.camel@linuxfoundation.org>
	<56D09D35.8040002@balister.org>
	<1456512644.11498.108.camel@linuxfoundation.org>
	<2042150.gN3rpHrprf@rjs-zotac.streifs.net>
From: Philip Balister <philip@balister.org>
Message-ID: <56D0B298.9050108@balister.org>
Date: Fri, 26 Feb 2016 15:16:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <2042150.gN3rpHrprf@rjs-zotac.streifs.net>
Cc: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW09
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
X-List-Received-Date: Fri, 26 Feb 2016 20:16:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/26/2016 02:52 PM, Rudolf J Streif wrote:
>>>>
>>>> * We're about to try and transition meta-yocto within meta-yocto to
>>>>
>>>>   meta-poky. The amount of pain this is causing is horrible :(.
>>>
>>> Thanks for doing this. Can you summarize the pain? Are there any
>>> important lessons here?
>>
>> The key lesson is our current "migration" code in OE-Core sucks and I
>> have some patches in progress which rewrite pieces of it in a way that
>> makes it more useful. I'm therefore trying to make some positives from
>> it.
>>
>> That said, I haven't found a way to make this work without leaving a
>> dummy layer.conf in the old location since a missing layer.conf file is
>> fatal to bitbake very early on before any migration code triggers.
>>
>> More should become clear when I post the patches, I've been holding off
>> that until I actually manage a patch set that works on the
>> autobuilder...
>>
>> Patches should be out over the weekend (in time for the freeze).
> 
> Sounds like a lot of work and potential for breaking things with little added 
> value other than a more consistent naming. What was the rationale for making 
> the change, if I may ask?

Consistent naming :) It does it make it much easier to explain what the
meta-yocto layer is for. This has been one source of a great deal of
confusion about how all the pieces come together.

I must admit, I'm surprised this is tricky. I look forward to seeing
what needs doing. Hopefully, it shows me things I can avoid in my work.

Philip

> 
> Thanks,
> :rjs
> 
> 

