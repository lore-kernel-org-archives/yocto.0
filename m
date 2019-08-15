Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DED7CE00DD5; Wed, 14 Aug 2019 19:12:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754EAE00C87
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 19:12:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7F2BtD0005547
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Aug 2019 19:11:56 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 14 Aug 2019 19:11:55 -0700
To: "Behnke, Jochen" <j.behnke@schmidttechnology.de>, "yocto Mailingliste
	(yocto@yoctoproject.org)" <yocto@yoctoproject.org>
References: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <05840950-f052-714b-0aac-aa598f209a4c@windriver.com>
Date: Wed, 14 Aug 2019 22:11:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
X-Originating-IP: [172.25.44.5]
Subject: Re: wic create - bad ownership of directories inside image
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
X-List-Received-Date: Thu, 15 Aug 2019 02:12:03 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 8/12/19 5:11 AM, Behnke, Jochen wrote:
> Hello,
> 
> I am using poky 2.6.1 (thud) and create images using the wic utility.
> 
> Recently I noticed that all directories contained in the created image 
> are owned by UID 1000 and not by root. The files inside the image 
> however are owned by root.
> 
> The UID 1000 refers to my unprivileged user on the host system.
> 
> Here is the command I use to create the image
> 
> “wic create mkefidisk –e core-image-minimal”
> 
> The images created by bitbake directly (.tar.bz2, .hddimg) are correct 
> so this seems to be a wic related problem.
> 
> Does anybody have a solution for this?

Hi Jochen,

No and I've never seen this particular extreme symptom.

There is a known, generally rare bug:
    Bug 12434 - pseudo: Incorrect UID/GID in packaged files
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12434
but that usually shows up when building.

You could check you build logs for the generic stings from:

    glibc-locale-2.26: glibc-locale:
    /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_MEASUREMENT
    is owned by uid 3004, which is the same as the user running bitbake.
    This may be due to host contamination [host-user-contaminated]


Is your issue 100% reproducible?

../Randy


> 
> Many thanks in advance, any hint is appreciated.
> 
> Regards
> 
> Jochen
> 
> <gfidisc.SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000>
> 
> 
> __________________________________
> *SCHMIDT Technology GmbH*
> Feldbergstrasse 1
> 78112 St. Georgen/Germany
> Telefon +49 (0) 77 24 / 89 90
> Fax +49 (0) 77 24 / 89 91 01
> info@schmidttechnology.de <mailto:info@schmidttechnology.de>
> http://www.schmidttechnology.de
> 
> USt-Id Nr. DE 811725105 · Registergericht Freiburg HRB 600 755
> Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt
> 
> <gfidisc.SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000>
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

