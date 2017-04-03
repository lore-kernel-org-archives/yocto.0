Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66A86E00ADD; Mon,  3 Apr 2017 04:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.134 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DF1FE00AA5
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 04:12:43 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LpzzH-1cRAsP2Z4Z-00fiHr
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 13:12:42 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Mon, 3 Apr 2017 12:12:41 +0100
Organization: LN Systems Limited
Message-ID: <0a9201d2ac6b$36b55fa0$a4201ee0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKsas7OGIRDvJ77T5uL6iqZjxr+Jg==
X-Provags-ID: V03:K0:AuCN/oxQcdlp5Ue1/T9HsQ61l1QQvtVpENPBQlVTjiwjmXMtEii
	l7KCaM5dEE2tgvdgGDCFz2KPrTaKdQClz+xZwnVzkxOJpLCkwVe+jLQpk6qWm/j+7UXACuY
	6l5guVg0N8fkgMLUohenZnpZgXPkNHv1HsBWI0V4oh0IFqBS3QYHygWPO4PQlTN1MXYKi6U
	1sHOYGQVQ75yJxj34eRzw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:nF+NXrXr0Y8=:DsECwIYQ1kGLhLGr2y6G35
	TQvifrCWU3FFomyQtuUfNTzrnx+j1VAHiAaxuVLQ8kDPKaMYAKGBlRn0Y/g9WJv+hRHGq8Atf
	A+/tDAzS/iy8QSSNS+/1uWC9LQEBQONQ9yxax9YqHzFTBNs0ocDyYoYHyRPixqhf5GktKNkaN
	Mz9GNBslihbM3eoLLvAe4kzKdE0gigvXUX8uRaZ5U9AH9UY6WHOeE0aHKIZ+KV6Lo4jNSxbw9
	APulj/h5i9wjcyfqGY3NPYVvYRMj+sQHYAMhiekyF+HgrTAM13OMIDUDzkqCk/y+7+pOH8v2l
	Ju7+Z4vwjzNLwSY8rRrgBky1jbC8BARZFr/uZPqLA+RPkGB9QCYDMt9iJGHkKU2obRCM3kmZT
	4Q4/S9LZct7WWZArxQ7ZqrCa2Koke5VKawOyqKEOG6z9HIJ+BSvh1V0Q9BoH6EjaYedXCEmeR
	ceyWcit4rWG87TIHXLYEPzYP7U2YGCzYktesS1yzATrMGXiv/2bilLodUUCu+KpVZ9Wn5BABm
	6urqBD+w38eVfDwem+YiEj4tWiEZaKUm6nuQqfMvDOJXMKVDDUTOF53m6emsYfB9pxhyKy53P
	8/CQ5VrXczdLN3SkGRSHMV+AECNWcmmRuZ4Bxo2BZZ/oP1z5/mXvRxUu6pex4Rmxo4VLLz8J4
	cO42INZyIrvfA950AMd0i1BtTjmGjhDepFXdv4IaeVvTeirEZa6f35G1H9o+dS4R50WE0bXbH
	+/S5cR2UBpqRhF4K
Subject: xsltproc failing to load docbook.xsl
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Apr 2017 11:12:45 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I'm trying to build a package which uses xsltproc, and it's failing to load
docbook.xsl:

|
/home/colin/100051/fsl-community-bsp/build/tmp/sysroots/x86_64-linux/usr/bin
/xsltproc --output man/nmcli.1 --path man --xinclude --nonet --stringparam
man.output.quietly 1 --stringparam funcsynopsis.style ansi --stringparam
man.th.extra1.suppress 1 --stringparam man.authors.section.enabled 0
--stringparam man.copyright.section.enabled 0
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
../NetworkManager-1.6.2/man/nmcli.xml
| I/O error : Attempt to load network entity
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl
| warning: failed to load external entity
"http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl"
| cannot parse
http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl

I guess I could patch out the '--nonet' for this package, but wondered if
there's a correct way to fix this - a recipe dependency needed and/or
something installed on the host system? 
(I've done a 'sudo apt-get install docbook-xsl docbook-xml'; but can't
figure out where it's expecting the file to be)





