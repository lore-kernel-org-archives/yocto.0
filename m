Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03164E00B58; Thu, 23 May 2019 18:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80318E00931
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 18:59:10 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id r22so1429236pfh.9
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 18:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=BCFN+m6yBgImm9TZNrmLexqC1Ny2Sq56ih8oZdWUhv0=;
	b=RrwlYaho46wI4CiLaPEa1GIJKmz5FIpD2D+9ekSxlmktL+s2gEjdbiI4+1Gz8oSyFC
	dOqyfW79HTNtiS5SAdawyob2sWTmmW8FVj3WjeNvfeVditdqWPgFJ4wvDWG2MZoOkpL3
	3NBr6DXvCfvsgS7xzEhmHDGAnrz6C9dn0STvuJv+bKueZifHtCuXQSR20+nF+fH45dAq
	VChK/K8Rpef5T6yNc9NzBmKajgsMKa9qSssnkE95cC87SmKrImgTKvsDWzQ1RCFOT05F
	Zd/hJmfM5EqIYgfznLSY5/AmYo3kyG3JD32MZgqKqlwkmv96Eh3HcRu9ITiNqap5aQ10
	Uzhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=BCFN+m6yBgImm9TZNrmLexqC1Ny2Sq56ih8oZdWUhv0=;
	b=mpMFGUCEKS3yzPX/rD0T6b1tq0yrgijmCGZ7hEIRTUkpnBgGS4p0+ih35GnNkrPGV5
	/Sr0vp7KJRCq9tdF2Qj69RD+eA0RThFBwSSSXIVsIkuzGa81jzJ/dGXFIlEy3tLnRsSG
	R+X5MKg5SFYN172pEVlSQPhyIg1Sqv5AGHVZfSbEXLr24lmm9Ax5Qo188G58S8p5OIQq
	2JpS3UrPmpCuLoSWbelqbyHv/2DfF+UdoMViRDmR64xwc4aTeIZTeHsvORS0qB2u16Cs
	kfAw1gAdxpcspEHL+ugS9Gc/XDe1PKBJs1pZTBk1NdNGT5MgcZ+xNuLg86WtqNUfm/F4
	lcNA==
X-Gm-Message-State: APjAAAWu4LOfMGVjp1dS7N2XeTUkRwOaxvSZuky6lEg/4UzO8MUNl3U3
	IYlHriphcGjY9b35yZrT9kWE14veGMQ=
X-Google-Smtp-Source: APXvYqxi3Ol/sP2kI2h0mkA1HTg+Mf6PeV3Iby3TKQ6Il5vP+BrJXAM5C9L8MYjh6lefqfjQjmbXtg==
X-Received: by 2002:a63:6884:: with SMTP id
	d126mr102396705pgc.154.1558663149433; 
	Thu, 23 May 2019 18:59:09 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:41da:1c8d:2ccb:5914])
	by smtp.gmail.com with ESMTPSA id y7sm529253pja.26.2019.05.23.18.59.08
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 18:59:08 -0700 (PDT)
To: Shane Peelar <lookatyouhacker@gmail.com>, yocto@yoctoproject.org
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
Date: Thu, 23 May 2019 18:59:07 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
Subject: Re: prelink-cross with -fno-plt
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
X-List-Received-Date: Fri, 24 May 2019 01:59:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/23/19 8:05 AM, Shane Peelar wrote:
> Hi Everyone @ the Yocto project,
> 
> I'm Shane Peelar, a PhD Candidate at the University of Windsor.
> I'm writing to you about prelink-cross, as part of the Yocto project.
> Specifically, I'm looking at using it with executables built using 
> `-fno-plt` under GCC.
> I wasn't quite sure where to send this email to, so I figured I'd try 
> here.  If there's a better place to send this, please let me know.
> 
> Right now, prelink-cross seems to fail an assertion in arch-x86_64.c, 
> line 421, when
> using it with an executable built with `-fno-plt`:
> 
> ...
> assert (i < dso->ehdr.e_shnum)
> ...
> 
> This snippet seems to be looking for the ".plt" section and, since it 
> can't find it, the assertion fires.  This makes sense because in 
> `-fno-plt` executables, the `.plt` section is missing entirely.
> I'm not an expert on ELF stuff, although I am learning quickly.  It 
> looks like
> this code wants to write into GOT[1] the address of ".plt" + 0x16 -- 
> since ".plt" doesn't
> exist, does it make sense to just change this assert to an if statement 
> like so:
> 
> ...
>        if (i < dso->ehdr.e_shnum)
>        { ... }
> ...
> 
> and skip over that part?  Or is this a real error condition for 
> prelink-cross and it really should not continue?  The executable in 
> question is also non-PIE, if that makes a difference.
> 

what shared libs is this linking to ? are they also built with -fno-plt ?

> Thanks for your time,
> Shane
> 

