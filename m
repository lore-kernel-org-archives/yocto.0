Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9493DE0096D; Mon,  4 Apr 2016 13:26:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CDC5E006C7
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 13:26:21 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 04 Apr 2016 13:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,442,1455004800"; d="scan'208";a="777944204"
Received: from adaud-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.168.25])
	by orsmga003.jf.intel.com with ESMTP; 04 Apr 2016 13:26:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
Date: Tue, 05 Apr 2016 08:26:17 +1200
Message-ID: <9241480.KWacKREVoq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.6-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <CAP71WjxTG0fMc3sRcQ+atXZGBz8QMQ8AtGJvxr9eqOzXk3tFVQ@mail.gmail.com>
References: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
	<434fe8858bc94e6da6dac6f5f11636e6@SI-MBX1022.de.bosch.com>
	<CAP71WjxTG0fMc3sRcQ+atXZGBz8QMQ8AtGJvxr9eqOzXk3tFVQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Mon, 04 Apr 2016 20:26:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 04 Apr 2016 14:57:06 Nicolas Dechesne wrote:
> On Mon, Apr 4, 2016 at 2:43 PM, Olsson Rikard (RBSN/ESW1)
> 
> <Rikard.Olsson@se.bosch.com> wrote:
> > Thanks for your answer. Will these two files conf/auto.conf and
> > conf/site.conf be able to handle changes for bblayers.conf as well?
>
> no.
> 
> > For example we need to add meta-qt5 but would prefer to append to the
> > layers already there and not add our changes into bblayers.conf to avoid
> > merge work.
>
> bblayers.conf is parsed by bitbake directly, and i don't think you can
> use another file for it. Khem's suggestion to use "bitbake-layer
> add-layer" would let you override bblayers.conf 'dynamically' without
> having to archive it..

In case it's not clear, all bitbake-layers add-layer does is provide you with 
an easy way to modify bblayers.conf.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

