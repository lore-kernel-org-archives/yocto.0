Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988C7E01473
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 07:21:59 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id r39ELxew017633
	for <yocto@yoctoproject.org>; Tue, 9 Apr 2013 09:21:59 -0500
Received: from DFLE73.ent.ti.com (dfle73.ent.ti.com [128.247.5.110])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id r39ELx9x003146
	for <yocto@yoctoproject.org>; Tue, 9 Apr 2013 09:21:59 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DFLE73.ent.ti.com
	(128.247.5.110) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 9 Apr 2013 09:21:58 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	r39ELweO027157	for <yocto@yoctoproject.org>;
	Tue, 9 Apr 2013 09:21:58 -0500
Message-ID: <51642406.3060300@ti.com>
Date: Tue, 9 Apr 2013 10:21:58 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1304081757170.3910@oneiric>	<5163442A.7070801@windriver.com>
	<alpine.DEB.2.02.1304090718010.3901@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304090718010.3901@oneiric>
Subject: Re: what's the situation with MIPS support/BSPs/dev kits in yocto?
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
X-List-Received-Date: Tue, 09 Apr 2013 14:21:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


On 04/09/2013 07:27 AM, Robert P. J. Day wrote:
> On Mon, 8 Apr 2013, Bruce Ashfield wrote:
>
>> On 13-04-08 5:59 PM, Robert P. J. Day wrote:
>>>
>>>     other than the canonical routerstation pro in the meta-yocto-bsp
>>> layer, is there any serious work being put into MIPS machines?  a
>>> quick google didn't seem to find anything, and the rs pro itself was
>>> end-of-lifed a while back (as i recall), so is there something else if
>>> one wants to use yocto on a MIPS dev kit?
>>
>> From: https://bugzilla.yoctoproject.org/show_bug.cgi?id=2444
>>
>> MIPS suggested refresh: http://www.ubnt.com/edgemax
>>
>> .. but I've yet to complete the due diligence on seeing if I can
>> actually purchase one :) That's going to happen shortly after yocto
>> 1.4 completes.
>
>    i ordered one last night -- total $159.79 (CAD), including
> shipping. it took a couple minutes to understand what i was reading
> here:

I ordered one just now from the N.C. distributor.  They did not say 
anything about back order so I expect it in a couple of days.

(And no this does not mean anything wrt TI.  It is for my own 
intellectual curiosity.)

>
> http://ubnt.ca/en/8-edgemax
>
>    "edgemax" is simply the generic name for the "platform" -- the
> product itself is the edgerouter lite 3 (or "erlite3" as they like to
> abbreviate it):
>
> http://ubnt.ca/en/edgemax/61-edgemax.html
>
> so the next shipment comes in on friday to ubnt.ca, at which point
> they'll ship one to me.  the admin claims that they're getting in only
> a "very limited" number of them on friday, so you can take that with
> whatever grain of salt you feel is appropriate, but i wanted one.
>
> rday
>
> p.s. i was interested in a newer MIPS box as a former student of mine
> dropped me a note and told me his corp was planning a new product
> based on the MIPS SEAD-3:
>
> http://www.mips.com/products/development-kits/mips-sead-3/
>
> but that thing is crazy expensive ($2K USD).
>

