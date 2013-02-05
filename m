Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27BF4E0027C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 13:12:07 -0800 (PST)
Received: from [192.168.0.2] (host86-137-74-187.range86-137.btcentralplus.com
	[86.137.74.187]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 50FE19BF8
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 21:12:06 +0000 (GMT)
Message-ID: <511175A5.30309@r-finger.com>
Date: Tue, 05 Feb 2013 21:12:05 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <511153C5.60107@mlbassoc.com> <511156D9.20902@r-finger.com>
	<51115B5D.5000509@mlbassoc.com>
In-Reply-To: <51115B5D.5000509@mlbassoc.com>
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
X-List-Received-Date: Tue, 05 Feb 2013 21:12:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/02/13 19:19, Gary Thomas wrote:
> On 2013-02-05 12:00, Tomas Frydrych wrote:
>> On 05/02/13 18:47, Gary Thomas wrote:
>>> Sorry if this isn't the best place to ask...
>>>
>>> I have a GUI application running on Poky/Yocto with Sato using
>>> only a touch screen.  My application window takes up the whole
>>> display which is *very* small (320x240).  If I try and accept
>>> text input, I can see the matchbox keyboard try to pop up, but
>>> it immediately ends up behind my application window and thus
>>> is of little use :-(
>>
>> This should not be too small, I am pretty sure I have used it on a
>> device of that size, but it assumes the GUI application is well behaved
>> and obeys the window manager -- you have to make it respect the size the
>> WM allocates.
> 
> Does the window manager attempt to resize my window when the keyboard
> pops up?  I have a simple dialog and I don't see it being resized (if
> that's even possible)

In the matchbox case it works through the window stack and works out the
size that is taken up by DOCKS and TOOLBARS (the kbd is a toolbar,
iirc); whatever is left is then given to the other windows (applications
and dialogs). Simplest way to verify if the WM is trying to resize the
dialog is to listen for the ConfigureNotify event and see what sizes are
coming through there (how you do that would depend on the toolkit).

Tomas

-- 
http://sleepfive.com

