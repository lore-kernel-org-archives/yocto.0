Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ACADE00747
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 04:30:36 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D7ED0F811FA; Tue, 12 Jun 2012 05:30:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E4F51F811F9;
	Tue, 12 Jun 2012 05:30:34 -0600 (MDT)
Message-ID: <4FD7285A.3050701@mlbassoc.com>
Date: Tue, 12 Jun 2012 05:30:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<26798960.m4OGCU6P52@helios> <4FD6EE8A.2040101@r-finger.com>
	<334879383.0TimNBShEg@helios>
In-Reply-To: <334879383.0TimNBShEg@helios>
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Tue, 12 Jun 2012 11:30:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-12 05:26, Paul Eggleton wrote:
> On Tuesday 12 June 2012 08:23:54 Tomas Frydrych wrote:
>> Over years of working with Poky I have developed this sort of a normal
>> work flow:
>>
>>    bitbake -c devshell<package>
>>    <  do some tweaking>
>>    bitbake -c compile -f<package>
>>    bitbake<package>           <---- this pulls package from sstate!!!
>>    scp ...
>>    <  test, repeat>
>>
>> This no longer works, even after a forced recompile, Poky just pulls a
>> package out of sstate. It seems the only reliable way to force a package
>> rebuild is either to cleansstate or bump the PR, neither of which is
>> viable an option in the above scenario. What am I missing? Is this
>> really intended?
>
> I was surprised because this was not behaviour I would expect either, however
> that is indeed what it does here when I try that sequence. I'm not sure why it
> is behaving this way but I think it is a bug.
>
> FWIW, we will be looking at fixing this exact workflow pretty soon although it
> may involve an extra explicit step to invalidate the stamps.

IMO, if you run a specific step like "-c compile -f", this should automatically
invalidate any stamps and sstate info for the package that depend on that step.
In this case, it should invalidate "install, package, ..." - everything that
normally happens after "compile".  This would fix the observed weirdness above.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

