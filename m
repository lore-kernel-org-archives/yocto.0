Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0260E00AA9; Mon,  1 Apr 2019 16:02:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D930E00798
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 16:02:17 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id v14so1254448wmf.2
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 16:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=HWGAAl7WtaTiZd4Vof15KqNwSVInIF3sVCqEASwCX2o=;
	b=grqphSS0rHEOMaJ8yMH1B4MV6iSmofZjWJH8LUkymO5lTe2Va6Afk+wdT0BZBdTfS1
	FOuvl3bNsr967mI2sZW68S+j84tsAEhad/+HuFBrlvppUZLp9lTXzYSmoWTEqVcrns5v
	7sk7g4BzyoReN7sCZ8aBJfM8nWr9QfWIulAXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=HWGAAl7WtaTiZd4Vof15KqNwSVInIF3sVCqEASwCX2o=;
	b=uR4NNOZcWprplxqwqFlgFj4I0C5IPH6dFMM4TogvZqm1PxXE2OfPKUwN5bPCsBVwgL
	//wSzBDGg6CxUEplAyndxgpIhu0OXI+6Q66w9UBDa71sH+LVO50brVfnyaZjcinPy0Od
	+nTOkuG/xyDmcBB/BWx4dZtLEbeQdAc5S238jEzW93beemNS7qpgPXoN85NJ2CzGpfbK
	HNrPAcqLUmy8Jv/TuS911eelcPH/+oMt5Bhtmoe4+ry+CaQAnQrlrAOot2VvmpU8JNYX
	uaO+cZQJmwaqygRX3k+Hhv0gARWsyruaqA4CAKBkRnJ6YN9r4sxnfpF/i0o15VkkcIbD
	ZFTA==
X-Gm-Message-State: APjAAAV087a2cAy0fY+8TsuGTCl6Re7iK3phDCw6W5Q7IznK0R3bpKpn
	hPIIxmpVluw4UdwvVaoq5wI/uA==
X-Google-Smtp-Source: APXvYqxS+ipspA/mwgMdKKuasDh4SNIVq41UoSYIuz9zAvMCEL8n48d3ah1X4XrN7P5bIsyblSj0Pg==
X-Received: by 2002:a1c:cf83:: with SMTP id f125mr603293wmg.96.1554159737244; 
	Mon, 01 Apr 2019 16:02:17 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j11sm13219422wrw.85.2019.04.01.16.02.15
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 01 Apr 2019 16:02:16 -0700 (PDT)
Message-ID: <b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: akuster808 <akuster808@gmail.com>, Patches and discussions about the
	oe-core layer <openembedded-core@lists.openembedded.org>, OpenEmbedded
	Devel List <openembedded-devel@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 02 Apr 2019 00:02:15 +0100
In-Reply-To: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: [OE-core] Git commit process question.
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
X-List-Received-Date: Mon, 01 Apr 2019 23:02:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-04-01 at 15:33 -0700, akuster808 wrote:
> Hello,
> 
> I have noticed a large number of git commits with no header
> information being accepted.

Can you be more specific about what "no header information" means? You
mean a shortlog and no full log message?

Cheers,

Richard


