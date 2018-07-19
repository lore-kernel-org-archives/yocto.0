Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D99CE012F0; Thu, 19 Jul 2018 03:54:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 060A5E01210
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 03:54:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id E95044F48;
	Thu, 19 Jul 2018 03:54:56 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNMu9tyw80QF; Thu, 19 Jul 2018 03:54:56 -0700 (PDT)
Received: from thislaptop (c83-248-73-53.bredband.comhem.se [83.248.73.53])
	by smtp1.genivi.org (Postfix) with ESMTPSA id F087F4EDF;
	Thu, 19 Jul 2018 03:54:54 -0700 (PDT)
Message-ID: <1531997505.3103.20.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Andre McCurdy
	<armccurdy@gmail.com>
In-Reply-To: <CAGAf8LxZcL-8fyDCJ2+0e2GgUmCGufY91aAHUepb60FUfuW=7A@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
	<CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
	<CAJ86T=WMJ8zE3ciNdwkSaThdYHBwC9QytGWHKXiVVbue+6kVXg@mail.gmail.com>
	<CAGAf8LxZcL-8fyDCJ2+0e2GgUmCGufY91aAHUepb60FUfuW=7A@mail.gmail.com>
Organization: GENIVI Alliance
Date: Thu, 19 Jul 2018 12:51:45 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Thu, 19 Jul 2018 10:54:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-07-19 at 09:22 +0200, Zoran Stojsavljevic wrote:

[trimmed]

> Actually, the recipe I am showing here is the GENIVI (the same you
> pointed to), but heavily modified. :-)

See previous email about shared maintenance :-)

Is your code published? (I mean not in the email, too messy to extract it
from there)

- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance



