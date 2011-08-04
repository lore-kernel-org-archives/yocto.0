Return-Path: <>
Received: from WA2EHSNDR003.bigfish.com (smtp-cpk.frontbridge.com
	[204.231.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 834C6E011B5
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 11:52:05 -0700 (PDT)
Received: from AM1EHSOBE002.bigfish.com (10.2.40.3) by
	WA2EHSNDR003.bigfish.com (10.2.40.23) with Microsoft SMTP Server (TLS)
	id 14.1.225.8; Thu, 4 Aug 2011 18:52:13 +0000
Received: from mail33-am1-R.bigfish.com (10.3.201.253) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 18:52:02 +0000
Received: from mail33-am1 (localhost.localdomain [127.0.0.1])	by
	mail33-am1-R.bigfish.com (Postfix) with ESMTP id 4116D19C00EE	for
	<yocto@yoctoproject.org>; Thu,  4 Aug 2011 18:52:02 +0000 (UTC)
X-BigFish: VPS79(zzbb2dK9371K179dN1432N98dKzz1202hzz8275bhf73b6nlz2fh668h839h93fh)
X-FB-OUTBOUND-SPAM: yes
X-SpamScore: 79
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail33-am1: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail33-am1 (localhost.localdomain [127.0.0.1]) by mail33-am1
	(MessageSwitch) id 1312483922158466_2998;
	Thu,  4 Aug 2011 18:52:02 +0000 (UTC)
Received: from AM1EHSMHS006.bigfish.com (unknown [10.3.201.251])	by
	mail33-am1.bigfish.com (Postfix) with ESMTP id 22DF21C4804B	for
	<yocto@yoctoproject.org>; Thu,  4 Aug 2011 18:52:02 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by AM1EHSMHS006.bigfish.com
	(10.3.207.106) with Microsoft SMTP Server id 14.1.225.22;
	Thu, 4 Aug 2011 18:52:01 +0000
Received: from mail1x.sgo.in.sel.sony.com (mailx.sgo.in.sel.sony.com
	[43.130.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with
	ESMTP id p74Iq0x1026359	for <yocto@yoctoproject.org>; Thu, 4 Aug 2011
	18:52:01 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	p74Ipnmr016869	for <yocto@yoctoproject.org>;
	Thu, 4 Aug 2011 18:51:50 GMT
Message-ID: <4E3AEA40.8060200@am.sony.com>
Date: Thu, 4 Aug 2011 11:51:44 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4E39E30B.3080206@am.sony.com> <1522642.ppiasj8dqr@perseus>
In-Reply-To: <1522642.ppiasj8dqr@perseus>
X-OriginatorOrg: am.sony.com
Subject: Re: Build failure on recent yocto download
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: tim.bird@am.sony.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Aug 2011 18:52:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 08/03/2011 06:44 PM, Khem Raj wrote:
> On Wednesday, August 03, 2011 05:08:43 PM Tim Bird wrote:
>> |                  from cairo-scaled-font-private.h:45,
>> |                  from cairoint.h:380,
>> |
>> |                  from cairo-arc.c:37:
>> | cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex
>> | implementation found.  Cairo will not work with multiple
>> | threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this
>> | limitation
>> and compile cairo without thread-safety support."
>>
>> | In file included from cairo-mutex-type-private.h:45:0,
>> |
>> |                  from cairo-scaled-font-private.h:45,
>> |                  from cairoint.h:380,
>> |
>> |                  from cairo-arc.c:37:
>> | cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm'
>> | or '__attribute__' before 'cairo_recursive_mutex_impl_t' In file
>> | included from cairo-scaled-font-private.h:45:0,
>> |
>> |                  from cairoint.h:380,
>> |
>> |                  from cairo-arc.c:37:
>> | cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK
>> | not defined.  Check cairo-mutex-impl-private.h."
>> | cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK
>> | not defined.  Check cairo-mutex-impl-private.h."
>> | cairo-mutex-type-private.h:55:3: error: #error
>> | "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check
>> | cairo-mutex-impl-private.h." cairo-mutex-type-private.h:139:3: error:
>> | #error "CAIRO_MUTEX_IMPL_LOCK not defined"
>> | cairo-mutex-type-private.h:142:3: error: #error
>> | "CAIRO_MUTEX_IMPL_UNLOCK not defined" cairo-mutex-type-private.h:151:3:
>> | error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
>> | cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm'
>> | or '__attribute__' before 'cairo_mutex_t'
>> | cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm'
>> | or '__attribute__' before 'cairo_recursive_mutex_t' In file included
>> | from cairoint.h:380:0,
>> |
>> |                  from cairo-arc.c:37:
>> | cairo-scaled-font-private.h:108:5: error: expected
>> | specifier-qualifier-list before 'cairo_mutex_t' In file included from
>> | cairo-mutex-type-private.h:45:0,
>> |
>> |                  from cairo-scaled-font-private.h:45,
>> |                  from cairoint.h:380,
>> |
>> |                  from cairo-base64-stream.c:39:
>> | cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex
>> | implementation found.  Cairo will not work with multiple
>> | threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this
>> | limitation
>> and compile cairo without thread-safety support."
> 
> hmmm this error means you dont have libc headers installed properly.
> Seems something is broken in your environment. Its probably using some tools 
> from your build system which are not quite in line with what configure wanted
> Can you post the config.log of cairo somewhere ?

OK.  I tried it all again, this time with Yocto 5.0.1, and I get the same cairo
build error.  I found the config log for this in:
poky-5.0.1.build/tmp/work/armv5te-poky-linux-gnueabi/cairo-1.10.2-r0/temp
log.do_configure.

I pasted it at:
http://pastebin.com/z0QqgVaE

The only thing that looks suspicious to me is:

ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.

I don't know anything about how libpseudo.so is used, so I don't know if this is
a big problem or not (but I fear host tool or lib contamination if Pseudo is not
being used correctly.

There's also this inability to link with pthread.
> checking for cairo's pthread feature...
> checking whether cairo's pthread feature could be enabled... no (can't link with -lpthread or -pthread)

That sounds like it might be related to a missing mutex compile problem. ??

And this line from the compile output seems to be the start of the problem:
| cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex implementation found.  Cairo will not work with multiple threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this limitation
and compile cairo without thread-safety support."

How would I define CAIRO_NO_MUTEX, and rebuild, to check this out?


Once again, I'm running this on Fedora 12, 64-bit system.  (But I would have expected any lib dependencies and configure
to have been sandboxed from the host libs and environment).

Thanks for any help.
 -- Tim


=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


