Return-Path: <stuartl@vrt.com.au>
Received: from bne.vrt.com.au (203-174-129-26.bri.static-ipl.aapt.com.au
	[203.174.129.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C814AE00B99
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 16:01:37 -0700 (PDT)
Received: by bne.vrt.com.au (Postfix, from userid 8)
	id 4092E83B2DDD6; Fri, 28 Mar 2014 09:01:35 +1000 (EST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on bnesecrf8.vrt.int
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NO_DNS_FOR_FROM autolearn=no version=3.3.2
Received: from bneprdsrv0.vrt.com.au (bneprdsrv0.vrt.int [10.87.160.8])
	by bne.vrt.com.au (Postfix) with ESMTP id 8019680E1669A
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 09:01:33 +1000 (EST)
Received: from [10.87.130.242] (rikishi.dhcp.vrt.int [10.87.130.242])
	by bneprdsrv0.vrt.com.au (Postfix) with ESMTP id 8B62025B5C
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 09:00:48 +1000 (EST)
Message-ID: <5334ADBB.6020008@vrt.com.au>
Date: Fri, 28 Mar 2014 09:01:15 +1000
From: Stuart Longland <stuartl@vrt.com.au>
Organization: VRT Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAJTo0LaHX3fFfdCkROuaj69SmA7LKAL79MinWtXRPUG-1rCZxw@mail.gmail.com>
	<5334829A.80001@vrt.com.au>
In-Reply-To: <5334829A.80001@vrt.com.au>
X-Enigmail-Version: 1.6
Subject: Re: matchbox-terminal and function keys
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
X-List-Received-Date: Thu, 27 Mar 2014 23:01:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/03/14 05:57, Stuart Longland wrote:
> Hi Ross,
> On 27/03/14 22:27, Burton, Ross wrote:
>> Can you paste the output of cat to confirm the values you're seeing?
>> The xterm guide says VT100 for F1-F4 (as VT100 doesn't define F5
>> onwards) and VT220 for F5-F10 and that's what I'm seeing when I
>> attempt this (F10 specifically being ^[[21~).
> 
> Well, evidently the ncurses devs didn't get that memo as F1-F5 aren't
> recognised when TERM=xterm.  I understood xterm was a superset of vt220.
> 
> I'll do a `cat` to a file and post the contents when I get in.  I'm just
> confused as to why ncurses applications don't seem to recognise F1-F5.

Okay, I've done a `cat` of the respective keys:
> root@xg100:~# hexdump -C /tmp/fn 
> 00000000  1b 4f 50 1b 4f 51 1b 4f  52 1b 4f 53 1b 5b 31 35  |.OP.OQ.OR.OS.[15|
> 00000010  7e 1b 5b 31 37 7e 1b 5b  31 38 7e 1b 5b 31 39 7e  |~.[17~.[18~.[19~|
> 00000020  1b 5b 32 30 7e 1b 5b 32  31 7e 0a                 |.[20~.[21~.|

So it indeed is sending those key commands.  I've discovered that if I
set TERM=xterm-xfree86, things work so evidently the ncurses here has
something funny with its 'xterm' terminfo entry.

Is there a way to override the terminal type set by matchbox-terminal?

Regards,
-- 
Stuart Longland
Systems Engineer
     _ ___
\  /|_) |                           T: +61 7 3535 9619
 \/ | \ |     38b Douglas Street    F: +61 7 3535 9699
   SYSTEMS    Milton QLD 4064       http://www.vrt.com.au



