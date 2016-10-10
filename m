Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D442E009E7; Mon, 10 Oct 2016 06:59:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C31AE00546
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 06:59:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u9ADwwWB009557
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 10 Oct 2016 06:58:58 -0700
Received: from soho-mhatle-m.local (147.11.116.144) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 10 Oct 2016 06:58:57 -0700
To: Karim ATIKI <karim_atiki@hotmail.com>, yocto <yocto@yoctoproject.org>
References: <HE1PR01MB1883348257D55AE5272796C092DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB18838005E94E76E68939A7A592DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <8d1bd880-ab06-fcab-6f4d-627bf5baf3f2@windriver.com>
Date: Mon, 10 Oct 2016 15:58:55 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <HE1PR01MB18838005E94E76E68939A7A592DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Subject: Re: [bitbake] Issue with SVN fetcher options
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
X-List-Received-Date: Mon, 10 Oct 2016 13:59:04 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 10/10/16 3:47 PM, Karim ATIKI wrote:
> OK.
> 
> 
> I found  out the solution.
> 
> 
> Actually, I noticed in the log file "log.do_fetch()" that the SVN command
> finishes with the "module" name as the output directory.
> 
> I took a look to bitbake sourcecode and realized that the parameter I was
> looking for in the SRC_URI was "path_spec".
> 
> 
> ThereforeI changed the SRC_URI with:
> 
> 
> 
> SRC_URI =
> "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037/svn-atonce/subproject/;module=trunk;protocol=http;path_spec=subproject"
> 
> And everything works fine.
> Please note that there are no mentions of "path_spec" in the the BitBake manual
> nor Yocto MegaManual.
> 
> I just wonder if there's a reason for that. Anyway, it solved my problem.
> 
> Cheers.
> 
> Karim
> 
> 
> --------------------------------------------------------------------------------
> *De :* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la
> part de Karim ATIKI <karim_atiki@hotmail.com>
> *Envoyé :* lundi 10 octobre 2016 15:11
> *À :* yocto
> *Objet :* [yocto] [bitbake] Issue with SVN fetcher options
>  
> 
> Hi all,
> 
> 
> I'm writing a recipe to build a custom project for an ARM based board (Colibri T20).
> 
> I need to fetch the different sub-projects from SVN and launch the respective
> makefile.
> 
> 
> However, I'm experiencing a problem with the SVN fetcher of bitbake.
> 
> Indeed, my URI looks like:
> 
> 
> SRC_URI =
> "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037/svn-atonce/subproject/;module=trunk;protocol=http"
> 
> Basically, it works fine. But the source code is fetched into:
> 
> *../downloads/svn/our-server:22037/svn-atonce/subproject/trunk*
> 
> 
> And I need it to be checked out into a local directory as follow:
> 
> 
> *../downloads/svn/our-server:22037/svn-atonce/subproject/*
> 
> I haven'nt found yet an option for the SVN fetcher to specify a local directory
> for the check-out.
> 
> Is there an option that I haven'nt found in the BitBake manual ?

If this fixes your issues, and is not anywhere in the manual.  I'd suggest
opening a bug on the docs in the bugzilla so it can be updated.

(bugzilla.yoctoproject.org -- selection documentation)

--Mark

> Cheers.
> 
> Karim
> 
> 
> 


