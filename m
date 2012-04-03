Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0FE9E01304
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 14:15:52 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6F5D8F81243; Tue,  3 Apr 2012 15:15:52 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4EA64F811DE;
	Tue,  3 Apr 2012 15:15:51 -0600 (MDT)
Message-ID: <4F7B6887.9040602@mlbassoc.com>
Date: Tue, 03 Apr 2012 15:15:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Autif Khan <autif.mlist@gmail.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
	<4F7B61B2.9050208@mlbassoc.com>
	<CADzUK1JrrBZu=gydnRE=m5sMp-U3qF32J0FzwSdOhAoq+E1Mag@mail.gmail.com>
In-Reply-To: <CADzUK1JrrBZu=gydnRE=m5sMp-U3qF32J0FzwSdOhAoq+E1Mag@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to change the startup application
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
X-List-Received-Date: Tue, 03 Apr 2012 21:15:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-03 15:12, Autif Khan wrote:
>>> Hi Autif, thanks a lot for providing the answer here. Since no one is
>>> showing any objections here, I updated the wiki page with your answer
>>> (https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup).
>>> Please let me know if there is any suggestions or concerns.
>>
>>
>> This rather narrow answer is only useful if you are running a MatchBox
>> desktop.
>> There are many other deployment scenarios which would require a different
>> approach.
>
> That is true.
>
> However, All over the Yocto Project's website - the common bitbake
> commands for an image is either core-image-minimal or core-image-sato.
> (core-image-sato-sdk also uses matchbox).
>
> minimal does not start any app - not counting daemons and gettys
>
> If the user chooses another window manager - they are/should be on their own.
>
> I just assumed that we are not trying to document the init process
> (bootloader, kernel, initrd, inittab, init.d etc)
>
> We are trying to answer a less experienced developer to replace the
> default window manager with their own app

Then it should be made clear that this answer only covers that scope.
The Wiki page title implies that it is a more generic answer.

>
> There is a chance that I am not aware of the default application being
> other than matchbox. Can you please provide me some counter example?

I can think of many, most that are headless (no window environment at all)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

