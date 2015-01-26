Return-Path: <dominic.sacre@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4077E008BC; Mon, 26 Jan 2015 09:02:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dominic.sacre[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F597E008BC
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 09:02:28 -0800 (PST)
Received: from [192.168.1.148] ([79.253.180.155]) by mail.gmx.com (mrgmx103)
	with ESMTPSA (Nemesis) id 0LgI0W-1XsmZl1HAC-00nkdl;
	Mon, 26 Jan 2015 18:02:21 +0100
Message-ID: <54C67308.2000306@gmx.de>
Date: Mon, 26 Jan 2015 18:02:00 +0100
From: =?UTF-8?B?RG9taW5pYyBTYWNyw6k=?= <dominic.sacre@gmx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>, =?UTF-8?B?RG9taW5pYyBTYWNy?=
	=?UTF-8?B?w6k=?= <dominic.sacre@gmx.de>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>	<CAP9ODKq85m2Cb_DoVgh9+Wi=zjAJc-MmrGAo58h347zd+UUOgQ@mail.gmail.com>	<54C17A37.9040104@gmx.de>
	<CAP9ODKr7+TXUaimhEv0kPRFh7CwkuXk5OaD+s6iZCF9VzOBS0g@mail.gmail.com>
In-Reply-To: <CAP9ODKr7+TXUaimhEv0kPRFh7CwkuXk5OaD+s6iZCF9VzOBS0g@mail.gmail.com>
X-Provags-ID: V03:K0:1I7fehU2tFwORHLT5A++jhOp8aos+MrHPBbOrlUPQMUDePfVH9H
	4Xol6R34SEfs0ws/3q2srPXDS+hTUQjTNh46+waLJFtIiY0KZ5gAD5NMEqd2rZCpf65hZnX
	065lTa3P2ikm4I7iS80ep17YABTMDoTSjusIxvLWU2SaAxpOY8Rx5K1EZZgHRwJj08QsVIu
	BBec7c4zp+SRbIB/CUHpg==
X-UI-Out-Filterresults: notjunk:1;
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Denys Dmytriyenko <denys@ti.com>, yocto <yocto@yoctoproject.org>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Mon, 26 Jan 2015 17:02:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 2015-01-23 13:54, Otavio Salvador wrote:
> On Thu, Jan 22, 2015 at 8:31 PM, Dominic Sacré <dominic.sacre@gmx.de> wrote:
>> When I build the recipe I get what appear to be the correct binaries for
>> the host architecture, located in the target-specific work directory
>> (e.g. tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-fw-utils-cross).
>> However, these binaries don't get installed anywhere other recipes (like
>> my sdcard image) would be able to find them.
> 
> I sent a patch and seems to do the right thing. Can you test it?

I tried your patch, but it doesn't seem to solve the issue I described
above.
The recipe builds ok (in master it didn't before), but I still don't see
the binaries installed in a sysroot or any other directory in $PATH.

Which directory should these binaries be installed in anyway?


Dominic

