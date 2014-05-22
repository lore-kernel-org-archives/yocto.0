Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46910E00B87; Thu, 22 May 2014 06:09:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f52.google.com (unknown [209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC986E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:09:46 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so5532845qge.39
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:09:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jLG/20fqKTMl+X+468RBuxNnlsDC3/GVhKB1KWWQK1M=;
	b=haMeEKBODD2pZIyCEaWpyw4o7AgpyRWT6xPbkuJgq83m/9RD5ZKFfqqj7Elc1/NKhh
	0gYAVo7rMcevca4iw+4BR5hG3K75p5vq0xbGV1JQ0O+dh2C7L2xOcU6Qc14dUSAbC/y+
	rdcoJiZi9MDJQwmYZypBXyexC72LJ80IwyfMR7cDsd1HQqbNdQN3oWiqrVg6/YNEzAYL
	YUvn7zfSub4oh4TMwQgIrsSlFy6nBDxXDKqZcxnwa9vmB6/hDTITMTTEBnEUiJeTrCLV
	IMfDaZzHx8qkTaj8CfDaz8SudjTtwXpdVLWq+95MS9e4tOSvdzjwTTIW5JseHUGJzAKz
	5H0Q==
X-Gm-Message-State: ALoCoQkzXJoAV7lb3n/j6PcWUowsYdbkOIqHgcX+S+by62E/JwQ3IuNv0DGgT7cgCmcrRc7hYCjp
X-Received: by 10.140.109.70 with SMTP id k64mr76148079qgf.92.1400764185607;
	Thu, 22 May 2014 06:09:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 22 May 2014 06:09:24 -0700 (PDT)
In-Reply-To: <1400762321.57091.YahooMailNeo@web122502.mail.ne1.yahoo.com>
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<8100724.KhZTyC37g9@peggleto-mobl5.ger.corp.intel.com>
	<1400761572.79188.YahooMailNeo@web122505.mail.ne1.yahoo.com>
	<1560241.kjtZFe1g9j@peggleto-mobl5.ger.corp.intel.com>
	<1400762321.57091.YahooMailNeo@web122502.mail.ne1.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 May 2014 14:09:24 +0100
Message-ID: <CAJTo0LaA9S1gJyO0g3nCn3vzyuVLON4-SyP9KUv0Gj+9KG16Aw@mail.gmail.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 13:09:51 -0000
Content-Type: text/plain; charset=UTF-8

On 22 May 2014 13:38, Alexandru Vaduva <vaduvajanalexandru@yahoo.com> wrote:
> it appear, it shouldn`t I believe.

Can you share this depends.dot file please?  For what it's worth, I
can't replicate this with oe-core master

Ross

