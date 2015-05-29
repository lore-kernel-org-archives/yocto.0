Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A0B2E00988; Fri, 29 May 2015 12:21:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB23DE0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:21:08 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so70262697ieb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=vZc77n/ykrPeBZNhXkPV+QThtwbzrjY31WXu9OKqHgc=;
	b=JrHXSqnlGjW2Uew6se5U0sptfffWHyC63p8YIQTaqtCkPaiqlLW4JmhMqldtpofbVT
	5DowcIe0xf48jJ1oE84aGcPFlF4f7OHnjTX+lZ0d/RhoJ9C009Lwp17GxHzxRywQ9Z0s
	L5i+/fMGRp9sajFqnARgRFlbQJQkT1+15Y/Z4biBsZOuq0i1p2zCpaXUjrtne94i+ggL
	32Ev25lw7F4PxXkgYO7qZuFl/4Q6dOo/kvdWaIxzZ6gyFdR7ebdNKVYn0w4AiWbW8R3+
	7nggW5E63zJBGmulFsXcr9t/FY3rqYLm50Og/xfPdNPbvsjz7xOuLr+6KkW528FzZaYE
	bwXQ==
X-Received: by 10.42.238.14 with SMTP id kq14mr16890672icb.23.1432927268176;
	Fri, 29 May 2015 12:21:08 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id g1sm4827056iog.4.2015.05.29.12.21.07
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 12:21:07 -0700 (PDT)
Message-ID: <5568BC20.7080703@gmail.com>
Date: Fri, 29 May 2015 15:21:04 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 29 May 2015 19:21:13 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Scott,

On 05/18/15 10:42, Rifenbark, Scott M wrote:
> I have a section in the YP Linux Kernel Development Manual that talks about building out-of-tree-modules on the target - 

Interestingly enough, I was just reading through that document the other
day. As soon as I saw a section titled "Building Out-Of-Tree Modules _On
The Target_" I thought to myself "why would anyone be doing development
on the target and not the host?" and skipped to the next section.

If it were me, I'd just remove that section altogether. I'm of the
opinion that doing development work on the target is wrong (if for no
other reason than to prove your cross-development setup is working
correctly), but that's just me.

;-)

