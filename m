Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF343E013DC
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 06:58:51 -0700 (PDT)
Received: from [192.168.0.2] (host86-134-170-50.range86-134.btcentralplus.com
	[86.134.170.50]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id AB64599C2
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 14:58:50 +0100 (BST)
Message-ID: <4F82EB19.9040207@r-finger.com>
Date: Mon, 09 Apr 2012 14:58:49 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F821129.2020007@r-finger.com> <4F827F43.3050907@r-finger.com>
	<4F82DE49.4060408@mlbassoc.com>
In-Reply-To: <4F82DE49.4060408@mlbassoc.com>
Subject: Re: managing layer priorities
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
X-List-Received-Date: Mon, 09 Apr 2012 13:58:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/04/12 14:04, Gary Thomas wrote:
> On 2012-04-09 00:18, Tomas Frydrych wrote:
>> On 08/04/12 23:28, Tomas Frydrych wrote:
>>> Is there a way to change the priority that a layer assigns itself in its
>>> layer.conf? E.g., I want to add meta-oe alongside of meta-yocto, but I
>>> want it to have a lower priority than the latter. Currently meta-yocto
>>> gives itself "5" and meta-oe "6", I'd like to change this without having
>>> to modify meta-oe/conf/layer.conf, but can't find a way to do this.
>>
>> Never mind, it is possible to override these in the last layer listed in
>> BBLAYERS.
> 
> How so?

You can set the various BBFILE_PRIORITY_**** and other variables in the
layer.conf for the last layer listed in your bblayers.conf. The layer
priorities get evaluated only after all of the layer.conf files have
been parsed, so anything that is set in the last layer.conf will be the
final value. I use the Yocto model where (unlike with OE layers) the
layer.conf prepends its layer path to BBPATH, so my custom layer is
last, but I imagine it would be possible to create a fake layer with no
recipes just for this specific purpose.

Tomas

> 


