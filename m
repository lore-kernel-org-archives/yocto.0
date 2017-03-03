Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F251E00A18; Fri,  3 Mar 2017 06:12:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.40.44.189 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0972]
X-Greylist: delayed 1032 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Mar 2017 06:12:41 PST
Received: from smtprelay.hostedemail.com (smtprelay0189.hostedemail.com
	[216.40.44.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B8BE009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 06:12:41 -0800 (PST)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id CA58E183D54
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 13:55:29 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 8990A352048;
	Fri,  3 Mar 2017 13:55:28 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: ants31_2fafef6902828
X-Filterd-Recvd-Size: 1753
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Fri,  3 Mar 2017 13:55:27 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Burton, Ross'" <ross.burton@intel.com>,
	"'Robert P. J. Day'" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
In-Reply-To: <CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
Date: Fri, 3 Mar 2017 13:55:24 -0000
Organization: SDC Systems Limited
Message-ID: <00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIjTc6c856XHZevdzrH9qEnCanSkAKDdE6voM2S95A=
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Mar 2017 14:12:43 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Ross Burton wrote...

>> it seems of limited value for YP to have a powerpc reference board,
>> mpc8315e-rdb, that is essentially impossible to procure. is there any
>> effort being made to look around for a newer powerpc reference board
>> that people could actually buy?
>
>Do you have any suggestions?

If we are being strictly pedantic then is isn't PowerPC (at least in the =
world that is Freescale / NXP / Whoever they are this week).

I would look at one of the P10xx series QorIQ boards.  Digi-Key list the =
P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which are either =
single or dual e500 cores.

-Andy


