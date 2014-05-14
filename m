Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62F82E00975; Wed, 14 May 2014 07:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from sanddollar.geekisp.com (unknown [216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3B04EE006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:02:26 -0700 (PDT)
Received: (qmail 3417 invoked by uid 1003); 14 May 2014 14:02:25 -0000
Received: from unknown (HELO ?192.168.1.122?)
	(philip@opensdr.com@71.171.37.254)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	14 May 2014 14:02:25 -0000
Message-ID: <53737770.5060704@balister.org>
Date: Wed, 14 May 2014 10:02:24 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>, 
 Neuer User <auslands-kv@gmx.de>
References: <lkvpl2$e8q$1@ger.gmane.org>	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>	<lkvsj2$vof$1@ger.gmane.org>
	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
In-Reply-To: <CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:02:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/14/2014 09:58 AM, Burton, Ross wrote:
> On 14 May 2014 14:54, Neuer User <auslands-kv@gmx.de> wrote:
>> to my image.bb file. Guess, this is then the recommended way to go?
> 
> Not in your image recipe, no, as then e.g. connman will still think
> that you need 3g and nfc.

What Ross said. DISTRO features should only be changed in distro conf
file (or local conf files for testing/local changes).

Philip

> 
> Ross
> 

