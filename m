Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD72FE00576; Sun, 10 Aug 2014 23:35:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA699E004D1
	for <yocto@yoctoproject.org>; Sun, 10 Aug 2014 23:35:13 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XGjCJ-0005oL-F4
	for yocto@yoctoproject.org; Mon, 11 Aug 2014 08:35:11 +0200
Received: from athedsl-4366486.home.otenet.gr ([79.130.16.134])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 08:35:11 +0200
Received: from gmane by athedsl-4366486.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 08:35:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 11 Aug 2014 09:34:59 +0300
Message-ID: <53E86413.8050001@reliableembeddedsystems.com>
References: <53E8588D.8030007@gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: athedsl-4366486.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
In-Reply-To: <53E8588D.8030007@gmail.com>
Subject: Re: Meta-toolchain, do_populate_sdk, packagegroup-cross-canadian problem
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
X-List-Received-Date: Mon, 11 Aug 2014 06:35:26 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi,

On 08/11/2014 08:45 AM, Lešek Franek wrote:
> ERROR: Logfile of failure stored in:
> /modemtec/linux/yocto-daisy/build-socfpga_cyclone5/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.12635

Did you check this file?

Regards,

Robert

...Programming today is a race between software engineers striving to
build bigger and better idiot-proof programs, and the Universe trying to
produce bigger and better idiots. So far, the Universe is winning.

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



