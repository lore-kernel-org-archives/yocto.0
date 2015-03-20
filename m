Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11BB4E00832; Fri, 20 Mar 2015 03:28:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6777DE0076B
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 03:28:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id D064127E1E0;
	Fri, 20 Mar 2015 10:28:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id gb8gA2zTNTx5; Fri, 20 Mar 2015 10:28:29 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-94-2.w109-208.abo.wanadoo.fr
	[109.208.61.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A018F27E1D3;
	Fri, 20 Mar 2015 10:28:28 +0000 (UTC)
Message-ID: <550BF5E3.90900@dynamicdevices.co.uk>
Date: Fri, 20 Mar 2015 11:26:43 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Prasant J <pj0585@gmail.com>
References: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>	<550BDF86.4040706@dynamicdevices.co.uk>
	<CAA2DH4sioAGo95HRzHGyiYGHiDunUhStFM8v9KsqPUQJznRMcg@mail.gmail.com>
In-Reply-To: <CAA2DH4sioAGo95HRzHGyiYGHiDunUhStFM8v9KsqPUQJznRMcg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux Package Management
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
X-List-Received-Date: Fri, 20 Mar 2015 10:28:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 20/03/2015 11:15, Prasant J wrote:
> On Fri, Mar 20, 2015 at 2:21 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>>
>> On 20/03/2015 09:34, Prasant J wrote:
>>
>> Hi,
>>
>> I'm looking for package management for my embedded linux systems
>> (yocto on armv7 iMX6Q)
>>
>>
>> I'm looking for the following features:
>>
>> (a) Install & remove a package
>> (b) Install packages and its dependencies
>> (c) Install a package with conflicts, such that the conflicting
>> package is force removed
>> (d) A local location with packages should serve as a package source
>> (e) Remote server package (http file server based)
>> (f) List of my packages installed
>> (g) List of my packages not installed but available on the http file server
>> (h) List of my packages that have updates (new version)
>> (i) To be able to manage packages for multiple architectures (eg. rpm
>> can produce packages for multiple architectures using one spec file)
>>
>>
>> The above features will be invoked by the application GUI.
>> Any suggestions: which package management solution would answer all
>> the above use cases?
>>
>>
>>
>> (e) I use smart + RPM. I have a remote package server setup via this in
>> local.conf
>>
>> FEED_DEPLOYDIR_BASE_URI = "http://packages.foo.bar"
>>
>> Then I'm rsyncing the files up to the server after a bitbake package-index.
>>
>> Then smart update / search / install
>>
>> That seems to work well in my testing.
>>
>
> Hi Alex,
>
> Thanks for inputs!
>
> Is smart development stopped?
>
> When I look at their mailing list it, the last posts were in Nov 2014.
> It looks like no more development for smart package manager. I would
> then tend to say that it will not be a right way for me.
>

I don't know. To me the question would be does it do want I need it to
do as well as I need it to do it,
rather than asking whether there is a lot of activity. One might take
the view that if it is doing its job,
a lack of activity is a sign that it's a mature piece of software that
needs little further development.

You'll have to make that decision yourself.

My understanding is that smart is the recommended way to do things (at
least it was what was
recommended to me) - https://wiki.yoctoproject.org/wiki/Smart

Regards, Alex
 

