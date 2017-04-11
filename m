Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8DE8E00AF4; Tue, 11 Apr 2017 04:12:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5170E00AE4
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 04:12:19 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id a103so66314021ioj.1
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 04:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=ACRE6IQ0WsWHEVBjSfEiiU9NRdDOg7RE2fmT/LKYs+w=;
	b=YEGQlw21sSG+3PZEmAi0YoY4KJz+L8qhouJ+Gr7FDJQhMLDYSplPRvSpcfVxlH88HI
	HrAjHzTWzLu3GR/IjA2FEftn71WWQYtoZRVhVhR+KgIJ3k59tloIAM/dB1VDG/wUUDFA
	pox+Qo9eMosU7xJRE/UoXhA6s2TMSYAU5WqkoJVIv+biP5Eam1CBNITggXd/0oPR1T79
	UjK7giUTXiBQi/hz/psO9h/6hfoTnkubw1SRlRQ7N5DOdPmWKjKJZ5NZo/30OvalWAIX
	Qqm0eVOv/Huzl/IWj+WS4puc+dY8MeLsBY5w49m5f1OyPwcKWfN22QD3kSWfVPsex6Jy
	mr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=ACRE6IQ0WsWHEVBjSfEiiU9NRdDOg7RE2fmT/LKYs+w=;
	b=RFGEFqB4dC15rQPeIlDlceQjUvn/8y6kL+mr51D2v8UdlJm280l3PDNFgX/zE04h0e
	hg7QknflJdvbVem8eE0dJMxo+Q87FAqjqvvBiUFj2Bvv77QoqMF4ZiU/ela+x8uvwOL1
	rZOwtSl6zEX7fnfRyk5FL+n6DwWrCYZvboBXGuiRIKoa5wDhw7SpuZSfnnNPtsBK40w7
	qoKQsIbS7Y5BsU+ATh9U/nZ1UaLFWcUbkK4Pbz/p0pwLAI7DpdR0hsXFspKME8IKDK6X
	w1PUNYnsdidPsBAEeapY1PO6zIuB26KcfuUDTsTshLsdjz9cFW683n5w08lKOQbTwpyX
	6fCw==
X-Gm-Message-State: AFeK/H0hybWqxlit1xC2frVAkeYXNkW1nZwJEhFHx2g3A7q/DBsLCoQhxLDlAQ2eczS3wbH3
X-Received: by 10.107.172.134 with SMTP id v128mr62188952ioe.49.1491909139074; 
	Tue, 11 Apr 2017 04:12:19 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8D3A2.dip0.t-ipconnect.de. [93.232.211.162])
	by smtp.gmail.com with ESMTPSA id s40sm739912ite.18.2017.04.11.04.12.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Apr 2017 04:12:18 -0700 (PDT)
Message-ID: <1491909135.10884.180.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Date: Tue, 11 Apr 2017 13:12:15 +0200
In-Reply-To: <CALf_N3ZPpeyL7Z1VSDGhC0aJgH4_we0C9dOszhnaK+tTNPC0pQ@mail.gmail.com>
References: <CALf_N3ZPpeyL7Z1VSDGhC0aJgH4_we0C9dOszhnaK+tTNPC0pQ@mail.gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Modifying CFLAGS in .bbappend
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
X-List-Received-Date: Tue, 11 Apr 2017 11:12:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-04-11 at 11:45 +0100, Mark T wrote:

> If I add an include path to CFLAGS in a .bbappend  is it only applied
> for that recipe or is it present in CFLAGS for all recipes built after
> that ?

Just for that recipe. You can check that with "bitbake -e <recipe
name>".


-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




