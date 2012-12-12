Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F87E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:18:27 -0800 (PST)
Received: from mail49-ch1-R.bigfish.com (10.43.68.248) by
	CH1EHSOBE016.bigfish.com (10.43.70.66) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Dec 2012 20:18:26 +0000
Received: from mail49-ch1 (localhost [127.0.0.1])	by mail49-ch1-R.bigfish.com
	(Postfix) with ESMTP id 2E1C110020E;
	Wed, 12 Dec 2012 20:18:26 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail02.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1de0h1202h1e76h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h1155h)
Received-SPF: pass (mail49-ch1: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail49-ch1 (localhost.localdomain [127.0.0.1]) by mail49-ch1
	(MessageSwitch) id 1355343505116854_18700;
	Wed, 12 Dec 2012 20:18:25 +0000 (UTC)
Received: from CH1EHSMHS005.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.253])	by mail49-ch1.bigfish.com (Postfix) with ESMTP id
	10798120045;	Wed, 12 Dec 2012 20:18:25 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	CH1EHSMHS005.bigfish.com (10.43.70.5) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 12 Dec 2012 20:18:17 +0000
Received: from usculsndmail13v.am.sony.com (usculsndmail13v.am.sony.com
	[146.215.230.104])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qBCKIGHp010608;
	Wed, 12 Dec 2012 20:18:17 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail4.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail13v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qBCKIF3R010333
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 12 Dec 2012 20:18:16 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qBCKIF7V017839;	Wed, 12 Dec 2012 20:18:15 GMT
Message-ID: <50C8E703.4070206@am.sony.com>
Date: Wed, 12 Dec 2012 12:20:19 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1212121421340.13445@oneiric>
	<50C8DE31.6000703@am.sony.com>
	<alpine.DEB.2.02.1212121448150.13689@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212121448150.13689@oneiric>
X-OriginatorOrg: am.sony.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: might it be worth explaining BBMASK more comprehensively?
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
X-List-Received-Date: Wed, 12 Dec 2012 20:18:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 12/12/2012 11:53 AM, Robert P. J. Day wrote:
> On Wed, 12 Dec 2012, Tim Bird wrote:
> 
>> On 12/12/2012 11:27 AM, Robert P. J. Day wrote:
>>>
>>>   a bit more pedantry, but is there a more complete example of the use
>>> of BBMASK than the trivial example in the ref and dev manuals?
>>>
>>>   the ref manual provides this example by way of explanation:
>>>
>>> BBMASK = ".*/meta-ti/recipes-misc/"
>>>
>>> well, ok, except you occasinally find slight variations like:
>>>
>>> BBMASK = "meta-ti/recipes-misc/"
>>>
>>> or
>>>
>>> BBMASK = "meta-ti/recipes-misc"
>>>
>>>   given that there are places where a trailing slash is significant,
>>> are all of the above exactly equivalent?  if so, that's worth noting.
>>>
>>>   also, what about an example showing masking out a couple
>>> directories, or perhaps a single recipe from a layer, and so on?  at
>>> the moment, the manuals suggest you can mask multiple recipes but
>>> nowhere do i see the reader being given an actual example of how to do
>>> that.
>>
>> Indeed.  These would be good clarifications.  The manual says that
>> this is a single python regular expression.  Hence, when masking multiple
>> directories or recipes, you use a vertical bar to separate the regex fragments.
>>
>> Here's a particularly complex case I used once:
>> BBMASK = "meta-ti/recipes-misc|meta-ti/recipes-ti/packagegroup"
>> BBMASK .= "|.*meta-oe/recipes-support"
>> #BBMASK .= "|.*openldap"
>> #BBMASK .= "|.*opencv"
>> #BBMASK .= "|.*lzma"
>> BBMASK .= "|meta-oe/recipes-core/packagegroups"
>> BBMASK .= "|meta-oe/recipes-devtools"
>> BBMASK .= "|meta-oe/recipes-extended"
>> BBMASK .= "|meta-oe/recipes-multimedia"
>> BBMASK .= "|meta-oe/recipes-navigation"
>> BBMASK .= "|meta-oe/recipes-connectivity"
>> BBMASK .= "|meta-oe/recipes-graphics"
>> BBMASK .= "|meta-oe/recipes-qt"
>>
>> I don't know if the .= with leading bar is the optimal
>> way to append on to BBMASK, but it seems fairly straightforward
>> to me.  I sometimes use the leading ".*" and sometimes not.
> 
>   it doesn't seem like the leading ".*" makes any difference but
> that's the sort of detail that might confuse a reader and should be
> explained.
> 
>> In my setup it seems to not be required, but maybe for flexibility
>> it should be used.  I'm not sure -- it would depend on wheter
>> python re.match or re.search is used for the regex.
> 
>>  -- Tim
> 
> from your examples above, is this how you mask individual software
> recipes?
> 
>   BBMASK .= "|.*openldap"
> 
> that's kind of useful to know.


That's how I do it.  I'm not sure if there's some other preferred
method or not.  This should catch that name in all layers.
 -- Tim


=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


