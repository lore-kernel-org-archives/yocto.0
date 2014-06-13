Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21361E00BEB; Fri, 13 Jun 2014 01:38:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B77E00BB3
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:37:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2014 01:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,470,1400050800"; d="scan'208";a="527926007"
Received: from pskulath-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.252])
	by orsmga001.jf.intel.com with ESMTP; 13 Jun 2014 01:37:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 13 Jun 2014 09:37:38 +0100
Message-ID: <7087765.JjzMT6dhRy@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.6-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAF_dkJDanXGehdznOiZPnyL9Fyq4Zon5JPZ4oS6Cg0ken=ZFJA@mail.gmail.com>
References: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
	<CABcZAN=dqyUpOmmFjFifnsyD-RMWP7OkD4NSvqh6RvNA_wKYGQ@mail.gmail.com>
	<CAF_dkJDanXGehdznOiZPnyL9Fyq4Zon5JPZ4oS6Cg0ken=ZFJA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Christopher Larson <clarson@kergoth.com>
Subject: Re: How to determine which tasks bitbake just ran?
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
X-List-Received-Date: Fri, 13 Jun 2014 08:38:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 12 June 2014 15:52:10 Patrick Doyle wrote:
> Thanks.
> 
> bitbake foo | cat
> 
> is most likely to be what I was looking for.  I found the cooker log
> shortly after I asked my question.  I'll go look through bitbake and
> see what it would take to create a symbolic link to the most recent
> logfile, as is done with the logfiles for the individual tasks.

I'd really like to see this symlink added too FWIW, so +1 :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

