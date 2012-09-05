Return-Path: <wmills@ti.com>
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F05EE01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:45:20 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id q85EjH2o009951;
	Wed, 5 Sep 2012 09:45:17 -0500
Received: from DLEE74.ent.ti.com (dlee74.ent.ti.com [157.170.170.8])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q85EjH9o032067;
	Wed, 5 Sep 2012 09:45:17 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Wed, 5 Sep 2012 09:45:17 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q85EjGgr005992;	Wed, 5 Sep 2012 09:45:16 -0500
Message-ID: <5047657C.4010902@ti.com>
Date: Wed, 5 Sep 2012 10:45:16 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <50450DC6.20303@r-finger.com>
	<504663C0.6050907@ti.com>	<50471207.8080104@r-finger.com>
	<2612934.gZ3vcrfUaE@helios>	<50471ECE.8000502@r-finger.com>
	<1346849303.21985.56.camel@ted>
In-Reply-To: <1346849303.21985.56.camel@ted>
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 14:45:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 09/05/2012 08:48 AM, Richard Purdie wrote:
> On Wed, 2012-09-05 at 10:43 +0100, Tomas Frydrych wrote:
>> On 05/09/12 10:15, Paul Eggleton wrote:
>>> On Wednesday 05 September 2012 09:49:11 Tomas Frydrych wrote:
>>> It has been considered witin OE to be best practice to append to BBPATH and
>>> not prepend, the thinking being that then the search path matches the order of
>>> the layers listed in bblayers.conf rather than the reverse.
>>
>> Then meta-yocto should follow that convention ... and it needs to be
>> well documented, with the consequence of breaking that convention
>> explained, and the terrible punishments to come described in great and
>> sordid detail. Because this needs to be more than a convention, it needs
>> to be an article of faith.
>
> I just want to clarify something here.
>
> Its accepted that most layers will append to BBPATH. I do think its
> acceptable for a distro policy layer to prepend though and this is why
> meta-yocto does this. I don't remember the exact reason right now but
> the principle stands.

So how should we resolve the issue in meta-ti for the denzil/1.2 branch?

I think the expediency of prepending sounds right to me.  We can shoot 
for a better fix in 1.3.

>
> The root of the problem is that meta-yocto mixes up policy and hardware
> support which is bad. It also means its not compliant with the new Yocto
> Project compliance criteria and hence is not Yocto Project Compatible.
>
> Now we've got the compliance criteria sorted out there are some
> adjustments that need to be made and I will shortly be cleaving
> meta-yocto into two pieces to resolve this. I hadn't looked at this
> until now mainly in case there were changes to the criteria.
>
> FWIW I think this shows the strength of those criteria as by following
> them, we'd avoid a real world problem here.

I'm glad you are thinking of doing this.  I think it sets a good example 
and is cleaner.

However we will still need priority or namespace to override the 
beagleboard definition in the meta-yocto-bsp (or whatever) layer if it 
contains both the beagleboard reference and the atom-pc.

