Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52A4AE00D22; Sat,  5 Sep 2015 11:11:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E7DEE00B05
	for <yocto@yoctoproject.org>; Sat,  5 Sep 2015 11:11:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZYHvd-0004Qy-Dn
	for yocto@yoctoproject.org; Sat, 05 Sep 2015 20:11:05 +0200
Received: from ppp-2-86-147-22.home.otenet.gr ([2.86.147.22])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 05 Sep 2015 20:11:05 +0200
Received: from gmane by ppp-2-86-147-22.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 05 Sep 2015 20:11:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 05 Sep 2015 21:10:54 +0300
Message-ID: <55EB302E.8050209@reliableembeddedsystems.com>
References: <msd33a$81v$1@ger.gmane.org>	<21521607.ihPEg5j6zl@rjs-mbpro.streifs.net>	<55EB098B.7040401@reliableembeddedsystems.com>
	<1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-147-22.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
Cc: Robert Berger
	<public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@plane.gmane.org>,
	Robert Berger
	<public-public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E-wOFGN7rlS/M9smdsby/KFg@plane.gmane.org>
Subject: Re: gdb/gdbserver vs. eclipse
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
X-List-Received-Date: Sat, 05 Sep 2015 18:11:15 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi,

On 09/05/2015 07:17 PM, Rudolf J Streif wrote:>>
> I do not have to do that. As a matter of fact the executable on my
target is
> copied to /usr/bin from the Eclipse workspace. See "Remote Absolute
File Path"
> in the Debug Configuration.

You are right. I erased the other folder on my target, moved it there as
well and it still works.

>
>
>> 2) .gdbinit
>>
>> I copied my gdbinit on the host to
>>
>> /home/student/BBBworkspace/HelloBBBAutotooled/.gdbinit
>>
>
> Yes, that's where Eclipse's Debug Configuration expects it if you do
not change
> the setting of "GDB Command File" in the Main subtab of the Debugger
tab in
> the Debug configuration.

...

>
>
> Yes, looks like mine except that my target is a MinnowBoard Max and I
> installed my SDK in a different location.

Hmmm

>
>
>> 3) Once you enter the debug view you need to go to the gdb console and:
>>
>> source /home/student/BBBworkspace/HelloBBBAutotooled/.gdbinit
>>
>
> Strange. I don't have to do that if GDB command file is set to the
path in the
> workspace.

Seems to work as well without sourcing ;)

> I would expect that Eclipse passes the .gdbinit from the workspace
> explicitly to GDB. However, I do have
>


> add-auto-load-safe-path .
>
> in my global .gdbinit (~/.gdbinit).

.gdbinit loads automatically for me now, I don't need to source and also
no add-auto-load-safe-path

Which Yocto version do you use? I use 1.8

>
> Cheers,
> Rudi
>

So let's try to summarize what seems to be necessary:

1) right .gdbinit on the right place ;)
2) Debug Configurations -> Debugger -> Main -> Use full file path to set
breakpoints (might not even be necessary)
3) Debug Configurations -> Debugger -> Shared Libraries -> Load shared
library symbols automatically

Regards,

Robert
..."A successful tool is one that was used to do something undreamed of
by its author." - S. C. Johnson

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



