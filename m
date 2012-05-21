Return-Path: <John.Willis@Distant-earth.com>
Received: from omta1.brinkster.com (omta1.brinkster.com [65.182.109.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0AB9E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:17:05 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by omta1.brinkster.com (Postfix) with ESMTP id 86A3D1BF88A9;
	Mon, 21 May 2012 08:16:54 -0700 (MST)
X-DSPAM-Result: Spam
X-DSPAM-Class: Spam
X-DSPAM-Confidence: 0.55
X-DSPAM-Probability: 1.0000
X-DSPAM-Signature: N/A
X-Virus-Scanned: amavisd-new at 
Received: from omta1.brinkster.com ([127.0.0.1])
	by localhost (omta1.brinkster.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mk7Htz9Pu2RK; Mon, 21 May 2012 08:16:54 -0700 (MST)
Received: from mta1.brinkster.com (unknown [65.182.109.80])
	by omta1.brinkster.com (Postfix) with ESMTPS id 1F8B81BF88A5;
	Mon, 21 May 2012 08:16:54 -0700 (MST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mta1.brinkster.com (Postfix) with ESMTP id 8328184015;
	Mon, 21 May 2012 11:16:53 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mta1.brinkster.com
Received: from mta1.brinkster.com ([127.0.0.1])
	by localhost (mta1.brinkster.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n62FPfTIItNj; Mon, 21 May 2012 11:16:47 -0400 (EDT)
Received: from MareImbrium (cpc1-bath5-2-0-cust122.aztw.cable.virginmedia.com
	[77.99.62.123]) (Authenticated sender: John.Willis@Distant-earth.com)
	by mta1.brinkster.com (Postfix) with ESMTPA id 2754E84027;
	Mon, 21 May 2012 11:16:45 -0400 (EDT)
From: "John Willis" <John.Willis@Distant-earth.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>,
	"'Andrei Gherzan'" <andrei@gherzan.ro>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>	<4278335.i6izktZTML@helios>
	<4FBA0A24.70704@gherzan.ro> <14387597.ECeojYX8cL@helios>
In-Reply-To: <14387597.ECeojYX8cL@helios>
Date: Mon, 21 May 2012 16:16:47 +0100
Message-ID: <00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQJLnJjx9mRORCE/eZTxyGMKfWBA0QHYtWfDAd4QXUQB0wpUVpWrQH8Q
Cc: yocto@yoctoproject.org
Subject: Re: [poky] RaspberryPi Layer
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
X-List-Received-Date: Mon, 21 May 2012 15:17:06 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Hi Paul,

> > For example parsing libav and rpi-zram-service will fail. We don't
> > have libav and we don't have systemd yet in poky.
> 
> OK, sure, that isn't ideal - however meta-ti suffers from this issue as
well,
> and they have instructions in the layer README which tell people the
> BBMASK they can use to fix it. Can we not do the same here?

That had been my plan but I got the impression that was frowned up in the
Yocto environment.
As mentioned before I develop with core OE and Angstrom so to date had not
worried about Yocto specific problems as it is not a distro I use in anger.

If anyone wants to chuck patches over for this that is grand. Or if Andrei
wants to maintain floating patches over my tree, that is also fine, it makes
little odds to me or my current use case.

Regards,

John





