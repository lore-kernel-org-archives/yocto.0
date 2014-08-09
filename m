Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEF39E004DD; Fri,  8 Aug 2014 21:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4EB29E004DD
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 21:57:05 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Sat, 9 Aug 2014
	06:57:00 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 5633A288F38;
	Sat,  9 Aug 2014 06:57:00 +0200 (CEST)
Date: Sat, 9 Aug 2014 06:57:00 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20140809045700.GA17418@sestofb10.enea.se>
References: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
	<1407515991-63868-5-git-send-email-maxin.john@enea.com>
	<CAMKF1sreGPMmcRym-ce5FxRapWENu2QOQVgXNWTWoS5uc_wvBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sreGPMmcRym-ce5FxRapWENu2QOQVgXNWTWoS5uc_wvBw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH 4/5] oracle-jse-jre-i586: add custom fetch method
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
X-List-Received-Date: Sat, 09 Aug 2014 04:57:09 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Khem,

On Fri, Aug 08, 2014 at 04:03:03PM -0700, Khem Raj wrote:
> On Fri, Aug 8, 2014 at 9:39 AM, Maxin B. John <maxin.john@enea.com> wrote:
> > Provide a custom fetch method to avoid manual downloading of binaries.
<snip> 
> 
> could we just override FETCHCMD_wget for this recipe ?

Thanks for the help!
FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a " seems to
work fine. I will update and send a v2.

Best Regards,
Maxin

