Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1483E00C46; Fri, 13 May 2016 02:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 415 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 May 2016 02:37:19 PDT
Received: from outbound0.mail.transip.nl (outbound0.mail.transip.nl
	[149.210.149.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D779E00C1E
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 02:37:19 -0700 (PDT)
Received: from submission0.mail.transip.nl (submission0.mail.transip.nl
	[IPv6:2a01:7c8:7c8::64])
	by outbound0.mail.transip.nl (Postfix) with ESMTP id 3r5l2M72T8zy8hR;
	Fri, 13 May 2016 11:30:19 +0200 (CEST)
Received: from webmail.frontend (web0.mail.transip.nl [149.210.149.95])
	by submission0.mail.transip.nl (Postfix) with ESMTPA id 3r5l2P4THXz2Xf9;
	Fri, 13 May 2016 11:30:21 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 13 May 2016 11:30:21 +0200
From: Herman van Hazendonk <me@herrie.org>
To: "Burton, Ross" <ross.burton@intel.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <CAJTo0LbrexPW0h5DfFbeS91GgSYxpCH5uyFOrXJKdbXzksfD_A@mail.gmail.com>
References: <005e01d1ace8$9e241510$da6c3f30$@icnexus.com.tw>
	<CAJTo0LbrexPW0h5DfFbeS91GgSYxpCH5uyFOrXJKdbXzksfD_A@mail.gmail.com>
Message-ID: <097fc9ed33dd76c4f3917d1fab53e3ea@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission0.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org,
	"Chandrakanth Sherkhane \(IC Nexus\)" <chan@icnexus.com.tw>
Subject: Re: help
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 May 2016 09:37:21 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Alternatively when you are using meta-qt5 layer, you could use something 
like Maliit input framework (which is used by various distributions 
(Jolla/Sailfish/Ubuntu/LuneOS) as well).

https://github.com/meta-qt5/meta-qt5/tree/master/recipes-qt/maliit

Herrie

On 2016-05-13 11:26, Burton, Ross wrote:
> On 13 May 2016 at 08:25, Chandrakanth Sherkhane (IC Nexus)
> <chan@icnexus.com.tw> wrote:
> 
>> Could anyone help to provide more details for,
>> 
>> 1. Yocto Virtual Keyboard in French language - is it available now?
>> 
>> 2. If not available, when will it be available?
>> 
>> 3. Is the Yocto Virtual Keyboard available in any other languages?
> 
> There's no such thing as the Yocto Virtual Keyboard.  I presume you
> mean matchbox-keyboard.  Looking at the sources:
> 
> $ ls layouts/*xml
> layouts/keyboard-dvorak.xml    layouts/keyboard-fi.xml
> layouts/keyboard-ru.xml  layouts/keyboard.xml
> layouts/keyboard-extended.xml  layouts/keyboard-numpad.xml
> layouts/keyboard-us.xml
> 
> There's no French layout, but these should provide plenty of examples
> as to how to build it yourself.  If you implement the layout, please
> consider sending the patch so everyone else can use it.
> 
> Ross


