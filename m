Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D2FEE00C1D; Sun,  6 Sep 2015 10:05:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17557E00C14
	for <yocto@yoctoproject.org>; Sun,  6 Sep 2015 10:05:39 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZYdNg-0008Cr-MJ
	for yocto@yoctoproject.org; Sun, 06 Sep 2015 19:05:28 +0200
Received: from ppp-2-86-147-22.home.otenet.gr ([2.86.147.22])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 06 Sep 2015 19:05:28 +0200
Received: from gmane by ppp-2-86-147-22.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 06 Sep 2015 19:05:28 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 06 Sep 2015 20:05:20 +0300
Message-ID: <55EC7250.5020909@reliableembeddedsystems.com>
References: <msd33a$81v$1@ger.gmane.org>	<55EB098B.7040401@reliableembeddedsystems.com>	<1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
	<9131288.7yJWbP0P4p@rjs-mbpro.streifs.net>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-147-22.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <9131288.7yJWbP0P4p@rjs-mbpro.streifs.net>
Cc: Robert Berger
	<public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@plane.gmane.org>
Subject: Re: gdb/gdbserver vs. eclipse
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
X-List-Received-Date: Sun, 06 Sep 2015 17:05:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/05/2015 09:12 PM, Rudolf J Streif wrote:
> Robert,
> 
> What version of Poky/OpenEmbedded Core (meta) are you using?

I am on the fido branch commit b50596d8f6e858e2e733f2d9913a19c6f3cd5863

plus

my own meta layer (which pulls in a 4.1.2 kernel with my own config) and
I build a core-image-sato-sdk image plus those extras:

EXTRA_IMAGE_FEATURES_append = " debug-tweaks tools-debug tools-sdk
eclipse-debug tools-profile dbg-pkgs"
IMAGE_INSTALL_append = " kernel-vmlinux lttng-tools lttng-modules lttng-ust"
DISTRO_FEATURES_append = " pam"
PACKAGE_DEBUG_SPLIT_STYLE = "debug-file-directory"


> 
> I found that including Fido (1.8) the tcf-agent built by meta was stuck at 
> version 0.4.0. That causes issues with running on the target and getting the 
> console output back to Eclipse. That's now updated to 1.3 in master for 
> Eclipse Mars. I built 1.2 for Luna which works, but 1.3 works with Luna too.
> 
> Cheers,
> Rudi
> 

Regards,

Robert

..."Pascal, at least in its standard form, is just plain not suitable
for serious programming." -- Brian W. Kernighan

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



