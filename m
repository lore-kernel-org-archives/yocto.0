Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44E70E00CF0; Tue, 15 Sep 2015 10:22:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30560E00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 10:22:40 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Zbtw9-0000kX-2m
	for yocto@yoctoproject.org; Tue, 15 Sep 2015 19:22:33 +0200
Received: from ppp-2-86-165-64.home.otenet.gr ([2.86.165.64])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 19:22:33 +0200
Received: from gmane by ppp-2-86-165-64.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 19:22:33 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 15 Sep 2015 20:22:09 +0300
Message-ID: <55F853C1.6030503@reliableembeddedsystems.com>
References: <55F7DB62.20302@2net.co.uk>	<22897052.oHQR6DBFiy@peggleto-mobl.ger.corp.intel.com>	<55F7E2E7.7050609@2net.co.uk>	<1442310354.26666.50.camel@linuxfoundation.org>
	<55F8269A.4060705@2net.co.uk>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-165-64.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <55F8269A.4060705@2net.co.uk>
Cc: Paul Eggleton
	<public-paul.eggleton-VuQAYsv1563Yd54FQh9/CA@plane.gmane.org>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: gcc reports sysroot is /not/exist!
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
X-List-Received-Date: Tue, 15 Sep 2015 17:22:44 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi,

I had a similar problem with you, but was able to fix it by replacing in
some global makefile:

CXX=${CROSS_COMPILE}g++
CC=${CROSS_COMPILE}gcc
LINKER=${CROSS_COMPILE}gcc
LOADER=${CROSS_COMPILE}ldd

with:

#CXX=${CROSS_COMPILE}g++
#CC=${CROSS_COMPILE}gcc
#LINKER=${CROSS_COMPILE}gcc
LINKER=$(CC)
#LOADER=${CROSS_COMPILE}ldd

Regards,

Robert
..."Whereas Europeans generally pronouce my name the right way (Ni-klows
Virt), Americans invariably mangle it into 'Nickle-less Worth'. This is
to say that Europeans call me by name, but Americans call me by value."
-- Niklaus Wirth

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



