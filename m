Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCE46E00988; Fri, 29 May 2015 12:28:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD73E0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:28:15 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so70398906ieb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type:subject:from:date:to:cc:message-id;
	bh=tN0vwtxe7lbAHewvB8zPjBjyc7H5thYdxgTpYhHsUaY=;
	b=jgjsVDUXcY348La1y8TJWf/CrNyHe2u/17kWnopFquDE16q74CxBk7fGOMI0D5XdAC
	im0bvMPN3Qi/6FZ4z+mlOJ83PqrAM7/iIonwVgy7GLPMkFkIIGW0F54qIBzrwINXGt2s
	NC87VWdQzpkcJl8E8SBkTInjptCBLAh9CFtLADj2t9gOHNPeCi+XWFe95HUmS1NiqeFA
	gQ8rOUiPkALpO6mgj/Cn+TkO7OUDkm9GflGD7gr70YiNipChLJD5gKiIXbfzAh/b3vzT
	rm7eP+t5w8bzKjWBH7jM5bpxCDqcy6ojeCMgrcGa4LHO0J5NQ9+OjG3boPX6AB9x9g0X
	u7AQ==
X-Received: by 10.107.18.222 with SMTP id 91mr11826944ios.34.1432927695562;
	Fri, 29 May 2015 12:28:15 -0700 (PDT)
Received: from [192.168.0.10]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.231.110.121])
	by mx.google.com with ESMTPSA id v3sm2182639igk.1.2015.05.29.12.28.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 12:28:14 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <5568BC20.7080703@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
	<5568BC20.7080703@gmail.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Fri, 29 May 2015 15:28:49 -0400
To: Trevor Woerner <twoerner@gmail.com>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <B1A8DC16-337A-45ED-BF82-2F34487B32C4@gmail.com>
Cc: "Hart, Darren" <darren.hart@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Question on building out-of-tree modules on the target
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
X-List-Received-Date: Fri, 29 May 2015 19:28:21 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On May 29, 2015 3:21:04 PM EDT, Trevor Woerner <twoerner@gmail.com> wrote:
>Hi Scott,
>
>On 05/18/15 10:42, Rifenbark, Scott M wrote:
>> I have a section in the YP Linux Kernel Development Manual that talks
>about building out-of-tree-modules on the target - 
>
>Interestingly enough, I was just reading through that document the
>other
>day. As soon as I saw a section titled "Building Out-Of-Tree Modules
>_On
>The Target_" I thought to myself "why would anyone be doing development
>on the target and not the host?" and skipped to the next section.
>
>If it were me, I'd just remove that section altogether. I'm of the
>opinion that doing development work on the target is wrong (if for no
>other reason than to prove your cross-development setup is working
>correctly), but that's just me.
>
>;-)
Your assuming the target isn't powerful enough for compiling. What if it is? Then this can make life easier if the target can do it and avoid cross compilers ,  however it's pretty rare. 
Nick
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

