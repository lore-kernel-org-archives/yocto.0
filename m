Return-Path: <s.mueller-klieser@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A732E0077E; Fri, 16 Sep 2016 05:44:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 313 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Sep 2016 05:43:59 PDT
Received: from root.phytec.de (mail.tricorecenter.de [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD231E006B3
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 05:43:59 -0700 (PDT)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id A3498A00322;
	Fri, 16 Sep 2016 14:38:59 +0200 (CEST)
Received: from [172.16.10.21] ([172.16.10.21])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP5 HF413)
	with ESMTP id 2016091614384279-208189 ;
	Fri, 16 Sep 2016 14:38:42 +0200 
To: Chris Trobridge <christrobridge@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DUB127-W74594485FCFFB10C4DC5E4DAF30@phx.gbl>
From: =?UTF-8?Q?Stefan_M=c3=bcller-Klieser?= <s.mueller-klieser@phytec.de>
Organization: PHYTEC Messtechnik GmbH
Message-ID: <57DBE7CD.6060409@phytec.de>
Date: Fri, 16 Sep 2016 14:38:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <DUB127-W74594485FCFFB10C4DC5E4DAF30@phx.gbl>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP5
	HF413|March 21, 2016) at 16.09.2016 14:38:42,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP5 HF413|March 21,
	2016) at 16.09.2016 14:38:42,
	Serialize complete at 16.09.2016 14:38:42
X-TNEFEvaluated: 1
Subject: Re: QA python3 runtime dependency
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
X-List-Received-Date: Fri, 16 Sep 2016 12:44:05 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=windows-1252

On 16.09.2016 13:45, Chris Trobridge wrote:
> My top-level python3 scripts have "#!/usr/bin/python3" and the recipe RDEDENDS on python3.

I guess this is what you need:

RDEPENDS_${PN} = "python3-core"

As the interpreter is in the -core package.

Regards, Stefan

> There's no problem in the final system as python3 is present in /usr/bin as expected.
> What I do not understand is why I am getting a QA warning : "requires /usr/bin/python3, but no providers found in RDEPENDS? [file-rdeps]".
> Any ideas why this is happening?
> Thanks,Chris
>  		 	   		  
> 
> 
> 

