Return-Path: <wmills@ti.com>
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECE58E01371
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 13:25:41 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q84KPbPI031395;
	Tue, 4 Sep 2012 15:25:37 -0500
Received: from DFLE72.ent.ti.com (dfle72.ent.ti.com [128.247.5.109])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q84KPbRY028037;
	Tue, 4 Sep 2012 15:25:37 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle72.ent.ti.com
	(128.247.5.109) with Microsoft SMTP Server id 14.1.323.3;
	Tue, 4 Sep 2012 15:25:37 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q84KPa9f018874;	Tue, 4 Sep 2012 15:25:36 -0500
Message-ID: <504663C0.6050907@ti.com>
Date: Tue, 4 Sep 2012 16:25:36 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <50450DC6.20303@r-finger.com>	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>	<50451947.2090401@r-finger.com>	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>	<5045C2B7.1070406@r-finger.com>	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com>
In-Reply-To: <504637F5.8090603@linux.intel.com>
Cc: yocto@yoctoproject.org, "Dmytriyenko, Denys" <denys@ti.com>
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
X-List-Received-Date: Tue, 04 Sep 2012 20:25:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 09/04/2012 01:18 PM, Darren Hart wrote:
>
>
> On 09/04/2012 05:20 AM, Bruce Ashfield wrote:
>> On Tue, Sep 4, 2012 at 4:58 AM, Tomas Frydrych
>> <tf+lists.yocto@r-finger.com>  wrote:
>>> Hi Bruce,
>>>
>>> On 03/09/12 22:08, Bruce Ashfield wrote:
>>>> That being said, taking a step back, what are you trying to get out of
>>>> meta-yocto in this scenario ?
>>>
>>> a) I am targeting multiple chips, including TI Omap and Intel Atom.
>>> meta-yocto is a prerequisite for the various machines in meta-intel, so
>>> I have to include meta-yocto if I want to build images for an Intel
>>> chip. Nothing unusual here.
>>>
>>> b) meta-yocto is the Poky distro layer; if you want to use Poky, then
>>> you need meta-yocto.
>>>
>>>> see above. I misspoke. I don't think there's an intent to make meta-yocto
>>>> and meta-ti work together, but oe-core + meta-ti, that's the combo that
>>>> makes sense.

oe-core + meta-ti should work or it needs to get fixed.
poky + meta-ti should work or it needs to get fixed.

However I suspect the 2nd is not in the nightly builds yet.

Denys is out for the next few days.  He can comment more when he gets back.

It has been our assumption that there is enough functionality in the 
layer mechanisms that any of the "light weight" BSPs in yocto layer 
could be completely overridden by a more complete layer (meta-ti in this 
example).  In addition the end system integrator should be able to 
override definitions in any BSP layer.

I suspect the current issue is just growing pains for a case that has 
not been tested.  Lets prove that false before taking more drastic action.

>>>
>>> The basic problem with meta-yocto is that it combines BSP stuff
>>> (meta-intel prerequisite, Atom&  Beagle config) with distro stuff (Poky,
>>> Yocto branding). That's convenient for doing QA on a limited set of HW,
>>> but suboptimal for real use; BSP layers simply should not be dependent
>>> on distro layers, it largely defeats the purpose of having layers.

Darren: Is it true you can't get @ the Intel BSP's w/o also getting the 
poky distro defs?  That does seem to mixing things a bit.  (I am not 
claiming meta-ti is clean yet but I want to understand the Intel examples.)


