Return-Path: <stefan.roese@gmail.com>
Received: from mo-p05-ob.rzone.de (mo-p05-ob.rzone.de [81.169.146.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E89E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:44:38 -0800 (PST)
X-RZG-AUTH: :IW0NeWC7b/q2i6W/qstXb1SBUuFnrGoheedClaTaNdBkW0QEactrHijJzVWB2B/o4fkZ
X-RZG-CLASS-ID: mo05
Received: from [10.0.0.152] (pD9FF8293.dip0.t-ipconnect.de [217.255.130.147])
	by smtp.strato.de (RZmta 32.17 DYNA|AUTH)
	with ESMTPA id u0027apB5GiZeIR ; Thu, 5 Dec 2013 17:44:35 +0100 (CET)
Message-ID: <52A0AD72.5080908@gmail.com>
Date: Thu, 05 Dec 2013 17:44:34 +0100
From: Stefan Roese <stefan.roese@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
 yocto@yoctoproject.org
References: <52A0A38E.7020903@gmail.com> <52A0A520.7060103@windriver.com>
	<52A0A974.9080207@gmail.com> <52A0AAF6.2000509@windriver.com>
In-Reply-To: <52A0AAF6.2000509@windriver.com>
Subject: Re: Board specific bbappend file
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
X-List-Received-Date: Thu, 05 Dec 2013 16:44:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05.12.2013 17:33, Bruce Ashfield wrote:
>>> What exactly are you tried to change on a per-board basis ? Assuming
>>> it is variables, you can use the standard OVERRIDES mechanism to
>>> have a version specific bbappend, that changes variables on a per
>>> board basis.
>>>
>>> i.e.
>>>
>>>        FOO_<machine name> = "bar"
>>>        FOO_<another machine name> = "bar2"
>>>
>>> Assuming the generic recipe uses these variables appropriately, you'll
>>> be fine.
>>
>> Specifically its the SRC_URI / SRC_URI_append variable (e.g. for a linux
>> kernel and u-boot etc). And since this one is used in many recipes, I
>> can't just put those settings in the machine conf file.
>>
>> Do you have any recommendations how to change this variable (per recipe)
>> without touching the generic bb file?
> 
> You can absolutely change the SRC_URI on a per-board basis. Just use
> the technique that I showed above, and do it in a bbappend to your
> linux recipe.
> 
> i.e. something like: SRC_URI_qemux86 += "file://myfancypatch.patch"

Yes, right. But this would mean doing it in a "generic" bbappend file? E.g.

recipe:
linux-xyz_3.12.bb

and its "generic" append file:
linux-xyz_3.12.bbappend

And thinking about for example 20 boards, this would mean to add 20
"SRC_URI_fooabc" defines to this bbappend file. Just shifting the
changes from the bb file to the "common" bbappend file.

What I was looking for is more a way to do this on a one-file-per-board
basis. Is this possible somehow?

Thanks,
Stefan


