Return-Path: <John.Willis@Distant-earth.com>
Received: from omta1.brinkster.com (omta1.brinkster.com [65.182.109.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C3C0E0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:34:56 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by omta1.brinkster.com (Postfix) with ESMTP id 81E4F17300D2;
	Mon, 21 May 2012 08:34:55 -0700 (MST)
X-DSPAM-Result: Spam
X-DSPAM-Class: Spam
X-DSPAM-Confidence: 0.53
X-DSPAM-Probability: 1.0000
X-DSPAM-Signature: N/A
X-Virus-Scanned: amavisd-new at 
Received: from omta1.brinkster.com ([127.0.0.1])
	by localhost (omta1.brinkster.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcBvohpmL7U3; Mon, 21 May 2012 08:34:55 -0700 (MST)
Received: from mta1.brinkster.com (unknown [65.182.109.80])
	by omta1.brinkster.com (Postfix) with ESMTPS id 49CE71BF848C;
	Mon, 21 May 2012 08:34:55 -0700 (MST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mta1.brinkster.com (Postfix) with ESMTP id A481F84034;
	Mon, 21 May 2012 11:34:54 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mta1.brinkster.com
Received: from mta1.brinkster.com ([127.0.0.1])
	by localhost (mta1.brinkster.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FiH9iWlUlBv2; Mon, 21 May 2012 11:34:54 -0400 (EDT)
Received: from MareImbrium (cpc1-bath5-2-0-cust122.aztw.cable.virginmedia.com
	[77.99.62.123]) (Authenticated sender: John.Willis@Distant-earth.com)
	by mta1.brinkster.com (Postfix) with ESMTPA id 913798402A;
	Mon, 21 May 2012 11:34:53 -0400 (EDT)
From: "John Willis" <John.Willis@Distant-earth.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<14387597.ECeojYX8cL@helios>
	<00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
	<2402037.qbM01MX6gb@helios>
In-Reply-To: <2402037.qbM01MX6gb@helios>
Date: Mon, 21 May 2012 16:34:55 +0100
Message-ID: <00b501cd3767$46f76530$d4e62f90$@Distant-earth.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQJLnJjx9mRORCE/eZTxyGMKfWBA0QHTClRWAcpobvACHxONxpWpsOUw
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
X-List-Received-Date: Mon, 21 May 2012 15:34:56 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Hi Paul,

> > That had been my plan but I got the impression that was frowned up in
> > the Yocto environment.
> 
> Well, IMHO it's suboptimal, but far less so than two separate competing
> layers that ultimately exist for the same purpose.

Pushed a note in the README with suggestions on a suitable Yocto BBMASK.

John



