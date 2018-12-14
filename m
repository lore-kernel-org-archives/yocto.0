Return-Path: <winfried.dobbe@xmsnet.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60AEDE00B45; Fri, 14 Dec 2018 08:49:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [213.197.30.124 listed in list.dnswl.org]
Received: from smtp-1.concepts.nl (smtp-1.concepts.nl [213.197.30.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6726FE009B2
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 08:49:17 -0800 (PST)
Received: from [213.197.30.241] (helo=webmail.xmsnet.nl)
	by smtp-1.concepts.nl with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
	(envelope-from <winfried.dobbe@xmsnet.nl>) id 1gXqeJ-0002ta-CO
	for yocto@yoctoproject.org; Fri, 14 Dec 2018 17:49:15 +0100
MIME-Version: 1.0
Date: Fri, 14 Dec 2018 17:49:15 +0100
From: winfried.dobbe@xmsnet.nl
To: yocto@yoctoproject.org
Mail-Reply-To: winfried.dobbe@xmsnet.nl
In-Reply-To: <864ba99d44122d48993d44bbe62e28c6@xmsnet.nl>
References: <CAE5v_rLRcNZAGHA29xrcf_BYf7Y_4ihHJseXACEr8nMDQcfqRw@mail.gmail.com>
	<CAE5v_rJrokB6N24Y0TrA4+8=-C3Uta8Ky4-9b5J7sTZGvj=gqQ@mail.gmail.com>
	<864ba99d44122d48993d44bbe62e28c6@xmsnet.nl>
Message-ID: <8de1a730b787f77721cd1fe15a194073@xmsnet.nl>
X-Sender: winfried.dobbe@xmsnet.nl
User-Agent: Roundcube Webmail/1.3.6
X-Concepts-MailScanner-Information: Please contact abuse@concepts.nl for more
	information
X-Concepts-MailScanner-ID: 1gXqeJ-0002ta-CO
X-Concepts-MailScanner: Found to be clean
X-Concepts-MailScanner-SpamCheck: 
X-Concepts-MailScanner-From: winfried.dobbe@xmsnet.nl
Subject: Re: THISDIR variable in another meta-layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: winfried.dobbe@xmsnet.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Dec 2018 16:49:18 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

>> 
>> In componentB.bb I have function do_install:
>> 
>> do_install () {
>> install -m 0755 -d ${D}/usr/share
>> cmake_do_install
>> install -m 0755 ${THISDIR}/default/script.sh  ${D}/usr/share
>> }
>> 
>> In componentB.bbapend I overwrite function in order to install other
>> script instead:
>> 
>> do_install () {
>> install -m 0755 -d ${D}/usr/share
>> cmake_do_install
>> install -m 0755 ${THISDIR}/files/script.sh  ${D}/usr/share
>> }
>> 
>> The problem is that ${THISDIR} indicates IN BOTH CASES to path
>> meta-layer-A/recipes-X/componentB.
>> So how to tell bitbake in componentB.bbappend to install my script
>> from path meta-layer-B/recipes-X/componentB/files? It is really
>> frustrating that variable THISDIR doesn't indicates to path
>> meta-layer-B/recipes-X/componentB when I used it in
>> componentB.bbapend.

If script.sh is included in SRC_URI, bitbake will copy it to ${WORKDIR}. 
The one in meta-layer-B will overwrite the one from meta-layer-A.
Then install from ${WORKDIR} i.s.o. ${THISDIR}:
install -m 0755 ${WORKDIR}/script.sh  ${D}/usr/share

regards, Winfried

