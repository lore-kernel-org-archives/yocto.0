Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCEC3E00346
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 07:00:09 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id s4so3237830lbc.35
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2012 07:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FpwWJ4d0FvnzWuol+44NS8HElrcyQTggwhL1mlZiPWg=;
	b=JV4oEMoLhAej8k/nih0dEbyTAlynsuhfsj+ehtc5NrZ8BgLHXAPdww+95dYjwusMiv
	jBoF5J9KPGWhmn8+lM9FlC4HLNZNtt41oBQCQmWp0T7dxG+BNBV3TgEFxp0lGyNH+se1
	V6Lxf5SSGl8G/UstWZkK9O9dIT/zO2kXdOc0Eqzcs/Ba0GFnxpUBBFXQRjKuVVUi/wpE
	/xAk+6Wbh2cWjzxnthFlEey/KEFibUGJ64pK5AGjIHslsXqkOcluAJaiokYg5IVbFCeH
	TGPSVEzmvD/ItPBPu69FQwNlOqv3Z65QeL5BUPcwnZW8rkqdQyI55xGpd9mBfZFkGnQe
	zJTg==
MIME-Version: 1.0
Received: by 10.112.82.6 with SMTP id e6mr6801805lby.93.1349704806551; Mon, 08
	Oct 2012 07:00:06 -0700 (PDT)
Received: by 10.114.17.164 with HTTP; Mon, 8 Oct 2012 07:00:06 -0700 (PDT)
In-Reply-To: <4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
Date: Mon, 8 Oct 2012 10:00:06 -0400
Message-ID: <CADkTA4Oecym=XyX13qosTD634MkfKfO1PYi=Pzp5kWtPLSdd2w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Mon, 08 Oct 2012 14:00:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Oct 8, 2012 at 3:58 AM, Chris Tapp <opensource@keylevel.com> wrote:
> On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
>
>> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com> wrote:
>>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
>>>
>>>> Try adding the unionfs feature (below) to your kernel:
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta/cfg/kernel-cache/features/unionfs?h=meta
>>>>
>>>> create a file my_cedartrail.scc with following line:
>>>> include features/unionfs/unionfs.scc
>>>>
>>>> put this file in a dir linux-yocto, the dir being created in
>>>>
>>>> meta-cedartrail/recipes-kernel/linux
>>>>
>>>> add following line in  meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend
>>>>
>>>> SRC_URI +="file://my_cedartrail.scc"
>>>
>>> Thanks - I thought just running 'menuconfig' would allow me to enable it (for a quick test).
>>>
>>> However, this still doesn't seem to be working. I can see that 'my_cedartrail.scc' gets fetched in to the build area, but I still don't see CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' folder in fs/ of the build tree.
>>>
>>> Also, if I specify an invalid feature (e.g. feature2/unionfs/unionfs.scc) I'm not seeing any diagnostic.
>>
>> unionfs was never merged to the 3.0 kernel, I re-added it to the development
>> trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree at the moment). The meta
>> data is carried forward from the older kernels as a placeholder and is
>> documented
>> in the .scc file itself:
>>
>> -----------------------
>> kconf non-hardware unionfs.cfg
>>
>> # commented pending update to a newer version ported to 2.6.35+
>> # patch unionfs-2.5.4-integration.patch
>> -----------------------
>>
>> So to get unionfs in the 3.0 kernel, we'd need a port .. but since
>> we've moved on
>> quite a bit past 3.0, I don't know of any pending ports myself.
>
> Thanks Bruce.
>
> I guess I need to ask the Intel guys if there are any plans to move Cedartrail on from 3.0 ?

It will have to happen post yocto 1.3 (as far as I know), since the
3.0 kernel will be
dropped at that point.

For the short term, it's likely easier to backport/update unionfs than
it would be to
update the BSP .. but I can't speak for the time to be spent doing it :)

Cheers,

Bruce

>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>>
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
>>>> Sent: Saturday, October 06, 2012 5:43 PM
>>>> To: yocto@yoctoproject.org Project
>>>> Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
>>>>
>>>> I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail BSP under Denzil 7.0.1.
>>>>
>>>> However, the CONFIG_UNION_FS config flag isn't in the .config ...
>>>>
>>>> Is there something else I need to enable, or do I need to find another way?
>>>>
>>>> Chris Tapp
>>>>
>>>> opensource@keylevel.com
>>>> www.keylevel.com
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> Chris Tapp
>>>
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

