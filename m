Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB45E0027C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 11:19:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0C24CF8121A; Tue,  5 Feb 2013 12:19:55 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A221CF81213;
	Tue,  5 Feb 2013 12:19:53 -0700 (MST)
Message-ID: <51115B5D.5000509@mlbassoc.com>
Date: Tue, 05 Feb 2013 12:19:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <511153C5.60107@mlbassoc.com> <511156D9.20902@r-finger.com>
In-Reply-To: <511156D9.20902@r-finger.com>
Subject: Re: Matchbox keyboard
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
X-List-Received-Date: Tue, 05 Feb 2013 19:19:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-05 12:00, Tomas Frydrych wrote:
> On 05/02/13 18:47, Gary Thomas wrote:
>> Sorry if this isn't the best place to ask...
>>
>> I have a GUI application running on Poky/Yocto with Sato using
>> only a touch screen.  My application window takes up the whole
>> display which is *very* small (320x240).  If I try and accept
>> text input, I can see the matchbox keyboard try to pop up, but
>> it immediately ends up behind my application window and thus
>> is of little use :-(
>
> This should not be too small, I am pretty sure I have used it on a
> device of that size, but it assumes the GUI application is well behaved
> and obeys the window manager -- you have to make it respect the size the
> WM allocates.

Does the window manager attempt to resize my window when the keyboard
pops up?  I have a simple dialog and I don't see it being resized (if
that's even possible)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

