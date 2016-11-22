Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE7BEE00BB1; Tue, 22 Nov 2016 01:44:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.6 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5F97E00B96
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 01:44:49 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp6-g21.free.fr (Postfix) with ESMTP id D775178034E
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 10:44:48 +0100 (CET)
Date: Tue, 22 Nov 2016 10:44:48 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <1236712221.350820531.1479807888625.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <1671408.G4YB1aAtGn@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: populate_sdk_ext: Unable to locate package nativesdk-buildtools-perl-dummy
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
X-List-Received-Date: Tue, 22 Nov 2016 09:44:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

> From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> Sent: Monday, 21 November, 2016 10:15:16 PM

> I suspect it has to do with the arch mapping that goes on in
> meta/classes/package_deb.bbclass; it probably doesn't understand the
> dummy
> architecture we're giving it. The thing is even if it were to be
> "corrected"
> to fall back to "all" instead of "allarch" that probably still
> wouldn't work
> properly because the architecture of the perl packages would be a
> higher
> priority than "all" and thus the dummy package wouldn't take
> precedence.

It seems to be OK.
The only other package with 'perl' in its name is 'nativesdk-git-perltools'.

But I have (another) problem with the manifest files:
- all "target" manifest files are empty
- the 'poky-systemd-blah-blah-toolchain-ext-2.2.host.manifest' has a single entry:
    meta-environment-extsdk-vtc7200
So maybe I don't see everything...


> In any case feel free to file a bug under "OE-Core -> Core" in
> bugzilla, that
> would be a reasonable category for this issue.

Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10700

Michel

