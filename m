Return-Path: <gizero@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68913E011D1
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 07:58:20 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so252322qcs.35
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2012 07:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=hy712eMS2Q/PHP0yOP1QJyo+al0QDXfEKlEHotVG1wY=;
	b=AJd1IHJ3ztk2L7fNdD5BIEs9lTca00jlxB5S0zwLXr6U63TXcPzHRZXVO4L8suEnJl
	+w50pKrrJUXaFGfzM7U6Q8rgD1g2rFhF43z7+KYvYHUJc1CLUiyV6J13F1qFDiX0ply9
	jAqZBtZPl44RnzlLSHLkgb6RCt6DVQS1GwRDGpEPqLa3kBWYIiE4bRahSUUQ0vUVfqUY
	dJzxTH5wLP6DD/CtYPnaEmwuZXRz3HMVCHvcIpQhH3p9t2T3dl6I88rD1GvDVHTrrFJU
	aFqEYhFCd82gD2CKrha2oYbjPKLcFTywz66tL6uKBfCNMieHnN7/m7GATVlrNtx2SLCm
	6mXQ==
MIME-Version: 1.0
Received: by 10.229.137.77 with SMTP id v13mr1057373qct.60.1333551499343; Wed,
	04 Apr 2012 07:58:19 -0700 (PDT)
Received: by 10.229.157.199 with HTTP; Wed, 4 Apr 2012 07:58:19 -0700 (PDT)
In-Reply-To: <4F7C5651.60209@mlbassoc.com>
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
Date: Wed, 4 Apr 2012 16:58:19 +0200
Message-ID: <CAC+thW0Z1wbifRONhVGNMhXX1JKt2asa0973GpvFxVFHR857+Q@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Wed, 04 Apr 2012 14:58:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Gary,

On Wed, Apr 4, 2012 at 4:10 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-04-04 06:50, Bruce Ashfield wrote:
>>
>> On 12-04-04 08:04 AM, Andrea Galbusera wrote:
>>>
>>> Hi Tomas,
>>>
>>> On Wed, Apr 4, 2012 at 12:14 PM, Tomas Frydrych
>>> <tf+lists.yocto@r-finger.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> I am trying to get Yocto image built from yesterday's master
>>>> (Linux-3.0.23-yocto-standard) to boot on the NAND-less version of
>>>> BeagleBoard xM, but the kernel panics with:
>>>>
>>>> ----------------- console log start ------------
>>>>
>>>> Waiting for root device /dev/mmcblk0p2...
>>>> mmc0: new SDHC card at address 1234
>>>> mmcblk0: mmc0:1234 SA04G 3.67 GiB (ro)
>>>> mmcblk0: p1 p2
>>>>
>>>> VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
>>>> Please append a correct "root=3D" boot option; here are the available
>>>> partitions:
>>>>
>>>> b300 3858432 mmcblk0 driver: mmcblk
>>>> b301 120456 mmcblk0p1 00000000-0000-0000-0000-000000000mmcblk0p1
>>>> b302 3445942 mmcblk0p2 00000000-0000-0000-0000-000000000mmcblk0p2
>>>>
>>>> VFS: Unable to mount root fs on unknown-block(179,2)
>>>> User configuration error - no valid root filesystem found
>>>> Kernel panic - not syncing: Invalid configuration from end user preven=
ts
>>>> continuing
>>>>
>>>> -------------- console log end ------------------------------------
>>>>
>>>> My guess would be the problem is the card being detected as 'ro' (line
>>>> 3), but I do not know why that is (there is no lock switch on mmc
>>>> cards).
>>>>
>>>> The card itself is fine, it's the original card that came with the
>>>> board, the original Angstrom demo boots fine from it, and yocto kernel
>>>> 2.6.37 also used to boot.
>>>>
>>>> Tomas
>>>
>>>
>>> Looks related to the comment I wrote here:
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1892
>>> I have a slightly different failure with yocto 1.2 beta snapshot (same
>>> kernel) but seems related. Needs more investigation.
>>> Anyone else having problem booting on beagleboard xM? Seems something
>>> wrong happened after 1.1 release...
>>
>>
>> We are working on several bugs on our reference beagleboard. The problem
>> is that my beagleboard died (a horrible painful death) and the other
>> boards
>> that are directly available to are RevC and they are booting. So things
>> are slowed down a bit .. but we are trying to get to the bottom of it,
>> as fast as possible.
>
>
> Just FYI, it also doesn't boot on my rev-C3 (not xM), albeit with a
> different
> error pattern. =A0It hangs at this point:
>
> =A0Waiting for root device /dev/mmcblk0p2...
> =A0mmc0: error -110 whilst initialising SD card

That's exactly the same error I see! Happy to know am not alone...

> Looks like you might need the attached patch?

I'm going to give it a try as soon as I can. Did you already submit it
somewhere?

Andrea

