Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
 by mx.groups.io with SMTP id smtpd.web11.5871.1590640130691459140
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 21:28:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@ti.com header.s=ti-com-17q1 header.b=JOyLtXm2;
 spf=pass (domain: ti.com, ip: 198.47.23.248, mailfrom: wmills@ti.com)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04S4Sn2p098267;
	Wed, 27 May 2020 23:28:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1590640129;
	bh=bZm5Bf4QT1bxty6LxRjOcWtPayAahRFCnbiYGcUypBc=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=JOyLtXm2c+9d6pHJLaIAE4sLVy5ImPRZ9Rlp+H2GXkZYsqFt8dGS5JJJP5ZU6Ea64
	 yX6fYW5efDgden5zV/uu0L9mhsrwP2FQeYqtDIvXSdHXX2TJZCv70lK1pN/QmqSwWz
	 22ZNxUWiZ7wXceawTz8uO9vxpL04ysSrOwoJpu2A=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04S4Sndk072808
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 May 2020 23:28:49 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 27
 May 2020 23:28:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 27 May 2020 23:28:49 -0500
Received: from [10.0.2.15] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04S4Sm3p088188;
	Wed, 27 May 2020 23:28:49 -0500
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
To: Michael Halstead <mhalstead@linuxfoundation.org>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
 <615783cf129245af8973e3376b06f3bc@ti.com>
 <952758c461a1846f5069d1dfe6ccb6ee89c3f057.camel@linuxfoundation.org>
 <e3383496-e197-44a1-cb0e-28b043b0298a@ti.com>
 <CADfgfob_1jRuoUSdU20ZfpkZKQKzDaH2x2aetHyStRET1ESrug@mail.gmail.com>
From: "William Mills" <wmills@ti.com>
Message-ID: <36c5f98d-a1db-a99e-48d5-57b24f15129a@ti.com>
Date: Thu, 28 May 2020 00:28:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CADfgfob_1jRuoUSdU20ZfpkZKQKzDaH2x2aetHyStRET1ESrug@mail.gmail.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-MIME-Autoconverted: from 8bit to quoted-printable by lelv0143.ext.ti.com id 04S4Sn2p098267
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 5/27/20 6:42 PM, Michael Halstead wrote:
> I've rebuilt the fancyindex module and enabled it. The full filenames
> are displayed now. The module is disabled automatically when new
> versions of EPEL are released. Hopefully the change in html output
> doesn't break any script you've started writing.
>=20

Thanks Michael.  Its funny because I had switched machines in the
meantime and I was scratching my head.  "how does Firefox know how to do
that when Chrome did not"?  But I figured out you had made a change :)

I also remembered "wget -r -np <url>".  I have not used that is so long
I forgot about it.  It downloads too much but it is a quick start.  (It
downloads each symlink as a unique file.)

So for the real solution I think I am only going to download the files
that have a <file>.md5sum.  I suppose I could recreate the symlinks
based on heuristics of the filename but I probably won't bother.

It would still be nice to have an intentionally machine readable
directory of the full release content in one file in the root.
md5sum and crew won't show symlink vs real files.  I'll keep thinking
about any existing format that might work.

> I found and closed a few=C2=A0old
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12416>bugs
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11249> about this.=
 I
> think the issue has been fixed and returned a few times since these=C2=A0=
bugs
> were filed.
>=20

Nice.

Thanks,
Bill
