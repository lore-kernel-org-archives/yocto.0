Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 37057E006C3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 13:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=amx2V3Y1tUN5d+BihatSi7eMWr6m02ZBhqXRvtFXlPQ=; 
	b=huhVs2iS6EE8ONV3FhmMREPF2nJolZ4oQkDJEUuzVNrDhiQccZ7B8bKPoRK0aFeBpXx2bwL/UBQW//fRhoTZRFaPn/zO1WrC0JXbLfLErgDgJpWnZaUZQqzjrpaPbdHv;
Received: from [109.224.129.17] (port=33791
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1U5NUl-0034xx-MI; Tue, 12 Feb 2013 21:34:32 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1360699012.1516.26.camel@empanada>
Date: Tue, 12 Feb 2013 21:34:30 +0000
Message-Id: <A873331A-C3F4-4E94-893D-A7C72FC0BFA7@keylevel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
	<E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A718D1C@ORSMSX101.amr.corp.intel.com>
	<000001ce08e6$9b51c250$d1f546f0$@annabooks.com>
	<1360699012.1516.26.camel@empanada>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: 'Yocto Discussion Mailing List' <yocto@yoctoproject.org>,
	'Darren Hart' <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Tue, 12 Feb 2013 21:34:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 12 Feb 2013, at 19:56, Tom Zanussi wrote:

> On Mon, 2013-02-11 at 22:02 -0800, Sean Liming wrote:
>>=20
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Liu, Song
>>> Sent: Monday, February 11, 2013 1:25 PM
>>> To: Chris Tapp
>>> Cc: Darren Hart; Yocto Discussion Mailing List
>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail =
Machine
>>>=20
>>> Thanks for the reply, Chris! Feel free to let us know if you have =
any
>>> questions. Hope your project will go well.
>>>=20
>>> Song
>>>=20
>>> -----Original Message-----
>>> From: Chris Tapp [mailto:opensource@keylevel.com]
>>> Sent: Monday, February 11, 2013 1:17 PM
>>> To: Liu, Song
>>> Cc: Bodke, Kishore K; Bruce Ashfield; Darren Hart; Saxena, Rahul; =
Zanussi,
>>> Tom; Yocto Discussion Mailing List
>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail =
Machine
>>>=20
>>> Hi Song / Kishore,
>>>=20
>>> On 11 Feb 2013, at 18:47, Liu, Song wrote:
>>>=20
>>>> Hi Chris,
>>>>=20
>>>> Intel is still supporting critical fixes for the Cedar Trail BSP on
>> Yocto Project
>>> 1.3 release. If you need additional support for your project, I can
>> connect you
>>> with some Intel sales/support people who can help. At the same time, =
would
>>> you be able to share more information about your project with me? It =
will
>>> help when I ask them for additional support.
>>>=20
>>> Thanks, that's good news.
>>>=20
>>> The only slight down side from my perspective is we won't get the =
benefits
>>> from 1.4 (and future) improvements. However, it will give me an =
excuse to
>>> move the hardware on as new platforms become available ;-)
>>>=20
>>>=20
>>>> Song
>>>>=20
>>>> -----Original Message-----
>>>> From: Chris Tapp [mailto:opensource@keylevel.com]
>>>> Sent: Saturday, February 09, 2013 1:33 AM
>>>> To: Bodke, Kishore K
>>>> Cc: bruce.ashfield@windriver.com; dvhart@linux.intel.com; Saxena,
>>>> Rahul; Liu, Song; Zanussi, Tom; linux-yocto@yoctoproject.org;
>>>> yocto@yoctoproject.org
>>>> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail
>>>> Machine
>>>>=20
>>>>=20
>>>> On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:
>>>>=20
>>>>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>>>>=20
>>>>>=20
>>>>> Hi,
>>>>>=20
>>>>> This patch set is to remove the Cedartail Machine from
>>>>> Linux-yocto-3.4 Kernel.
>>>>> Cedartrail BSP will not be supported for Yocto 1.4 Release.
>>>>=20
>>>> Hi Kishore,
>>>>=20
>>>> Are there any plans to bring support back in? We recently committed =
a
>>> project to using this BSP for the Intel DN2800MT...
>>>>=20
>>>>> Also Please remove the standard/cedartrail branch.
>>>>>=20
>>>>> Please pull into linux-yocto-3.4/meta branch.
>>>>>=20
>>>>> Thanks
>>>>> Kishore.
>>>>>=20
>>>>> The following changes since commit
>>> f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
>>>>>=20
>>>>> meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>>>>>=20
>>>>> are available in the git repository at:
>>>>>=20
>>>>> git://git.pokylinux.org/linux-yocto-contrib =
kishore/cedartrail_remove
>>>>> =
http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=3Dkishore/
>>>>> c
>>>>> edartrail_remove
>>>>>=20
>>>>> Kishore Bodke (1):
>>>>> meta: Remove Cedartrail Machine
>>>>>=20
>>>>> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
>>>>> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
>>>>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46
>> --------------------
>>>>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
>>>>> 4 files changed, 82 deletions(-)
>>>>> delete mode 100755
>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
>>>>> delete mode 100755
>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
>>>>> delete mode 100755
>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
>>>>> delete mode 100644
>>>>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>>>>>=20
>>>>> --
>>>>> 1.7.9.5
>>>>>=20
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>=20
>>>> Chris Tapp
>>>>=20
>>>> opensource@keylevel.com
>>>> www.keylevel.com
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>> Chris Tapp
>>>=20
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>=20
>>>=20
>>>=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>>=20
>> I haven't looked at the changes. Out of curiosity, is it possible to =
add a
>> BSP back in for a new Yocto Project version? What would be the =
challenge?
>>=20
>=20
> It probably wouldn't take much to bring it back - basically the pvr
> graphics driver, which I assume is one of the most important features =
of
> this BSP for users, is stuck at kernel version 3.0.  If everything =
else
> stayed the same, forward-porting the GPL'ed kernel portion of the =
driver
> would be all that would be needed to get it working again.  We've done
> that routinely for other drivers such as EMGD, so I don't think that
> would be too big a deal.

Would that mean only non-accelerated graphics? I remember someone on =
this list a while back saying they had seen it ported to (I think) 3.2 =
under a main-stream distro.

> The bigger problem is who would support it going forward.  I could do
> the initial work to fix it up (if I had the hardware, which I don't - =
I
> may get a cedartrail netbook in March, so that ) (or we could take
> patches) but I wouldn't have the time to support it after that.
>=20
> If someone stepped up to support it, though, that would make a
> difference in keeping it around in 1.4 and beyond, I think.

What would that involve? Is it fairly stand-alone, or would in-depth =
knowledge of the kernel 'magic' be required?

> Tom
>=20
>> Regards,
>>=20
>> Sean Liming
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




