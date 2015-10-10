Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEE25E01136; Sat, 10 Oct 2015 09:58:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAD3EE00B1C
	for <yocto@yoctoproject.org>; Sat, 10 Oct 2015 09:58:53 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZkxTu-00026M-OS
	for yocto@yoctoproject.org; Sat, 10 Oct 2015 18:58:50 +0200
Received: from ppp-2-86-169-83.home.otenet.gr ([2.86.169.83])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 Oct 2015 18:58:50 +0200
Received: from gmane by ppp-2-86-169-83.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 Oct 2015 18:58:50 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 10 Oct 2015 19:58:38 +0300
Message-ID: <561943BE.40608@reliableembeddedsystems.com>
References: <10D57FBA9FD7C14FB49EE17590E1AF94011F907751@svr-exc-03.intern.wipotec.de>	<561807B5.2010206@reliableembeddedsystems.com>	<CAALGJZbpi4KuFo6+pooJ7Nt9Q4n99LqQX_R52D0CxT9qz5Myiw@mail.gmail.com>
	<CA+-BmJZvJq1MeMWJa-KhkW=+p7ge2GZwh=9znuYNQtjrWSxQ=A@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-169-83.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <CA+-BmJZvJq1MeMWJa-KhkW=+p7ge2GZwh=9znuYNQtjrWSxQ=A@mail.gmail.com>
Cc: Robert Berger
	<public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@plane.gmane.org>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: VFAT patent EP 0 618 540
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
X-List-Received-Date: Sat, 10 Oct 2015 16:58:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi

On 10/09/2015 11:20 PM, Ayoub Zaki wrote:
> TI Socs Boot Rom code can use Vfat but does not necessarly need it as
> Bootloaders (spl, u-boot) can be loaded directly  from Raw MMC/eMMC.

I just discovered this recently. Something like:

sudo dd if=./u-boot/MLO of=${DISK} count=1 seek=1 bs=128k
sudo dd if=./u-boot/u-boot.img of=${DISK} count=2 seek=1 bs=384k

So even my made up scenario where you would need vfat on the first
partition does not hold anymore.

... but ...

what about the patent and the on-chip ROMs of SoCs from Ti and Freescale
(hmm NXP? or whoever bought them lately). Maybe the SoCs are affected
since they are able to load stuff from vfat, even if we don't need to
use this feature anymore.

Regards,

Robert

..."Never express yourself more clearly than you think." - Niels Bohr

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



