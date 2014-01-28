Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E91E0071E
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 07:36:52 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8E0BCF811E3; Tue, 28 Jan 2014 08:36:51 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7FAEFF811E2;
	Tue, 28 Jan 2014 08:36:50 -0700 (MST)
Message-ID: <52E7CEAC.5080601@mlbassoc.com>
Date: Tue, 28 Jan 2014 08:37:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <52E7C04E.8040301@einfochips.com>
	<CAFicg84ZVJt+1ydD8fwNfwOowNZBRgW2y+0uELo4GF-bYMir4A@mail.gmail.com>
In-Reply-To: <CAFicg84ZVJt+1ydD8fwNfwOowNZBRgW2y+0uELo4GF-bYMir4A@mail.gmail.com>
Subject: Re: log4cplus compilation
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
X-List-Received-Date: Tue, 28 Jan 2014 15:36:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-28 08:29, Maxin john wrote:
> Hi Rohit,
>
> On Tue, Jan 28, 2014 at 3:35 PM, Rohit Borse <rohit.borse@einfochips.com> wrote:
>>
>>
>> Hi All,
>>         I am facing problem while compiling log4cplus package. It gives error in do_configure().
>> Please find attachment for error log.
>>
>
>>From the log, the build failure is related to the Automake version.
>
> " configure.ac:11: require Automake 1.12, but have 1.11.2
>    autoreconf: automake failed with exit status: 1
> "
>
> I will look into this one.

Automake in OE-core is already at 1.14.  Rohit Borse must be using
very old metadata.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

