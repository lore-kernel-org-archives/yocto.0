Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13144E0070C
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 04:23:09 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B07B7F81203; Wed, 21 Mar 2012 05:23:08 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7AE53F811F6;
	Wed, 21 Mar 2012 05:23:07 -0600 (MDT)
Message-ID: <4F69BA1B.8030500@mlbassoc.com>
Date: Wed, 21 Mar 2012 05:23:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1203210703200.7447@oneiric>
	<alpine.DEB.2.02.1203210710090.2402@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203210710090.2402@oneiric>
Subject: Re: setting of BBPATH differs between ref manual and actual layer.conf file
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
X-List-Received-Date: Wed, 21 Mar 2012 11:23:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-21 05:12, Robert P. J. Day wrote:
> On Wed, 21 Mar 2012, Robert P. J. Day wrote:
>
>>
>>    admittedly picky but the ref manual here:
>>
>> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#usingpoky-changes-layers
>>
>> shows a sample setting of BBPATH in yocto's layer.conf:
>>
>>    BBPATH := "${BBPATH}:${LAYERDIR}"
>>
>> however the actual layer.conf for yocto reads:
>>
>>    BBPATH := "${LAYERDIR}:${BBPATH}"
>>
>> should the ordering be consistent here?  should readers be warned
>> about the (admittedly remote) possibility of weirdness if they happen
>> to try to include two layers with the same name?  is that even
>> possible?  does any of this even matter?
>
>    i really hate replying to my own posts because i forgot to do
> something basic, but i did a quick grep:
>
> $ grep -r "BBPATH :=" *
> documentation/dev-manual/dev-manual-common-tasks.xml:     BBPATH := "${LAYERDIR}:${BBPATH}"
> documentation/dev-manual/dev-manual-kernel-appendix.xml:     BBPATH := "${BBPATH}:${LAYERDIR}"
> documentation/bsp-guide/bsp.xml:     BBPATH := "${BBPATH}:${LAYERDIR}"
> meta-hob/conf/layer.conf:BBPATH := "${BBPATH}:${LAYERDIR}"
> meta-skeleton/conf/layer.conf:BBPATH := "${BBPATH}:${LAYERDIR}"
> meta-yocto/conf/layer.conf:BBPATH := "${LAYERDIR}:${BBPATH}"
> $
>
>    so there's a mixture of that ordering.  if there's no real reason
> for that, it should really be consistent so readers don't wonder about
> it.

Indeed it does matter, as does the order that these statements are processed
(which I think is the order the layers are listed in bblayers.conf?)  It can
matter if two layers contain the same .conf file [at least].  I experienced
this when I had two layers with abi_version.conf - actually three: meta,
meta-yocto and meta-MINE - and I got very confused when I removed meta-yocto
from the mix :-(  The ordering of BBPATH isn't as important with recipes
as they use the layer priority mechanism, but if you had two layers with
identical priorities and recipes, it might matter as well.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

