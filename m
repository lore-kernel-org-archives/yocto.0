Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1A3E0136C
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:26:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2013 00:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,413,1363158000"; d="scan'208";a="289771031"
Received: from unknown (HELO helios.localnet) ([10.255.13.157])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2013 00:26:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>, yocto@yoctoproject.org
Date: Fri, 05 Apr 2013 08:26:57 +0100
Message-ID: <3486181.3zQ0PC9o8U@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CAFMfyzKMBXx+j6Wx2e=xdaTU2gHsvTqiEsKAmmCm7AKde_5THw@mail.gmail.com>
References: <CAFMfyz+evbAH-Yes=LdnkU9TWi-GKdVRWHT-MYaCNzh8Hf_1fQ@mail.gmail.com>
	<14373389.b9xaIaY1vP@helios>
	<CAFMfyzKMBXx+j6Wx2e=xdaTU2gHsvTqiEsKAmmCm7AKde_5THw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Installing foreign fonts into the yocto build
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
X-List-Received-Date: Fri, 05 Apr 2013 07:26:59 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Friday 05 April 2013 09:05:34 Satya Swaroop Damarla wrote:
> Thank you Paul..  This was very helpful... From your reply. I underst=
ood
> that poky build doesnot support unicode characters set because the ge=
rman
> special characters are not displayed ... Am I right?

There's nothing inherent about Poky / OpenEmbedded that means it doesn'=
t=20
support Unicode. Individual pieces of software might have difficulties =
however.=20
I just copied over a text file containing "Schr=C3=B6dinger's =F0=9F=98=
=BB" (i.e. one German=20
character and one special one) in UTF-8 to a core-image-sato image. The=
 file=20
doesn't display properly in the matchbox-terminal application (displayi=
ng=20
garbage, indicating the encoding is incorrect), however in Notes (leafp=
ad) it=20
displays the =C3=B6 but not the =F0=9F=98=BB (displaying a single box w=
ith hex code instead,=20
indicating that the font is missing that special character).

FYI I read this article recently and found it very useful - you may alr=
eady=20
know some or all of this, but just in case:

http://www.joelonsoftware.com/articles/Unicode.html

Cheers,
Paul

PS please keep the discussion on the mailing list, thanks.

--=20

Paul Eggleton
Intel Open Source Technology Centre

