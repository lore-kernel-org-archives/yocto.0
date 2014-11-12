Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AEABE008CA; Tue, 11 Nov 2014 18:32:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,
	URIBL_DBL_ABUSE_REDIR,URIBL_DBL_REDIR autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
	*  0.0 URIBL_DBL_REDIR Contains a URL listed in the DBL as a spammed
	*      redirector domain *      [URIs: goo.gl]
	* 0.0 URIBL_DBL_ABUSE_REDIR Contains an abused redirector URL listed in
	*      the DBL blocklist *      [URIs: goo.gl]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f193.google.com (mail-ig0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D907E007C0
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 18:31:55 -0800 (PST)
Received: by mail-ig0-f193.google.com with SMTP id hn15so465271igb.8
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 18:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Lt5l9D76TGVSxf8CFEbtott2f4rO8LHw+ICEgeFjatM=;
	b=JtkUqdC5Wyj1xoFG8ptFCH3ZBp9eDVnck8zOoPfl4BpjYW5hSOOCmq6UlgpV2lMZms
	TYylp+cJtRispFsVRd1uo7FCvdoW1Jk78Wf9FgFrH2cvOGNE808vG5cOwMJDZdZNYdA3
	w0P4kKcjXyd3lhlwVKvBrtO4RotbyLeOLz86eIyaOfhO3WAsw1SajwdGh5PPFtQlRmMc
	OrMPMr0j3xviVKhPf1JkKq53UrZ07gSj+L7ajpMdMN8XhxLZQevO73qhZWJR09F6Oieb
	zOigAmiw4lVcaijfClvfhF+6as42/ugP1t/huZUoiHtmEeaJ9DqqFeS+eEfFujvabCxp
	yr1A==
X-Received: by 10.107.172.68 with SMTP id v65mr14239346ioe.60.1415759515204;
	Tue, 11 Nov 2014 18:31:55 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id sd11sm7245249igb.8.2014.11.11.18.31.54
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Nov 2014 18:31:54 -0800 (PST)
Message-ID: <5462C699.2080902@gmail.com>
Date: Tue, 11 Nov 2014 21:31:53 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: John Unland <opensourcejohn2112@gmail.com>, 
	"Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>	<D08793BD.4DAD5%belen.barros.pena@intel.com>	<4b71e65f9d0949928a7575be01750a68@BN1PR0301MB0641.namprd03.prod.outlook.com>	<D087C161.4DC2F%belen.barros.pena@intel.com>
	<CAByxTR-TLaK2NSwctbqH2rpTx9Lvhj_b3h32oYb1otfbV_inOA@mail.gmail.com>
In-Reply-To: <CAByxTR-TLaK2NSwctbqH2rpTx9Lvhj_b3h32oYb1otfbV_inOA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Richard Schmitt <richard.schmitt@freescale.com>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Wed, 12 Nov 2014 02:32:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

I am too interesting in helping out Yocto but more with kernel work on Yocto rt and 
standard kernel recipes. If someone would like to point me in the right direction to
aid in helping out in this area of the Yocto project that would be very helpful.
Thanks Nick 

On 14-11-11 10:46 AM, John Unland wrote:
>> It is great to see so much interest in Hob: for a while we thought nobody
>> was using it!
> 
> I do see the potential for toaster as wel (Forgot to mention it). Yes
> I do see in the near future Hob being phased out in later releases.
> But for what it is right now, there are people using it, I really
> think it's a great idea to have something like hob for embedded
> systems espically the Hobbyist crowd.
> 
>> A kernel configuration module for Toaster is something that we'd like to
>> see at some point. And the branding one I agree it would be great to have.
>> Feel free to open Bugzilla entries for both.
> 
> Under what catagories would these two be filed under?
> 
>> Contributions are very welcome! :) You can get involved in both
>> development and QA work. To get started, you can subscribe to the Toaster
>> mailing list:
> 
> Sure I'll start looking over there. I'm pretty busy with my college
> schedule right now so I'm afraid I can't make it to the regular
> meetings. But thanks for the offer! :)
> 
>> Hob is not meant to be like Suse Studios. Further more you are right about the interface sucking
>> hard for certain things, I would recommend you start cleaning that up first and then afterwards
>> move on to other areas of interest with YP.
>> Cheers Nick
> 
> I see, will do.
> 
> Cheers.
> 
> On Tue, Nov 11, 2014 at 7:53 AM, Barros Pena, Belen
> <belen.barros.pena@intel.com> wrote:
>> Hi Richard,
>>
>> On 11/11/2014 12:58, "Richard Schmitt" <richard.schmitt@freescale.com>
>> wrote:
>>
>>> We also are looking to update Hob.
>>
>> It is great to see so much interest in Hob: for a while we thought nobody
>> was using it! But I should probably be clear about the project plans in
>> relation to Hob. The final goal is to replace it with Toaster. Hob is
>> still being maintained, but no new features are planned for it.
>>
>> You are of course free to take Hob and add to it if you feel that's the
>> tool that better suits your needs. However:
>>
>> * I cannot guarantee that Hob will be included in future releases of the
>> Yocto Project.
>>
>> * Having been very involved in both Hob and Toaster, I must say that
>> Toaster will be much more powerful, easier to extend with new features
>> like the ones you suggest below, and in general way nicer to use.
>>
>> I am not sure how much you know about the Toaster project, or if there is
>> anything in it that makes it unfit for your needs. But I would be happy to
>> have a chat about it all, answer any questions you may have, and demo it
>> if you'd like to see it.
>>
>>> In particular, adding kernel feature support.  Branding would be nice
>>> too.
>>
>> A kernel configuration module for Toaster is something that we'd like to
>> see at some point. And the branding one I agree it would be great to have.
>> Feel free to open Bugzilla entries for both.
>>
>> Cheers
>>
>> Belén
>>
>>>
>>> Rich
>>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org
>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Barros Pena, Belen
>>> Sent: Tuesday, November 11, 2014 4:37 AM
>>> To: John Unland; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Making Hob better.
>>>
>>> Hi John,
>>>
>>> Thanks for your feedback on Hob: I agree with everything you said.
>>>
>>> We are currently moving towards web-based interfaces for the Yocto
>>> Project tools, and are working on something called Toaster that
>>> eventually will do what Hob does. You can get more information on Toaster
>>> at
>>>
>>> https://www.yoctoproject.org/documentation/toaster-manual-17
>>>
>>> On 10/11/2014 23:58, "John Unland" <opensourcejohn2112@gmail.com> wrote:
>>>
>>>> Lastly, I would really love to help with development as well.
>>>> I
>>>> haven't really gotten into programming that much but I have worked with
>>>> the Fedora Server Special Interest Group doing QA for Alpha and Beta
>>>> release. So if anyone can put me in the right direction I can certainly
>>>> help YP out.
>>>
>>> Contributions are very welcome! :) You can get involved in both
>>> development and QA work. To get started, you can subscribe to the Toaster
>>> mailing list:
>>>
>>> https://lists.yoctoproject.org/listinfo/toaster
>>>
>>> You can have a look at the features we are currently working on in the
>>> Yocto Project Bugzilla instance
>>>
>>> http://goo.gl/KncliQ
>>>
>>> There is information on how to contribute at
>>>
>>> https://wiki.yoctoproject.org/wiki/Contribute_to_Toaster
>>>
>>> We also have a weekly call that happens on Wednesdays at 4pm GMT. If you
>>> would like to join the call, let me know.
>>>
>>> All the best,
>>>
>>> Belén
>>>
>>>
>>>>
>>>> Thank you.
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>

