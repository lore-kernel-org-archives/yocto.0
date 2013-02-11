Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F0D1DE0027C
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2013 13:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=MJ5VBUuqTbUvMz0msYXOv5Bn2wD34D2sYgwhgd3FyOA=; 
	b=TH6ptWfyfX5T7DMDebIrypZaO3ue+g/0eqeidCcmXzofXMY9J9qWeq16WDYokTfk3kPDMdRUSKjpsvdDVooCp9q7BrvkE6hF4f9A+C2NOT8YtkaXtbCSYy6lnF1PBJZq;
Received: from [109.224.129.17] (port=19282
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1U50kL-000VaY-93; Mon, 11 Feb 2013 21:17:05 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
Date: Mon, 11 Feb 2013 21:17:03 +0000
Message-Id: <E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
To: "Liu, Song" <song.liu@intel.com>
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
Cc: Darren Hart <dvhart@linux.intel.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 11 Feb 2013 21:17:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Song / Kishore,

On 11 Feb 2013, at 18:47, Liu, Song wrote:

> Hi Chris,
>=20
> Intel is still supporting critical fixes for the Cedar Trail BSP on =
Yocto Project 1.3 release. If you need additional support for your =
project, I can connect you with some Intel sales/support people who can =
help. At the same time, would you be able to share more information =
about your project with me? It will help when I ask them for additional =
support.

Thanks, that's good news.

The only slight down side from my perspective is we won't get the =
benefits from 1.4 (and future) improvements. However, it will give me an =
excuse to move the hardware on as new platforms become available ;-)


> Song
>=20
> -----Original Message-----
> From: Chris Tapp [mailto:opensource@keylevel.com]=20
> Sent: Saturday, February 09, 2013 1:33 AM
> To: Bodke, Kishore K
> Cc: bruce.ashfield@windriver.com; dvhart@linux.intel.com; Saxena, =
Rahul; Liu, Song; Zanussi, Tom; linux-yocto@yoctoproject.org; =
yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail =
Machine
>=20
>=20
> On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:
>=20
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>=20
>>=20
>> Hi,
>>=20
>> This patch set is to remove the Cedartail Machine from
>> Linux-yocto-3.4 Kernel.
>> Cedartrail BSP will not be supported for Yocto 1.4 Release.
>=20
> Hi Kishore,
>=20
> Are there any plans to bring support back in? We recently committed a =
project to using this BSP for the Intel DN2800MT...
>=20
>> Also Please remove the standard/cedartrail branch.
>>=20
>> Please pull into linux-yocto-3.4/meta branch.
>>=20
>> Thanks
>> Kishore.
>>=20
>> The following changes since commit =
f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
>>=20
>> meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>>=20
>> are available in the git repository at:
>>=20
>> git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove =
=20
>> =
http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=3Dkishore/c
>> edartrail_remove
>>=20
>> Kishore Bodke (1):
>> meta: Remove Cedartrail Machine
>>=20
>> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
>> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 =
--------------------
>> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
>> 4 files changed, 82 deletions(-)
>> delete mode 100755=20
>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
>> delete mode 100755=20
>> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
>> delete mode 100755 =
meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
>> delete mode 100644 =
meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>>=20
>> --
>> 1.7.9.5
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




