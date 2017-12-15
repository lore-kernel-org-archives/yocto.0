Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD53BE00D91; Fri, 15 Dec 2017 05:41:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Dec 2017 05:41:11 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58889E00D69
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 05:41:11 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LZjNw-1etQDr30iS-00lToN
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 14:36:07 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Dec 2017 13:36:07 -0000
Organization: LN Systems Limited
Message-ID: <02f301d375a9$aa394880$feabd980$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdN1qI2WkDe/pQfoQ1m/asKxuyoE9Q==
X-Provags-ID: V03:K0:XlLmR8YQrmdhBExsJ1hG73+XKRYnM9ptJde8wfnahscYvi680uN
	2QLw24fhEeoDVtnUYrBYe0hhRTUlt8fJjnw6+49BxcVg/uKf/coocqIftHkb3MXVU+YvTg4
	6HaCLFQ04uFwJYAcsI4CPMWnzE5DAtSn4yoI4tWjUP8eCB7PmpkejZ/tJbrf08PUadOXWlp
	wrUq5rNAJo5h+xJTt06tw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:SKo/NYPrlyQ=:WLXkmJ0kB765aZU70Y9XCp
	ujvVqxJo9Bwpa/km8KBTUldmbe2/FwKwl0n5hIXRBkueFaYVHD1xeiyZ3nLJhA7yntq/AbIqF
	NY7L+AsGZcTqPNRUYSsfBe1vdjjTA9xiSRoNR+JG5Dk4HwnYD+ctYK2y9siOzrBfsFAabjujH
	kaxcz4WhWzsusSrbOSBYTkIrB0ImUesoMTt5A9m7W/fTBhAl16wDsIZA+flIEogWsqbYL7cNX
	6aApYMxDcgLij/iuJBG1nOZ9/z4tLnG4tjMgYjaUkGixKxbbXJ9nP4d+IZUgE/DsgpPV6jfzr
	oYbM2ZNuZ5feD0/XANAv+RU5fnn/cPhiG11OHsnOB/hA0R0MG4FmSrcVb6PkcCQaUWEwbNiIp
	irJwemfjHx3jRnyZ3khY16+MFiQXlqiLTHF5vSxUumAMnQA7wSsf2OLl+7uh9p3XF9/LNKSEj
	Q8bIBnFr1Ir36gUSOAk+Lk+Mrq7Lsg1ZTs7RXj9xnYKDeO3Ryi7NP6I3mrOVzIvSZUC7vBCx+
	CJHJfMo3OPN4ra/wmjr1yczIWT0Tb0MBZukQvblGwMwyrGiNmeY5LwrEH790M1QWHm6zDhFry
	hiBosE5AdAlfZL4917ceCrY3QXmmtOBxyilMK1/iVPUw4OQBTJ1oUQ1j8SrgIBX0ct/gHZ0MU
	aaQ1zLZ7mWyZeepAJ+oeOUyrgx7QQqFkUuM8rYE4qUcBmkwAg595R8iVm+2gqTUTNJDgvNvso
	gcmYUDEv0qKceb2KupvV1cQMLb9LVj/4gADcUrgwzKdLk+Faf/o+pM/UA7c=
Subject: Using a poky recipe's files in a custom recipe
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
X-List-Received-Date: Fri, 15 Dec 2017 13:41:13 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

The current Poky I'm using (krogoth) has a recipe for dropbear, but I want
to upgrade to use the latest version of dropbear.
For source control reasons, I don't want to modify what's in
meta/recipes-core/dropbear and therefore want to have my own recipe in my
own layer. Yet for cleanliness I'd also prefer not to have to replicate all
its .inc file etc in my own layer.
Is there a clean way to be able to include meta's files within my own
recipe? Is it a case of some sort of FILESEXTRAPATHS entry, and what would
be the best way to cross reference to the poky layer?




