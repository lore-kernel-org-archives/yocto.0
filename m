Return-Path: <xerxes@zafena.se>
Received: from mail-storage.borenet.se (mail.borenet.se [213.134.106.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E505E01798
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 00:34:29 -0800 (PST)
Received: from [192.168.1.109] (labb.zafena.se [213.134.106.61])
	by mail-storage.borenet.se (Postfix) with ESMTP id BC00B7246E5;
	Fri,  8 Nov 2013 09:34:24 +0100 (CET)
Message-ID: <527CA22F.8060102@zafena.se>
Date: Fri, 08 Nov 2013 09:34:55 +0100
From: =?ISO-8859-1?Q?Xerxes_R=E5nby?= <xerxes@zafena.se>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: sonia verma <soniaverma9727@gmail.com>, Andrew Haley <aph@redhat.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>	<CAJ7VayhvsG8r0odzYiwYTXQ12J+kfewJz5K5GMs8kkM-+hvFfQ@mail.gmail.com>	<52768EEE.8080804@redhat.com>
	<CAJ7VayhALDx9g6ZoX-ZezoVdaCz675rXGi6DTu2eijRmyxwgSA@mail.gmail.com>
In-Reply-To: <CAJ7VayhALDx9g6ZoX-ZezoVdaCz675rXGi6DTu2eijRmyxwgSA@mail.gmail.com>
X-Enigmail-Version: 1.6
X-Mailman-Approved-At: Fri, 08 Nov 2013 08:04:05 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	zero-dev@openjdk.java.net
Subject: Re: enable Shark support in JAVA + list of alternative JVM for use in combination with OpenJDK on PowerPC
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
X-List-Received-Date: Fri, 08 Nov 2013 08:34:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Sonia

2013-11-08 07:43, sonia verma wrote:
> I am not able find LLVM compiler for PowerPc.Due to this I'm not able to integrate JAVA in compiler mode on PowerPc board.

If you still want to test Shark you need to first build and test LLVM on powerpc.
http://llvm.org/
It is wise to build and test LLVM manually on a PowerPC gnu/linux system before you spend time to update meta-java and oe to cross compile it.
By running the llvm testsuite you will know if the jit work or not on powerpc.
After you have made llvm pass its tests then try build openjdk + shark manually on a powerpc system.
The last known build of shark was made about a year ago buy Roman Kenkke
http://rkennke.wordpress.com/2012/11/28/the-return-of-the-shark-part-ii-howto/
Roman only tested shark on x86 thus it is expected that you will find things that needs to get fixed before the port work on powerpc again.
The last known test builds of shark for powerpc was made around 2010 and both openjdk, llvm and the shark jvm code have changed since then.


> Can you suggest any alternative for that.

There is a PowerPC Hotspot JVM available for use with OpenJDK maintained by the ppc-aix-port (it also work on linux!), it includes a mixed-mode VM (with the C++ Interpreter and the C2 "Server" JIT compiler).
http://openjdk.java.net/projects/ppc-aix-port/
https://wiki.openjdk.java.net/pages/viewpage.action?pageId=13041681
I recommend you to update meta-java to build this port for use on PowerPC.
This is the most actively maintained OpenJDK PowerPC port.


You may also want to take a look at using the JamVM, CACAO JVM or Avian on PowerPC.
These JVM's are maintained outside the OpenJDK community, they are created to enable Java to run on various embedded and mobile platforms and are all designed to work in combination with the OpenJDK runtime classes.
You can compile JamVM, Cacao or Avian into a libjvm.so that can replace the Zero libjvm.so to be used by your current OpenJDK build.
They all give a magnitude better performance compared to using Zero.

JamVM source & build instructions:
http://git.berlios.de/cgi-bin/cgit.cgi/jamvm/
http://draenog.blogspot.se/2011/02/openjdkjamvm-git-repository.html
JamVM is easy to compile and test. I have tested JamVM a lot and I find it stable for use by many different use-cases.
JamVM is carefully designed to correctly execute non-trivial java code that make heavy use of reflection. JamVM also implements the new invoke dynamic bytecode JSR292 used by OpenJDK 7 & 8 and later.
JamVM implements state of the art interpreter optimization techniques written in portable c, if you study JamVM source-code you will notice how the various interpreter optimizations all combine to implement a code copying JIT.

CACAO JVM source & build instructions:
http://www.cacaojvm.org/
CACAO implements a compile-only JIT.
CACAO is a research JVM maintained by the university of Vienna.
http://c1.complang.tuwien.ac.at/cacaowiki/ResearchTopics
http://c1.complang.tuwien.ac.at/cacaowiki/StateOfArchitectures - CACAO will require work into JMM barriers before this JVM can be used reliably on multi-core PowerPC systems.

Avian source & build instructions:
http://oss.readytalk.com/avian/
http://oss.readytalk.com/avian/examples.html
Avian fills a special niche where you can bundle the JVM with your application and only include a subset of the OpenJDK runtime classes needed create a standalone executable under 1mb of size.

Cheers
Xerxes

> On Sun, Nov 3, 2013 at 11:29 PM, Andrew Haley <aph@redhat.com <mailto:aph@redhat.com>> wrote:
> 
>     On 10/31/2013 03:10 PM, sonia verma wrote:
>     > adding zero-dev in loop.
>     >
>     >
>     > On Thu, Oct 31, 2013 at 8:38 PM, sonia verma <soniaverma9727@gmail.com <mailto:soniaverma9727@gmail.com>>wrote:
>     >
>     >> Hi ALL,
>     >>
>     >> I have integrated Java in one of the board having Powerpc architecture
>     >> using meta-java. By default it cam with Zero port support which only works
>     >> in interpreter mode.
>     >>
>     >> I need to enable Shark support in that. Can any one please help me with
>     >> the procedure to compile JAVA with Shark support.
> 
>     Well, what help do you need?  You're going to have to find LLVM
>     for PowerPC and start doing some integration work.
> 
>     Andrew.


