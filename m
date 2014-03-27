Return-Path: <stuartl@vrt.com.au>
Received: from bne.vrt.com.au (203-174-129-26.bri.static-ipl.aapt.com.au
	[203.174.129.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8263EE00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 22:50:59 -0700 (PDT)
Received: by bne.vrt.com.au (Postfix, from userid 8)
	id 6E04E83C3FD2F; Thu, 27 Mar 2014 15:50:58 +1000 (EST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on bnesecrf8.vrt.int
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NO_DNS_FOR_FROM autolearn=no version=3.3.2
Received: from bneprdsrv0.vrt.com.au (bneprdsrv0.vrt.int [10.87.160.8])
	by bne.vrt.com.au (Postfix) with ESMTP id BB9B383C3FD2D
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 15:50:57 +1000 (EST)
Received: from [10.87.130.242] (rikishi.dhcp.vrt.int [10.87.130.242])
	by bneprdsrv0.vrt.com.au (Postfix) with ESMTP id 7647B25B5C
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 15:50:14 +1000 (EST)
Message-ID: <5333BC31.1030405@vrt.com.au>
Date: Thu, 27 Mar 2014 15:50:41 +1000
From: Stuart Longland <stuartl@vrt.com.au>
Organization: VRT Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: matchbox-terminal and function keys
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
X-List-Received-Date: Thu, 27 Mar 2014 05:51:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,

I hope I've got the right list.  I'm in the process of porting an
ncurses application to Yocto Linux and having a bit of a problem
decoding function keys.

Ideally I'd like to run the application from /etc/inittab but for now,
I'm running it within X11 with matchbox-terminal.

I observe that with ncurses applications: F6 through to F10 work, but F1
through to F5 do not.

The terminal reports itself as TERM=xterm.  When I do a `cat`, I observe
that matchbox-terminal is reporting F1-F5 using VT100 terminal
sequences, but F6-F10 using VT220 sequences.  If I set TERM=vt100, I get
F1-F5 working, but unfortunately, I need F10 as well.

So the terminal that matchbox-terminal emulates is neither a VT100 nor a
VT220 (or the superset it claims to be: xterm), but a confused mix of
the two.

Is there some setting to change this behaviour or is this a bug?
Regards,
-- 
Stuart Longland
Systems Engineer
     _ ___
\  /|_) |                           T: +61 7 3535 9619
 \/ | \ |     38b Douglas Street    F: +61 7 3535 9699
   SYSTEMS    Milton QLD 4064       http://www.vrt.com.au



