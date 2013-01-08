Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9D4E0144A
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2013 08:20:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Jan 2013 08:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,432,1355126400"; d="scan'208";a="269326474"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 08 Jan 2013 08:20:37 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 8 Jan 2013 08:20:37 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.201]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.66]) with mapi id
	14.01.0355.002; Tue, 8 Jan 2013 08:20:25 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Tino Breddin <tb@travelping.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] Future of WebHob?
Thread-Index: AQHN7ZuLj0brzuL1I0W5QjPV2N7KI5g/nPWA
Date: Tue, 8 Jan 2013 16:20:35 +0000
Message-ID: <CD1184C4.1CF74%david.c.stewart@intel.com>
In-Reply-To: <50EC0433.4020206@travelping.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.3.120616
x-originating-ip: [10.254.118.218]
MIME-Version: 1.0
Subject: Re: Future of WebHob?
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
X-List-Received-Date: Tue, 08 Jan 2013 16:20:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5198D76D96035144B78EC5F52C9521FB@intel.com>
Content-Transfer-Encoding: quoted-printable


On 1/8/13 3:34 AM, "Tino Breddin" <tb@travelping.com> wrote:

>Hi,
>
>I was wondering what the future plans for WebHob are. I'm aware of the
>wiki design page [1] and the repo [2] and recall having read that it has
>been dropped from release 1.3. However I can't find any further
>information.

Hi Tino - here's the update. We decided to stop work on this version of
webHob because we were lacking some key developer input and we were not
convinced that we were taking the right approach. So what we have right
now is a prototype of this design which was functional at least at some
level (there was a demo of some functionality).

The good news is that we spent the past 6 months doing research with
stakeholders and we now have a proposed roadmap of features based on this
research. This seems to be getting healthy enough that we think we can
start a community process to refine the design and restart development.

We should see an announcement to this mailing list within the next week or
so to invite participation into this process.

>
>Cheers,
>Tino
>
>[1] https://wiki.yoctoproject.org/wiki/Yocto_Web_Hob_Design
>[2] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-webhob-design/
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


