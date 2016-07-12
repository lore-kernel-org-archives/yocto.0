Return-Path: <dominic.sacre@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3193AE00F16; Tue, 12 Jul 2016 05:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dominic.sacre[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 308 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jul 2016 05:18:54 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1444E00C70
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 05:18:54 -0700 (PDT)
Received: from [192.168.1.84] ([80.147.195.117]) by mail.gmx.com (mrgmx003)
	with ESMTPSA (Nemesis) id 0Lbujs-1avKyc0f8G-00jIaH;
	Tue, 12 Jul 2016 14:13:38 +0200
To: "Burton, Ross" <ross.burton@intel.com>,
	"Esponde, Joel" <Joel.Esponde@honeywell.com>
References: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
	<CAJTo0LZaU8AOSMe6k9whe=_A6hYgf8Lg1MLmUFs=2SXxypKtGA@mail.gmail.com>
From: =?UTF-8?Q?Dominic_Sacr=c3=a9?= <dominic.sacre@gmx.de>
Message-ID: <5784DE88.3060605@gmx.de>
Date: Tue, 12 Jul 2016 14:11:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZaU8AOSMe6k9whe=_A6hYgf8Lg1MLmUFs=2SXxypKtGA@mail.gmail.com>
X-Provags-ID: V03:K0:TwnwRoJuR7/0AJrzADxhbU+5LN3g8UvcgzXkluue7s1Qh5XWcOL
	/+Aa3Th6BhaG61YPvlkpAr6naMqd1mjUCMwpUABMmiaEB86FUrPqPeVLok3TwieFjjb84HB
	WFeQGkBchrJgLuURxSyjHYkLWV7/foa0U8ndrkMRZEuUh/BP8rZ0wAcQ1X0QDB5aZrYYspb
	KAjpjk6HM+TE1lYVhi4ig==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Puer2kG8oZk=:Kmv7eDX0CipNKPv7Mt1CRX
	LB2lOUnudhLQVbnSaNiOnvKymEX+G07Fgzpy7Sl4MVfNSi+xH+tElQ89KuyJeXYpbJ5EAn4ak
	IqIiivkA8OtinK7gEX3MwNoCy7lunTxWcIt6r+2Wp7ApLW5PaSQwTF0mQFjzixFcFmiyo9EdT
	lNND5Q+LR/zIF8GjgKMsNUHW2J5S1iTWy6OSL2/CtnMicXeLNM84/eK+7mdbER1/a7ixVRwqh
	Eeq9dnur7GG+SmgqUSaBPaBbADtAsGxqWIiBneVQEdcJhX4XOzCKNGkdohRFRgurhhGjulUNX
	GnNsxg9wY9vqxQWP9a5X/TtRrIHQ/Tn9cwxE4dfoqzoDz72ojoDIZr23NM1Mw25iYXbAdYvdx
	UpX9HfPYeNcYWTkES+izohHlVMYZwjdT3Y2ru3HNmwX2UBZ7pL5C8kJSwM+bmPYRMYDqTITV4
	HcmsGSqjtlxDYsNdlNyI9G8SktILOusZ574qUCkShErMkbkuMV9NJ9sTLbjPMTS0ms40ebnPr
	u6yoi8yLEV4Ug2mpl6WQ05BQxAH3fagWudRYD7vIyipQ3ImHpIHuGEL5WWFNFCzOIuabTwdZ6
	VpXfg9R3WFLVZmdw3uG5dTsAGXBWudJbRJ27n5A0r7rTbR542sSFjrDy+8CRZw0BijF/AL4je
	36FaSv2T2l6z8ov5uMyncqHQFTuLV8wulEbRqxVFDo0oZInBZrALU6NaIjkga9wOxJaIz2llD
	NhnJQaULNn7hKuYB/tZsTYyHj6YbsHyWc8v1AxERGfIp/ou3BKOkxMn1aQugwZW7khrVin4RL
	jV5OfSr
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: backport of a fix in master to krogoth
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
X-List-Received-Date: Tue, 12 Jul 2016 12:18:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 2016-07-12 11:45, Burton, Ross wrote:
> On 12 July 2016 at 10:03, Esponde, Joel <Joel.Esponde@honeywell.com
>     http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=52d130d9e9735af569f018fc9161a54ed198d2d4____
> 
>     This fix could perfectly apply to krogoth too.____
> 
>     __ __
> 
>     Is there so a plan to backport it to krogoth?
> 
> 
> Certainly.  The fastest way for this to happen would be for you to
> verify that it applies and works in krogoth and send the patch yourself
> (with [krogoth] in the patch subject so the relevant maintainer spots it).

The patch works fine with krogoth, and I originally sent it with both
master and krogoth in the subject line:

https://patchwork.openembedded.org/patch/123485/

Should I resend the patch for krogoth?


Dominic

