Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FDBEE00988; Fri, 29 May 2015 12:40:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD8A4E0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:39:59 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so70623172ieb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type:subject:from:date:to:cc:message-id;
	bh=tmeu/uHO7rahFNqMFi7hVrGpUk3mVUXS5vM50DGQnPs=;
	b=oe1OR8k/3bEsSXL0CeanTDv0PAr34sqZyyd4HGc94cLisjma+arCNoolx4v+sNpXgv
	JJbAS82HJWdGfqXTGTQFPYjrikxW+7G6fS5GSqZRoXu7wihcA5YsBjqhqiPCUFuOYAqv
	dGLtGxhy+VqKr9CEA4W8NnJ++TB7w7LDM4oOsohqp08AScSEBEWWx4w40IXw9Eu4IO+D
	si+R5f+lUw+D3ECZPQ6Te58IyO0zwlu5CK3Io4X8ZPg8NbmTJvuUX+GieNcs6FtuMygT
	klJ3sNznc5gqWjeBODASGolncX/T8QRXZeRHaWm9yR8yGYdS8XizprhzYmGtZnoLpRMD
	iZGA==
X-Received: by 10.107.35.203 with SMTP id j194mr12361053ioj.45.1432928398894; 
	Fri, 29 May 2015 12:39:58 -0700 (PDT)
Received: from [192.168.0.10]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.231.110.121])
	by mx.google.com with ESMTPSA id j20sm2191111igt.5.2015.05.29.12.39.56
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 12:39:57 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <5568BFFE.6020303@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
	<5568BC20.7080703@gmail.com>
	<B1A8DC16-337A-45ED-BF82-2F34487B32C4@gmail.com>
	<5568BFFE.6020303@gmail.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Fri, 29 May 2015 15:40:33 -0400
To: Trevor Woerner <twoerner@gmail.com>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <E2A30F15-6B88-48BC-A3EB-20CA627B46A8@gmail.com>
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
X-List-Received-Date: Fri, 29 May 2015 19:40:00 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On May 29, 2015 3:37:34 PM EDT, Trevor Woerner <twoerner@gmail.com> wrote:
>On 05/29/15 15:28, Nicholas Krause wrote:
>> On May 29, 2015 3:21:04 PM EDT, Trevor Woerner <twoerner@gmail.com>
>wrote:
>>> If it were me, I'd just remove that section altogether. I'm of the
>>> opinion that doing development work on the target is wrong (if for
>no
>>> other reason than to prove your cross-development setup is working
>>> correctly), but that's just me.
>>>
>>> ;-)
>> Your assuming the target isn't powerful enough for compiling. What if
>it is?
>
>That's why I included that part in parenthesis :-) Many "embedded"
>devices are well powerful enough for compiling, but doing all your
>development on the host computer demonstrates your cross-development
>environment is properly configured for all development tasks.
This is exactly my thought too.  You many want to put in an explanation about this in the manual through. 
IMHO, 
Nick 

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

