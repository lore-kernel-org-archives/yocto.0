Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1871E00854; Fri, 13 Mar 2015 08:56:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9537CE003A8
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:56:18 -0700 (PDT)
Received: by padet14 with SMTP id et14so30406300pad.11
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:56:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=ThZgzG1r5lGefvprp5+Gs7s05j2XMmlThr4LHq5ra3w=;
	b=RXOke0iI6zgDoAbsETuh1V5nc8pYu9WCVaPAIAPnE/DS6eitmFrYpaADqlSIqjV5Rf
	HFEsUrLYcMA2QOkzNXYuYYgJ1APRi1eeHX7G9EM/n/UXI0lGPeaf6UajE98REqPhVyn7
	y1WwjBOiLMOaVSE3fIYxTWsr9whmMM+OBCOeemi2iquV736fZwxcv0mOT6qX++ezuB3t
	LoIihFEbsoPKRT/6Ffc2xOAgxbmjNLPBUBcZ57019SWKB1KMIQFv13TAZ06PFAGItNH9
	CjH0bPRaxCBX88kY7i9ggGTauCqzOcaQxZwn4bT+QH0wjgzHfYFVwCZQg2xVRtgrwLb0
	/O1A==
X-Gm-Message-State: ALoCoQnT6mQMDcIypAFOEvVG+C2Q2E7GOHKCaV4ZggvY1Cl+JlnoeRnpqV0YVOp9YOqrqJWmLh2K
X-Received: by 10.66.55.68 with SMTP id q4mr87283413pap.71.1426262178466;
	Fri, 13 Mar 2015 08:56:18 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:90b4:936d:20df:f126?
	([2601:c:a700:3ba7:90b4:936d:20df:f126])
	by mx.google.com with ESMTPSA id oq7sm4178864pac.32.2015.03.13.08.56.16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2015 08:56:17 -0700 (PDT)
Message-ID: <55030897.6010403@mvista.com>
Date: Fri, 13 Mar 2015 08:56:07 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Philip Balister <philip@balister.org>, 
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>
References: <54DA69AB.1020204@balister.org>
In-Reply-To: <54DA69AB.1020204@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Developer America's Meeting
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
X-List-Received-Date: Fri, 13 Mar 2015 15:56:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello Folks,

OEDAM is nearing. If you have not signed up, please do so. It will help 
me with head count for badges.

We also need more subject matter the Agenda.  If you have any topics or 
ideas, please submit them.

kind regards,
Armin

On 02/10/2015 12:27 PM, Philip Balister wrote:
> We've scheduled a meeting in San Jose at a Monte Vista facility for
> March 27-28. This is after ELC (also in San Jose). There is a Yocto
> Project developer Day the day after ELC.
>
> I've made a page on the wiki to start collecting information:
>
> http://openembedded.org/wiki/OEDAM_2015
>
> To get an idea of what we cover, see the page from the prior year:
>
> http://openembedded.org/wiki/OEDAM_2014
>
> I apologize for the late notice. There were issues that led to a delay
> with dates due to the YP Dev day.
>
> Philip
>

