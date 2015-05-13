Return-Path: <peter.t.smith@alstom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08AAFE005B9; Wed, 13 May 2015 00:38:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [159.245.16.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from MCEGSMTP4.alstom.com (mcegsmtp4.alstom.com [159.245.16.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C859E0027F
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 00:38:25 -0700 (PDT)
Received: from mail.alstom.com (unknown [10.228.1.14]) by MCEGSMTP4.alstom.com
	with smtp (TLS: TLSv1/SSLv3,128bits,AES128-SHA)
	id 4cd5_7f8e_5951a77f_ccbd_4bc6_b53c_b3a1857ab3ff;
	Wed, 13 May 2015 09:38:22 +0200
Received: from 041-DB3MPN1-092.041d.mgd.msft.net ([169.254.2.253]) by
	041-DB3MMR1-004.041d.mgd.msft.net ([10.228.1.14]) with mapi id
	14.03.0224.003; Wed, 13 May 2015 07:38:22 +0000
From: SMITH Peter T <peter.t.smith@alstom.com>
To: Anders Darander <anders@chargestorm.se>
Thread-Topic: [yocto] Why does my bitbake build hang fetching
	linux-yocto-3.14.git
Thread-Index: AdCMrADmx43qIsLuT9K7Jn8+7rN9xAAngf+AAAFbdSA=
Date: Wed, 13 May 2015 07:38:21 +0000
Message-ID: <92BAB684D31DCD4A8F623A7EE7FD8C06013EEC52@041-DB3MPN1-092.041d.mgd.msft.net>
References: <92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D@041-DB3MPN1-092.041d.mgd.msft.net>
	<20150513065711.GA6356@ad.chargestorm.se>
In-Reply-To: <20150513065711.GA6356@ad.chargestorm.se>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.32.130.85]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why does my bitbake build hang fetching linux-yocto-3.14.git
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
X-List-Received-Date: Wed, 13 May 2015 07:38:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It seems that there may have been issues with the servers on which Yocto ke=
rnel is hosted. I got information from the open source labs guys at Wind Ri=
ver. So the plan is to try again. I am assured it does all work swimmingly.

-----Original Message-----
From: Anders Darander [mailto:anders@chargestorm.se]
Sent: 13 May 2015 07:57
To: SMITH Peter T
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Why does my bitbake build hang fetching linux-yocto-3.=
14.git

* SMITH Peter T <peter.t.smith@alstom.com> [150512 17:25]:
> Fairly new to Yocto, trying to build Wind River's Linux distro
> (https://github.com/WindRiver-OpenSourceLabs). Everything goes to plan
> until bitbake gets round to fetching a clone of linux-yocto-3.14 (see
> output below), when bitbake just hangs forever (I left it overnight).

> If however I try to clone manually with "git -c
> core.fsyncobjectfiles=3D0 clone --bare --mirror
> http://git.yoctoproject.org/git/linux-yocto-3.14.git
> /home/user/wr-core/build-xilinx-zynq/downloads/git2/git.yoctoproject.org.=
git.linux-yocto-3.14.git"
> which seems to be the command line executed by bitbake, everything
> works as expected.

If it works for you, when running it manually at the same computer (with th=
e same network), it shouldn't at least be any firewall issues. Does it help=
 to re-run the fetch task? (Thinking of temporary network issues together w=
ith something stalling).

> Can anyone point me in the right direction?

Just a couple of questions.

Does the log.do_fetch reveal anything?
If you enable the debug flags for bitbake, do you get anything that makes s=
ense when re-running the fetch task?

Cheers,
Anders

--
Anders Darander
ChargeStorm AB / eStorm AB

________________________________
CONFIDENTIALITY : This e-mail and any attachments are confidential and may =
be privileged. If you are not a named recipient, please notify the sender i=
mmediately and do not disclose the contents to another person, use it for a=
ny purpose or store or copy the information in any medium.

